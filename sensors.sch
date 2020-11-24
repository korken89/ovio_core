EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 7
Title "OVIO Core"
Date ""
Rev "1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:Ferrite_Bead_Small FB?
U 1 1 5D47D336
P 4250 1350
AR Path="/5D0C5174/5D47D336" Ref="FB?"  Part="1" 
AR Path="/5D47D336" Ref="FB?"  Part="1" 
AR Path="/5D4713CF/5D47D336" Ref="FB501"  Part="1" 
F 0 "FB501" V 4105 1350 50  0000 C CNN
F 1 "Ferrite_Bead_Small" V 4104 1350 50  0001 C CNN
F 2 "passive:R_0402" V 4180 1350 50  0001 C CNN
F 3 "~" H 4250 1350 50  0001 C CNN
	1    4250 1350
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5D47D33C
P 4750 1500
AR Path="/5D47D33C" Ref="C?"  Part="1" 
AR Path="/5D1FE04F/5D47D33C" Ref="C?"  Part="1" 
AR Path="/5D0C5174/5D47D33C" Ref="C?"  Part="1" 
AR Path="/5D4713CF/5D47D33C" Ref="C502"  Part="1" 
F 0 "C502" H 4842 1546 50  0000 L CNN
F 1 "0.1u" H 4842 1455 50  0000 L CNN
F 2 "passive:C_0402" H 4750 1500 50  0001 C CNN
F 3 "~" H 4750 1500 50  0001 C CNN
	1    4750 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D47D342
P 4400 1650
AR Path="/5D47D342" Ref="#PWR?"  Part="1" 
AR Path="/5D0C5174/5D47D342" Ref="#PWR?"  Part="1" 
AR Path="/5D4713CF/5D47D342" Ref="#PWR0502"  Part="1" 
F 0 "#PWR0502" H 4400 1400 50  0001 C CNN
F 1 "GND" H 4405 1477 50  0001 C CNN
F 2 "" H 4400 1650 50  0001 C CNN
F 3 "" H 4400 1650 50  0001 C CNN
	1    4400 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5D47D348
P 4400 1500
AR Path="/5D47D348" Ref="C?"  Part="1" 
AR Path="/5D0C5174/5D47D348" Ref="C?"  Part="1" 
AR Path="/5D4713CF/5D47D348" Ref="C501"  Part="1" 
F 0 "C501" H 4492 1546 50  0000 L CNN
F 1 "4.7u" H 4492 1455 50  0000 L CNN
F 2 "passive:C_0603" H 4400 1500 50  0001 C CNN
F 3 "~" H 4400 1500 50  0001 C CNN
	1    4400 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 1350 4400 1350
Wire Wire Line
	4750 1400 4750 1350
Connection ~ 4750 1350
Wire Wire Line
	4400 1400 4400 1350
Connection ~ 4400 1350
Wire Wire Line
	4400 1350 4600 1350
Wire Wire Line
	4400 1600 4400 1650
Wire Wire Line
	4400 1650 4750 1650
Wire Wire Line
	4750 1650 4750 1600
Connection ~ 4400 1650
Connection ~ 4750 1650
Text Label 4950 1350 0    50   ~ 0
IMU_PWR
$Comp
L imu:ASM330LHH U501
U 1 1 5D47D364
P 5550 1250
F 0 "U501" H 6000 1437 60  0000 C CNN
F 1 "ISM330DHC" H 6000 1331 60  0000 C CNN
F 2 "lga:LGA-14-2.5x3" H 6000 1400 60  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/ism330dhcx.pdf" H 6500 650 60  0001 C CNN
	1    5550 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 1450 5350 1450
Wire Wire Line
	5350 1450 5350 1350
Connection ~ 5350 1350
Wire Wire Line
	5350 1350 5400 1350
Wire Wire Line
	5400 1950 5350 1950
Wire Wire Line
	5350 1950 5350 1850
Connection ~ 5350 1650
Wire Wire Line
	5350 1650 5400 1650
Wire Wire Line
	5400 1750 5350 1750
Connection ~ 5350 1750
Wire Wire Line
	5350 1750 5350 1650
Wire Wire Line
	5400 1850 5350 1850
Connection ~ 5350 1850
Wire Wire Line
	5350 1850 5350 1750
$Comp
L Device:R_Small R?
U 1 1 5D47D386
P 7700 2000
AR Path="/5D7D6E29/5D47D386" Ref="R?"  Part="1" 
AR Path="/5D0C5174/5D47D386" Ref="R?"  Part="1" 
AR Path="/5D1FE04F/5D47D386" Ref="R?"  Part="1" 
AR Path="/5D47D386" Ref="R?"  Part="1" 
AR Path="/5D4713CF/5D47D386" Ref="R508"  Part="1" 
F 0 "R508" H 7759 2046 50  0000 L CNN
F 1 "10k" H 7759 1955 50  0000 L CNN
F 2 "passive:R_0402" H 7700 2000 50  0001 C CNN
F 3 "~" H 7700 2000 50  0001 C CNN
	1    7700 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D47D38C
P 7700 2100
AR Path="/5D47D38C" Ref="#PWR?"  Part="1" 
AR Path="/5D0C5174/5D47D38C" Ref="#PWR?"  Part="1" 
AR Path="/5D4713CF/5D47D38C" Ref="#PWR0506"  Part="1" 
F 0 "#PWR0506" H 7700 1850 50  0001 C CNN
F 1 "GND" H 7705 1927 50  0001 C CNN
F 2 "" H 7700 2100 50  0001 C CNN
F 3 "" H 7700 2100 50  0001 C CNN
	1    7700 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 1900 7700 1850
NoConn ~ 6600 1950
$Comp
L power:+3V3 #PWR?
U 1 1 5D4A3AD2
P 4050 1350
AR Path="/5D0C5174/5D4A3AD2" Ref="#PWR?"  Part="1" 
AR Path="/5D4713CF/5D4A3AD2" Ref="#PWR0501"  Part="1" 
F 0 "#PWR0501" H 4050 1200 50  0001 C CNN
F 1 "+3V3" V 4065 1478 50  0000 L CNN
F 2 "" H 4050 1350 50  0001 C CNN
F 3 "" H 4050 1350 50  0001 C CNN
	1    4050 1350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4050 1350 4150 1350
Text HLabel 7800 1350 2    50   Input ~ 0
IMU_SDI
Text HLabel 7800 1650 2    50   Input ~ 0
IMU_SDO
Text HLabel 7800 1450 2    50   Input ~ 0
IMU_SCK
Text HLabel 7800 1550 2    50   Input ~ 0
IMU_CS
Text HLabel 7800 1850 2    50   Input ~ 0
IMU_INT
Text Notes 6700 2650 0    50   ~ 0
DESIGN NOTE:\nIMU needs a pulldown on INT1\nduring startup, see datasheet\nfor details.
Wire Notes Line
	6650 2250 7950 2250
Wire Notes Line
	7950 2250 7950 2700
Wire Notes Line
	7950 2700 6650 2700
Wire Notes Line
	6650 2700 6650 2250
Text Label 6700 1350 0    50   ~ 0
IMU_SDI_P
Text Label 6700 1450 0    50   ~ 0
IMU_SCK_P
Text Label 6700 1550 0    50   ~ 0
IMU_CS_P
Text Label 6700 1650 0    50   ~ 0
IMU_SDO_P
Text Label 6700 1850 0    50   ~ 0
IMU_INT_P
Text HLabel 4950 4100 0    50   Input ~ 0
HEATER
$Comp
L mosfet:NTZD3155C Q501
U 1 1 5D4B8019
P 5900 3600
F 0 "Q501" H 5992 3600 60  0000 L CNN
F 1 "NTZD3155C" H 5992 3547 60  0001 L CNN
F 2 "sot:SOT-563" H 5800 3220 60  0001 C CNN
F 3 "https://www.onsemi.com/pub/Collateral/NTZD3155C-D.PDF" H 5900 3320 60  0001 C CNN
	1    5900 3600
	0    1    -1   0   
$EndComp
$Comp
L mosfet:NTZD3155C Q501
U 2 1 5D4B87CF
P 5900 4100
F 0 "Q501" V 6046 4100 60  0000 C CNN
F 1 "NTZD3155C" V 6046 4100 60  0001 C CNN
F 2 "sot:SOT-563" H 5800 3720 60  0001 C CNN
F 3 "https://www.onsemi.com/pub/Collateral/NTZD3155C-D.PDF" H 5900 3820 60  0001 C CNN
	2    5900 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D4BC3E1
P 5900 4250
AR Path="/5D4BC3E1" Ref="#PWR?"  Part="1" 
AR Path="/5D0C5174/5D4BC3E1" Ref="#PWR?"  Part="1" 
AR Path="/5D4713CF/5D4BC3E1" Ref="#PWR0504"  Part="1" 
F 0 "#PWR0504" H 5900 4000 50  0001 C CNN
F 1 "GND" H 5905 4077 50  0001 C CNN
F 2 "" H 5900 4250 50  0001 C CNN
F 3 "" H 5900 4250 50  0001 C CNN
	1    5900 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5D4BCCF8
P 5100 4100
AR Path="/5D7D6E29/5D4BCCF8" Ref="R?"  Part="1" 
AR Path="/5D0C5174/5D4BCCF8" Ref="R?"  Part="1" 
AR Path="/5D1FE04F/5D4BCCF8" Ref="R?"  Part="1" 
AR Path="/5D4BCCF8" Ref="R?"  Part="1" 
AR Path="/5D4713CF/5D4BCCF8" Ref="R501"  Part="1" 
F 0 "R501" V 4996 4100 50  0000 C CNN
F 1 "180" V 4905 4100 50  0000 C CNN
F 2 "passive:R_0402" H 5100 4100 50  0001 C CNN
F 3 "~" H 5100 4100 50  0001 C CNN
	1    5100 4100
	0    1    -1   0   
$EndComp
Wire Wire Line
	4950 4100 5000 4100
Wire Wire Line
	5200 4100 5450 4100
$Comp
L power:GND #PWR?
U 1 1 5D4BE5CA
P 5450 4450
AR Path="/5D4BE5CA" Ref="#PWR?"  Part="1" 
AR Path="/5D0C5174/5D4BE5CA" Ref="#PWR?"  Part="1" 
AR Path="/5D4713CF/5D4BE5CA" Ref="#PWR0503"  Part="1" 
F 0 "#PWR0503" H 5450 4200 50  0001 C CNN
F 1 "GND" H 5455 4277 50  0001 C CNN
F 2 "" H 5450 4450 50  0001 C CNN
F 3 "" H 5450 4450 50  0001 C CNN
	1    5450 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 4100 5450 4250
Connection ~ 5450 4100
Wire Wire Line
	5450 4100 5700 4100
$Comp
L Device:R_Small R?
U 1 1 5D4BF2FD
P 5500 3750
AR Path="/5D7D6E29/5D4BF2FD" Ref="R?"  Part="1" 
AR Path="/5D0C5174/5D4BF2FD" Ref="R?"  Part="1" 
AR Path="/5D1FE04F/5D4BF2FD" Ref="R?"  Part="1" 
AR Path="/5D4BF2FD" Ref="R?"  Part="1" 
AR Path="/5D4713CF/5D4BF2FD" Ref="R503"  Part="1" 
F 0 "R503" H 5559 3796 50  0000 L CNN
F 1 "10k" H 5559 3705 50  0000 L CNN
F 2 "passive:R_0402" H 5500 3750 50  0001 C CNN
F 3 "~" H 5500 3750 50  0001 C CNN
	1    5500 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 3600 5500 3600
Wire Wire Line
	5500 3600 5500 3650
Wire Wire Line
	5500 3850 5500 3900
Wire Wire Line
	5500 3900 5900 3900
Wire Wire Line
	5900 3900 5900 3950
Wire Wire Line
	5900 3900 5900 3800
Connection ~ 5900 3900
Connection ~ 5500 3600
$Comp
L Device:R_Small R?
U 1 1 5D4C3470
P 6550 3750
AR Path="/5D7D6E29/5D4C3470" Ref="R?"  Part="1" 
AR Path="/5D0C5174/5D4C3470" Ref="R?"  Part="1" 
AR Path="/5D1FE04F/5D4C3470" Ref="R?"  Part="1" 
AR Path="/5D4C3470" Ref="R?"  Part="1" 
AR Path="/5D4713CF/5D4C3470" Ref="R504"  Part="1" 
F 0 "R504" H 6491 3796 50  0000 R CNN
F 1 "180" H 6491 3705 50  0000 R CNN
F 2 "passive:R_0402" H 6550 3750 50  0001 C CNN
F 3 "~" H 6550 3750 50  0001 C CNN
	1    6550 3750
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5D4C4EA0
P 6850 3750
AR Path="/5D7D6E29/5D4C4EA0" Ref="R?"  Part="1" 
AR Path="/5D0C5174/5D4C4EA0" Ref="R?"  Part="1" 
AR Path="/5D1FE04F/5D4C4EA0" Ref="R?"  Part="1" 
AR Path="/5D4C4EA0" Ref="R?"  Part="1" 
AR Path="/5D4713CF/5D4C4EA0" Ref="R505"  Part="1" 
F 0 "R505" H 6791 3796 50  0000 R CNN
F 1 "180" H 6791 3705 50  0000 R CNN
F 2 "passive:R_0402" H 6850 3750 50  0001 C CNN
F 3 "~" H 6850 3750 50  0001 C CNN
	1    6850 3750
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5D4C50A2
P 7150 3750
AR Path="/5D7D6E29/5D4C50A2" Ref="R?"  Part="1" 
AR Path="/5D0C5174/5D4C50A2" Ref="R?"  Part="1" 
AR Path="/5D1FE04F/5D4C50A2" Ref="R?"  Part="1" 
AR Path="/5D4C50A2" Ref="R?"  Part="1" 
AR Path="/5D4713CF/5D4C50A2" Ref="R506"  Part="1" 
F 0 "R506" H 7091 3796 50  0000 R CNN
F 1 "180" H 7091 3705 50  0000 R CNN
F 2 "passive:R_0402" H 7150 3750 50  0001 C CNN
F 3 "~" H 7150 3750 50  0001 C CNN
	1    7150 3750
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5D4C62AF
P 7450 3750
AR Path="/5D7D6E29/5D4C62AF" Ref="R?"  Part="1" 
AR Path="/5D0C5174/5D4C62AF" Ref="R?"  Part="1" 
AR Path="/5D1FE04F/5D4C62AF" Ref="R?"  Part="1" 
AR Path="/5D4C62AF" Ref="R?"  Part="1" 
AR Path="/5D4713CF/5D4C62AF" Ref="R507"  Part="1" 
F 0 "R507" H 7391 3796 50  0000 R CNN
F 1 "180" H 7391 3705 50  0000 R CNN
F 2 "passive:R_0402" H 7450 3750 50  0001 C CNN
F 3 "~" H 7450 3750 50  0001 C CNN
	1    7450 3750
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5D4C62B5
P 7750 3750
AR Path="/5D7D6E29/5D4C62B5" Ref="R?"  Part="1" 
AR Path="/5D0C5174/5D4C62B5" Ref="R?"  Part="1" 
AR Path="/5D1FE04F/5D4C62B5" Ref="R?"  Part="1" 
AR Path="/5D4C62B5" Ref="R?"  Part="1" 
AR Path="/5D4713CF/5D4C62B5" Ref="R509"  Part="1" 
F 0 "R509" H 7691 3796 50  0000 R CNN
F 1 "180" H 7691 3705 50  0000 R CNN
F 2 "passive:R_0402" H 7750 3750 50  0001 C CNN
F 3 "~" H 7750 3750 50  0001 C CNN
	1    7750 3750
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5D4C62BB
P 8050 3750
AR Path="/5D7D6E29/5D4C62BB" Ref="R?"  Part="1" 
AR Path="/5D0C5174/5D4C62BB" Ref="R?"  Part="1" 
AR Path="/5D1FE04F/5D4C62BB" Ref="R?"  Part="1" 
AR Path="/5D4C62BB" Ref="R?"  Part="1" 
AR Path="/5D4713CF/5D4C62BB" Ref="R510"  Part="1" 
F 0 "R510" H 7991 3796 50  0000 R CNN
F 1 "180" H 7991 3705 50  0000 R CNN
F 2 "passive:R_0402" H 8050 3750 50  0001 C CNN
F 3 "~" H 8050 3750 50  0001 C CNN
	1    8050 3750
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5D4C7858
P 8350 3750
AR Path="/5D7D6E29/5D4C7858" Ref="R?"  Part="1" 
AR Path="/5D0C5174/5D4C7858" Ref="R?"  Part="1" 
AR Path="/5D1FE04F/5D4C7858" Ref="R?"  Part="1" 
AR Path="/5D4C7858" Ref="R?"  Part="1" 
AR Path="/5D4713CF/5D4C7858" Ref="R511"  Part="1" 
F 0 "R511" H 8291 3796 50  0000 R CNN
F 1 "180" H 8291 3705 50  0000 R CNN
F 2 "passive:R_0402" H 8350 3750 50  0001 C CNN
F 3 "~" H 8350 3750 50  0001 C CNN
	1    8350 3750
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5D4C785E
P 8650 3750
AR Path="/5D7D6E29/5D4C785E" Ref="R?"  Part="1" 
AR Path="/5D0C5174/5D4C785E" Ref="R?"  Part="1" 
AR Path="/5D1FE04F/5D4C785E" Ref="R?"  Part="1" 
AR Path="/5D4C785E" Ref="R?"  Part="1" 
AR Path="/5D4713CF/5D4C785E" Ref="R512"  Part="1" 
F 0 "R512" H 8591 3796 50  0000 R CNN
F 1 "180" H 8591 3705 50  0000 R CNN
F 2 "passive:R_0402" H 8650 3750 50  0001 C CNN
F 3 "~" H 8650 3750 50  0001 C CNN
	1    8650 3750
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D4C8104
P 6550 3950
AR Path="/5D4C8104" Ref="#PWR?"  Part="1" 
AR Path="/5D0C5174/5D4C8104" Ref="#PWR?"  Part="1" 
AR Path="/5D4713CF/5D4C8104" Ref="#PWR0505"  Part="1" 
F 0 "#PWR0505" H 6550 3700 50  0001 C CNN
F 1 "GND" H 6555 3777 50  0001 C CNN
F 2 "" H 6550 3950 50  0001 C CNN
F 3 "" H 6550 3950 50  0001 C CNN
	1    6550 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 3850 6550 3900
Wire Wire Line
	6550 3900 6850 3900
Connection ~ 6550 3900
Wire Wire Line
	6550 3900 6550 3950
Wire Wire Line
	8650 3850 8650 3900
Wire Wire Line
	8350 3850 8350 3900
Connection ~ 8350 3900
Wire Wire Line
	8350 3900 8650 3900
Wire Wire Line
	8050 3850 8050 3900
Connection ~ 8050 3900
Wire Wire Line
	8050 3900 8350 3900
Wire Wire Line
	7750 3850 7750 3900
Connection ~ 7750 3900
Wire Wire Line
	7750 3900 8050 3900
Wire Wire Line
	7450 3850 7450 3900
Connection ~ 7450 3900
Wire Wire Line
	7450 3900 7750 3900
Wire Wire Line
	7150 3850 7150 3900
Connection ~ 7150 3900
Wire Wire Line
	7150 3900 7450 3900
Wire Wire Line
	6850 3850 6850 3900
Connection ~ 6850 3900
Wire Wire Line
	6850 3900 7150 3900
Wire Wire Line
	6050 3600 6550 3600
Wire Wire Line
	8650 3650 8650 3600
Wire Wire Line
	8350 3650 8350 3600
Connection ~ 8350 3600
Wire Wire Line
	8350 3600 8650 3600
Wire Wire Line
	8050 3650 8050 3600
Connection ~ 8050 3600
Wire Wire Line
	8050 3600 8350 3600
Wire Wire Line
	7750 3650 7750 3600
Connection ~ 7750 3600
Wire Wire Line
	7750 3600 8050 3600
Wire Wire Line
	7450 3650 7450 3600
Connection ~ 7450 3600
Wire Wire Line
	7450 3600 7750 3600
Wire Wire Line
	7150 3650 7150 3600
Connection ~ 7150 3600
Wire Wire Line
	7150 3600 7450 3600
Wire Wire Line
	6850 3650 6850 3600
Connection ~ 6850 3600
Wire Wire Line
	6850 3600 7150 3600
Wire Wire Line
	6550 3650 6550 3600
Connection ~ 6550 3600
Wire Wire Line
	6550 3600 6850 3600
Text Label 6050 3600 0    50   ~ 0
IMU_HEATER
Text HLabel 4950 3600 0    50   Input ~ 0
V_HEATER
Wire Wire Line
	4950 3600 5500 3600
Text Label 5250 4100 0    50   ~ 0
HEATER_SIG
Connection ~ 7700 1850
Wire Wire Line
	7700 1850 7800 1850
$Comp
L Mechanical:MountingHole H501
U 1 1 5F8145EA
P 5750 2600
F 0 "H501" H 5850 2646 50  0000 L CNN
F 1 "MountingHole" H 5850 2555 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 5750 2600 50  0001 C CNN
F 3 "~" H 5750 2600 50  0001 C CNN
	1    5750 2600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H502
U 1 1 5F8146A3
P 5750 2800
F 0 "H502" H 5850 2846 50  0000 L CNN
F 1 "MountingHole" H 5850 2755 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 5750 2800 50  0001 C CNN
F 3 "~" H 5750 2800 50  0001 C CNN
	1    5750 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 1350 7800 1350
Wire Wire Line
	6600 1450 7800 1450
Wire Wire Line
	6600 1550 7800 1550
Wire Wire Line
	6600 1650 7800 1650
Wire Wire Line
	6600 1850 7700 1850
Wire Wire Line
	4750 1350 5350 1350
Wire Wire Line
	4750 1650 5350 1650
$Comp
L Device:R_Small R?
U 1 1 5D4BE5C4
P 5450 4350
AR Path="/5D7D6E29/5D4BE5C4" Ref="R?"  Part="1" 
AR Path="/5D0C5174/5D4BE5C4" Ref="R?"  Part="1" 
AR Path="/5D1FE04F/5D4BE5C4" Ref="R?"  Part="1" 
AR Path="/5D4BE5C4" Ref="R?"  Part="1" 
AR Path="/5D4713CF/5D4BE5C4" Ref="R502"  Part="1" 
F 0 "R502" H 5509 4396 50  0000 L CNN
F 1 "10k" H 5509 4305 50  0000 L CNN
F 2 "passive:R_0402" H 5450 4350 50  0001 C CNN
F 3 "~" H 5450 4350 50  0001 C CNN
	1    5450 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5FD925A9
P 8650 3400
AR Path="/5D80E8D8/5FD925A9" Ref="R?"  Part="1" 
AR Path="/5D421130/5FD925A9" Ref="R?"  Part="1" 
AR Path="/5D568428/5FD925A9" Ref="R?"  Part="1" 
AR Path="/5FD925A9" Ref="R?"  Part="1" 
AR Path="/5FCC988C/5FD925A9" Ref="R?"  Part="1" 
AR Path="/5D1FE04F/5FD925A9" Ref="R?"  Part="1" 
AR Path="/5D4713CF/5FD925A9" Ref="R513"  Part="1" 
F 0 "R513" V 8454 3400 50  0000 C CNN
F 1 "1k" V 8545 3400 50  0000 C CNN
F 2 "passive:R_0402" H 8650 3400 50  0001 C CNN
F 3 "~" H 8650 3400 50  0001 C CNN
	1    8650 3400
	1    0    0    1   
$EndComp
$Comp
L Device:LED_Small D?
U 1 1 5FD925AF
P 8650 3100
AR Path="/5D1FE04F/5FD925AF" Ref="D?"  Part="1" 
AR Path="/5FD925AF" Ref="D?"  Part="1" 
AR Path="/5D4713CF/5FD925AF" Ref="D501"  Part="1" 
F 0 "D501" H 8650 2985 50  0000 C CNN
F 1 "LED_Small" H 8650 3244 50  0001 C CNN
F 2 "LED_SMD:LED_0402_1005Metric" V 8650 3100 50  0001 C CNN
F 3 "~" V 8650 3100 50  0001 C CNN
	1    8650 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	8650 3300 8650 3200
$Comp
L power:GND #PWR?
U 1 1 5FD925B6
P 8650 3000
AR Path="/5FD925B6" Ref="#PWR?"  Part="1" 
AR Path="/5D0C5174/5FD925B6" Ref="#PWR?"  Part="1" 
AR Path="/5D1FE04F/5FD925B6" Ref="#PWR?"  Part="1" 
AR Path="/5D4713CF/5FD925B6" Ref="#PWR0507"  Part="1" 
F 0 "#PWR0507" H 8650 2750 50  0001 C CNN
F 1 "GND" H 8655 2827 50  0001 C CNN
F 2 "" H 8650 3000 50  0001 C CNN
F 3 "" H 8650 3000 50  0001 C CNN
	1    8650 3000
	-1   0    0    1   
$EndComp
Wire Wire Line
	8650 3500 8650 3600
Connection ~ 8650 3600
Wire Wire Line
	5900 3900 5950 3900
Text Label 5950 3900 0    50   ~ 0
HEATER_BASE
$Comp
L power:PWR_FLAG #FLG0107
U 1 1 5FEAA38D
P 4600 1350
F 0 "#FLG0107" H 4600 1425 50  0001 C CNN
F 1 "PWR_FLAG" H 4600 1523 50  0000 C CNN
F 2 "" H 4600 1350 50  0001 C CNN
F 3 "~" H 4600 1350 50  0001 C CNN
	1    4600 1350
	1    0    0    -1  
$EndComp
Connection ~ 4600 1350
Wire Wire Line
	4600 1350 4750 1350
$EndSCHEMATC
