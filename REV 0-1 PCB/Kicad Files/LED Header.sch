EESchema Schematic File Version 4
LIBS:FusIon Pack-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 10
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
L Connector:Conn_01x04_Female J3
U 1 1 5CC0D402
P 6000 4300
F 0 "J3" H 6028 4276 50  0000 L CNN
F 1 "B4B-XH-A(LF)(SN)" H 6028 4185 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B04B-XH-A_1x04_P2.50mm_Vertical" H 6000 4300 50  0001 C CNN
F 3 "~" H 6000 4300 50  0001 C CNN
	1    6000 4300
	1    0    0    -1  
$EndComp
$Comp
L FusIon-Pack-rescue:RUC002N05HZGT116-Transistor_FET Q17
U 1 1 5CC0E04D
P 5600 5200
F 0 "Q17" H 5805 5246 50  0000 L CNN
F 1 "RUC002N05HZGT116" H 5805 5155 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5800 5125 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 5600 5200 50  0001 L CNN
	1    5600 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R79
U 1 1 5CC0E0DC
P 5700 4750
F 0 "R79" H 5770 4796 50  0000 L CNN
F 1 "36R 3/4W" H 5770 4705 50  0000 L CNN
F 2 "Resistor_SMD:R_2010_5025Metric_Pad1.52x2.65mm_HandSolder" V 5630 4750 50  0001 C CNN
F 3 "~" H 5700 4750 50  0001 C CNN
	1    5700 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 4600 5700 4500
Wire Wire Line
	5700 4500 5800 4500
Wire Wire Line
	5700 5000 5700 4950
Wire Wire Line
	5700 5550 5700 5500
$Comp
L power:GNDS #PWR071
U 1 1 5CC0E382
P 5700 5550
F 0 "#PWR071" H 5700 5300 50  0001 C CNN
F 1 "GNDS" H 5705 5377 50  0000 C CNN
F 2 "" H 5700 5550 50  0001 C CNN
F 3 "" H 5700 5550 50  0001 C CNN
	1    5700 5550
	1    0    0    -1  
$EndComp
Connection ~ 5700 5500
Wire Wire Line
	5700 5500 5700 5400
$Comp
L Device:R R77
U 1 1 5CC0E74C
P 5400 5350
F 0 "R77" H 5200 5400 50  0000 L CNN
F 1 "100K" H 5150 5300 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5330 5350 50  0001 C CNN
F 3 "~" H 5400 5350 50  0001 C CNN
	1    5400 5350
	1    0    0    -1  
$EndComp
Connection ~ 5400 5200
Wire Wire Line
	5400 5200 5500 5200
Connection ~ 5400 5500
Wire Wire Line
	5400 5500 5700 5500
Wire Wire Line
	5050 5200 5400 5200
Wire Wire Line
	5050 5500 5400 5500
Wire Wire Line
	5050 4400 5800 4400
Text HLabel 5050 5500 0    50   Input ~ 0
SGND
Text HLabel 5050 5200 0    50   Input ~ 0
LED
Text HLabel 5050 4400 0    50   Input ~ 0
BUTT
Text HLabel 5050 4300 0    50   Input ~ 0
+3.3V
$Comp
L power:+3.3V #PWR069
U 1 1 5CC0ECFE
P 5100 3950
F 0 "#PWR069" H 5100 3800 50  0001 C CNN
F 1 "+3.3V" H 5115 4123 50  0000 C CNN
F 2 "" H 5100 3950 50  0001 C CNN
F 3 "" H 5100 3950 50  0001 C CNN
	1    5100 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 4300 5100 4300
$Comp
L Jumper:SolderJumper_3_Open JP16
U 1 1 5CDDE4ED
P 5400 4000
F 0 "JP16" H 5400 4114 50  0000 C CNN
F 1 "SolderJumper_3_Open" H 5400 4114 50  0001 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 5400 4000 50  0001 C CNN
F 3 "~" H 5400 4000 50  0001 C CNN
	1    5400 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 4300 5100 4000
Wire Wire Line
	5100 4000 5200 4000
Connection ~ 5100 4300
Wire Wire Line
	5100 4300 5800 4300
Wire Wire Line
	5100 3950 5100 4000
Connection ~ 5100 4000
Wire Wire Line
	5400 4150 5400 4200
Wire Wire Line
	5400 4200 5800 4200
Text HLabel 5050 3600 0    50   Input ~ 0
+5V
Wire Wire Line
	5050 3600 5650 3600
Wire Wire Line
	5650 3600 5650 4000
Wire Wire Line
	5650 4000 5600 4000
$Comp
L power:+5V #PWR070
U 1 1 5CDDEDAD
P 5650 3550
F 0 "#PWR070" H 5650 3400 50  0001 C CNN
F 1 "+5V" H 5665 3723 50  0000 C CNN
F 2 "" H 5650 3550 50  0001 C CNN
F 3 "" H 5650 3550 50  0001 C CNN
	1    5650 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 3550 5650 3600
Connection ~ 5650 3600
Wire Wire Line
	5700 4500 5550 4500
Wire Wire Line
	5550 4500 5550 4600
Connection ~ 5700 4500
Wire Wire Line
	5550 4900 5550 4950
Wire Wire Line
	5550 4950 5700 4950
Connection ~ 5700 4950
Wire Wire Line
	5700 4950 5700 4900
$Comp
L Device:R R78
U 1 1 5CE37007
P 5550 4750
F 0 "R78" H 5350 4800 50  0000 L CNN
F 1 "DNP" H 5300 4700 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5480 4750 50  0001 C CNN
F 3 "~" H 5550 4750 50  0001 C CNN
	1    5550 4750
	1    0    0    -1  
$EndComp
Text Label 5550 4200 0    50   ~ 0
V_LED
Text Label 5550 4300 0    50   ~ 0
V_BUT
Text Label 5450 4400 0    50   ~ 0
BUT_OUT
Text Label 5650 4500 0    50   ~ 0
SW
$Comp
L Connector:TestPoint TP68
U 1 1 5CA4778D
P 7450 4100
F 0 "TP68" V 7450 4288 50  0000 L CNN
F 1 "TestPoint" V 7495 4288 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 7650 4100 50  0001 C CNN
F 3 "~" H 7650 4100 50  0001 C CNN
	1    7450 4100
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP69
U 1 1 5CA47819
P 7450 4200
F 0 "TP69" V 7450 4388 50  0000 L CNN
F 1 "TestPoint" V 7495 4388 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 7650 4200 50  0001 C CNN
F 3 "~" H 7650 4200 50  0001 C CNN
	1    7450 4200
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP71
U 1 1 5CA4785F
P 7450 4300
F 0 "TP71" V 7450 4488 50  0000 L CNN
F 1 "TestPoint" V 7495 4488 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 7650 4300 50  0001 C CNN
F 3 "~" H 7650 4300 50  0001 C CNN
	1    7450 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	7000 4300 7450 4300
Wire Wire Line
	7000 4200 7450 4200
Wire Wire Line
	7000 4100 7450 4100
Text Label 7000 4100 0    50   ~ 0
V_LED
Text Label 7000 4200 0    50   ~ 0
V_BUT
Text Label 7000 4300 0    50   ~ 0
SW
$EndSCHEMATC
