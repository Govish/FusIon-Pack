EESchema Schematic File Version 4
LIBS:USB LED Daughterboard 0-2-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Driver_LED:PCA9685PW U2
U 1 1 5DA77BA2
P 8100 4100
F 0 "U2" H 7700 4950 50  0000 C CNN
F 1 "PCA9685PW" H 8400 3150 50  0000 C CNN
F 2 "Package_SO:TSSOP-28_4.4x9.7mm_P0.65mm" H 8125 3125 50  0001 L CNN
F 3 "http://www.nxp.com/documents/data_sheet/PCA9685.pdf" H 7700 4800 50  0001 C CNN
	1    8100 4100
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_C_Receptacle_USB2.0 J1
U 1 1 5DA7EB93
P 1650 4500
F 0 "J1" H 1757 5367 50  0000 C CNN
F 1 "USB_C_Receptacle_USB2.0" H 1757 5276 50  0000 C CNN
F 2 "Custom-Electromechanical:USB_C_Receptacle_TE_2305018-2" H 1800 4500 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 1800 4500 50  0001 C CNN
	1    1650 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 4100 4650 4000
Wire Wire Line
	4650 4000 4750 4000
Connection ~ 4650 4100
Wire Wire Line
	4650 4100 4750 4100
Wire Wire Line
	4650 4200 4650 4300
Wire Wire Line
	4650 4300 4750 4300
Connection ~ 4650 4200
Wire Wire Line
	4650 4200 4750 4200
NoConn ~ 4750 4400
Wire Wire Line
	2250 4400 2350 4400
Wire Wire Line
	2350 4400 2350 4500
Wire Wire Line
	2350 4500 2250 4500
Wire Wire Line
	2250 4600 2350 4600
Wire Wire Line
	2350 4600 2350 4700
Wire Wire Line
	2350 4700 2250 4700
$Comp
L power:GND #PWR03
U 1 1 5DA9B4FB
P 3350 5500
F 0 "#PWR03" H 3350 5250 50  0001 C CNN
F 1 "GND" H 3355 5327 50  0000 C CNN
F 2 "" H 3350 5500 50  0001 C CNN
F 3 "" H 3350 5500 50  0001 C CNN
	1    3350 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5DA9B8A7
P 1650 5500
F 0 "#PWR01" H 1650 5250 50  0001 C CNN
F 1 "GND" H 1655 5327 50  0000 C CNN
F 2 "" H 1650 5500 50  0001 C CNN
F 3 "" H 1650 5500 50  0001 C CNN
	1    1650 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5DA9C260
P 4650 5500
F 0 "#PWR07" H 4650 5250 50  0001 C CNN
F 1 "GND" H 4655 5327 50  0000 C CNN
F 2 "" H 4650 5500 50  0001 C CNN
F 3 "" H 4650 5500 50  0001 C CNN
	1    4650 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 5500 4650 4900
Wire Wire Line
	4650 4900 4750 4900
Wire Wire Line
	3350 5450 3350 5500
Wire Wire Line
	1650 5400 1650 5450
Wire Wire Line
	1350 5400 1350 5450
Wire Wire Line
	1350 5450 1650 5450
Connection ~ 1650 5450
Wire Wire Line
	1650 5450 1650 5500
Wire Wire Line
	4750 4700 4650 4700
Wire Wire Line
	4650 4700 4650 4800
Connection ~ 4650 4900
Wire Wire Line
	4750 4800 4650 4800
Connection ~ 4650 4800
Wire Wire Line
	4650 4800 4650 4900
Text Notes 4950 5100 0    50   ~ 0
7-bit address 0x28
NoConn ~ 2250 5000
NoConn ~ 2250 5100
$Comp
L Device:C C1
U 1 1 5DA8BF61
P 3600 4550
F 0 "C1" H 3485 4504 50  0000 R CNN
F 1 "1u" H 3485 4595 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3638 4400 50  0001 C CNN
F 3 "~" H 3600 4550 50  0001 C CNN
	1    3600 4550
	-1   0    0    1   
$EndComp
$Comp
L Device:C C3
U 1 1 5DA9297B
P 3950 4550
F 0 "C3" H 3835 4504 50  0000 R CNN
F 1 "1u" H 3835 4595 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3988 4400 50  0001 C CNN
F 3 "~" H 3950 4550 50  0001 C CNN
	1    3950 4550
	-1   0    0    1   
$EndComp
$Comp
L Device:C C5
U 1 1 5DA92E37
P 4300 4550
F 0 "C5" H 4185 4504 50  0000 R CNN
F 1 "1u" H 4185 4595 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4338 4400 50  0001 C CNN
F 3 "~" H 4300 4550 50  0001 C CNN
	1    4300 4550
	-1   0    0    1   
$EndComp
Wire Wire Line
	4300 4400 4300 3800
Wire Wire Line
	4300 3800 4750 3800
Wire Wire Line
	3950 4400 3950 3700
Wire Wire Line
	3950 3700 4750 3700
Wire Wire Line
	3600 4400 3600 3600
Wire Wire Line
	3600 3600 4750 3600
Wire Wire Line
	4300 4700 4300 4900
Wire Wire Line
	4300 4900 4650 4900
Wire Wire Line
	3950 4700 3950 4900
Wire Wire Line
	3950 4900 4300 4900
Connection ~ 4300 4900
Wire Wire Line
	3600 4700 3600 4900
Wire Wire Line
	3600 4900 3950 4900
Connection ~ 3950 4900
Wire Wire Line
	4300 3800 4300 3500
Connection ~ 4300 3800
Wire Wire Line
	4750 3500 4500 3500
Wire Wire Line
	4500 3500 4500 2650
$Comp
L power:+3.3V #PWR06
U 1 1 5DA981B9
P 4300 3500
F 0 "#PWR06" H 4300 3350 50  0001 C CNN
F 1 "+3.3V" H 4300 3650 50  0000 C CNN
F 2 "" H 4300 3500 50  0001 C CNN
F 3 "" H 4300 3500 50  0001 C CNN
	1    4300 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 3400 8850 3400
Wire Wire Line
	8850 3400 8850 2050
Wire Wire Line
	8800 3500 8900 3500
Wire Wire Line
	8900 3500 8900 2250
Wire Wire Line
	8800 3600 8950 3600
Wire Wire Line
	8950 3600 8950 2450
Wire Wire Line
	8800 3700 9050 3700
Wire Wire Line
	9050 3700 9050 2850
Wire Wire Line
	8800 3800 9100 3800
Wire Wire Line
	9100 3800 9100 3050
Wire Wire Line
	8800 3900 9150 3900
Wire Wire Line
	9150 3900 9150 3250
Wire Wire Line
	8800 4000 9250 4000
Wire Wire Line
	9250 4000 9250 3650
Wire Wire Line
	8800 4100 9300 4100
Wire Wire Line
	9300 4100 9300 3850
Wire Wire Line
	8800 4400 9300 4400
Wire Wire Line
	9300 4400 9300 4650
Wire Wire Line
	8800 4500 9250 4500
Wire Wire Line
	9250 4500 9250 4850
Wire Wire Line
	8800 4600 9150 4600
Wire Wire Line
	9150 4600 9150 5250
Wire Wire Line
	8800 4700 9100 4700
Wire Wire Line
	9100 4700 9100 5450
Wire Wire Line
	8800 4800 9050 4800
Wire Wire Line
	9050 4800 9050 5650
Wire Wire Line
	9050 5650 9450 5650
Wire Wire Line
	9100 5450 9450 5450
Wire Wire Line
	9150 5250 9450 5250
Wire Wire Line
	9250 4850 9450 4850
Wire Wire Line
	9300 4650 9450 4650
Wire Wire Line
	9350 4450 9450 4450
Wire Wire Line
	9350 4300 9350 4450
Wire Wire Line
	8800 4300 9350 4300
Wire Wire Line
	9350 4050 9450 4050
Wire Wire Line
	9350 4200 9350 4050
Wire Wire Line
	8800 4200 9350 4200
Wire Wire Line
	9300 3850 9450 3850
Wire Wire Line
	9250 3650 9450 3650
Wire Wire Line
	9150 3250 9450 3250
Wire Wire Line
	9100 3050 9450 3050
Wire Wire Line
	9050 2850 9450 2850
Wire Wire Line
	8950 2450 9450 2450
Wire Wire Line
	8900 2250 9450 2250
Wire Wire Line
	8850 2050 9450 2050
$Comp
L Device:R R14
U 1 1 5DAA5C34
P 9600 2050
F 0 "R14" V 9500 2050 50  0000 C CNN
F 1 "75R" V 9484 2050 50  0001 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9530 2050 50  0001 C CNN
F 3 "~" H 9600 2050 50  0001 C CNN
	1    9600 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	9750 2050 9850 2050
Wire Wire Line
	9750 2250 9850 2250
Wire Wire Line
	9750 2450 9850 2450
Wire Wire Line
	9750 2850 9850 2850
Wire Wire Line
	9750 3050 9850 3050
Wire Wire Line
	9750 3250 9850 3250
Wire Wire Line
	9750 3650 9850 3650
Wire Wire Line
	9750 3850 9850 3850
Wire Wire Line
	9750 4050 9850 4050
Wire Wire Line
	9750 4450 9850 4450
Wire Wire Line
	9750 4650 9850 4650
Wire Wire Line
	9750 4850 9850 4850
Wire Wire Line
	9750 5250 9850 5250
Wire Wire Line
	9750 5450 9850 5450
Wire Wire Line
	9750 5650 9850 5650
Wire Wire Line
	10450 1650 10450 2250
Wire Wire Line
	10450 5450 10250 5450
Wire Wire Line
	10250 4650 10450 4650
Connection ~ 10450 4650
Wire Wire Line
	10450 4650 10450 5450
Wire Wire Line
	10250 3850 10450 3850
Connection ~ 10450 3850
Wire Wire Line
	10450 3850 10450 4650
Wire Wire Line
	10250 3050 10450 3050
Connection ~ 10450 3050
Wire Wire Line
	10450 3050 10450 3850
Wire Wire Line
	10250 2250 10450 2250
Connection ~ 10450 2250
Wire Wire Line
	10450 2250 10450 3050
$Comp
L power:+3.3V #PWR016
U 1 1 5DB37E24
P 10450 1650
F 0 "#PWR016" H 10450 1500 50  0001 C CNN
F 1 "+3.3V" H 10450 1800 50  0000 C CNN
F 2 "" H 10450 1650 50  0001 C CNN
F 3 "" H 10450 1650 50  0001 C CNN
	1    10450 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 6100 8950 6100
Wire Wire Line
	8950 6100 8950 4900
Wire Wire Line
	8950 4900 8800 4900
$Comp
L Connector:TestPoint_Probe TP8
U 1 1 5DB4DD6E
P 9900 6100
F 0 "TP8" H 10053 6155 50  0000 L CNN
F 1 "TestPoint_Probe" H 10053 6110 50  0001 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 10100 6100 50  0001 C CNN
F 3 "~" H 10100 6100 50  0001 C CNN
	1    9900 6100
	1    0    0    -1  
$EndComp
Text Label 9600 6100 0    50   ~ 0
CH_15
$Comp
L power:+3.3V #PWR013
U 1 1 5DB4EEEE
P 8100 2600
F 0 "#PWR013" H 8100 2450 50  0001 C CNN
F 1 "+3.3V" H 8100 2750 50  0000 C CNN
F 2 "" H 8100 2600 50  0001 C CNN
F 3 "" H 8100 2600 50  0001 C CNN
	1    8100 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 2600 8100 2650
$Comp
L Device:C C6
U 1 1 5DB52D82
P 8400 2850
F 0 "C6" H 8515 2896 50  0000 L CNN
F 1 "100n" H 8515 2805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8438 2700 50  0001 C CNN
F 3 "~" H 8400 2850 50  0001 C CNN
	1    8400 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 2650 8400 2650
Wire Wire Line
	8400 2650 8400 2700
Connection ~ 8100 2650
Wire Wire Line
	8100 2650 8100 3100
$Comp
L power:GND #PWR015
U 1 1 5DB5ADE0
P 8400 3050
F 0 "#PWR015" H 8400 2800 50  0001 C CNN
F 1 "GND" H 8405 2877 50  0000 C CNN
F 2 "" H 8400 3050 50  0001 C CNN
F 3 "" H 8400 3050 50  0001 C CNN
	1    8400 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 3000 8400 3050
$Comp
L power:GND #PWR014
U 1 1 5DB69830
P 8100 5300
F 0 "#PWR014" H 8100 5050 50  0001 C CNN
F 1 "GND" H 8105 5127 50  0000 C CNN
F 2 "" H 8100 5300 50  0001 C CNN
F 3 "" H 8100 5300 50  0001 C CNN
	1    8100 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 5200 8100 5300
$Comp
L power:GND #PWR010
U 1 1 5DB6DFF4
P 7300 5300
F 0 "#PWR010" H 7300 5050 50  0001 C CNN
F 1 "GND" H 7305 5127 50  0000 C CNN
F 2 "" H 7300 5300 50  0001 C CNN
F 3 "" H 7300 5300 50  0001 C CNN
	1    7300 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 4300 7300 4300
Wire Wire Line
	7300 4300 7300 4400
Wire Wire Line
	7400 4400 7300 4400
Connection ~ 7300 4400
Wire Wire Line
	7300 4400 7300 4500
Wire Wire Line
	7300 4500 7400 4500
Connection ~ 7300 4500
Wire Wire Line
	7300 4500 7300 4600
Wire Wire Line
	7400 4600 7300 4600
Connection ~ 7300 4600
Wire Wire Line
	7300 4600 7300 4700
Wire Wire Line
	7300 4700 7400 4700
Connection ~ 7300 4700
Wire Wire Line
	7300 4700 7300 4800
Wire Wire Line
	7400 4800 7300 4800
Connection ~ 7300 4800
Wire Wire Line
	7300 4800 7300 5300
Wire Wire Line
	7300 4300 7300 3700
Wire Wire Line
	7300 3700 7400 3700
Connection ~ 7300 4300
Wire Wire Line
	7400 3600 7300 3600
Wire Wire Line
	7300 3600 7300 3700
Connection ~ 7300 3700
Wire Wire Line
	5950 4400 6900 4400
Wire Wire Line
	6900 4400 6900 3500
Wire Wire Line
	6900 3500 7000 3500
Wire Wire Line
	5950 4300 6800 4300
Wire Wire Line
	6800 4300 6800 3400
Wire Wire Line
	6800 3400 7400 3400
$Comp
L Device:R R13
U 1 1 5DB9EE8E
P 7000 3150
F 0 "R13" H 7070 3196 50  0000 L CNN
F 1 "1K" H 7070 3105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6930 3150 50  0001 C CNN
F 3 "~" H 7000 3150 50  0001 C CNN
	1    7000 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 5DB9FFB5
P 6800 3150
F 0 "R12" H 6730 3104 50  0000 R CNN
F 1 "1K" H 6730 3195 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6730 3150 50  0001 C CNN
F 3 "~" H 6800 3150 50  0001 C CNN
	1    6800 3150
	1    0    0    1   
$EndComp
Wire Wire Line
	6800 3300 6800 3400
Connection ~ 6800 3400
Wire Wire Line
	7000 3300 7000 3500
Connection ~ 7000 3500
Wire Wire Line
	7000 3500 7400 3500
Wire Wire Line
	6800 3000 6800 2650
Wire Wire Line
	6800 2650 7000 2650
Wire Wire Line
	7000 3000 7000 2650
Connection ~ 7000 2650
Wire Wire Line
	7000 2650 8100 2650
Wire Wire Line
	2250 4100 3450 4100
Wire Wire Line
	2250 4200 3250 4200
Wire Wire Line
	3250 5000 3250 4200
Connection ~ 3250 4200
Wire Wire Line
	3250 4200 4650 4200
Wire Wire Line
	3450 4100 3450 5000
Connection ~ 3450 4100
Wire Wire Line
	3450 4100 4650 4100
Wire Wire Line
	2350 4600 3100 4600
Connection ~ 2350 4600
Wire Wire Line
	2350 4500 2900 4500
Connection ~ 2350 4500
Text Notes 7250 4950 1    50   ~ 0
7-bit address 0x40
Text Notes 7000 6500 0    50   ~ 0
MCP3425A0T 7-bit address: 0x68
Text Notes 7050 6400 0    50   ~ 0
BQ7693002 7-bit address: 0x08
Text Notes 7000 6300 0    50   ~ 0
(BQ7693006 7-bit address: 0x18)
$Comp
L Custom-DiscreteSymbols:SESDONCAN1LT1G D2
U 1 1 5DBFFF71
P 3350 5350
F 0 "D2" H 3528 5521 50  0000 L CNN
F 1 "SESDONCAN1LT1G" H 3528 5430 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3350 5350 50  0001 C CNN
F 3 "https://www.onsemi.com/pub/Collateral/ESDONCAN1-D.PDF" H 3350 5350 50  0001 C CNN
	1    3350 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 3900 3400 3900
Wire Wire Line
	3400 3900 3400 1900
$Comp
L Device:R R2
U 1 1 5DC25E9A
P 4500 2500
F 0 "R2" H 4430 2454 50  0000 R CNN
F 1 "1K" H 4430 2545 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4430 2500 50  0001 C CNN
F 3 "~" H 4500 2500 50  0001 C CNN
	1    4500 2500
	1    0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 5DC2D6F5
P 4500 2100
F 0 "R1" H 4431 2054 50  0000 R CNN
F 1 "100R" H 4431 2145 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4430 2100 50  0001 C CNN
F 3 "~" H 4500 2100 50  0001 C CNN
	1    4500 2100
	1    0    0    1   
$EndComp
Wire Wire Line
	4500 1900 4500 1950
Wire Wire Line
	4500 2250 4500 2300
$Comp
L Device:C C4
U 1 1 5DC3C624
P 4100 2500
F 0 "C4" H 3985 2454 50  0000 R CNN
F 1 "1u" H 3985 2545 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4138 2350 50  0001 C CNN
F 3 "~" H 4100 2500 50  0001 C CNN
	1    4100 2500
	1    0    0    1   
$EndComp
Wire Wire Line
	4100 2350 4100 2300
Wire Wire Line
	4100 2300 4500 2300
Connection ~ 4500 2300
Wire Wire Line
	4500 2300 4500 2350
Wire Wire Line
	4100 2700 4100 2650
$Comp
L power:GND #PWR05
U 1 1 5DC4C96E
P 4100 2700
F 0 "#PWR05" H 4100 2450 50  0001 C CNN
F 1 "GND" H 4105 2527 50  0000 C CNN
F 2 "" H 4100 2700 50  0001 C CNN
F 3 "" H 4100 2700 50  0001 C CNN
	1    4100 2700
	1    0    0    -1  
$EndComp
Connection ~ 4500 1900
$Comp
L Custom-InterfaceIC:STUSB4500 U1
U 1 1 5DA766FC
P 5350 4200
F 0 "U1" H 5400 5165 50  0000 C CNN
F 1 "STUSB4500" H 5400 5074 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-24-1EP_4x4mm_P0.5mm_EP2.7x2.7mm" H 5350 4200 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/stusb4500.pdf" H 5350 4200 50  0001 C CNN
	1    5350 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 1900 4500 1900
Wire Wire Line
	3400 1900 3750 1900
Connection ~ 3750 1900
Wire Wire Line
	3750 1900 3750 2350
$Comp
L Device:C C2
U 1 1 5DC16808
P 3750 2500
F 0 "C2" H 3635 2454 50  0000 R CNN
F 1 "1u" H 3635 2545 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3788 2350 50  0001 C CNN
F 3 "~" H 3750 2500 50  0001 C CNN
	1    3750 2500
	1    0    0    1   
$EndComp
Wire Wire Line
	3750 2750 3750 2650
$Comp
L power:GND #PWR04
U 1 1 5DC257E0
P 3750 2750
F 0 "#PWR04" H 3750 2500 50  0001 C CNN
F 1 "GND" H 3755 2577 50  0000 C CNN
F 2 "" H 3750 2750 50  0001 C CNN
F 3 "" H 3750 2750 50  0001 C CNN
	1    3750 2750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5950 3600 6000 3600
Wire Wire Line
	5950 3500 6100 3500
Wire Notes Line
	6750 3000 6700 2600
Text Notes 7900 2600 2    50   ~ 0
Really aggressive pull-ups\ni know but these span 4 \ndevices all over the board\nand 1K's are in the BOM already
$Comp
L Device:D_Zener_ALT D8
U 1 1 5DCE37B2
P 5500 2100
F 0 "D8" V 5450 1900 50  0000 L CNN
F 1 "PDZ12BGWJ" V 5550 1550 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 5500 2100 50  0001 C CNN
F 3 "~" H 5500 2100 50  0001 C CNN
	1    5500 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	6000 3600 6000 2700
Wire Wire Line
	6100 2700 6100 3500
Connection ~ 6100 2300
Wire Wire Line
	6100 2300 6100 2400
$Comp
L Device:R R9
U 1 1 5DD1FFC9
P 6100 2550
F 0 "R9" H 6031 2504 50  0000 R CNN
F 1 "10K" H 6031 2595 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6030 2550 50  0001 C CNN
F 3 "~" H 6100 2550 50  0001 C CNN
	1    6100 2550
	1    0    0    1   
$EndComp
Connection ~ 5700 2300
Wire Wire Line
	5500 2300 5700 2300
Wire Wire Line
	5500 2250 5500 2300
Wire Wire Line
	5500 1900 5700 1900
Connection ~ 5500 1900
Wire Wire Line
	5500 1900 5500 1950
Wire Wire Line
	6100 2300 6100 2200
Wire Wire Line
	5700 2300 6100 2300
Wire Wire Line
	5700 2250 5700 2300
Wire Wire Line
	5700 1900 5900 1900
Connection ~ 5700 1900
Wire Wire Line
	5700 1900 5700 1950
$Comp
L Device:R R3
U 1 1 5DCA6D8A
P 5700 2100
F 0 "R3" H 5770 2146 50  0000 L CNN
F 1 "240K" H 5770 2055 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5630 2100 50  0001 C CNN
F 3 "~" H 5700 2100 50  0001 C CNN
	1    5700 2100
	1    0    0    -1  
$EndComp
$Comp
L Custom-DiscreteSymbols:SQJ479EP Q1
U 1 1 5DA8F4DA
P 6100 2000
F 0 "Q1" V 6450 1850 50  0000 L CNN
F 1 "SQJ479EP" V 6350 1850 50  0000 L CNN
F 2 "Custom-DiscreteSemi:Vishay_PowerPAK_SO-8" H 6300 2100 50  0001 C CNN
F 3 "http://www.vishay.com/docs/75129/sqj479ep.pdf" H 6100 2000 50  0001 C CNN
	1    6100 2000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4900 1900 5500 1900
Wire Wire Line
	4500 1900 4900 1900
Connection ~ 4900 1900
Wire Wire Line
	6000 2700 4900 2700
Wire Wire Line
	4900 2700 4900 1900
Wire Wire Line
	5950 3800 6200 3800
Wire Wire Line
	6200 3800 6200 2300
Wire Wire Line
	6200 2300 6350 2300
Wire Wire Line
	6350 2300 6350 2250
$Comp
L Device:R R11
U 1 1 5DE572E1
P 6350 2100
F 0 "R11" H 6420 2146 50  0000 L CNN
F 1 "1K" H 6420 2055 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6280 2100 50  0001 C CNN
F 3 "~" H 6350 2100 50  0001 C CNN
	1    6350 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 1900 6350 1900
Wire Wire Line
	6350 1900 6350 1950
$Comp
L Device:R R10
U 1 1 5DE622B5
P 6150 5150
F 0 "R10" H 6220 5196 50  0000 L CNN
F 1 "240K" H 6220 5105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6080 5150 50  0001 C CNN
F 3 "~" H 6150 5150 50  0001 C CNN
	1    6150 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 4900 6150 4900
Wire Wire Line
	6150 4900 6150 5000
$Comp
L power:GND #PWR09
U 1 1 5DE6D938
P 6150 5500
F 0 "#PWR09" H 6150 5250 50  0001 C CNN
F 1 "GND" H 6155 5327 50  0000 C CNN
F 2 "" H 6150 5500 50  0001 C CNN
F 3 "" H 6150 5500 50  0001 C CNN
	1    6150 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 5300 6150 5500
Wire Notes Line
	9800 5750 9400 5750
Wire Notes Line
	9400 5750 9400 1750
Wire Notes Line
	9400 1750 9800 1750
Wire Notes Line
	9800 1750 9800 5750
Text Notes 9650 1850 2    50   ~ 0
75R
Wire Wire Line
	6400 4800 6050 4800
Wire Wire Line
	6400 4700 6050 4700
Wire Wire Line
	6400 4600 6050 4600
Wire Wire Line
	6400 4100 5950 4100
Wire Wire Line
	6400 4000 5950 4000
Wire Wire Line
	6400 3900 5950 3900
$Comp
L Connector:TestPoint_Probe TP6
U 1 1 5DF02292
P 6400 4800
F 0 "TP6" H 6553 4855 50  0000 L CNN
F 1 "TestPoint_Probe" H 6553 4810 50  0001 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 6600 4800 50  0001 C CNN
F 3 "~" H 6600 4800 50  0001 C CNN
	1    6400 4800
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Probe TP5
U 1 1 5DF02B40
P 6400 4700
F 0 "TP5" H 6553 4755 50  0000 L CNN
F 1 "TestPoint_Probe" H 6553 4710 50  0001 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 6600 4700 50  0001 C CNN
F 3 "~" H 6600 4700 50  0001 C CNN
	1    6400 4700
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Probe TP4
U 1 1 5DF02DD2
P 6400 4600
F 0 "TP4" H 6553 4655 50  0000 L CNN
F 1 "TestPoint_Probe" H 6553 4610 50  0001 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 6600 4600 50  0001 C CNN
F 3 "~" H 6600 4600 50  0001 C CNN
	1    6400 4600
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Probe TP3
U 1 1 5DF040F2
P 6400 4100
F 0 "TP3" H 6553 4155 50  0000 L CNN
F 1 "TestPoint_Probe" H 6553 4110 50  0001 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 6600 4100 50  0001 C CNN
F 3 "~" H 6600 4100 50  0001 C CNN
	1    6400 4100
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Probe TP2
U 1 1 5DF040F8
P 6400 4000
F 0 "TP2" H 6553 4055 50  0000 L CNN
F 1 "TestPoint_Probe" H 6553 4010 50  0001 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 6600 4000 50  0001 C CNN
F 3 "~" H 6600 4000 50  0001 C CNN
	1    6400 4000
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Probe TP1
U 1 1 5DF040FE
P 6400 3900
F 0 "TP1" H 6553 3955 50  0000 L CNN
F 1 "TestPoint_Probe" H 6553 3910 50  0001 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 6600 3900 50  0001 C CNN
F 3 "~" H 6600 3900 50  0001 C CNN
	1    6400 3900
	1    0    0    -1  
$EndComp
$Comp
L Custom-DiscreteSymbols:PACDN042Y3R D1
U 1 1 5DF6EEEB
P 3000 5350
F 0 "D1" H 3300 5500 50  0000 R CNN
F 1 "PACDN042Y3R" H 3750 5400 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3000 5350 50  0001 C CNN
F 3 "https://www.onsemi.com/pub/Collateral/PACDN042-D.PDF" H 3000 5350 50  0001 C CNN
	1    3000 5350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3100 4600 3100 5100
Connection ~ 3100 4600
Wire Wire Line
	2900 5100 2900 4500
Connection ~ 2900 4500
Wire Wire Line
	2900 4500 3000 4500
Wire Wire Line
	3000 5500 3000 5450
$Comp
L power:GND #PWR02
U 1 1 5DFAE1CC
P 3000 5500
F 0 "#PWR02" H 3000 5250 50  0001 C CNN
F 1 "GND" H 3005 5327 50  0000 C CNN
F 2 "" H 3000 5500 50  0001 C CNN
F 3 "" H 3000 5500 50  0001 C CNN
	1    3000 5500
	1    0    0    -1  
$EndComp
Text Label 6100 4800 0    50   ~ 0
ALERT
Text Label 6100 4700 0    50   ~ 0
ATTACH
Text Label 6100 4600 0    50   ~ 0
A_B
Text Label 6100 4400 0    50   ~ 0
SDA
Text Label 6100 4300 0    50   ~ 0
SCL
Text Label 6100 4100 0    50   ~ 0
GPIO
Text Label 6100 4000 0    50   ~ 0
PDO2
Text Label 6100 3900 0    50   ~ 0
PDO3
$Comp
L Device:LED D3
U 1 1 5DFB3EE9
P 5450 6250
F 0 "D3" H 5450 6150 50  0000 C CNN
F 1 "RED" H 5600 6200 50  0001 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Castellated" H 5450 6250 50  0001 C CNN
F 3 "~" H 5450 6250 50  0001 C CNN
	1    5450 6250
	1    0    0    1   
$EndComp
$Comp
L Device:LED D4
U 1 1 5DFB59DC
P 5450 6450
F 0 "D4" H 5450 6350 50  0000 C CNN
F 1 "RED" H 5600 6400 50  0001 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Castellated" H 5450 6450 50  0001 C CNN
F 3 "~" H 5450 6450 50  0001 C CNN
	1    5450 6450
	1    0    0    1   
$EndComp
$Comp
L Device:LED D5
U 1 1 5DFB5D60
P 5450 6650
F 0 "D5" H 5450 6550 50  0000 C CNN
F 1 "RED" H 5600 6600 50  0001 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Castellated" H 5450 6650 50  0001 C CNN
F 3 "~" H 5450 6650 50  0001 C CNN
	1    5450 6650
	1    0    0    1   
$EndComp
$Comp
L Device:LED D6
U 1 1 5DFB5F5A
P 5450 6850
F 0 "D6" H 5450 6750 50  0000 C CNN
F 1 "RED" H 5600 6800 50  0001 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Castellated" H 5450 6850 50  0001 C CNN
F 3 "~" H 5450 6850 50  0001 C CNN
	1    5450 6850
	1    0    0    1   
$EndComp
$Comp
L Device:LED D7
U 1 1 5DFB623E
P 5450 7050
F 0 "D7" H 5450 6950 50  0000 C CNN
F 1 "RED" H 5600 7000 50  0001 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Castellated" H 5450 7050 50  0001 C CNN
F 3 "~" H 5450 7050 50  0001 C CNN
	1    5450 7050
	1    0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 5DFB6CF0
P 5850 6250
F 0 "R4" V 5750 6250 50  0000 C CNN
F 1 "390R" V 5734 6250 50  0001 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5780 6250 50  0001 C CNN
F 3 "~" H 5850 6250 50  0001 C CNN
	1    5850 6250
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5DFB9800
P 5850 6450
F 0 "R5" V 5750 6450 50  0000 C CNN
F 1 "390R" V 5734 6450 50  0001 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5780 6450 50  0001 C CNN
F 3 "~" H 5850 6450 50  0001 C CNN
	1    5850 6450
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5DFB99EE
P 5850 6650
F 0 "R6" V 5750 6650 50  0000 C CNN
F 1 "390R" V 5734 6650 50  0001 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5780 6650 50  0001 C CNN
F 3 "~" H 5850 6650 50  0001 C CNN
	1    5850 6650
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5DFB9C77
P 5850 6850
F 0 "R7" V 5750 6850 50  0000 C CNN
F 1 "390R" V 5734 6850 50  0001 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5780 6850 50  0001 C CNN
F 3 "~" H 5850 6850 50  0001 C CNN
	1    5850 6850
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 5DFB9E8E
P 5850 7050
F 0 "R8" V 5750 7050 50  0000 C CNN
F 1 "390R" V 5734 7050 50  0001 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5780 7050 50  0001 C CNN
F 3 "~" H 5850 7050 50  0001 C CNN
	1    5850 7050
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR08
U 1 1 5DFBA3DA
P 6100 6150
F 0 "#PWR08" H 6100 6000 50  0001 C CNN
F 1 "+3.3V" H 6100 6300 50  0000 C CNN
F 2 "" H 6100 6150 50  0001 C CNN
F 3 "" H 6100 6150 50  0001 C CNN
	1    6100 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 6150 6100 6250
Wire Wire Line
	6100 7050 6000 7050
Wire Wire Line
	6000 6850 6100 6850
Connection ~ 6100 6850
Wire Wire Line
	6100 6650 6000 6650
Connection ~ 6100 6650
Wire Wire Line
	6100 6650 6100 6850
Wire Wire Line
	6000 6450 6100 6450
Connection ~ 6100 6450
Wire Wire Line
	6100 6450 6100 6650
Wire Wire Line
	6100 6250 6000 6250
Connection ~ 6100 6250
Wire Wire Line
	6100 6250 6100 6450
Wire Wire Line
	5700 6250 5600 6250
Wire Wire Line
	5600 6450 5700 6450
Wire Wire Line
	5700 6650 5600 6650
Wire Wire Line
	5600 6850 5700 6850
Wire Wire Line
	5700 7050 5600 7050
Wire Notes Line
	5650 6100 6050 6100
Wire Wire Line
	4800 6250 5300 6250
Wire Wire Line
	4800 6450 5300 6450
Wire Wire Line
	4800 6650 5300 6650
Wire Wire Line
	4800 6850 5300 6850
Wire Wire Line
	4800 7050 5300 7050
Text Label 4800 6250 0    50   ~ 0
PDO3
Text Label 4800 6450 0    50   ~ 0
PDO2
Text Label 4800 6650 0    50   ~ 0
A_B
Text Label 4800 6850 0    50   ~ 0
ATTACH
Text Label 4800 7050 0    50   ~ 0
GPIO
Wire Wire Line
	6350 1900 7400 1900
Connection ~ 6350 1900
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J2
U 1 1 5E0D0712
P 7650 1500
F 0 "J2" H 7700 1825 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 7700 1826 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical" H 7650 1500 50  0001 C CNN
F 3 "~" H 7650 1500 50  0001 C CNN
	1    7650 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 1700 8000 1700
Wire Wire Line
	8000 1700 8000 1900
Wire Wire Line
	7450 1700 7400 1700
Wire Wire Line
	7400 1700 7400 1900
Connection ~ 7400 1900
Wire Wire Line
	7400 1900 8000 1900
Wire Wire Line
	7450 1600 7300 1600
Wire Wire Line
	7300 1600 7300 2000
Wire Wire Line
	7300 2000 8100 2000
Wire Wire Line
	8100 2000 8100 1600
Wire Wire Line
	8100 1600 7950 1600
$Comp
L power:GND #PWR012
U 1 1 5E1029DF
P 8100 2100
F 0 "#PWR012" H 8100 1850 50  0001 C CNN
F 1 "GND" H 8105 1927 50  0000 C CNN
F 2 "" H 8100 2100 50  0001 C CNN
F 3 "" H 8100 2100 50  0001 C CNN
	1    8100 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 2000 8100 2100
Connection ~ 8100 2000
Wire Wire Line
	8250 1400 7950 1400
Wire Wire Line
	8250 1500 7950 1500
Wire Wire Line
	3100 1500 7450 1500
Wire Wire Line
	3100 1500 3100 4600
Wire Wire Line
	3000 1400 7450 1400
Wire Wire Line
	3000 1400 3000 4500
Text Label 7250 1500 0    50   ~ 0
D+
Text Label 7250 1400 0    50   ~ 0
D-
Text Label 8250 1400 2    50   ~ 0
SDA
Text Label 8250 1500 2    50   ~ 0
SCL
Wire Wire Line
	8250 1300 7950 1300
Text Label 8250 1300 2    50   ~ 0
ALERT
Wire Wire Line
	7450 1300 7350 1300
Wire Wire Line
	7350 1300 7350 1050
$Comp
L power:+3.3V #PWR011
U 1 1 5E1907B6
P 7350 1050
F 0 "#PWR011" H 7350 900 50  0001 C CNN
F 1 "+3.3V" H 7350 1200 50  0000 C CNN
F 2 "" H 7350 1050 50  0001 C CNN
F 3 "" H 7350 1050 50  0001 C CNN
	1    7350 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R15
U 1 1 5E213720
P 9600 2250
F 0 "R15" V 9500 2250 50  0000 C CNN
F 1 "75R" V 9484 2250 50  0001 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9530 2250 50  0001 C CNN
F 3 "~" H 9600 2250 50  0001 C CNN
	1    9600 2250
	0    1    1    0   
$EndComp
$Comp
L Device:R R16
U 1 1 5E21385F
P 9600 2450
F 0 "R16" V 9500 2450 50  0000 C CNN
F 1 "75R" V 9484 2450 50  0001 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9530 2450 50  0001 C CNN
F 3 "~" H 9600 2450 50  0001 C CNN
	1    9600 2450
	0    1    1    0   
$EndComp
$Comp
L Device:R R17
U 1 1 5E21430A
P 9600 2850
F 0 "R17" V 9500 2850 50  0000 C CNN
F 1 "75R" V 9484 2850 50  0001 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9530 2850 50  0001 C CNN
F 3 "~" H 9600 2850 50  0001 C CNN
	1    9600 2850
	0    1    1    0   
$EndComp
$Comp
L Device:R R18
U 1 1 5E214310
P 9600 3050
F 0 "R18" V 9500 3050 50  0000 C CNN
F 1 "75R" V 9484 3050 50  0001 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9530 3050 50  0001 C CNN
F 3 "~" H 9600 3050 50  0001 C CNN
	1    9600 3050
	0    1    1    0   
$EndComp
$Comp
L Device:R R19
U 1 1 5E214316
P 9600 3250
F 0 "R19" V 9500 3250 50  0000 C CNN
F 1 "75R" V 9484 3250 50  0001 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9530 3250 50  0001 C CNN
F 3 "~" H 9600 3250 50  0001 C CNN
	1    9600 3250
	0    1    1    0   
$EndComp
$Comp
L Device:R R20
U 1 1 5E225B86
P 9600 3650
F 0 "R20" V 9500 3650 50  0000 C CNN
F 1 "75R" V 9484 3650 50  0001 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9530 3650 50  0001 C CNN
F 3 "~" H 9600 3650 50  0001 C CNN
	1    9600 3650
	0    1    1    0   
$EndComp
$Comp
L Device:R R21
U 1 1 5E225B8C
P 9600 3850
F 0 "R21" V 9500 3850 50  0000 C CNN
F 1 "75R" V 9484 3850 50  0001 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9530 3850 50  0001 C CNN
F 3 "~" H 9600 3850 50  0001 C CNN
	1    9600 3850
	0    1    1    0   
$EndComp
$Comp
L Device:R R22
U 1 1 5E225B92
P 9600 4050
F 0 "R22" V 9500 4050 50  0000 C CNN
F 1 "75R" V 9484 4050 50  0001 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9530 4050 50  0001 C CNN
F 3 "~" H 9600 4050 50  0001 C CNN
	1    9600 4050
	0    1    1    0   
$EndComp
$Comp
L Device:R R23
U 1 1 5E2375CD
P 9600 4450
F 0 "R23" V 9500 4450 50  0000 C CNN
F 1 "75R" V 9484 4450 50  0001 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9530 4450 50  0001 C CNN
F 3 "~" H 9600 4450 50  0001 C CNN
	1    9600 4450
	0    1    1    0   
$EndComp
$Comp
L Device:R R24
U 1 1 5E2375D3
P 9600 4650
F 0 "R24" V 9500 4650 50  0000 C CNN
F 1 "75R" V 9484 4650 50  0001 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9530 4650 50  0001 C CNN
F 3 "~" H 9600 4650 50  0001 C CNN
	1    9600 4650
	0    1    1    0   
$EndComp
$Comp
L Device:R R25
U 1 1 5E2375D9
P 9600 4850
F 0 "R25" V 9500 4850 50  0000 C CNN
F 1 "75R" V 9484 4850 50  0001 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9530 4850 50  0001 C CNN
F 3 "~" H 9600 4850 50  0001 C CNN
	1    9600 4850
	0    1    1    0   
$EndComp
$Comp
L Device:R R26
U 1 1 5E24905E
P 9600 5250
F 0 "R26" V 9500 5250 50  0000 C CNN
F 1 "75R" V 9484 5250 50  0001 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9530 5250 50  0001 C CNN
F 3 "~" H 9600 5250 50  0001 C CNN
	1    9600 5250
	0    1    1    0   
$EndComp
$Comp
L Device:R R27
U 1 1 5E249064
P 9600 5450
F 0 "R27" V 9500 5450 50  0000 C CNN
F 1 "75R" V 9484 5450 50  0001 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9530 5450 50  0001 C CNN
F 3 "~" H 9600 5450 50  0001 C CNN
	1    9600 5450
	0    1    1    0   
$EndComp
$Comp
L Device:R R28
U 1 1 5E24906A
P 9600 5650
F 0 "R28" V 9500 5650 50  0000 C CNN
F 1 "75R" V 9484 5650 50  0001 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9530 5650 50  0001 C CNN
F 3 "~" H 9600 5650 50  0001 C CNN
	1    9600 5650
	0    1    1    0   
$EndComp
$Comp
L Custom-DiscreteSymbols:Wurth_155124M173200 D13
U 1 1 5E27F9E6
P 10050 5450
F 0 "D13" H 10050 5850 50  0000 C CNN
F 1 "Wurth_155124M173200" H 10050 5856 50  0001 C CNN
F 2 "Custom-DiscreteSemi:LED_RGB_Wurth_1204_Right" H 10050 5400 50  0001 C CNN
F 3 "https://katalog.we-online.de/led/datasheet/155124M173200.pdf" H 10050 5400 50  0001 C CNN
	1    10050 5450
	1    0    0    1   
$EndComp
$Comp
L Custom-DiscreteSymbols:Wurth_155124M173200 D12
U 1 1 5E281C2C
P 10050 4650
F 0 "D12" H 10050 5050 50  0000 C CNN
F 1 "Wurth_155124M173200" H 10050 5056 50  0001 C CNN
F 2 "Custom-DiscreteSemi:LED_RGB_Wurth_1204_Right" H 10050 4600 50  0001 C CNN
F 3 "https://katalog.we-online.de/led/datasheet/155124M173200.pdf" H 10050 4600 50  0001 C CNN
	1    10050 4650
	1    0    0    1   
$EndComp
$Comp
L Custom-DiscreteSymbols:Wurth_155124M173200 D11
U 1 1 5E282437
P 10050 3850
F 0 "D11" H 10050 4250 50  0000 C CNN
F 1 "Wurth_155124M173200" H 10050 4256 50  0001 C CNN
F 2 "Custom-DiscreteSemi:LED_RGB_Wurth_1204_Right" H 10050 3800 50  0001 C CNN
F 3 "https://katalog.we-online.de/led/datasheet/155124M173200.pdf" H 10050 3800 50  0001 C CNN
	1    10050 3850
	1    0    0    -1  
$EndComp
$Comp
L Custom-DiscreteSymbols:Wurth_155124M173200 D10
U 1 1 5E283286
P 10050 3050
F 0 "D10" H 10050 3450 50  0000 C CNN
F 1 "Wurth_155124M173200" H 10050 3456 50  0001 C CNN
F 2 "Custom-DiscreteSemi:LED_RGB_Wurth_1204_Right" H 10050 3000 50  0001 C CNN
F 3 "https://katalog.we-online.de/led/datasheet/155124M173200.pdf" H 10050 3000 50  0001 C CNN
	1    10050 3050
	1    0    0    -1  
$EndComp
$Comp
L Custom-DiscreteSymbols:Wurth_155124M173200 D9
U 1 1 5E284103
P 10050 2250
F 0 "D9" H 10050 2650 50  0000 C CNN
F 1 "Wurth_155124M173200" H 10050 2656 50  0001 C CNN
F 2 "Custom-DiscreteSemi:LED_RGB_Wurth_1204_Right" H 10050 2200 50  0001 C CNN
F 3 "https://katalog.we-online.de/led/datasheet/155124M173200.pdf" H 10050 2200 50  0001 C CNN
	1    10050 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 4900 6150 4900
Connection ~ 6150 4900
Wire Wire Line
	6100 6850 6100 7050
Text Notes 5750 7250 0    50   ~ 0
390R
Wire Notes Line
	5650 7300 5650 6100
Wire Notes Line
	6050 7300 5650 7300
Wire Notes Line
	6050 6100 6050 7300
$Comp
L Connector:TestPoint_Probe TP7
U 1 1 5DAD656A
P 6400 4900
F 0 "TP7" H 6553 4955 50  0000 L CNN
F 1 "TestPoint_Probe" H 6553 4910 50  0001 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 6600 4900 50  0001 C CNN
F 3 "~" H 6600 4900 50  0001 C CNN
	1    6400 4900
	1    0    0    -1  
$EndComp
Text Label 6100 4900 0    50   ~ 0
RESET
$EndSCHEMATC
