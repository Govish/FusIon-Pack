EESchema Schematic File Version 4
EELAYER 26 0
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
L Regulator_Switching:LMR16006 U?
U 1 1 5D08876D
P 5600 3850
F 0 "U?" H 5600 4215 50  0000 C CNN
F 1 "LMR16006" H 5600 4124 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6_Handsoldering" H 5700 3850 50  0001 C CNN
F 3 "" H 5700 3850 50  0001 C CNN
	1    5600 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D08C5AA
P 4600 4050
F 0 "C?" H 4715 4096 50  0000 L CNN
F 1 "C" H 4715 4005 50  0000 L CNN
F 2 "" H 4638 3900 50  0001 C CNN
F 3 "~" H 4600 4050 50  0001 C CNN
	1    4600 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D08C63E
P 4300 4050
F 0 "C?" H 4415 4096 50  0000 L CNN
F 1 "C" H 4415 4005 50  0000 L CNN
F 2 "" H 4338 3900 50  0001 C CNN
F 3 "~" H 4300 4050 50  0001 C CNN
	1    4300 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D08C660
P 7100 4050
F 0 "C?" H 7215 4096 50  0000 L CNN
F 1 "C" H 7215 4005 50  0000 L CNN
F 2 "" H 7138 3900 50  0001 C CNN
F 3 "~" H 7100 4050 50  0001 C CNN
	1    7100 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D08C6D0
P 7400 4050
F 0 "C?" H 7515 4096 50  0000 L CNN
F 1 "C" H 7515 4005 50  0000 L CNN
F 2 "" H 7438 3900 50  0001 C CNN
F 3 "~" H 7400 4050 50  0001 C CNN
	1    7400 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D08C82C
P 6150 3650
F 0 "C?" H 6265 3696 50  0000 L CNN
F 1 "C" H 6265 3605 50  0000 L CNN
F 2 "" H 6188 3500 50  0001 C CNN
F 3 "~" H 6150 3650 50  0001 C CNN
	1    6150 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D?
U 1 1 5D08C986
P 6150 4450
F 0 "D?" V 6104 4529 50  0000 L CNN
F 1 "80V" V 6195 4529 50  0000 L CNN
F 2 "" H 6150 4450 50  0001 C CNN
F 3 "~" H 6150 4450 50  0001 C CNN
F 4 "MBR0580S1-7" V 6150 4450 50  0001 C CNN "P/N"
	1    6150 4450
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D08CAE5
P 6650 4050
F 0 "R?" H 6580 4004 50  0000 R CNN
F 1 "R" H 6580 4095 50  0000 R CNN
F 2 "" V 6580 4050 50  0001 C CNN
F 3 "~" H 6650 4050 50  0001 C CNN
	1    6650 4050
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5D08CB74
P 6650 4450
F 0 "R?" V 6550 4550 50  0000 R CNN
F 1 "R" H 6580 4495 50  0001 R CNN
F 2 "" V 6580 4450 50  0001 C CNN
F 3 "~" H 6650 4450 50  0001 C CNN
	1    6650 4450
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5D08CBD0
P 6450 4450
F 0 "R?" V 6350 4550 50  0000 R CNN
F 1 "R" H 6380 4495 50  0001 R CNN
F 2 "" V 6380 4450 50  0001 C CNN
F 3 "~" H 6450 4450 50  0001 C CNN
	1    6450 4450
	-1   0    0    1   
$EndComp
$Comp
L Device:L L?
U 1 1 5D08CC5D
P 6400 3850
F 0 "L?" V 6500 3850 50  0000 C CNN
F 1 "L" V 6350 3850 50  0000 C CNN
F 2 "" H 6400 3850 50  0001 C CNN
F 3 "~" H 6400 3850 50  0001 C CNN
	1    6400 3850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D08DFB1
P 6850 4450
F 0 "R?" V 6750 4550 50  0000 R CNN
F 1 "R" H 6780 4495 50  0001 R CNN
F 2 "" V 6780 4450 50  0001 C CNN
F 3 "~" H 6850 4450 50  0001 C CNN
	1    6850 4450
	-1   0    0    1   
$EndComp
Wire Wire Line
	5950 3850 6150 3850
Wire Wire Line
	6550 3850 6650 3850
Wire Wire Line
	7400 3850 7400 3900
Wire Wire Line
	7100 3900 7100 3850
Connection ~ 7100 3850
Wire Wire Line
	7100 3850 7400 3850
Wire Wire Line
	6650 3900 6650 3850
Connection ~ 6650 3850
Wire Wire Line
	6650 3850 7100 3850
Wire Wire Line
	6650 4200 6650 4250
Wire Wire Line
	6850 4300 6850 4250
Wire Wire Line
	6850 4250 6650 4250
Connection ~ 6650 4250
Wire Wire Line
	6650 4250 6650 4300
Wire Wire Line
	6450 4300 6450 4250
Wire Wire Line
	6450 4250 6650 4250
Wire Wire Line
	5950 3950 6250 3950
Wire Wire Line
	6250 3950 6650 4250
Wire Wire Line
	6150 4300 6150 3850
Connection ~ 6150 3850
Wire Wire Line
	6150 3850 6250 3850
Wire Wire Line
	6150 3850 6150 3800
Wire Wire Line
	5950 3750 6000 3750
Wire Wire Line
	6000 3450 6150 3450
Wire Wire Line
	6150 3450 6150 3500
Wire Wire Line
	6000 3450 6000 3750
$EndSCHEMATC