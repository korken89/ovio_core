EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 7
Title "OVIO Core"
Date ""
Rev "1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 7300 3700 700  700 
U 5D0C5174
F0 "System Power" 50
F1 "power.sch" 50
$EndSheet
$Sheet
S 7300 4700 700  300 
U 5D1FE04F
F0 "FPGA Config" 50
F1 "config.sch" 50
$EndSheet
$Comp
L Mechanical:MountingHole_Pad H101
U 1 1 5D67CDC6
P 6550 6550
F 0 "H101" H 6650 6599 50  0000 L CNN
F 1 "MountingHole_Pad" H 6650 6508 50  0001 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad_Via" H 6550 6550 50  0001 C CNN
F 3 "~" H 6550 6550 50  0001 C CNN
	1    6550 6550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 5D68F882
P 6550 6650
AR Path="/5D68F882" Ref="#PWR0115"  Part="1" 
AR Path="/5D0C5174/5D68F882" Ref="#PWR?"  Part="1" 
F 0 "#PWR0115" H 6550 6400 50  0001 C CNN
F 1 "GND" H 6555 6477 50  0001 C CNN
F 2 "" H 6550 6650 50  0001 C CNN
F 3 "" H 6550 6650 50  0001 C CNN
	1    6550 6650
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H102
U 1 1 5D691A9C
P 6550 6900
F 0 "H102" H 6650 6949 50  0000 L CNN
F 1 "MountingHole_Pad" H 6650 6858 50  0001 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad_Via" H 6550 6900 50  0001 C CNN
F 3 "~" H 6550 6900 50  0001 C CNN
	1    6550 6900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 5D691AA2
P 6550 7000
AR Path="/5D691AA2" Ref="#PWR0116"  Part="1" 
AR Path="/5D0C5174/5D691AA2" Ref="#PWR?"  Part="1" 
F 0 "#PWR0116" H 6550 6750 50  0001 C CNN
F 1 "GND" H 6555 6827 50  0001 C CNN
F 2 "" H 6550 7000 50  0001 C CNN
F 3 "" H 6550 7000 50  0001 C CNN
	1    6550 7000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H103
U 1 1 5D693E45
P 6550 7250
F 0 "H103" H 6650 7299 50  0000 L CNN
F 1 "MountingHole_Pad" H 6650 7208 50  0001 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad_Via" H 6550 7250 50  0001 C CNN
F 3 "~" H 6550 7250 50  0001 C CNN
	1    6550 7250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 5D693E4B
P 6550 7350
AR Path="/5D693E4B" Ref="#PWR0117"  Part="1" 
AR Path="/5D0C5174/5D693E4B" Ref="#PWR?"  Part="1" 
F 0 "#PWR0117" H 6550 7100 50  0001 C CNN
F 1 "GND" H 6555 7177 50  0001 C CNN
F 2 "" H 6550 7350 50  0001 C CNN
F 3 "" H 6550 7350 50  0001 C CNN
	1    6550 7350
	1    0    0    -1  
$EndComp
$Sheet
S 5900 2300 950  800 
U 5D421130
F0 "2x cameras" 50
F1 "parallel_camera.sch" 50
$EndSheet
Text Label 3750 3700 0    50   ~ 0
IMU_SDI
Text Label 3750 3800 0    50   ~ 0
IMU_SCK
Text Label 3750 3900 0    50   ~ 0
IMU_CS
Text Label 3750 4000 0    50   ~ 0
IMU_SDO
Text Label 3750 4200 0    50   ~ 0
IMU_INT
$Sheet
S 5900 4200 650  900 
U 5D4713CF
F0 "Heated IMU" 50
F1 "sensors.sch" 50
F2 "IMU_SDI" I L 5900 4300 50 
F3 "IMU_SDO" I L 5900 4400 50 
F4 "IMU_SCK" I L 5900 4500 50 
F5 "IMU_CS" I L 5900 4600 50 
F6 "IMU_INT" I L 5900 4700 50 
F7 "HEATER" I L 5900 4900 50 
F8 "V_HEATER" I L 5900 5000 50 
$EndSheet
Text Label 5800 4300 2    50   ~ 0
IMU_SDI
Text Label 5800 4500 2    50   ~ 0
IMU_SCK
Text Label 5800 4600 2    50   ~ 0
IMU_CS
Text Label 5800 4400 2    50   ~ 0
IMU_SDO
Text Label 5800 4700 2    50   ~ 0
IMU_INT
Wire Wire Line
	5800 4300 5900 4300
Wire Wire Line
	5800 4400 5900 4400
Wire Wire Line
	5800 4500 5900 4500
Wire Wire Line
	5800 4600 5900 4600
Wire Wire Line
	5800 4700 5900 4700
Wire Wire Line
	5900 4900 5800 4900
Text Label 5800 4900 2    50   ~ 0
IMU_HEATER
Text Label 3750 4300 0    50   ~ 0
IMU_HEATER
$Sheet
S 7300 2400 1050 1000
U 5D7D6E29
F0 "DDR3 Memory" 50
F1 "ram.sch" 50
$EndSheet
$Comp
L power:+5V #PWR?
U 1 1 60A0944B
P 5800 5000
AR Path="/5D0C5174/60A0944B" Ref="#PWR?"  Part="1" 
AR Path="/60A0944B" Ref="#PWR0114"  Part="1" 
F 0 "#PWR0114" H 5800 4850 50  0001 C CNN
F 1 "+5V" V 5815 5128 50  0000 L CNN
F 2 "" H 5800 5000 50  0001 C CNN
F 3 "" H 5800 5000 50  0001 C CNN
	1    5800 5000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5800 5000 5900 5000
$Comp
L Device:C_Small C101
U 1 1 60B575F2
P 2350 1450
AR Path="/60B575F2" Ref="C101"  Part="1" 
AR Path="/5D0C5174/60B575F2" Ref="C?"  Part="1" 
AR Path="/5D7D6E29/60B575F2" Ref="C?"  Part="1" 
AR Path="/5D80E8D8/60B575F2" Ref="C?"  Part="1" 
F 0 "C101" H 2442 1496 50  0000 L CNN
F 1 "0.1u" H 2442 1405 50  0000 L CNN
F 2 "passive:C_0402" H 2350 1450 50  0001 C CNN
F 3 "~" H 2350 1450 50  0001 C CNN
	1    2350 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C102
U 1 1 60B575F8
P 2700 1450
AR Path="/60B575F8" Ref="C102"  Part="1" 
AR Path="/5D0C5174/60B575F8" Ref="C?"  Part="1" 
AR Path="/5D7D6E29/60B575F8" Ref="C?"  Part="1" 
AR Path="/5D80E8D8/60B575F8" Ref="C?"  Part="1" 
F 0 "C102" H 2792 1496 50  0000 L CNN
F 1 "10n" H 2792 1405 50  0000 L CNN
F 2 "passive:C_0402" H 2700 1450 50  0001 C CNN
F 3 "~" H 2700 1450 50  0001 C CNN
	1    2700 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 60B575FE
P 2350 1550
AR Path="/60B575FE" Ref="#PWR0102"  Part="1" 
AR Path="/5D0C5174/60B575FE" Ref="#PWR?"  Part="1" 
AR Path="/5D7D6E29/60B575FE" Ref="#PWR?"  Part="1" 
AR Path="/5D80E8D8/60B575FE" Ref="#PWR?"  Part="1" 
F 0 "#PWR0102" H 2350 1300 50  0001 C CNN
F 1 "GND" H 2355 1377 50  0001 C CNN
F 2 "" H 2350 1550 50  0001 C CNN
F 3 "" H 2350 1550 50  0001 C CNN
	1    2350 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 60B57604
P 2700 1550
AR Path="/60B57604" Ref="#PWR0103"  Part="1" 
AR Path="/5D0C5174/60B57604" Ref="#PWR?"  Part="1" 
AR Path="/5D7D6E29/60B57604" Ref="#PWR?"  Part="1" 
AR Path="/5D80E8D8/60B57604" Ref="#PWR?"  Part="1" 
F 0 "#PWR0103" H 2700 1300 50  0001 C CNN
F 1 "GND" H 2705 1377 50  0001 C CNN
F 2 "" H 2700 1550 50  0001 C CNN
F 3 "" H 2700 1550 50  0001 C CNN
	1    2700 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C103
U 1 1 60B5760A
P 3000 1450
AR Path="/60B5760A" Ref="C103"  Part="1" 
AR Path="/5D0C5174/60B5760A" Ref="C?"  Part="1" 
AR Path="/5D7D6E29/60B5760A" Ref="C?"  Part="1" 
AR Path="/5D80E8D8/60B5760A" Ref="C?"  Part="1" 
F 0 "C103" H 3092 1496 50  0000 L CNN
F 1 "0.1u" H 3092 1405 50  0000 L CNN
F 2 "passive:C_0402" H 3000 1450 50  0001 C CNN
F 3 "~" H 3000 1450 50  0001 C CNN
	1    3000 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C104
U 1 1 60B57610
P 3350 1450
AR Path="/60B57610" Ref="C104"  Part="1" 
AR Path="/5D0C5174/60B57610" Ref="C?"  Part="1" 
AR Path="/5D7D6E29/60B57610" Ref="C?"  Part="1" 
AR Path="/5D80E8D8/60B57610" Ref="C?"  Part="1" 
F 0 "C104" H 3442 1496 50  0000 L CNN
F 1 "10n" H 3442 1405 50  0000 L CNN
F 2 "passive:C_0402" H 3350 1450 50  0001 C CNN
F 3 "~" H 3350 1450 50  0001 C CNN
	1    3350 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 60B57616
P 3000 1550
AR Path="/60B57616" Ref="#PWR0105"  Part="1" 
AR Path="/5D0C5174/60B57616" Ref="#PWR?"  Part="1" 
AR Path="/5D7D6E29/60B57616" Ref="#PWR?"  Part="1" 
AR Path="/5D80E8D8/60B57616" Ref="#PWR?"  Part="1" 
F 0 "#PWR0105" H 3000 1300 50  0001 C CNN
F 1 "GND" H 3005 1377 50  0001 C CNN
F 2 "" H 3000 1550 50  0001 C CNN
F 3 "" H 3000 1550 50  0001 C CNN
	1    3000 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 60B5761C
P 3350 1550
AR Path="/60B5761C" Ref="#PWR0106"  Part="1" 
AR Path="/5D0C5174/60B5761C" Ref="#PWR?"  Part="1" 
AR Path="/5D7D6E29/60B5761C" Ref="#PWR?"  Part="1" 
AR Path="/5D80E8D8/60B5761C" Ref="#PWR?"  Part="1" 
F 0 "#PWR0106" H 3350 1300 50  0001 C CNN
F 1 "GND" H 3355 1377 50  0001 C CNN
F 2 "" H 3350 1550 50  0001 C CNN
F 3 "" H 3350 1550 50  0001 C CNN
	1    3350 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 1600 2150 1300
Wire Wire Line
	3350 1300 3350 1350
Wire Wire Line
	3000 1350 3000 1300
Wire Wire Line
	2150 1300 2350 1300
Connection ~ 3000 1300
Wire Wire Line
	3000 1300 3350 1300
Wire Wire Line
	2700 1350 2700 1300
Connection ~ 2700 1300
Wire Wire Line
	2700 1300 3000 1300
Wire Wire Line
	2350 1350 2350 1300
Connection ~ 2350 1300
Wire Wire Line
	2350 1300 2700 1300
$Comp
L power:+3V3 #PWR?
U 1 1 60B5762E
P 2050 1300
AR Path="/5D0C5174/60B5762E" Ref="#PWR?"  Part="1" 
AR Path="/5D80E8D8/60B5762E" Ref="#PWR?"  Part="1" 
AR Path="/60B5762E" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 2050 1150 50  0001 C CNN
F 1 "+3V3" V 2065 1428 50  0000 L CNN
F 2 "" H 2050 1300 50  0001 C CNN
F 3 "" H 2050 1300 50  0001 C CNN
	1    2050 1300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2050 1300 2150 1300
Connection ~ 2150 1300
Wire Wire Line
	3650 3700 3750 3700
Wire Wire Line
	3650 3800 3750 3800
Wire Wire Line
	3650 3900 3750 3900
Wire Wire Line
	3650 4000 3750 4000
Wire Wire Line
	3650 4200 3750 4200
Wire Wire Line
	3650 4300 3750 4300
NoConn ~ 3650 2800
NoConn ~ 3650 3200
NoConn ~ 3650 3600
$Comp
L connectors:Conn_01x06 J?
U 1 1 61092E49
P 3950 6650
AR Path="/5D1FE04F/61092E49" Ref="J?"  Part="1" 
AR Path="/61092E49" Ref="J101"  Part="1" 
F 0 "J101" H 3900 6850 50  0000 L CNN
F 1 "Conn_01x06" H 4088 6398 50  0001 L CNN
F 2 "connectors:SM06B-GHS-TB" H 3950 6650 50  0001 C CNN
F 3 "~" H 3950 6650 50  0001 C CNN
	1    3950 6650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 61092E4F
P 4000 7200
AR Path="/61092E4F" Ref="#PWR0109"  Part="1" 
AR Path="/5D0C5174/61092E4F" Ref="#PWR?"  Part="1" 
AR Path="/5D1FE04F/61092E4F" Ref="#PWR?"  Part="1" 
F 0 "#PWR0109" H 4000 6950 50  0001 C CNN
F 1 "GND" H 4005 7027 50  0001 C CNN
F 2 "" H 4000 7200 50  0001 C CNN
F 3 "" H 4000 7200 50  0001 C CNN
	1    4000 7200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 61093A2B
P 3750 7050
AR Path="/61093A2B" Ref="#PWR0108"  Part="1" 
AR Path="/5D0C5174/61093A2B" Ref="#PWR?"  Part="1" 
AR Path="/5D1FE04F/61093A2B" Ref="#PWR?"  Part="1" 
F 0 "#PWR0108" H 3750 6800 50  0001 C CNN
F 1 "GND" H 3755 6877 50  0001 C CNN
F 2 "" H 3750 7050 50  0001 C CNN
F 3 "" H 3750 7050 50  0001 C CNN
	1    3750 7050
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61096E08
P 3750 6550
AR Path="/5D80E8D8/61096E08" Ref="#PWR?"  Part="1" 
AR Path="/5D1FE04F/61096E08" Ref="#PWR?"  Part="1" 
AR Path="/61096E08" Ref="#PWR0107"  Part="1" 
F 0 "#PWR0107" H 3750 6400 50  0001 C CNN
F 1 "+5V" V 3765 6678 50  0000 L CNN
F 2 "" H 3750 6550 50  0001 C CNN
F 3 "" H 3750 6550 50  0001 C CNN
	1    3750 6550
	0    -1   -1   0   
$EndComp
Text Label 3650 6650 2    50   ~ 0
USER_FLASH_OUT
Text Label 3650 6750 2    50   ~ 0
USER_GPIO0
Text Label 3650 6850 2    50   ~ 0
USER_GPIO1
Text Label 3650 6950 2    50   ~ 0
USER_GPIO2
$Comp
L interface_esd:IP4254CZ8-4-TTL U101
U 1 1 6109F23E
P 2500 7000
F 0 "U101" H 2675 7175 50  0000 C CNN
F 1 "IP4254CZ8-4-TTL" H 2675 7084 50  0000 C CNN
F 2 "dfn:UDFN-8-1EP_1.7x1.35mm_P0.4mm_EP0.4x1.2mm" H 2500 6850 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/IP4251_52_53_54-TTL.pdf" H 2700 6350 50  0001 C CNN
	1    2500 7000
	1    0    0    1   
$EndComp
Wire Wire Line
	2950 6650 3750 6650
Wire Wire Line
	2950 6750 3750 6750
Wire Wire Line
	2950 6850 3750 6850
Wire Wire Line
	2950 6950 3750 6950
Wire Wire Line
	2300 6650 2400 6650
Wire Wire Line
	2300 6750 2400 6750
Wire Wire Line
	2300 6850 2400 6850
Wire Wire Line
	2300 6950 2400 6950
$Comp
L power:GND #PWR0104
U 1 1 610A9A88
P 2950 6550
AR Path="/610A9A88" Ref="#PWR0104"  Part="1" 
AR Path="/5D0C5174/610A9A88" Ref="#PWR?"  Part="1" 
AR Path="/5D1FE04F/610A9A88" Ref="#PWR?"  Part="1" 
F 0 "#PWR0104" H 2950 6300 50  0001 C CNN
F 1 "GND" H 2955 6377 50  0001 C CNN
F 2 "" H 2950 6550 50  0001 C CNN
F 3 "" H 2950 6550 50  0001 C CNN
	1    2950 6550
	0    -1   -1   0   
$EndComp
Text Label 2300 6950 2    50   ~ 0
P_USER_GPIO2
Text Label 2300 6850 2    50   ~ 0
P_USER_GPIO1
Text Label 2300 6750 2    50   ~ 0
P_USER_GPIO0
Text Label 2300 6650 2    50   ~ 0
P_USER_FLASH_OUT
Text Label 3750 4500 0    50   ~ 0
P_USER_FLASH_OUT
Text Label 3750 4600 0    50   ~ 0
P_USER_GPIO0
Text Label 3750 4700 0    50   ~ 0
P_USER_GPIO1
Text Label 3750 4800 0    50   ~ 0
P_USER_GPIO2
Wire Wire Line
	3650 4500 3750 4500
Wire Wire Line
	3650 4600 3750 4600
Wire Wire Line
	3650 4700 3750 4700
Wire Wire Line
	3650 4800 3750 4800
$Comp
L Lattice_ECP5_FPGA:ECP5U_85_CABGA381 U102
U 3 1 5FD3BE7E
P 3650 2500
F 0 "U102" H 5278 1361 60  0000 L CNN
F 1 "ECP5U_85_CABGA381" H 5278 1255 60  0000 L CNN
F 2 "bga:caBGA_381_17x17" H 3800 2550 60  0001 R CNN
F 3 "" H 3800 2350 60  0001 R CNN
F 4 "ECP5U_85" H 3800 2450 60  0001 R CNN "manf#"
	3    3650 2500
	-1   0    0    -1  
$EndComp
NoConn ~ 3650 5400
NoConn ~ 3650 5500
NoConn ~ 3650 5600
NoConn ~ 3650 5700
$Comp
L Device:R_Small R?
U 1 1 6119C995
P 4550 5350
AR Path="/5D80E8D8/6119C995" Ref="R?"  Part="1" 
AR Path="/5D421130/6119C995" Ref="R?"  Part="1" 
AR Path="/5D568428/6119C995" Ref="R?"  Part="1" 
AR Path="/6119C995" Ref="R101"  Part="1" 
AR Path="/5FCC988C/6119C995" Ref="R?"  Part="1" 
AR Path="/5D1FE04F/6119C995" Ref="R?"  Part="1" 
F 0 "R101" V 4354 5350 50  0000 C CNN
F 1 "1k" V 4445 5350 50  0000 C CNN
F 2 "passive:R_0402" H 4550 5350 50  0001 C CNN
F 3 "~" H 4550 5350 50  0001 C CNN
	1    4550 5350
	0    -1   1    0   
$EndComp
$Comp
L Device:LED_Small D?
U 1 1 6119C99B
P 4850 5350
AR Path="/5D1FE04F/6119C99B" Ref="D?"  Part="1" 
AR Path="/6119C99B" Ref="D101"  Part="1" 
F 0 "D101" H 4850 5235 50  0000 C CNN
F 1 "LED_Small" H 4850 5494 50  0001 C CNN
F 2 "LED_SMD:LED_0402_1005Metric" V 4850 5350 50  0001 C CNN
F 3 "~" V 4850 5350 50  0001 C CNN
	1    4850 5350
	-1   0    0    1   
$EndComp
Wire Wire Line
	4650 5350 4750 5350
$Comp
L power:GND #PWR0110
U 1 1 611A1C6E
P 5050 5350
AR Path="/611A1C6E" Ref="#PWR0110"  Part="1" 
AR Path="/5D0C5174/611A1C6E" Ref="#PWR?"  Part="1" 
AR Path="/5D1FE04F/611A1C6E" Ref="#PWR?"  Part="1" 
F 0 "#PWR0110" H 5050 5100 50  0001 C CNN
F 1 "GND" H 5055 5177 50  0001 C CNN
F 2 "" H 5050 5350 50  0001 C CNN
F 3 "" H 5050 5350 50  0001 C CNN
	1    5050 5350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5050 5350 4950 5350
Wire Wire Line
	4450 5350 4350 5350
Text Label 4350 5350 2    50   ~ 0
LED1
$Comp
L Device:R_Small R?
U 1 1 611A9908
P 4550 5650
AR Path="/5D80E8D8/611A9908" Ref="R?"  Part="1" 
AR Path="/5D421130/611A9908" Ref="R?"  Part="1" 
AR Path="/5D568428/611A9908" Ref="R?"  Part="1" 
AR Path="/611A9908" Ref="R102"  Part="1" 
AR Path="/5FCC988C/611A9908" Ref="R?"  Part="1" 
AR Path="/5D1FE04F/611A9908" Ref="R?"  Part="1" 
F 0 "R102" V 4354 5650 50  0000 C CNN
F 1 "1k" V 4445 5650 50  0000 C CNN
F 2 "passive:R_0402" H 4550 5650 50  0001 C CNN
F 3 "~" H 4550 5650 50  0001 C CNN
	1    4550 5650
	0    -1   1    0   
$EndComp
$Comp
L Device:LED_Small D?
U 1 1 611A990E
P 4850 5650
AR Path="/5D1FE04F/611A990E" Ref="D?"  Part="1" 
AR Path="/611A990E" Ref="D102"  Part="1" 
F 0 "D102" H 4850 5793 50  0000 C CNN
F 1 "LED_Small" H 4850 5794 50  0001 C CNN
F 2 "LED_SMD:LED_0402_1005Metric" V 4850 5650 50  0001 C CNN
F 3 "~" V 4850 5650 50  0001 C CNN
	1    4850 5650
	-1   0    0    1   
$EndComp
Wire Wire Line
	4650 5650 4750 5650
$Comp
L power:GND #PWR0111
U 1 1 611A9915
P 5050 5650
AR Path="/611A9915" Ref="#PWR0111"  Part="1" 
AR Path="/5D0C5174/611A9915" Ref="#PWR?"  Part="1" 
AR Path="/5D1FE04F/611A9915" Ref="#PWR?"  Part="1" 
F 0 "#PWR0111" H 5050 5400 50  0001 C CNN
F 1 "GND" H 5055 5477 50  0001 C CNN
F 2 "" H 5050 5650 50  0001 C CNN
F 3 "" H 5050 5650 50  0001 C CNN
	1    5050 5650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5050 5650 4950 5650
Wire Wire Line
	4450 5650 4350 5650
$Comp
L Device:R_Small R?
U 1 1 611AB9D5
P 4550 5950
AR Path="/5D80E8D8/611AB9D5" Ref="R?"  Part="1" 
AR Path="/5D421130/611AB9D5" Ref="R?"  Part="1" 
AR Path="/5D568428/611AB9D5" Ref="R?"  Part="1" 
AR Path="/611AB9D5" Ref="R103"  Part="1" 
AR Path="/5FCC988C/611AB9D5" Ref="R?"  Part="1" 
AR Path="/5D1FE04F/611AB9D5" Ref="R?"  Part="1" 
F 0 "R103" V 4354 5950 50  0000 C CNN
F 1 "1k" V 4445 5950 50  0000 C CNN
F 2 "passive:R_0402" H 4550 5950 50  0001 C CNN
F 3 "~" H 4550 5950 50  0001 C CNN
	1    4550 5950
	0    -1   1    0   
$EndComp
$Comp
L Device:LED_Small D?
U 1 1 611AB9DB
P 4850 5950
AR Path="/5D1FE04F/611AB9DB" Ref="D?"  Part="1" 
AR Path="/611AB9DB" Ref="D103"  Part="1" 
F 0 "D103" H 4850 6093 50  0000 C CNN
F 1 "LED_Small" H 4850 6094 50  0001 C CNN
F 2 "LED_SMD:LED_0402_1005Metric" V 4850 5950 50  0001 C CNN
F 3 "~" V 4850 5950 50  0001 C CNN
	1    4850 5950
	-1   0    0    1   
$EndComp
Wire Wire Line
	4650 5950 4750 5950
$Comp
L power:GND #PWR0112
U 1 1 611AB9E2
P 5050 5950
AR Path="/611AB9E2" Ref="#PWR0112"  Part="1" 
AR Path="/5D0C5174/611AB9E2" Ref="#PWR?"  Part="1" 
AR Path="/5D1FE04F/611AB9E2" Ref="#PWR?"  Part="1" 
F 0 "#PWR0112" H 5050 5700 50  0001 C CNN
F 1 "GND" H 5055 5777 50  0001 C CNN
F 2 "" H 5050 5950 50  0001 C CNN
F 3 "" H 5050 5950 50  0001 C CNN
	1    5050 5950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5050 5950 4950 5950
Wire Wire Line
	4450 5950 4350 5950
$Comp
L Device:R_Small R?
U 1 1 611AE19B
P 4550 6250
AR Path="/5D80E8D8/611AE19B" Ref="R?"  Part="1" 
AR Path="/5D421130/611AE19B" Ref="R?"  Part="1" 
AR Path="/5D568428/611AE19B" Ref="R?"  Part="1" 
AR Path="/611AE19B" Ref="R104"  Part="1" 
AR Path="/5FCC988C/611AE19B" Ref="R?"  Part="1" 
AR Path="/5D1FE04F/611AE19B" Ref="R?"  Part="1" 
F 0 "R104" V 4354 6250 50  0000 C CNN
F 1 "1k" V 4445 6250 50  0000 C CNN
F 2 "passive:R_0402" H 4550 6250 50  0001 C CNN
F 3 "~" H 4550 6250 50  0001 C CNN
	1    4550 6250
	0    -1   1    0   
$EndComp
$Comp
L Device:LED_Small D?
U 1 1 611AE1A1
P 4850 6250
AR Path="/5D1FE04F/611AE1A1" Ref="D?"  Part="1" 
AR Path="/611AE1A1" Ref="D104"  Part="1" 
F 0 "D104" H 4850 6393 50  0000 C CNN
F 1 "LED_Small" H 4850 6394 50  0001 C CNN
F 2 "LED_SMD:LED_0402_1005Metric" V 4850 6250 50  0001 C CNN
F 3 "~" V 4850 6250 50  0001 C CNN
	1    4850 6250
	-1   0    0    1   
$EndComp
Wire Wire Line
	4650 6250 4750 6250
$Comp
L power:GND #PWR0113
U 1 1 611AE1A8
P 5050 6250
AR Path="/611AE1A8" Ref="#PWR0113"  Part="1" 
AR Path="/5D0C5174/611AE1A8" Ref="#PWR?"  Part="1" 
AR Path="/5D1FE04F/611AE1A8" Ref="#PWR?"  Part="1" 
F 0 "#PWR0113" H 5050 6000 50  0001 C CNN
F 1 "GND" H 5055 6077 50  0001 C CNN
F 2 "" H 5050 6250 50  0001 C CNN
F 3 "" H 5050 6250 50  0001 C CNN
	1    5050 6250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5050 6250 4950 6250
Wire Wire Line
	4450 6250 4350 6250
Text Label 4350 5650 2    50   ~ 0
LED2
Text Label 4350 5950 2    50   ~ 0
LED3
Text Label 4350 6250 2    50   ~ 0
LED4
Text Label 3750 5000 0    50   ~ 0
LED1
Text Label 3750 5100 0    50   ~ 0
LED2
Text Label 3750 5200 0    50   ~ 0
LED3
Text Label 3750 5300 0    50   ~ 0
LED4
Wire Wire Line
	3650 5000 3750 5000
Wire Wire Line
	3650 5100 3750 5100
Wire Wire Line
	3650 5200 3750 5200
Wire Wire Line
	3650 5300 3750 5300
NoConn ~ 3650 4900
NoConn ~ 3650 4400
NoConn ~ 3650 4100
$Sheet
S 5900 3400 800  500 
U 5D80E8D8
F0 "USB Interface" 50
F1 "usb.sch" 50
$EndSheet
NoConn ~ 3650 2500
NoConn ~ 3650 2600
NoConn ~ 3650 2700
$EndSCHEMATC
