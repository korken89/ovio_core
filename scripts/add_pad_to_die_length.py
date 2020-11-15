#!/usr/bin/env python3
import sys, math
import pcbnew


"""
This is a script which adds the die to pad lengths to a package in a PCB design.
Based on the script here: https://forum.kicad.info/t/die-length-doesnt-seem-to-work/786

By Emil Fresk (@korken89), https://www.github.com/korken89

HOW TO USE:

    The script has 4 inputs:
    1. The board file in which the chip is
    2. A csv file with "pad names,pad to die lengths in mm", no header or anything else!!!
    3. The component reference to add pad to die lengths to
    4. Optional flag to overwrite the current PCB file

    Example:
    $ ./add_pad_to_die_length.py myboard.kicad_pcb pad_2_die.csv U101 --overwrite

    After adding the pad to die lengths, right click the component as save it if desired.

    CSV example:
    ...
    A6,14.61750921
    A8,22.92383663
    A9,20.40391697
    B1,15.01548376
    B11,17.62571142
    B12,17.74857717
    B13,16.48175427
    ...

"""

if __name__ == "__main__":
    try:
        boardpath = sys.argv[1]
        lengthpath = sys.argv[2]
        chip_ref = sys.argv[3]
    except IndexError:
        print("Usage: %s <boardname.kicad_pcb> <pad_to_dies_lengths.csv> <reference to add pad to die lengths to> [--overwrite]" % sys.argv[0])
        print("Eg: %s my_board.kicad_pcb die_lengths.csv U101" % sys.argv[0])
        sys.exit(1)


    pcb = pcbnew.LoadBoard(boardpath)
    lengths = {}

    with open(lengthpath) as f:
        for l in f:
            d = l.split(',')
            lengths[d[0]] = float(d[1])

    mod = pcb.FindModuleByReference(chip_ref)
    pads = mod.Pads()

    for pad in pads:
        name = pad.GetPadName()
        if name in lengths:
            pad.SetPadToDieLength(pcbnew.FromMM(lengths[name]))

    if "--overwrite" in sys.argv:
        pcb.Save(boardpath)
    else:
        pcb.Save("new_" + boardpath)
