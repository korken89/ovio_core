#!/usr/bin/env python3

import sys
import os
import re
import time
import pcbnew
"""
This is a modified version of https://github.com/mithro/kicad-length-matching-checks.git
which also adds in the "Pad to die length" into the calculations (plus different formating).

Additions by Emil Fresk (@korken89), https://www.github.com/korken89

(C)2019 Emil Fresk

Bellow follows the (modified original instructions):

---

Very basic length making checker script for KiCAD with "Pad to die length" included

This is not very fancy, but it can be used to create length matched traces.

HOW TO USE:

* Compile KiCAD with Python scripting support (this isn't enabled by default
  and requires a rebuild, if you look in kicad-install.sh there's a line
  marked with "# Python scripting, uncomment to enable")

* Put each group of nets that should be length matched into their own
  netclass, named with the suffix _LMxxx, where xxx is the matching
  tolerance in millimeters.

  For example, the netclass name DATABUS_LM1.2 means all nets in that
  netclass should match within 1.2mm of each other.

* Run this script as "length_match.py <name_of_boardfile> <chip_with_die_lengts>",
  and it will print pass/fail length match data & lengths for each netclass that
  meets the _LM naming scheme.

* The script will keep running, and any time you save the board file
  it will re-examine any netclasses where at least one length has
  changed and print the new results. The idea is to keep this script
  open in a side window while you route your board.

* Once you think everything is correct, Ctrl-C to kill the script
  and then rerun it to double check all netclasses (in case you missed
  any netclasses that haven't changed in a while).

TIPS:

* The length matching just counts the total length of all traces in
  the net, so it doesn't know about geometry or overlapping traces or
  multi-ended traces or stubs. For this reason:

  * Use "magnetic pads" (under Preferences->General) so traces always
    begin & end in the middle of the pad.

  * Route in outline view mode (buttons at bottom left toolbar thingy)
    so you can easily see any accidental overlapping traces (including
    under pads) and delete them. One stray trace scrap under a pad can
    ruin your matching!

  * Use the Edit->Cleanup Tracks And Vias options to merge any
    overlapping traces (NB this can sometimes makes a mess of your
    board, so save first!)

* Length matching also doesn't account for vias, so try and match the
  numbers of these.

* Coloured text output should work on Linux and OS X but on Windows it
  requires "ansi.sys" loaded.


There is tons of room for improvement in this script, so if you add
any improvements please let me know so I can use them too. :)

(C)2014 Angus Gratton @projectgus, Licensed under New BSD License

"""

BRIGHT_GREEN = '\033[92;1m'
BRIGHT_RED = '\033[91;1m'
END_COLOR = '\033[0m'

def print_color(color, s):
    print(color + s + END_COLOR)


def get_tolerance(classname):
    "Returns the length match tolerance encoded in a netclass match, or None if not a matched length"
    name = re.search(r"(^|_)LM([0-9\.]+)($|_)", classname)
    if name is None:
        return None
    return float(name.group(2))

def get_board_properties(filename, chip_ref):
    """
    Returns a dict from netclass name -> (tolerance, nets)
    Where tolerance is maximum difference in matched track lengths.
    And nets is a list of (netname, length) for each net in the netclass.

    Only netclasses with length matching tolerances are returned
    """
    pcb = pcbnew.LoadBoard(filename)
    pcb.BuildListOfNets() # required so 'pcb' contains valid netclass data

    tolerances = {}
    nets = {}

    tracks = pcb.GetTracks() # tuples of (netname, classname)
    netclasses = list(set(t.GetNet().GetClassName()  for t in tracks)) # unique netclass names

    result = {}

    die_lengths = {}
    pads = pcb.FindModuleByReference(chip_ref).Pads()

    for pad in pads:
        name = pad.GetNetname()
        length = pcbnew.ToMM(pad.GetPadToDieLength())
        die_lengths[name] = length

    for netclass in netclasses:
        tolerance = get_tolerance(netclass)
        if tolerance is None:
            continue
        tracks_netclass = [t for t in tracks if t.GetNet().GetClassName() == netclass] # tracks in this netclass
        netnames = list(set([t.GetNet().GetNetname() for t in tracks_netclass])) # unique netnames in this netclass
        netnames.sort()
        nets = [(n,sum(pcbnew.ToMM(t.GetLength()) for t in tracks_netclass if t.GetNet().GetNetname() == n)) for n in netnames]
        result[netclass] = (tolerance, nets)
    return (result, die_lengths)

def plist(netclass, tolerance, nets, die_lengths):
    max_length = 0
    min_length = 1e12
    name_width = max(len(n) for (n, l) in nets) +3

    for (net,netlen) in nets:
        final_len = netlen + die_lengths[net]
        max_length = max(max_length, final_len)
        min_length = min(min_length, final_len)

    variance = abs(max_length - min_length)
    text_color = BRIGHT_RED

    if variance <= tolerance:
        text_color = BRIGHT_GREEN

    print("\n### Net-class " + netclass + " --- TOLERANCE: " + \
          "{0:.2f} mm".format(tolerance) + " --- ", end = "")
    print_color(text_color, "VARIANCE: " + \
                            "{0:.2f} mm".format(variance))

    for (net,netlen) in nets:
        final_len = netlen + die_lengths[net]
        diff = final_len - max_length

        text_color = BRIGHT_RED

        if abs(diff) <= tolerance:
            text_color = BRIGHT_GREEN

        print_color(text_color, "{0: <{width}}".format(net, width=name_width) + "{0:.2f} mm".format(final_len) + " ({0:.2f} mm)".format(diff))

if __name__ == "__main__":
    try:
        filepath = sys.argv[1]
        chip_ref = sys.argv[2]
    except IndexError:
        print("Usage: %s <boardname.kicad_pcb> <reference with pad to die lengths>" % sys.argv[0])
        print("Eg: %s my_board.kicad_pcb U101" % sys.argv[0])
        sys.exit(1)

    first = True

    while True:
        # wait for the file contents to change
        lastmtime = os.path.getmtime(filepath)
        mtime = lastmtime
        while mtime == lastmtime and not first:
            try:
                mtime = os.path.getmtime(filepath)
            except OSError:
                pass # kicad save process seems to momentarily delete file, so there's a race here with "No such file.."
            time.sleep(0.1)

        first = False

        (properties, die_lengths) = get_board_properties(filepath, chip_ref)

        os.system('clear')
        for (netclass, (tolerance, nets)) in sorted(properties.items()):
            plist(netclass, tolerance, nets, die_lengths)

