EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLegal 14000 8500
encoding utf-8
Sheet 1 1
Title "UT SVT MPPT 2020"
Date "2020-11-27"
Rev "Rev3.2"
Comp "UT Solar Vehicle Team"
Comment1 "Revised by Matthew Yu (2020)"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 3950 750  0    120  ~ 24
Nucleo Connections
$Comp
L Device:R R1
U 1 1 5BBC08B0
P 5600 1700
F 0 "R1" V 5680 1700 50  0000 C CNN
F 1 "1.5" V 5750 1710 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5530 1700 50  0001 C CNN
F 3 "" H 5600 1700 50  0001 C CNN
	1    5600 1700
	1    0    0    -1  
$EndComp
Text Label 5600 1400 2    39   ~ 8
Drive_PWM
Text Label 2750 1650 0    39   ~ 8
Battery_Current
Text Label 2750 1450 0    39   ~ 8
Array_Current
Text Label 2750 1550 0    39   ~ 8
Battery_Voltage
Text Label 2750 1350 0    39   ~ 8
Array_Voltage
Text Label 1400 850  1    39   ~ 8
Reset
Text Label 2750 1050 0    39   ~ 8
Reset
$Comp
L Connector:TestPoint TP2
U 1 1 5BBE9DAD
P 3000 2250
F 0 "TP2" H 3000 2430 50  0000 C BNN
F 1 "PWM" H 2990 2530 50  0000 C CNN
F 2 "TestPoint:TestPoint_Keystone_5005-5009_Compact" H 3000 2250 50  0001 C CNN
F 3 "" H 3000 2250 50  0001 C CNN
	1    3000 2250
	-1   0    0    1   
$EndComp
Text Label 1350 2050 2    39   ~ 8
CAN_Rx
Text Label 1350 1250 2    39   ~ 8
CAN_Tx
NoConn ~ 1550 850 
NoConn ~ 1550 950 
NoConn ~ 2550 2250
NoConn ~ 2550 2050
NoConn ~ 2550 1950
NoConn ~ 2550 1250
$Comp
L power:+3.3V #PWR0103
U 1 1 5BC0D519
P 2800 2150
F 0 "#PWR0103" H 2800 2000 50  0001 C CNN
F 1 "+3.3V" H 2800 2290 50  0000 C CNN
F 2 "" H 2800 2150 50  0001 C CNN
F 3 "" H 2800 2150 50  0001 C CNN
	1    2800 2150
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0104
U 1 1 5BC0D66D
P 3100 1150
F 0 "#PWR0104" H 3100 1000 50  0001 C CNN
F 1 "+5V" V 3100 1350 50  0000 C CNN
F 2 "" H 3100 1150 50  0001 C CNN
F 3 "" H 3100 1150 50  0001 C CNN
	1    3100 1150
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5BC1DD30
P 3880 2050
F 0 "C1" V 3770 2000 50  0000 L CNN
F 1 "0.1uF" V 3710 1890 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3880 2050 50  0001 C CNN
F 3 "" H 3880 2050 50  0001 C CNN
	1    3880 2050
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5BC1E839
P 5300 2050
F 0 "C2" V 5400 2000 50  0000 L CNN
F 1 "1uF" V 5470 2000 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5300 2050 50  0001 C CNN
F 3 "" H 5300 2050 50  0001 C CNN
	1    5300 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5BC1F45A
P 5600 2050
F 0 "C3" V 5700 2000 50  0000 L CNN
F 1 "0.1uF" V 5760 2000 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5600 2050 50  0001 C CNN
F 3 "" H 5600 2050 50  0001 C CNN
	1    5600 2050
	1    0    0    -1  
$EndComp
Text Notes 4350 2450 0    39   ~ 0
For decoupling, we\nadd extra capacitors\nand unlink the power\npins on either side.
$Comp
L power:+9VA #PWR0105
U 1 1 5BC299D8
P 5300 1700
F 0 "#PWR0105" H 5300 1575 50  0001 C CNN
F 1 "+9VA" H 5300 1850 50  0000 C CNN
F 2 "" H 5300 1700 50  0001 C CNN
F 3 "" H 5300 1700 50  0001 C CNN
	1    5300 1700
	1    0    0    -1  
$EndComp
$Comp
L power:+9VA #PWR0106
U 1 1 5BC29E5F
P 4100 1700
F 0 "#PWR0106" H 4100 1575 50  0001 C CNN
F 1 "+9VA" H 4100 1850 50  0000 C CNN
F 2 "" H 4100 1700 50  0001 C CNN
F 3 "" H 4100 1700 50  0001 C CNN
	1    4100 1700
	1    0    0    -1  
$EndComp
$Comp
L power:+9VA #PWR0107
U 1 1 5BC2A2F3
P 2750 850
F 0 "#PWR0107" H 2750 725 50  0001 C CNN
F 1 "+9VA" V 2750 1050 50  0000 C CNN
F 2 "" H 2750 850 50  0001 C CNN
F 3 "" H 2750 850 50  0001 C CNN
	1    2750 850 
	0    1    1    0   
$EndComp
Text Label 1350 2150 2    39   ~ 8
Tracking
Text Label 3600 1850 1    39   ~ 8
PWM
$Comp
L Device:D_Small_ALT D2
U 1 1 5BC902C1
P 3600 2050
F 0 "D2" H 3550 2130 50  0000 L CNN
F 1 "Diode" H 3550 2200 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" V 3600 2050 50  0001 C CNN
F 3 "" V 3600 2050 50  0001 C CNN
	1    3600 2050
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP4
U 1 1 5BCE54E2
P 5600 2250
F 0 "TP4" H 5580 2430 50  0000 C BNN
F 1 "PGND" H 5550 2530 50  0000 C CNN
F 2 "TestPoint:TestPoint_Keystone_5005-5009_Compact" H 5600 2250 50  0001 C CNN
F 3 "" H 5600 2250 50  0001 C CNN
	1    5600 2250
	-1   0    0    1   
$EndComp
Wire Wire Line
	2550 1850 3000 1850
Wire Wire Line
	5600 1400 5600 1550
Wire Wire Line
	4100 1700 4100 1750
Wire Wire Line
	4100 2050 4100 2200
Wire Wire Line
	4100 2050 4150 2050
Wire Wire Line
	2550 1350 2750 1350
Wire Wire Line
	2750 1450 2550 1450
Wire Wire Line
	2550 1550 2750 1550
Wire Wire Line
	2750 1650 2550 1650
Wire Wire Line
	4150 1950 4100 1950
Wire Wire Line
	4100 1950 4100 1850
Connection ~ 4100 1850
Connection ~ 3000 1850
Wire Wire Line
	1350 2050 1550 2050
Wire Wire Line
	1350 1250 1550 1250
Wire Wire Line
	2550 2150 2800 2150
Connection ~ 4100 2200
Connection ~ 4100 1750
Wire Wire Line
	1550 2150 1350 2150
Wire Wire Line
	4100 1850 4150 1850
Wire Wire Line
	4100 1750 4150 1750
NoConn ~ 1550 1350
NoConn ~ 1550 1450
NoConn ~ 1550 1550
NoConn ~ 1550 1650
$Comp
L MPPT-rescue:MCU_Nucleo_L432KC-Array U1
U 1 1 5BBBD3B0
P 2050 1550
F 0 "U1" H 1760 2480 60  0000 C CNN
F 1 "Nucleo_L432KC" H 2050 2400 60  0000 C CNN
F 2 "MPPT-PrimaryPCB:MODULE_NUCLEO-L432KC" H 2050 1250 60  0001 C CNN
F 3 "" H 2050 1250 60  0001 C CNN
	1    2050 1550
	1    0    0    -1  
$EndComp
$Comp
L MPPT-rescue:UCC37321-Array U2
U 1 1 5BBC0485
P 4650 1900
F 0 "U2" H 4470 2230 60  0000 C CNN
F 1 "UCC37321" H 4650 2150 60  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4650 1900 60  0001 C CNN
F 3 "" H 4650 1900 60  0001 C CNN
	1    4650 1900
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP1
U 1 1 5BCE457C
P 3100 950
F 0 "TP1" H 3060 1210 50  0000 L BNN
F 1 "GND" H 3060 1160 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5005-5009_Compact" H 3100 950 50  0001 C CNN
F 3 "" H 3100 950 50  0001 C CNN
	1    3100 950 
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP3
U 1 1 5BCE5042
P 3600 2250
F 0 "TP3" H 3580 2430 50  0000 C BNN
F 1 "AGND" H 3550 2530 50  0000 C CNN
F 2 "TestPoint:TestPoint_Keystone_5005-5009_Compact" H 3600 2250 50  0001 C CNN
F 3 "" H 3600 2250 50  0001 C CNN
	1    3600 2250
	-1   0    0    1   
$EndComp
Wire Wire Line
	3000 1850 3000 2250
Wire Wire Line
	3000 1850 3250 1850
Wire Wire Line
	3250 2200 3250 2150
Wire Wire Line
	3250 2200 3600 2200
Wire Wire Line
	3250 1950 3250 1850
Connection ~ 3250 1850
Wire Wire Line
	3250 1850 3600 1850
Wire Wire Line
	3600 2200 3600 2150
Connection ~ 3600 2200
Wire Wire Line
	3600 1950 3600 1850
Connection ~ 3600 1850
Wire Wire Line
	3600 1850 4100 1850
Wire Wire Line
	3600 2250 3600 2200
Wire Wire Line
	4100 2200 4100 2350
Wire Wire Line
	2550 1150 3100 1150
Wire Wire Line
	2550 950  3100 950 
Wire Wire Line
	2550 850  2750 850 
Wire Wire Line
	2750 1050 2550 1050
Wire Wire Line
	5150 2050 5150 2200
Wire Wire Line
	5150 1850 5600 1850
Wire Wire Line
	5150 1950 5150 1850
Connection ~ 5150 1850
Wire Wire Line
	5600 2250 5600 2200
Connection ~ 5600 2200
Wire Wire Line
	5600 2200 5600 2150
Wire Wire Line
	5150 2200 5300 2200
Connection ~ 5150 2200
Wire Wire Line
	5150 2200 5150 2350
Wire Wire Line
	5300 2200 5300 2150
Connection ~ 5300 2200
Wire Wire Line
	5300 2200 5600 2200
Wire Wire Line
	5300 1950 5300 1900
Wire Wire Line
	5150 1750 5300 1750
Wire Wire Line
	5300 1750 5300 1700
Connection ~ 5300 1750
Wire Wire Line
	5600 1950 5600 1900
Wire Wire Line
	5600 1900 5300 1900
Connection ~ 5300 1900
Wire Wire Line
	5300 1900 5300 1750
Text Notes 4200 1100 0    39   ~ 0
NOTE: We would ordinarily isolate the Nucleo from\nthe high power regions, but we don't have a good\nway to do that without redesigning our sensors and\nour software. Therefore, for reasons of expediency,\nwe're placing the Nucleo on the high power plane.
Wire Wire Line
	1250 850  1400 850 
Wire Wire Line
	1550 1050 1400 1050
Wire Wire Line
	1400 1050 1400 850 
Wire Wire Line
	1550 1150 850  1150
Wire Wire Line
	850  1150 850  850 
Wire Notes Line
	5800 550  550  550 
Wire Notes Line
	5800 550  5800 2650
Wire Notes Line
	5800 2650 550  2650
Wire Notes Line
	550  550  550  2650
Text Notes 5750 2950 0    120  ~ 24
DC/DC Converter
$Comp
L Device:L_Core_Ferrite L2
U 1 1 5BB283A5
P 3350 3400
F 0 "L2" V 3530 3480 50  0000 C CNN
F 1 "560uH" V 3460 3400 50  0000 C CNN
F 2 "MPPT-PrimaryPCB:L_Toroid_Vertical_L46.0mm_W19.1mm_P21.80mm_Bourns_5700" H 3350 3400 50  0001 C CNN
F 3 "" H 3350 3400 50  0001 C CNN
	1    3350 3400
	0    -1   -1   0   
$EndComp
$Comp
L Device:Q_NMOS_GDS Q1
U 1 1 5BB28407
P 3500 4050
F 0 "Q1" H 3800 4070 50  0000 R CNN
F 1 "NMOS" H 3800 3990 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-247-3_Vertical" H 3700 4150 50  0001 C CNN
F 3 "" H 3500 4050 50  0001 C CNN
	1    3500 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NMOS_GDS Q2
U 1 1 5BB28472
P 3900 3750
F 0 "Q2" H 4200 3790 50  0000 R CNN
F 1 "NMOS" H 4200 3720 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-247-3_Vertical" H 4100 3850 50  0001 C CNN
F 3 "" H 3900 3750 50  0001 C CNN
	1    3900 3750
	1    0    0    -1  
$EndComp
Text Label 3200 3750 1    39   ~ 8
Drive_PWM
$Comp
L Device:R R12
U 1 1 5BB284C6
P 3200 4300
F 0 "R12" H 3320 4300 50  0000 C CNN
F 1 "10k" H 3320 4240 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3130 4300 50  0001 C CNN
F 3 "" H 3200 4300 50  0001 C CNN
	1    3200 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C8
U 1 1 5BB285EF
P 2450 3900
F 0 "C8" H 2550 3940 50  0000 L CNN
F 1 "1000uF" H 2550 3860 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D30.0mm_P10.00mm_SnapIn" H 2450 3900 50  0001 C CNN
F 3 "" H 2450 3900 50  0001 C CNN
	1    2450 3900
	1    0    0    -1  
$EndComp
$Comp
L MPPT-rescue:PWR_Connector_1720796-Array J2
U 1 1 5BB28712
P 850 3500
F 0 "J2" H 800 3770 50  0000 C CNN
F 1 "Solar Array" H 750 3700 50  0000 L CNN
F 2 "MPPT-PrimaryPCB:PhoenixContact_PowerCombicon5_GF_2x7.62mm" H 850 3500 50  0001 C CNN
F 3 "" H 850 3500 50  0001 C CNN
	1    850  3500
	1    0    0    -1  
$EndComp
Text Notes 1500 4700 0    60   Italic 0
Array\nCurrent\nSensor
Text Notes 1900 4100 0    60   Italic 0
Array\nVoltage\nSensor
$Comp
L Device:D_Zener_ALT D3
U 1 1 5BB284FA
P 3000 4300
F 0 "D3" H 3000 4120 50  0000 C CNN
F 1 "16.3V Zener" H 3000 4200 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 3000 4300 50  0001 C CNN
F 3 "" H 3000 4300 50  0001 C CNN
	1    3000 4300
	0    1    1    0   
$EndComp
$Comp
L Device:R R13
U 1 1 5BB2959B
P 4450 3800
F 0 "R13" V 4530 3800 50  0000 C CNN
F 1 "R" V 4600 3750 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-2_Vertical" V 4380 3800 50  0001 C CNN
F 3 "" H 4450 3800 50  0001 C CNN
	1    4450 3800
	1    0    0    -1  
$EndComp
Text Notes 5050 4150 1    60   Italic 0
Snubber
$Comp
L Device:D_Schottky D6
U 1 1 5BB297A0
P 5050 3400
F 0 "D6" H 5160 3230 50  0000 C CNN
F 1 "Schottky" H 5050 3300 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-2_Vertical" H 5050 3400 50  0001 C CNN
F 3 "" H 5050 3400 50  0001 C CNN
	1    5050 3400
	-1   0    0    1   
$EndComp
$Comp
L Device:D_Schottky D5
U 1 1 5BB297FE
P 5050 3100
F 0 "D5" H 5160 2930 50  0000 C CNN
F 1 "Schottky" H 5050 3000 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-2_Vertical" H 5050 3100 50  0001 C CNN
F 3 "" H 5050 3100 50  0001 C CNN
	1    5050 3100
	-1   0    0    1   
$EndComp
$Comp
L Device:CP1 C10
U 1 1 5BB29C25
P 5300 3900
F 0 "C10" V 5440 3780 50  0000 L CNN
F 1 "1000uF" V 5510 3790 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D30.0mm_P10.00mm_SnapIn" H 5300 3900 50  0001 C CNN
F 3 "" H 5300 3900 50  0001 C CNN
	1    5300 3900
	1    0    0    -1  
$EndComp
Text Notes 6050 4700 0    60   Italic 0
Battery\nCurrent\nSensor
$Comp
L MPPT-rescue:PWR_Connector_1720796-Array J3
U 1 1 5BB2AA41
P 7150 3500
F 0 "J3" H 7230 3780 50  0000 C CNN
F 1 "Battery" H 7010 3700 50  0000 L CNN
F 2 "MPPT-PrimaryPCB:PhoenixContact_PowerCombicon5_GF_2x7.62mm" H 7150 3500 50  0001 C CNN
F 3 "" H 7150 3500 50  0001 C CNN
	1    7150 3500
	-1   0    0    -1  
$EndComp
Text Notes 5700 4100 0    60   Italic 0
Battery\nVoltage\nSensor
$Comp
L Device:R R18
U 1 1 5BB2BAFB
P 750 5450
F 0 "R18" V 830 5520 50  0000 C CNN
F 1 "100k" V 890 5540 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 680 5450 50  0001 C CNN
F 3 "" H 750 5450 50  0001 C CNN
	1    750  5450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R19
U 1 1 5BB2BB53
P 750 6050
F 0 "R19" V 830 6020 50  0000 C CNN
F 1 "2k" V 900 5990 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 680 6050 50  0001 C CNN
F 3 "" H 750 6050 50  0001 C CNN
	1    750  6050
	1    0    0    -1  
$EndComp
$Comp
L Device:D_ALT D12
U 1 1 5BB2BC26
P 2500 6050
F 0 "D12" H 2500 6150 50  0000 C CNN
F 1 "Diode" H 2470 6220 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 2500 6050 50  0001 C CNN
F 3 "" H 2500 6050 50  0001 C CNN
	1    2500 6050
	0    1    1    0   
$EndComp
$Comp
L Device:D_Zener_ALT D11
U 1 1 5BB2BC8A
P 2200 6050
F 0 "D11" H 2200 6150 50  0000 C CNN
F 1 "3.9V Zener" H 2200 6220 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 2200 6050 50  0001 C CNN
F 3 "" H 2200 6050 50  0001 C CNN
	1    2200 6050
	0    1    1    0   
$EndComp
Text Label 2200 5750 1    39   ~ 8
Array_Voltage
$Comp
L Device:D_Schottky D4
U 1 1 5BB2EB96
P 4750 3800
F 0 "D4" H 4740 3700 50  0000 C CNN
F 1 "Schottky" H 4750 3640 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-2_Vertical" H 4750 3800 50  0001 C CNN
F 3 "" H 4750 3800 50  0001 C CNN
	1    4750 3800
	0    -1   -1   0   
$EndComp
$Comp
L Device:Fuse F2
U 1 1 5BB2FF01
P 6550 3400
F 0 "F2" V 6410 3340 50  0000 C CNN
F 1 "Fuse" V 6480 3380 50  0000 C CNN
F 2 "MPPT-PrimaryPCB:05200101Z_Fuze_Holder_5x20_PCB_Mount" V 6480 3400 50  0001 C CNN
F 3 "" H 6550 3400 50  0001 C CNN
	1    6550 3400
	0    1    1    0   
$EndComp
Text Label 1200 4550 2    39   ~ 8
-Arr
Text Notes 1900 4650 0    60   ~ 12
GNDPWR
Text Label 6800 4550 0    39   ~ 8
-Batt
Text Notes 6000 4650 2    60   ~ 12
GNDPWR
Text Label 2050 3400 2    39   ~ 8
+Arr
Text Label 750  5250 1    39   ~ 8
+Arr
Text Label 5850 3400 0    39   ~ 8
+Batt
$Comp
L Connector:TestPoint TP19
U 1 1 5BBE9136
P 2500 5750
F 0 "TP19" H 2500 6010 50  0000 C BNN
F 1 "Arr_V" H 2500 5960 50  0000 C CNN
F 2 "TestPoint:TestPoint_Keystone_5005-5009_Compact" H 2500 5750 50  0001 C CNN
F 3 "" H 2500 5750 50  0001 C CNN
	1    2500 5750
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP13
U 1 1 5BBEA0EE
P 3100 3900
F 0 "TP13" V 3270 3880 50  0000 L BNN
F 1 "GATE" V 3170 3900 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5005-5009_Compact" H 3100 3900 50  0001 C CNN
F 3 "" H 3100 3900 50  0001 C CNN
	1    3100 3900
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP14
U 1 1 5BBEC8C3
P 4250 4050
F 0 "TP14" H 4250 4230 50  0000 C BNN
F 1 "M_SNUB" H 4250 4320 50  0000 C CNN
F 2 "TestPoint:TestPoint_Keystone_5005-5009_Compact" H 4250 4050 50  0001 C CNN
F 3 "" H 4250 4050 50  0001 C CNN
	1    4250 4050
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP12
U 1 1 5BBECCC0
P 1100 4550
F 0 "TP12" H 1100 4850 50  0000 C BNN
F 1 "-ARR" H 1100 4800 50  0000 C CNN
F 2 "TestPoint:TestPoint_Keystone_5005-5009_Compact" H 1100 4550 50  0001 C CNN
F 3 "" H 1100 4550 50  0001 C CNN
	1    1100 4550
	0    -1   -1   0   
$EndComp
$Comp
L MPPT-rescue:CAN_Connector_43650-0427-Array J4
U 1 1 5BBF08D9
P 12300 5550
F 0 "J4" H 12400 5880 60  0000 C CNN
F 1 "CAN_In" H 12300 5800 60  0000 C CNN
F 2 "Connector_Molex:Molex_Micro-Fit_3.0_43650-0415_1x04_P3.00mm_Vertical" H 12450 5850 60  0001 C CNN
F 3 "" H 12450 5850 60  0001 C CNN
	1    12300 5550
	-1   0    0    -1  
$EndComp
$Comp
L MPPT-rescue:CAN_Connector_43650-0427-Array J5
U 1 1 5BBF0A39
P 12300 6150
F 0 "J5" H 12430 6470 60  0000 C CNN
F 1 "CAN_Out" H 12300 6400 60  0000 C CNN
F 2 "Connector_Molex:Molex_Micro-Fit_3.0_43650-0415_1x04_P3.00mm_Vertical" H 12450 6450 60  0001 C CNN
F 3 "" H 12450 6450 60  0001 C CNN
	1    12300 6150
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R26
U 1 1 5BBF11F6
P 11300 5900
F 0 "R26" V 11380 5900 50  0000 C CNN
F 1 "60" V 11300 5900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 11230 5900 50  0001 C CNN
F 3 "" H 11300 5900 50  0001 C CNN
	1    11300 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R25
U 1 1 5BBF1303
P 11100 5900
F 0 "R25" V 11180 5900 50  0000 C CNN
F 1 "60" V 11100 5900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 11030 5900 50  0001 C CNN
F 3 "" H 11100 5900 50  0001 C CNN
	1    11100 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NO_Small JP1
U 1 1 5BBF13F6
P 11200 5600
F 0 "JP1" H 11200 5680 50  0000 C CNN
F 1 "Termination Resistors" H 11200 5550 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 11200 5600 50  0001 C CNN
F 3 "" H 11200 5600 50  0001 C CNN
	1    11200 5600
	-1   0    0    1   
$EndComp
Text Notes 5950 5200 0    120  ~ 24
CAN
$Comp
L Device:C_Small C18
U 1 1 5BBF57F7
P 6250 5700
F 0 "C18" H 6260 5770 50  0000 L CNN
F 1 "0.1uF" H 6260 5620 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6250 5700 50  0001 C CNN
F 3 "" H 6250 5700 50  0001 C CNN
	1    6250 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C19
U 1 1 5BBF5AB0
P 6500 5700
F 0 "C19" H 6510 5770 50  0000 L CNN
F 1 "0.1uF" H 6510 5620 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6500 5700 50  0001 C CNN
F 3 "" H 6500 5700 50  0001 C CNN
	1    6500 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C20
U 1 1 5BBF5B67
P 6700 5700
F 0 "C20" H 6710 5770 50  0000 L CNN
F 1 "0.01uF" H 6710 5620 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6700 5700 50  0001 C CNN
F 3 "" H 6700 5700 50  0001 C CNN
	1    6700 5700
	1    0    0    -1  
$EndComp
Text Label 6350 6150 2    39   ~ 8
CAN_Rx
Text Label 6350 6050 2    39   ~ 8
CAN_Tx
$Comp
L Device:C_Small C21
U 1 1 5BBF707C
P 8850 5550
F 0 "C21" V 8950 5420 50  0000 L CNN
F 1 "0.22uF" V 9010 5420 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8850 5550 50  0001 C CNN
F 3 "" H 8850 5550 50  0001 C CNN
	1    8850 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C22
U 1 1 5BBF71BA
P 9300 5550
F 0 "C22" V 9410 5440 50  0000 L CNN
F 1 "10uF" V 9480 5450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9300 5550 50  0001 C CNN
F 3 "" H 9300 5550 50  0001 C CNN
	1    9300 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead_Small L3
U 1 1 5BBF75A9
P 9100 5400
F 0 "L3" V 9000 5250 50  0000 L CNN
F 1 "1.8kH" V 9000 5370 50  0000 L CNN
F 2 "Inductor_SMD:L_0805_2012Metric" V 9030 5400 50  0001 C CNN
F 3 "" H 9100 5400 50  0001 C CNN
	1    9100 5400
	0    1    1    0   
$EndComp
$Comp
L Device:Ferrite_Bead_Small L4
U 1 1 5BBF78B3
P 9100 5700
F 0 "L4" V 9200 5550 50  0000 L CNN
F 1 "1.8kH" V 9200 5670 50  0000 L CNN
F 2 "Inductor_SMD:L_0805_2012Metric" V 9030 5700 50  0001 C CNN
F 3 "" H 9100 5700 50  0001 C CNN
	1    9100 5700
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C24
U 1 1 5BBF7ED3
P 9950 5550
F 0 "C24" V 10040 5470 50  0000 L CNN
F 1 "0.1uF" V 10110 5470 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9950 5550 50  0001 C CNN
F 3 "" H 9950 5550 50  0001 C CNN
	1    9950 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C23
U 1 1 5BBF7FA8
P 9700 5550
F 0 "C23" V 9790 5430 50  0000 L CNN
F 1 "0.01uF" V 9850 5430 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9700 5550 50  0001 C CNN
F 3 "" H 9700 5550 50  0001 C CNN
	1    9700 5550
	1    0    0    -1  
$EndComp
Text Notes 6350 5150 0    39   ~ 0
This is really complicated.\nI blame Analog Devices.
$Comp
L MPPT-rescue:CAN_Chip_ADM3055E-Array U8
U 1 1 5BBFC115
P 7750 5950
F 0 "U8" H 7500 6600 60  0000 C CNN
F 1 "ADM3055E" H 7950 5850 60  0000 C CNN
F 2 "MPPT-PrimaryPCB:ADM3055EBRIZ" H 7750 6050 60  0001 C CNN
F 3 "" H 7750 6050 60  0001 C CNN
	1    7750 5950
	1    0    0    -1  
$EndComp
NoConn ~ 7050 6250
NoConn ~ 7050 6350
NoConn ~ 8450 6400
Text Notes 9650 5300 0    40   ~ 0
Must be close\nto V_ISO_In
$Comp
L power:+3.3V #PWR0116
U 1 1 5BC0F1EA
P 6700 5400
F 0 "#PWR0116" H 6700 5250 50  0001 C CNN
F 1 "+3.3V" H 6700 5540 50  0000 C CNN
F 2 "" H 6700 5400 50  0001 C CNN
F 3 "" H 6700 5400 50  0001 C CNN
	1    6700 5400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0117
U 1 1 5BC0F4B8
P 6050 5400
F 0 "#PWR0117" H 6050 5250 50  0001 C CNN
F 1 "+5V" H 6050 5540 50  0000 C CNN
F 2 "" H 6050 5400 50  0001 C CNN
F 3 "" H 6050 5400 50  0001 C CNN
	1    6050 5400
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP24
U 1 1 5BC226FB
P 8500 5250
F 0 "TP24" V 8600 5450 50  0000 L BNN
F 1 "CAN_ISO_Vin" V 8500 5450 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5005-5009_Compact" H 8500 5250 50  0001 C CNN
F 3 "" H 8500 5250 50  0001 C CNN
	1    8500 5250
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP26
U 1 1 5BC2391E
P 9400 6050
F 0 "TP26" V 9420 6250 50  0000 L BNN
F 1 "CAN_ISO_GndOut" V 9460 6250 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5005-5009_Compact" H 9400 6050 50  0001 C CNN
F 3 "" H 9400 6050 50  0001 C CNN
	1    9400 6050
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP25
U 1 1 5BC242A0
P 9400 5900
F 0 "TP25" V 9410 6100 50  0000 L BNN
F 1 "CAN_ISO_GndIn" V 9450 6100 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5005-5009_Compact" H 9400 5900 50  0001 C CNN
F 3 "" H 9400 5900 50  0001 C CNN
	1    9400 5900
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP23
U 1 1 5BC269CB
P 8500 5100
F 0 "TP23" V 8600 5300 50  0000 L BNN
F 1 "CAN_ISO_Vout" V 8500 5300 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5005-5009_Compact" H 8500 5100 50  0001 C CNN
F 3 "" H 8500 5100 50  0001 C CNN
	1    8500 5100
	0    -1   -1   0   
$EndComp
NoConn ~ 7050 6450
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5BC3017A
P 10350 5350
F 0 "#FLG0101" H 10350 5425 50  0001 C CNN
F 1 "PWR_FLAG" H 10350 5250 30  0000 C CNN
F 2 "" H 10350 5350 50  0001 C CNN
F 3 "" H 10350 5350 50  0001 C CNN
	1    10350 5350
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5BC3065C
P 10350 5550
F 0 "#FLG0102" H 10350 5625 50  0001 C CNN
F 1 "PWR_FLAG" H 10250 5500 50  0001 L CNN
F 2 "" H 10350 5550 50  0001 C CNN
F 3 "" H 10350 5550 50  0001 C CNN
	1    10350 5550
	-1   0    0    1   
$EndComp
$Comp
L MPPT-rescue:CAN_Bus_Protector_CDSOT23-T24CAN-Array U9
U 1 1 5BC2BF90
P 11150 5200
F 0 "U9" H 10810 5420 60  0000 C CNN
F 1 "CDSOT23-T24CAN" H 11150 5350 60  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 11150 5200 60  0001 C CNN
F 3 "" H 11150 5200 60  0001 C CNN
	1    11150 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C15
U 1 1 5BC45510
P 1150 6050
F 0 "C15" H 1230 6090 50  0000 L CNN
F 1 "1uF" H 1230 6020 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1150 6050 50  0001 C CNN
F 3 "" H 1150 6050 50  0001 C CNN
	1    1150 6050
	1    0    0    -1  
$EndComp
Text Notes 11600 5150 0    40   ~ 0
CAN Bus\nProtection
$Comp
L Connector:TestPoint TP22
U 1 1 5BC87942
P 6800 6200
F 0 "TP22" H 6800 6500 50  0000 C BNN
F 1 "CAN_Rx" H 6800 6450 50  0000 C CNN
F 2 "TestPoint:TestPoint_Keystone_5005-5009_Compact" H 6800 6200 50  0001 C CNN
F 3 "" H 6800 6200 50  0001 C CNN
	1    6800 6200
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP21
U 1 1 5BC87E62
P 6500 6200
F 0 "TP21" H 6500 6500 50  0000 C BNN
F 1 "CAN_Tx" H 6500 6450 50  0000 C CNN
F 2 "TestPoint:TestPoint_Keystone_5005-5009_Compact" H 6500 6200 50  0001 C CNN
F 3 "" H 6500 6200 50  0001 C CNN
	1    6500 6200
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP27
U 1 1 5BC9CC23
P 10400 6150
F 0 "TP27" H 10400 6420 50  0000 C BNN
F 1 "CAN_H" H 10400 6370 50  0000 C CNN
F 2 "TestPoint:TestPoint_Keystone_5005-5009_Compact" H 10400 6150 50  0001 C CNN
F 3 "" H 10400 6150 50  0001 C CNN
	1    10400 6150
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP28
U 1 1 5BC9CD87
P 10500 6400
F 0 "TP28" V 10500 6580 50  0000 L BNN
F 1 "CAN_L" V 10540 6570 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5005-5009_Compact" H 10500 6400 50  0001 C CNN
F 3 "" H 10500 6400 50  0001 C CNN
	1    10500 6400
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP11
U 1 1 5BCA523D
P 5550 3350
F 0 "TP11" H 5550 3650 50  0000 C BNN
F 1 "+BATT" H 5550 3600 50  0000 C CNN
F 2 "TestPoint:TestPoint_Keystone_5005-5009_Compact" H 5550 3350 50  0001 C CNN
F 3 "" H 5550 3350 50  0001 C CNN
	1    5550 3350
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP16
U 1 1 5BCA5488
P 6900 4550
F 0 "TP16" V 6900 4820 50  0000 C BNN
F 1 "-BATT" V 6940 4840 50  0000 C CNN
F 2 "TestPoint:TestPoint_Keystone_5005-5009_Compact" H 6900 4550 50  0001 C CNN
F 3 "" H 6900 4550 50  0001 C CNN
	1    6900 4550
	0    1    1    0   
$EndComp
$Comp
L Device:R R20
U 1 1 5BCAF9A6
P 950 5650
F 0 "R20" V 1090 5600 50  0000 L CNN
F 1 "1.7k" V 1030 5590 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 950 5650 50  0001 C CNN
F 3 "" H 950 5650 50  0001 C CNN
	1    950  5650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R24
U 1 1 5BCB4671
P 8650 6500
F 0 "R24" V 8800 6500 50  0000 C CNN
F 1 "0" V 8730 6500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8580 6500 50  0001 C CNN
F 3 "" H 8650 6500 50  0001 C CNN
	1    8650 6500
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP15
U 1 1 5BCE37AD
P 4600 4700
F 0 "TP15" V 4700 4900 50  0000 L BNN
F 1 "-SNUB" V 4600 4900 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5005-5009_Compact" H 4600 4700 50  0001 C CNN
F 3 "" H 4600 4700 50  0001 C CNN
	1    4600 4700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3500 3400 3600 3400
Wire Wire Line
	3600 3400 3600 3850
Connection ~ 3600 3400
Wire Wire Line
	3600 4550 3600 4250
Connection ~ 3600 4550
Wire Wire Line
	2450 3350 2450 3400
Connection ~ 2450 3400
Wire Wire Line
	2450 4050 2450 4550
Wire Notes Line
	1450 4400 1900 4400
Wire Notes Line
	1900 4400 1900 4750
Wire Notes Line
	1900 4750 1450 4750
Wire Notes Line
	1450 4750 1450 4400
Wire Wire Line
	3000 4150 3000 4050
Wire Wire Line
	3000 4050 3200 4050
Wire Wire Line
	3200 3750 3200 3900
Connection ~ 3200 4050
Wire Wire Line
	3200 4550 3200 4450
Connection ~ 3200 4550
Wire Wire Line
	3000 4550 3000 4450
Connection ~ 3000 4550
Wire Notes Line
	1850 3800 2250 3800
Wire Notes Line
	2250 3800 2250 4150
Wire Notes Line
	2250 4150 1850 4150
Wire Notes Line
	1850 4150 1850 3800
Connection ~ 4000 4550
Wire Wire Line
	4000 3550 4000 3400
Connection ~ 4000 3400
Wire Wire Line
	4450 3950 4450 4000
Wire Wire Line
	4600 4350 4600 4550
Connection ~ 4600 4550
Wire Notes Line
	4850 3550 4950 3550
Wire Notes Line
	4950 3550 4950 4350
Wire Notes Line
	4950 4350 4850 4350
Wire Wire Line
	4900 3100 4800 3100
Wire Wire Line
	4800 3100 4800 3400
Connection ~ 4800 3400
Wire Wire Line
	5200 3400 5300 3400
Wire Wire Line
	5300 3100 5300 3400
Wire Wire Line
	5300 3100 5200 3100
Wire Notes Line
	2050 3800 2050 3400
Wire Notes Line
	2050 4150 2050 4550
Connection ~ 5300 3400
Wire Wire Line
	5300 4550 5300 4050
Wire Notes Line
	6000 4400 6000 4750
Wire Notes Line
	6000 4400 6450 4400
Wire Notes Line
	6450 4400 6450 4750
Wire Notes Line
	6450 4750 6000 4750
Wire Wire Line
	1150 3600 1200 3600
Wire Wire Line
	1200 3600 1200 4550
Wire Wire Line
	6800 3600 6800 4550
Wire Wire Line
	6800 3600 6850 3600
Wire Notes Line
	5650 3800 5650 4150
Wire Notes Line
	5650 4150 6100 4150
Wire Notes Line
	6100 4150 6100 3800
Wire Notes Line
	6100 3800 5650 3800
Wire Notes Line
	5850 3800 5850 3400
Wire Notes Line
	5850 4150 5850 4550
Wire Wire Line
	2200 6300 2200 6200
Wire Wire Line
	750  6300 1150 6300
Wire Wire Line
	2500 6300 2500 6200
Wire Wire Line
	750  6200 750  6300
Connection ~ 750  6300
Wire Wire Line
	750  5250 750  5300
Wire Notes Line
	550  2750 550  4850
Wire Notes Line
	550  4850 7350 4850
Wire Notes Line
	7350 4850 7350 2750
Wire Notes Line
	7350 2750 550  2750
Wire Wire Line
	4000 4550 4000 3950
Wire Wire Line
	3800 4550 3800 4600
Connection ~ 3800 4550
Wire Wire Line
	4750 4000 4750 3950
Wire Wire Line
	4250 4000 4450 4000
Wire Wire Line
	4600 4050 4600 4000
Connection ~ 4600 4000
Wire Wire Line
	4450 3650 4450 3600
Wire Wire Line
	4450 3600 4600 3600
Wire Wire Line
	4750 3600 4750 3650
Wire Wire Line
	4600 3350 4600 3400
Connection ~ 4600 3400
Connection ~ 4600 3600
Wire Wire Line
	6700 3400 6850 3400
Wire Wire Line
	2450 4550 3000 4550
Wire Wire Line
	1100 4550 1200 4550
Wire Notes Line
	1900 4550 2450 4550
Wire Notes Line
	5300 4550 6000 4550
Wire Wire Line
	6450 4550 6800 4550
Connection ~ 4450 4000
Wire Wire Line
	5550 3350 5550 3400
Connection ~ 5550 3400
Wire Wire Line
	11850 5400 11850 6000
Wire Wire Line
	11850 6000 11950 6000
Wire Wire Line
	11750 5200 11750 5500
Wire Wire Line
	11750 6100 11950 6100
Wire Wire Line
	11550 6200 11550 5600
Wire Wire Line
	11650 5700 11950 5700
Wire Wire Line
	11650 6300 11650 5700
Wire Wire Line
	6050 5850 6250 5850
Wire Wire Line
	6050 5800 6050 5850
Wire Wire Line
	6250 5800 6250 5850
Connection ~ 6250 5850
Wire Wire Line
	6500 5800 6500 5850
Connection ~ 6500 5850
Wire Wire Line
	6700 5850 6700 5800
Connection ~ 6700 5850
Wire Wire Line
	6700 5400 6700 5550
Wire Wire Line
	6500 5550 6700 5550
Wire Wire Line
	6500 5550 6500 5600
Wire Wire Line
	6250 5550 6250 5600
Wire Wire Line
	6050 5550 6250 5550
Wire Wire Line
	6050 5400 6050 5450
Connection ~ 6050 5550
Wire Wire Line
	8850 5450 8850 5400
Wire Wire Line
	9300 5250 9300 5400
Wire Wire Line
	8450 5900 8550 5900
Wire Wire Line
	9300 5650 9300 5700
Wire Wire Line
	8850 5700 8850 5650
Wire Wire Line
	8650 5400 8850 5400
Wire Wire Line
	9200 5700 9300 5700
Wire Wire Line
	8450 5700 8650 5700
Wire Wire Line
	9700 5400 9700 5450
Wire Wire Line
	9950 5400 9950 5450
Wire Wire Line
	9700 5700 9700 5650
Wire Wire Line
	9950 5700 9950 5650
Connection ~ 9700 5400
Connection ~ 9300 5400
Connection ~ 9300 5700
Connection ~ 9700 5700
Connection ~ 8850 5400
Connection ~ 9950 5400
Connection ~ 8850 5700
Connection ~ 9950 5700
Wire Wire Line
	6350 6050 6500 6050
Wire Wire Line
	6350 6150 6800 6150
Wire Wire Line
	8500 6500 8450 6500
Wire Wire Line
	8550 5800 8550 5900
Wire Wire Line
	8550 5800 8450 5800
Connection ~ 8550 5900
Wire Wire Line
	8650 5600 8650 5700
Wire Wire Line
	8650 5600 8450 5600
Wire Wire Line
	7000 5650 7000 5750
Wire Wire Line
	7000 5750 7050 5750
Wire Wire Line
	7050 5650 7000 5650
Connection ~ 7000 5750
Connection ~ 7000 5850
Connection ~ 6700 5550
Wire Wire Line
	7050 5450 6050 5450
Wire Wire Line
	8650 5500 8450 5500
Wire Wire Line
	8650 5100 8650 5400
Wire Wire Line
	8500 5250 8550 5250
Wire Wire Line
	8550 5250 8550 5400
Wire Wire Line
	8550 5400 8450 5400
Connection ~ 11550 6200
Connection ~ 11650 6300
Wire Wire Line
	11550 5600 11950 5600
Connection ~ 11850 5400
Connection ~ 11750 5500
Wire Notes Line
	8800 5200 9400 5200
Wire Notes Line
	9600 5350 10050 5350
Wire Wire Line
	11100 5600 11100 5750
Wire Wire Line
	11300 5600 11300 5750
Wire Notes Line
	5900 4950 5900 6600
Wire Notes Line
	5900 6600 12550 6600
Wire Notes Line
	12550 6600 12550 4950
Wire Notes Line
	12550 4950 5900 4950
Connection ~ 6050 5450
Connection ~ 8650 5400
Connection ~ 8550 5250
Wire Wire Line
	8650 6050 9400 6050
Connection ~ 8650 5700
Connection ~ 9300 5900
Wire Wire Line
	8500 5100 8650 5100
Wire Wire Line
	10350 5550 10350 5500
Connection ~ 10350 5500
Wire Wire Line
	10350 5400 10350 5350
Connection ~ 10350 5400
Wire Wire Line
	1150 6300 1150 6150
Wire Wire Line
	11100 6200 11100 6050
Connection ~ 11100 6200
Wire Wire Line
	11300 6300 11300 6050
Connection ~ 11300 6300
Wire Wire Line
	10800 5250 10750 5250
Wire Wire Line
	10800 5150 10650 5150
Wire Wire Line
	10650 5150 10650 6200
Connection ~ 10650 6200
Wire Wire Line
	10750 5250 10750 6300
Connection ~ 10750 6300
Wire Wire Line
	11500 5200 11750 5200
Wire Wire Line
	9200 5400 9300 5400
Wire Wire Line
	10200 5500 10350 5500
Wire Wire Line
	8450 6200 10400 6200
Wire Wire Line
	8450 6300 10400 6300
Wire Wire Line
	6500 6200 6500 6050
Connection ~ 6500 6050
Wire Wire Line
	6800 6200 6800 6150
Connection ~ 6800 6150
Wire Wire Line
	3100 3900 3200 3900
Connection ~ 3200 3900
Wire Wire Line
	4250 4050 4250 4000
Wire Wire Line
	10400 6150 10400 6200
Connection ~ 10400 6200
Wire Wire Line
	10400 6300 10400 6400
Wire Wire Line
	10400 6400 10500 6400
Connection ~ 10400 6300
Connection ~ 1200 4550
Connection ~ 6800 4550
Wire Wire Line
	8800 6500 8850 6500
Wire Wire Line
	8850 6500 8850 5900
Connection ~ 8850 5900
Connection ~ 1150 6300
Wire Wire Line
	3600 3400 4000 3400
Wire Wire Line
	3600 4550 3800 4550
Wire Wire Line
	2450 3400 3200 3400
Wire Wire Line
	2450 3400 2450 3750
Wire Wire Line
	3200 3750 3700 3750
Wire Wire Line
	3200 4050 3300 4050
Wire Wire Line
	3200 4050 3200 4150
Wire Wire Line
	3200 4550 3600 4550
Wire Wire Line
	3000 4550 3200 4550
Wire Wire Line
	4000 4550 4600 4550
Wire Wire Line
	4000 3400 4600 3400
Wire Wire Line
	4600 4550 4600 4700
Wire Wire Line
	4600 4550 5300 4550
Wire Wire Line
	4800 3400 4900 3400
Wire Wire Line
	5300 3400 5550 3400
Wire Wire Line
	5300 3400 5300 3750
Wire Wire Line
	750  6300 750  6400
Wire Wire Line
	3800 4550 4000 4550
Wire Wire Line
	4600 4000 4750 4000
Wire Wire Line
	4600 3400 4600 3600
Wire Wire Line
	4600 3400 4800 3400
Wire Wire Line
	4600 3600 4750 3600
Wire Wire Line
	4450 4000 4600 4000
Wire Wire Line
	5550 3400 6400 3400
Wire Wire Line
	6250 5850 6500 5850
Wire Wire Line
	6500 5850 6700 5850
Wire Wire Line
	6700 5850 7000 5850
Wire Wire Line
	6050 5550 6050 5600
Wire Wire Line
	9700 5400 9950 5400
Wire Wire Line
	9300 5400 9300 5450
Wire Wire Line
	9300 5400 9700 5400
Wire Wire Line
	9300 5700 9300 5900
Wire Wire Line
	9300 5700 9700 5700
Wire Wire Line
	9700 5700 9950 5700
Wire Wire Line
	8850 5400 9000 5400
Wire Wire Line
	9950 5400 10350 5400
Wire Wire Line
	8850 5700 9000 5700
Wire Wire Line
	9950 5700 10200 5700
Wire Wire Line
	8550 5900 8850 5900
Wire Wire Line
	7000 5750 7000 5850
Wire Wire Line
	7000 5850 7050 5850
Wire Wire Line
	6700 5550 6700 5600
Wire Wire Line
	6700 5550 7050 5550
Wire Wire Line
	11550 6200 11950 6200
Wire Wire Line
	11650 6300 11950 6300
Wire Wire Line
	11850 5400 11950 5400
Wire Wire Line
	11750 5500 11750 6100
Wire Wire Line
	11750 5500 11950 5500
Wire Wire Line
	6050 5450 6050 5550
Wire Wire Line
	8650 5400 8650 5500
Wire Wire Line
	8550 5250 9300 5250
Wire Wire Line
	8650 5700 8850 5700
Wire Wire Line
	8650 5700 8650 6050
Wire Wire Line
	9300 5900 9400 5900
Wire Wire Line
	10350 5500 11750 5500
Wire Wire Line
	10350 5400 11850 5400
Wire Wire Line
	11100 6200 11550 6200
Wire Wire Line
	11300 6300 11650 6300
Wire Wire Line
	10650 6200 11100 6200
Wire Wire Line
	10750 6300 11300 6300
Wire Wire Line
	6500 6050 7050 6050
Wire Wire Line
	6800 6150 7050 6150
Wire Wire Line
	3200 3900 3200 4050
Wire Wire Line
	10400 6200 10650 6200
Wire Wire Line
	10400 6300 10750 6300
Wire Wire Line
	1200 4550 1450 4550
Wire Wire Line
	6800 4550 6900 4550
Wire Wire Line
	8850 5900 9300 5900
Wire Wire Line
	2200 6300 2500 6300
$Comp
L MPPT-rescue:MAX400_option2-Amplifier_Current-Array U6
U 1 1 5F68D2F9
P 1700 5750
F 0 "U6" H 1580 6090 50  0000 L CNN
F 1 "MAX40075AUT+" H 1110 6020 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 2250 6000 50  0001 C CNN
F 3 "https://www.google.com/url?q=http://www.ti.com/lit/ds/symlink/ina181.pdf&sa=D&source=hangouts&ust=1599298999237000&usg=AFQjCNENDnVSIPCSOjCr8VHymvxr9Gseqw" H 1850 5900 50  0001 C CNN
	1    1700 5750
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0123
U 1 1 5F68D303
P 1750 5500
F 0 "#PWR0123" H 1750 5350 50  0001 C CNN
F 1 "+3.3V" H 1750 5670 50  0000 C CNN
F 2 "" H 1750 5500 50  0001 C CNN
F 3 "" H 1750 5500 50  0001 C CNN
	1    1750 5500
	1    0    0    -1  
$EndComp
NoConn ~ 1800 6050
Connection ~ 2200 5750
Wire Wire Line
	2200 5750 2200 5900
Wire Wire Line
	2200 5750 2500 5750
Wire Wire Line
	2500 5750 2500 5900
Wire Wire Line
	1150 5650 1150 5950
Wire Wire Line
	1400 5650 1150 5650
Wire Wire Line
	2000 5750 2200 5750
Wire Wire Line
	1150 6300 2200 6300
Connection ~ 2200 6300
Wire Wire Line
	1400 5850 1400 6250
Wire Wire Line
	1400 6250 2000 6250
Wire Wire Line
	2000 6250 2000 5750
Connection ~ 2000 5750
$Comp
L Mechanical:Heatsink HS2
U 1 1 5F5B266C
P 750 3150
F 0 "HS2" H 892 3271 50  0000 L CNN
F 1 "Snubber Heatsink" H 892 3180 50  0000 L CNN
F 2 "Heatsink:Heatsink_Fischer_SK129-STS_42x25mm_2xDrill2.5mm" H 762 3150 50  0001 C CNN
F 3 "~" H 762 3150 50  0001 C CNN
	1    750  3150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Heatsink HS3
U 1 1 5F5B5FD7
P 2050 2950
F 0 "HS3" H 2192 3071 50  0000 L CNN
F 1 "MOSFET Heatsink" H 2192 2980 50  0000 L CNN
F 2 "Heatsink:Heatsink_Fischer_SK129-STS_42x25mm_2xDrill2.5mm" H 2062 2950 50  0001 C CNN
F 3 "~" H 2062 2950 50  0001 C CNN
	1    2050 2950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Heatsink HS1
U 1 1 5F5B6CE9
P 750 2950
F 0 "HS1" H 892 3071 50  0000 L CNN
F 1 "Schottky Diode Heatsink" H 892 2980 50  0000 L CNN
F 2 "Heatsink:Heatsink_Fischer_SK129-STS_42x25mm_2xDrill2.5mm" H 762 2950 50  0001 C CNN
F 3 "~" H 762 2950 50  0001 C CNN
	1    750  2950
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP9
U 1 1 5BBED077
P 2450 3350
F 0 "TP9" H 2450 3650 50  0000 C BNN
F 1 "+ARR" H 2450 3600 50  0000 C CNN
F 2 "TestPoint:TestPoint_Keystone_5005-5009_Compact" H 2450 3350 50  0001 C CNN
F 3 "" H 2450 3350 50  0001 C CNN
	1    2450 3350
	1    0    0    -1  
$EndComp
Text Notes 2010 7900 0    40   ~ 0
Changes from 3.1+:\n\nSchematic:\n- Reannotated all component labels and reverted rescued schematic symbols.\n- Rearranged schematic and cleaned up component positioning.\n- Created Array.lib for array-relevant schematic symbols.\n- Swapped out zener diodes going into the uC from 3.6V to 3.9V.\n- Updated the LEDs and resistors for Xx_live indicators.\n- Added Error indicator LED.\n- Shifted pins for voltage/current sensors to accomodate STLink UART2.\n- Added fuse on the array side.\n- Added unity gain filter to voltage sensors.\n- Errata: swapped 0.22uF and 10uF capacitors on CAN circuit to correct positions.\n\nLayout:\n- Created MPPT-PrimaryPCB.pretty for custom footprints.\n- Specified that board should be 2oz copper/ft.\n- Re-specified snubber circuit footprints.\n- Comprehensive redesign of layout.
Text Notes 10900 750  0    120  ~ 24
Power Regulation
$Comp
L MPPT-rescue:PWR_Connector_43650-0215-Array J1
U 1 1 5BB2D117
P 9850 1450
F 0 "J1" H 9740 1720 50  0000 C CNN
F 1 "Car Power" H 9880 1650 50  0000 C CNN
F 2 "Connector_Molex:Molex_Micro-Fit_3.0_43650-0215_1x02_P3.00mm_Vertical" H 9850 1450 50  0001 C CNN
F 3 "" H 9850 1450 50  0001 C CNN
	1    9850 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0125
U 1 1 5BB2D2AA
P 12000 1600
F 0 "#PWR0125" H 12000 1350 50  0001 C CNN
F 1 "GNDREF" H 12000 1450 50  0000 C CNN
F 2 "" H 12000 1600 50  0001 C CNN
F 3 "" H 12000 1600 50  0001 C CNN
	1    12000 1600
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0126
U 1 1 5BBBE0EE
P 10150 1250
F 0 "#PWR0126" H 10150 1100 50  0001 C CNN
F 1 "+12V" H 10150 1390 50  0000 C CNN
F 2 "" H 10150 1250 50  0001 C CNN
F 3 "" H 10150 1250 50  0001 C CNN
	1    10150 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR0127
U 1 1 5BBBF0C7
P 10150 1650
F 0 "#PWR0127" H 10150 1450 50  0001 C CNN
F 1 "GNDPWR" H 10150 1520 50  0000 C CNN
F 2 "" H 10150 1600 50  0001 C CNN
F 3 "" H 10150 1600 50  0001 C CNN
	1    10150 1650
	1    0    0    -1  
$EndComp
Text Notes 12450 1700 1    60   ~ 0
High Power\nControl
$Comp
L Connector:TestPoint TP7
U 1 1 5BBEB797
P 10560 2400
F 0 "TP7" H 10560 2700 50  0000 C BNN
F 1 "+9VA" H 10560 2650 50  0000 C CNN
F 2 "TestPoint:TestPoint_Keystone_5005-5009_Compact" H 10560 2400 50  0001 C CNN
F 3 "" H 10560 2400 50  0001 C CNN
	1    10560 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C7
U 1 1 5BC18F68
P 12000 1450
F 0 "C7" H 12070 1470 50  0000 L CNN
F 1 "100uF" H 12070 1410 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 12000 1450 50  0001 C CNN
F 3 "" H 12000 1450 50  0001 C CNN
	1    12000 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C5
U 1 1 5BC1939A
P 10750 1450
F 0 "C5" V 10590 1500 50  0000 R BNN
F 1 "47uF" V 10610 1590 50  0000 R TNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 10750 1450 50  0001 C CNN
F 3 "" H 10750 1450 50  0001 C CNN
	1    10750 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+9VA #PWR0128
U 1 1 5BC298F1
P 12000 1300
F 0 "#PWR0128" H 12000 1175 50  0001 C CNN
F 1 "+9VA" H 12000 1450 50  0000 C CNN
F 2 "" H 12000 1300 50  0001 C CNN
F 3 "" H 12000 1300 50  0001 C CNN
	1    12000 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_ALT LED6
U 1 1 5BC321DC
P 8300 2000
F 0 "LED6" H 8300 2100 50  0000 C CNN
F 1 "Tracking (Blue)" H 8300 1850 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 8300 2000 50  0001 C CNN
F 3 "" H 8300 2000 50  0001 C CNN
	1    8300 2000
	-1   0    0    1   
$EndComp
$Comp
L Device:LED_ALT LED1
U 1 1 5BC3237D
P 6700 2150
F 0 "LED1" H 6700 2250 50  0000 C CNN
F 1 "Array Live (Green)" H 6800 2000 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 6700 2150 50  0001 C CNN
F 3 "" H 6700 2150 50  0001 C CNN
	1    6700 2150
	-1   0    0    1   
$EndComp
$Comp
L Device:LED_ALT LED2
U 1 1 5BC325C8
P 6700 1700
F 0 "LED2" H 6700 1800 50  0000 C CNN
F 1 "Battery Live (Green)" H 6850 1550 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 6700 1700 50  0001 C CNN
F 3 "" H 6700 1700 50  0001 C CNN
	1    6700 1700
	-1   0    0    1   
$EndComp
Text Label 7050 2150 0    39   ~ 8
-Arr
Text Label 6150 2150 2    39   ~ 8
+Arr
Text Label 7050 1700 0    39   ~ 8
-Batt
Text Label 6150 1700 2    39   ~ 8
+Batt
$Comp
L Device:R_Small R2
U 1 1 5BC34931
P 6350 2150
F 0 "R2" H 6390 2130 50  0000 L CNN
F 1 "15k" H 6390 2190 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 6350 2150 50  0001 C CNN
F 3 "" H 6350 2150 50  0001 C CNN
	1    6350 2150
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5BC34C2A
P 6350 1700
F 0 "R3" H 6390 1670 50  0000 L CNN
F 1 "27k" H 6390 1740 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 6350 1700 50  0001 C CNN
F 3 "" H 6350 1700 50  0001 C CNN
	1    6350 1700
	0    1    1    0   
$EndComp
Text Label 7750 2000 2    39   ~ 8
Tracking
$Comp
L Device:LED_ALT LED7
U 1 1 5BC3C323
P 8300 1600
F 0 "LED7" H 8300 1700 50  0000 C CNN
F 1 "PWM (Blue)" H 8300 1450 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 8300 1600 50  0001 C CNN
F 3 "" H 8300 1600 50  0001 C CNN
	1    8300 1600
	-1   0    0    1   
$EndComp
Text Label 7750 1600 2    39   ~ 8
PWM
$Comp
L Device:LED_ALT LED3
U 1 1 5BC3DA9B
P 6700 1250
F 0 "LED3" H 6700 1350 50  0000 C CNN
F 1 "Car Power Live (Green)" H 6800 1100 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 6700 1250 50  0001 C CNN
F 3 "" H 6700 1250 50  0001 C CNN
	1    6700 1250
	-1   0    0    1   
$EndComp
$Comp
L power:GNDPWR #PWR0131
U 1 1 5BC3DC13
P 10200 2400
F 0 "#PWR0131" H 10200 2150 50  0001 C CNN
F 1 "GNDPWR" H 10200 2250 50  0000 C CNN
F 2 "" H 10200 2400 50  0001 C CNN
F 3 "" H 10200 2400 50  0001 C CNN
	1    10200 2400
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0132
U 1 1 5BC3DF59
P 9800 2400
F 0 "#PWR0132" H 9800 2250 50  0001 C CNN
F 1 "+12V" H 9800 2540 50  0000 C CNN
F 2 "" H 9800 2400 50  0001 C CNN
F 3 "" H 9800 2400 50  0001 C CNN
	1    9800 2400
	-1   0    0    1   
$EndComp
NoConn ~ 10900 1500
$Comp
L Device:C_Small C6
U 1 1 5BC537A1
P 11700 1400
F 0 "C6" V 11800 1340 50  0000 L CNN
F 1 "10uF" V 11860 1350 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 11700 1400 50  0001 C CNN
F 3 "" H 11700 1400 50  0001 C CNN
	1    11700 1400
	0    1    1    0   
$EndComp
$Comp
L Device:LED_ALT LED4
U 1 1 5BC584BD
P 6700 800
F 0 "LED4" H 6700 900 50  0000 C CNN
F 1 "Device 9V Live (Green)" H 6800 650 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 6700 800 50  0001 C CNN
F 3 "" H 6700 800 50  0001 C CNN
	1    6700 800 
	-1   0    0    1   
$EndComp
$Comp
L power:GNDPWR #PWR0133
U 1 1 5BC58852
P 6950 1250
F 0 "#PWR0133" H 6950 1050 50  0001 C CNN
F 1 "GNDPWR" H 6950 1100 50  0000 C CNN
F 2 "" H 6950 1200 50  0001 C CNN
F 3 "" H 6950 1200 50  0001 C CNN
	1    6950 1250
	0    -1   -1   0   
$EndComp
$Comp
L power:+9VA #PWR0134
U 1 1 5BC58980
P 6200 800
F 0 "#PWR0134" H 6200 675 50  0001 C CNN
F 1 "+9VA" H 6200 950 50  0000 C CNN
F 2 "" H 6200 800 50  0001 C CNN
F 3 "" H 6200 800 50  0001 C CNN
	1    6200 800 
	0    -1   -1   0   
$EndComp
$Comp
L Device:L_Small L1
U 1 1 5BC5D15E
P 10550 1300
F 0 "L1" H 10580 1340 50  0000 L CNN
F 1 "4.7uH" H 10580 1260 50  0000 L CNN
F 2 "Inductor_SMD:L_0805_2012Metric" H 10550 1300 50  0001 C CNN
F 3 "" H 10550 1300 50  0001 C CNN
	1    10550 1300
	0    -1   -1   0   
$EndComp
$Comp
L power:+9VA #PWR0135
U 1 1 5BC74588
P 10560 2400
F 0 "#PWR0135" H 10560 2275 50  0001 C CNN
F 1 "+9VA" H 10560 2550 50  0000 C CNN
F 2 "" H 10560 2400 50  0001 C CNN
F 3 "" H 10560 2400 50  0001 C CNN
	1    10560 2400
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR0138
U 1 1 5BC781A9
P 6200 1250
F 0 "#PWR0138" H 6200 1100 50  0001 C CNN
F 1 "+12V" H 6200 1400 50  0000 C CNN
F 2 "" H 6200 1250 50  0001 C CNN
F 3 "" H 6200 1250 50  0001 C CNN
	1    6200 1250
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_ALT LED8
U 1 1 5BC7B329
P 8300 1200
F 0 "LED8" H 8300 1300 50  0000 C CNN
F 1 "CAN_Tx (Blue)" H 8300 1050 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 8300 1200 50  0001 C CNN
F 3 "" H 8300 1200 50  0001 C CNN
	1    8300 1200
	-1   0    0    1   
$EndComp
Text Label 7750 1200 2    39   ~ 8
CAN_Tx
$Comp
L Device:LED_ALT LED9
U 1 1 5BC7B6F5
P 8300 800
F 0 "LED9" H 8300 900 50  0000 C CNN
F 1 "CAN_Rx (Blue)" H 8300 650 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 8300 800 50  0001 C CNN
F 3 "" H 8300 800 50  0001 C CNN
	1    8300 800 
	-1   0    0    1   
$EndComp
Text Label 7750 800  2    39   ~ 8
CAN_Rx
Wire Wire Line
	10150 1250 10150 1300
Wire Wire Line
	10150 1550 10150 1600
Wire Wire Line
	12000 1300 12000 1350
Wire Wire Line
	12000 1600 12000 1550
Wire Notes Line
	12050 1100 12250 1100
Wire Notes Line
	12250 1100 12250 1800
Wire Notes Line
	12250 1800 12050 1800
Wire Notes Line
	9600 550  9600 2650
Wire Notes Line
	9600 2650 12550 2650
Wire Notes Line
	12550 2650 12550 550 
Wire Notes Line
	12550 550  9600 550 
Wire Wire Line
	10750 1300 10750 1350
Wire Wire Line
	10750 1600 10750 1550
Wire Wire Line
	10150 1600 10350 1600
Wire Wire Line
	10650 1300 10750 1300
Wire Wire Line
	11500 1600 11850 1600
Wire Wire Line
	12000 1300 11500 1300
Wire Wire Line
	6550 2150 6450 2150
Wire Wire Line
	6550 1700 6450 1700
Wire Wire Line
	6850 2150 7050 2150
Wire Wire Line
	6850 1700 7050 1700
Wire Wire Line
	6250 1700 6150 1700
Wire Wire Line
	6250 2150 6150 2150
Wire Wire Line
	11600 1400 11500 1400
Wire Wire Line
	11800 1400 11850 1400
Wire Wire Line
	11850 1400 11850 1600
Connection ~ 11850 1600
Connection ~ 10150 1300
Connection ~ 10750 1300
Connection ~ 10750 1600
Connection ~ 10150 1600
Wire Wire Line
	10150 1300 10350 1300
Wire Wire Line
	10350 1300 10350 1350
Connection ~ 10350 1300
Wire Wire Line
	10350 1550 10350 1600
Connection ~ 10350 1600
Wire Wire Line
	6950 1250 6850 1250
Wire Wire Line
	6550 1250 6450 1250
Wire Wire Line
	6250 1250 6200 1250
Wire Wire Line
	6200 800  6250 800 
Wire Wire Line
	6450 800  6550 800 
Wire Wire Line
	11850 1600 12000 1600
Wire Wire Line
	10150 1300 10150 1350
Wire Wire Line
	10750 1300 10900 1300
Wire Wire Line
	10750 1600 10900 1600
Wire Wire Line
	10150 1600 10150 1650
Wire Wire Line
	10350 1300 10450 1300
Wire Wire Line
	10350 1600 10750 1600
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 5FE3DAAA
P 10750 1300
F 0 "#FLG0103" H 10750 1375 50  0001 C CNN
F 1 "PWR_FLAG" H 10750 1550 50  0001 C CNN
F 2 "" H 10750 1300 50  0001 C CNN
F 3 "" H 10750 1300 50  0001 C CNN
	1    10750 1300
	1    0    0    -1  
$EndComp
$Comp
L MPPT-rescue:PWR_REG_PQMC3-Dx-Sx-S-Array U3
U 1 1 5BC52EE1
P 11200 1450
F 0 "U3" H 11050 1840 60  0000 C CNN
F 1 "PQMC3-D12-S9-S" H 11200 1750 60  0000 C CNN
F 2 "MPPT-PrimaryPCB:490_PQMC3_D12_S12_S" H 11200 1500 60  0001 C CNN
F 3 "" H 11200 1500 60  0001 C CNN
	1    11200 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 800  8450 800 
Wire Wire Line
	8550 1200 8450 1200
Wire Wire Line
	8550 1600 8450 1600
Wire Wire Line
	8550 2000 8450 2000
Wire Wire Line
	8150 2000 8050 2000
Wire Wire Line
	7850 2000 7750 2000
Wire Wire Line
	7850 1600 7750 1600
Wire Wire Line
	7850 1200 7750 1200
Wire Wire Line
	7850 800  7750 800 
Wire Wire Line
	8150 800  8050 800 
Wire Wire Line
	8150 1200 8050 1200
Wire Wire Line
	8150 1600 8050 1600
Connection ~ 12000 1300
Connection ~ 12000 1600
Text Notes 9000 750  0    120  ~ 24
LEDs
Text Notes 8950 1000 0    39   ~ 0
Status LEDs for\nat-a-glance\ninformation
Wire Notes Line
	5900 2650 5900 550 
Wire Notes Line
	5900 550  9500 550 
Wire Notes Line
	9500 550  9500 2650
Wire Notes Line
	9500 2650 5900 2650
Text Notes 11750 2600 0    39   ~ 0
Isolated Power Regions:\n* Device/Board Power\n   - +/-Arr\n   - +/-Batt\n   - +9VA, +5V, +3.3V\n   - GNDREF\n* Car Power\n   - +12V\n   - GNDPWR
$Comp
L Device:R_Small R7
U 1 1 5BC346DB
P 7950 2000
F 0 "R7" H 8000 1980 50  0000 L CNN
F 1 "330" H 8000 2040 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 7950 2000 50  0001 C CNN
F 3 "" H 7950 2000 50  0001 C CNN
	1    7950 2000
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R8
U 1 1 5BC3C32F
P 7950 1600
F 0 "R8" H 7990 1580 50  0000 L CNN
F 1 "330" H 7990 1640 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 7950 1600 50  0001 C CNN
F 3 "" H 7950 1600 50  0001 C CNN
	1    7950 1600
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R9
U 1 1 5BC7B335
P 7950 1200
F 0 "R9" H 7990 1180 50  0000 L CNN
F 1 "330" H 7990 1240 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 7950 1200 50  0001 C CNN
F 3 "" H 7950 1200 50  0001 C CNN
	1    7950 1200
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R10
U 1 1 5BC7B701
P 7950 800
F 0 "R10" H 7990 780 50  0000 L CNN
F 1 "330" H 7990 850 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 7950 800 50  0001 C CNN
F 3 "" H 7950 800 50  0001 C CNN
	1    7950 800 
	0    1    1    0   
$EndComp
Text Notes 2000 850  0    40   ~ 0
USB
NoConn ~ 2550 1750
Text Notes 4200 1250 0    40   ~ 0
Note that A7 (PA2) and A2 (PA3) are reserved \nfor STLink UART.
Text Label 1350 2250 2    39   ~ 8
Error
Wire Wire Line
	1350 2250 1550 2250
$Comp
L Device:LED_ALT LED5
U 1 1 6115347D
P 8300 2400
F 0 "LED5" H 8300 2500 50  0000 C CNN
F 1 "Error (Amber)" H 8300 2250 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 8300 2400 50  0001 C CNN
F 3 "" H 8300 2400 50  0001 C CNN
	1    8300 2400
	-1   0    0    1   
$EndComp
Wire Wire Line
	8550 2400 8450 2400
Wire Wire Line
	8150 2400 8050 2400
Wire Wire Line
	7850 2400 7750 2400
$Comp
L Device:R_Small R6
U 1 1 61153495
P 7950 2400
F 0 "R6" H 8000 2380 50  0000 L CNN
F 1 "330" H 8000 2440 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 7950 2400 50  0001 C CNN
F 3 "" H 7950 2400 50  0001 C CNN
	1    7950 2400
	0    1    1    0   
$EndComp
Text Label 7750 2400 2    39   ~ 8
Error
$Comp
L Connector:TestPoint TP5
U 1 1 5BC42BFA
P 9800 2400
F 0 "TP5" H 9800 2700 50  0000 C BNN
F 1 "Car +12V" H 9800 2650 50  0000 C CNN
F 2 "TestPoint:TestPoint_Keystone_5005-5009_Compact" H 9800 2400 50  0001 C CNN
F 3 "" H 9800 2400 50  0001 C CNN
	1    9800 2400
	1    0    0    -1  
$EndComp
Wire Notes Line
	7450 2750 7450 4850
Wire Notes Line
	7450 4850 12550 4850
Wire Notes Line
	7450 2750 12550 2750
Text Label 1350 1950 2    39   ~ 8
BPS_Full
Wire Wire Line
	1550 1950 1350 1950
$Comp
L Switch:SW_DIP_x02 SW2
U 1 1 618E82BF
P 1150 1700
F 0 "SW2" H 1060 2020 50  0000 C CNN
F 1 "SW_DIP_x02" H 1210 1950 50  0000 C CNN
F 2 "MPPT-PrimaryPCB:ADF02ST04_DIP_Switch_2_POS" H 1150 1700 50  0001 C CNN
F 3 "~" H 1150 1700 50  0001 C CNN
	1    1150 1700
	1    0    0    -1  
$EndComp
Text Notes 5980 3120 0    40   ~ 0
R13, C9 are experimental and are through \nhole components with a range of values.
$Comp
L Device:Fuse F1
U 1 1 619A8D12
P 1600 3400
F 0 "F1" V 1740 3440 50  0000 C CNN
F 1 "Fuse" V 1670 3400 50  0000 C CNN
F 2 "MPPT-PrimaryPCB:05200101Z_Fuze_Holder_5x20_PCB_Mount" V 1530 3400 50  0001 C CNN
F 3 "" H 1600 3400 50  0001 C CNN
	1    1600 3400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1150 3400 1450 3400
Wire Wire Line
	10200 5500 10200 5700
Wire Wire Line
	1750 3400 2450 3400
Wire Wire Line
	850  1700 850  1600
Connection ~ 850  1150
Connection ~ 850  1600
Wire Wire Line
	850  1600 850  1150
Wire Wire Line
	1450 1700 1450 1850
Wire Wire Line
	1450 1850 1550 1850
Wire Wire Line
	1550 1750 1500 1750
Wire Wire Line
	1500 1750 1500 1600
Wire Wire Line
	1500 1600 1450 1600
$Comp
L Device:LED_ALT LED10
U 1 1 5FD9E5F7
P 9200 1650
F 0 "LED10" H 9200 1750 50  0000 C CNN
F 1 "BPS Full (Blue)" H 9200 1500 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 9200 1650 50  0001 C CNN
F 3 "" H 9200 1650 50  0001 C CNN
	1    9200 1650
	0    1    1    0   
$EndComp
Wire Wire Line
	9200 1400 9200 1500
Wire Wire Line
	9200 1800 9200 1900
Wire Wire Line
	9200 2100 9200 2200
$Comp
L Device:R_Small R11
U 1 1 5FD9E60E
P 9200 2000
F 0 "R11" H 9230 2020 50  0000 L CNN
F 1 "330" H 9230 1950 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 9200 2000 50  0001 C CNN
F 3 "" H 9200 2000 50  0001 C CNN
	1    9200 2000
	1    0    0    -1  
$EndComp
Text Label 9200 2200 3    39   ~ 8
BPS_Full
Wire Notes Line
	550  4950 5750 4950
Wire Notes Line
	5750 6600 550  6600
Wire Notes Line
	550  6600 550  4950
Connection ~ 2500 5750
$Comp
L Mechanical:MountingHole H1
U 1 1 60314FE0
P 650 6800
F 0 "H1" H 750 6846 50  0000 L CNN
F 1 "Top Left Mounting Hole" H 750 6755 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 650 6800 50  0001 C CNN
F 3 "~" H 650 6800 50  0001 C CNN
	1    650  6800
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 603162A4
P 650 7000
F 0 "H2" H 750 7046 50  0000 L CNN
F 1 "Top Right Mounting Hole" H 750 6955 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 650 7000 50  0001 C CNN
F 3 "~" H 650 7000 50  0001 C CNN
	1    650  7000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 603165DF
P 650 7200
F 0 "H3" H 750 7246 50  0000 L CNN
F 1 "Bottom Left Mounting Hole" H 750 7155 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 650 7200 50  0001 C CNN
F 3 "~" H 650 7200 50  0001 C CNN
	1    650  7200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 603168DE
P 650 7400
F 0 "H4" H 750 7446 50  0000 L CNN
F 1 "Bottom Right Mounting Hole" H 750 7355 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 650 7400 50  0001 C CNN
F 3 "~" H 650 7400 50  0001 C CNN
	1    650  7400
	1    0    0    -1  
$EndComp
Wire Notes Line
	5750 4950 5750 6600
Text Notes 4200 5200 0    120  ~ 24
Voltage Sensors
Connection ~ 4550 5750
Wire Wire Line
	4550 5750 4550 5900
Wire Wire Line
	4250 5750 4550 5750
Connection ~ 4050 5750
Wire Wire Line
	3450 6250 3450 5850
Wire Wire Line
	4050 6250 3450 6250
Wire Wire Line
	4050 5750 4050 6250
Wire Wire Line
	4250 5750 4250 5900
Connection ~ 4250 5750
Wire Wire Line
	4050 5750 4250 5750
Connection ~ 4250 6300
Wire Wire Line
	3250 6300 4250 6300
NoConn ~ 3850 6050
$Comp
L power:+3.3V #PWR0144
U 1 1 5F5CD0FD
P 3800 5500
F 0 "#PWR0144" H 3800 5350 50  0001 C CNN
F 1 "+3.3V" H 3800 5680 50  0000 C CNN
F 2 "" H 3800 5500 50  0001 C CNN
F 3 "" H 3800 5500 50  0001 C CNN
	1    3800 5500
	1    0    0    -1  
$EndComp
$Comp
L MPPT-rescue:MAX400_option2-Amplifier_Current-Array U7
U 1 1 5F5CB95C
P 3750 5750
F 0 "U7" H 3660 6100 50  0000 L CNN
F 1 "MAX40075AUT+" H 3180 6020 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 4300 6000 50  0001 C CNN
F 3 "https://www.google.com/url?q=http://www.ti.com/lit/ds/symlink/ina181.pdf&sa=D&source=hangouts&ust=1599298999237000&usg=AFQjCNENDnVSIPCSOjCr8VHymvxr9Gseqw" H 3900 5900 50  0001 C CNN
	1    3750 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 6300 4550 6300
Wire Wire Line
	2850 6300 2850 6400
Connection ~ 3250 6300
Wire Wire Line
	3250 6300 3250 6150
Wire Wire Line
	2850 5250 2850 5300
Connection ~ 2850 6300
Wire Wire Line
	2850 6200 2850 6300
Wire Wire Line
	4550 6300 4550 6200
Wire Wire Line
	2850 6300 3250 6300
Wire Wire Line
	4250 6300 4250 6200
$Comp
L Connector:TestPoint TP20
U 1 1 5BBE93C9
P 4550 5750
F 0 "TP20" H 4550 6010 50  0000 C BNN
F 1 "Batt_V" H 4550 5970 50  0000 C CNN
F 2 "TestPoint:TestPoint_Keystone_5005-5009_Compact" H 4550 5750 50  0001 C CNN
F 3 "" H 4550 5750 50  0001 C CNN
	1    4550 5750
	1    0    0    -1  
$EndComp
Text Label 2850 5250 1    39   ~ 8
+Batt
Text Label 4250 5750 1    39   ~ 8
Battery_Voltage
$Comp
L Device:D_Zener_ALT D13
U 1 1 5BB2C203
P 4250 6050
F 0 "D13" H 4250 6150 50  0000 C CNN
F 1 "3.9V Zener" H 4250 6230 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 4250 6050 50  0001 C CNN
F 3 "" H 4250 6050 50  0001 C CNN
	1    4250 6050
	0    1    1    0   
$EndComp
$Comp
L Device:D_ALT D14
U 1 1 5BB2C1FD
P 4550 6050
F 0 "D14" H 4550 6150 50  0000 C CNN
F 1 "Diode" H 4520 6220 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 4550 6050 50  0001 C CNN
F 3 "" H 4550 6050 50  0001 C CNN
	1    4550 6050
	0    1    1    0   
$EndComp
$Comp
L Device:R R22
U 1 1 5BB2C1F7
P 2850 6050
F 0 "R22" V 2930 6050 50  0000 C CNN
F 1 "2k" V 3000 6020 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2780 6050 50  0001 C CNN
F 3 "" H 2850 6050 50  0001 C CNN
	1    2850 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R21
U 1 1 5BB2C1F1
P 2850 5450
F 0 "R21" V 2930 5530 50  0000 C CNN
F 1 "100k" V 3000 5550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2780 5450 50  0001 C CNN
F 3 "" H 2850 5450 50  0001 C CNN
	1    2850 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C17
U 1 1 5BBF56B4
P 6050 5700
F 0 "C17" H 6060 5770 50  0000 L CNN
F 1 "10uF" H 6060 5620 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6050 5700 50  0001 C CNN
F 3 "" H 6050 5700 50  0001 C CNN
	1    6050 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R4
U 1 1 5BC3DAA7
P 6350 1250
F 0 "R4" H 6380 1220 50  0000 L CNN
F 1 "1.5k" H 6380 1300 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 6350 1250 50  0001 C CNN
F 3 "" H 6350 1250 50  0001 C CNN
	1    6350 1250
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R5
U 1 1 5BC584C3
P 6350 800
F 0 "R5" H 6380 780 50  0000 L CNN
F 1 "1.1k" H 6380 850 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 6350 800 50  0001 C CNN
F 3 "" H 6350 800 50  0001 C CNN
	1    6350 800 
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5BC2A8D3
P 1050 850
F 0 "SW1" H 1010 720 50  0000 L CNN
F 1 "RESET" H 1050 790 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 1050 1050 50  0001 C CNN
F 3 "" H 1050 1050 50  0001 C CNN
	1    1050 850 
	-1   0    0    1   
$EndComp
$Comp
L Device:D_Zener_Small_ALT D1
U 1 1 5BC91283
P 3250 2050
F 0 "D1" H 3250 2140 50  0000 C CNN
F 1 "3.9V Zener" H 3270 2210 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" V 3250 2050 50  0001 C CNN
F 3 "" V 3250 2050 50  0001 C CNN
	1    3250 2050
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP10
U 1 1 5BBEC40C
P 4600 3350
F 0 "TP10" H 4600 3650 50  0000 C BNN
F 1 "+SNUB" H 4600 3600 50  0000 C CNN
F 2 "TestPoint:TestPoint_Keystone_5005-5009_Compact" H 4600 3350 50  0001 C CNN
F 3 "" H 4600 3350 50  0001 C CNN
	1    4600 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  5600 750  5650
Wire Wire Line
	750  5650 800  5650
Connection ~ 750  5650
Wire Wire Line
	750  5650 750  5900
Wire Wire Line
	1100 5650 1150 5650
Connection ~ 1150 5650
Wire Wire Line
	2850 5600 2850 5650
Wire Wire Line
	2850 5650 2900 5650
Connection ~ 2850 5650
Wire Wire Line
	2850 5650 2850 5900
Wire Wire Line
	3880 1950 3880 1750
Wire Wire Line
	3880 1750 4100 1750
Wire Wire Line
	3600 2200 3880 2200
Wire Wire Line
	3880 2200 3880 2150
Connection ~ 3880 2200
Wire Wire Line
	3880 2200 4100 2200
$Comp
L Device:CP1_Small C4
U 1 1 5BC5CC8B
P 10350 1450
F 0 "C4" V 10190 1500 50  0000 R BNN
F 1 "100uF" V 10220 1570 50  0000 R TNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 10350 1450 50  0001 C CNN
F 3 "" H 10350 1450 50  0001 C CNN
	1    10350 1450
	1    0    0    -1  
$EndComp
Text Notes 8900 5150 0    40   ~ 0
Must be close\nto V_ISO_Out
$Comp
L Device:C C9
U 1 1 5BB295C8
P 4600 4200
F 0 "C9" H 4690 4240 50  0000 L CNN
F 1 "CP" H 4690 4160 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L16.5mm_W7.0mm_P15.00mm_MKT" H 4600 4200 50  0001 C CNN
F 3 "" H 4600 4200 50  0001 C CNN
	1    4600 4200
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP6
U 1 1 5BC42C00
P 10200 2400
F 0 "TP6" H 10200 2700 50  0000 C BNN
F 1 "Car GND" H 10200 2650 50  0000 C CNN
F 2 "TestPoint:TestPoint_Keystone_5005-5009_Compact" H 10200 2400 50  0001 C CNN
F 3 "" H 10200 2400 50  0001 C CNN
	1    10200 2400
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP8
U 1 1 5BBEBBC8
P 10960 2400
F 0 "TP8" H 10960 2700 50  0000 C BNN
F 1 "Device GND" H 10960 2650 50  0000 C CNN
F 2 "TestPoint:TestPoint_Keystone_5005-5009_Compact" H 10960 2400 50  0001 C CNN
F 3 "" H 10960 2400 50  0001 C CNN
	1    10960 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0136
U 1 1 5BC754C8
P 10960 2400
F 0 "#PWR0136" H 10960 2200 50  0001 C CNN
F 1 "GNDREF" H 10960 2270 50  0000 C CNN
F 2 "" H 10960 2350 50  0001 C CNN
F 3 "" H 10960 2350 50  0001 C CNN
	1    10960 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 800  6950 800 
$Comp
L power:GNDREF #PWR0137
U 1 1 5BC77E73
P 6950 800
F 0 "#PWR0137" H 6950 550 50  0001 C CNN
F 1 "GNDREF" H 6950 650 50  0000 C CNN
F 2 "" H 6950 800 50  0001 C CNN
F 3 "" H 6950 800 50  0001 C CNN
	1    6950 800 
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDREF #PWR0101
U 1 1 5FEDFCAF
P 8550 800
F 0 "#PWR0101" H 8550 550 50  0001 C CNN
F 1 "GNDREF" H 8550 650 50  0000 C CNN
F 2 "" H 8550 800 50  0001 C CNN
F 3 "" H 8550 800 50  0001 C CNN
	1    8550 800 
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDREF #PWR0102
U 1 1 5FF17B7B
P 8550 1200
F 0 "#PWR0102" H 8550 950 50  0001 C CNN
F 1 "GNDREF" H 8550 1050 50  0000 C CNN
F 2 "" H 8550 1200 50  0001 C CNN
F 3 "" H 8550 1200 50  0001 C CNN
	1    8550 1200
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDREF #PWR0108
U 1 1 5FF4C001
P 8550 1600
F 0 "#PWR0108" H 8550 1350 50  0001 C CNN
F 1 "GNDREF" H 8550 1450 50  0000 C CNN
F 2 "" H 8550 1600 50  0001 C CNN
F 3 "" H 8550 1600 50  0001 C CNN
	1    8550 1600
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDREF #PWR0109
U 1 1 5FF7ED9D
P 8550 2000
F 0 "#PWR0109" H 8550 1750 50  0001 C CNN
F 1 "GNDREF" H 8550 1850 50  0000 C CNN
F 2 "" H 8550 2000 50  0001 C CNN
F 3 "" H 8550 2000 50  0001 C CNN
	1    8550 2000
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDREF #PWR0110
U 1 1 5FFB2638
P 8550 2400
F 0 "#PWR0110" H 8550 2150 50  0001 C CNN
F 1 "GNDREF" H 8550 2250 50  0000 C CNN
F 2 "" H 8550 2400 50  0001 C CNN
F 3 "" H 8550 2400 50  0001 C CNN
	1    8550 2400
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDREF #PWR0111
U 1 1 5FFEBCDF
P 9200 1400
F 0 "#PWR0111" H 9200 1150 50  0001 C CNN
F 1 "GNDREF" H 9200 1250 50  0000 C CNN
F 2 "" H 9200 1400 50  0001 C CNN
F 3 "" H 9200 1400 50  0001 C CNN
	1    9200 1400
	-1   0    0    1   
$EndComp
$Comp
L power:GNDREF #PWR0112
U 1 1 60024BED
P 3100 950
F 0 "#PWR0112" H 3100 700 50  0001 C CNN
F 1 "GNDREF" H 3100 800 50  0000 C CNN
F 2 "" H 3100 950 50  0001 C CNN
F 3 "" H 3100 950 50  0001 C CNN
	1    3100 950 
	0    -1   -1   0   
$EndComp
Connection ~ 3100 950 
$Comp
L power:GNDREF #PWR0113
U 1 1 600637E1
P 4100 2350
F 0 "#PWR0113" H 4100 2100 50  0001 C CNN
F 1 "GNDREF" H 4100 2200 50  0000 C CNN
F 2 "" H 4100 2350 50  0001 C CNN
F 3 "" H 4100 2350 50  0001 C CNN
	1    4100 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0114
U 1 1 600A41EF
P 5150 2350
F 0 "#PWR0114" H 5150 2100 50  0001 C CNN
F 1 "GNDREF" H 5150 2200 50  0000 C CNN
F 2 "" H 5150 2350 50  0001 C CNN
F 3 "" H 5150 2350 50  0001 C CNN
	1    5150 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0115
U 1 1 600DDD93
P 3800 4600
F 0 "#PWR0115" H 3800 4350 50  0001 C CNN
F 1 "GNDREF" H 3800 4450 50  0000 C CNN
F 2 "" H 3800 4600 50  0001 C CNN
F 3 "" H 3800 4600 50  0001 C CNN
	1    3800 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0139
U 1 1 602130AE
P 6050 5850
F 0 "#PWR0139" H 6050 5600 50  0001 C CNN
F 1 "GNDREF" H 6050 5700 50  0000 C CNN
F 2 "" H 6050 5850 50  0001 C CNN
F 3 "" H 6050 5850 50  0001 C CNN
	1    6050 5850
	1    0    0    -1  
$EndComp
Connection ~ 6050 5850
$Comp
L power:GNDREF #PWR0140
U 1 1 60248920
P 3700 6050
F 0 "#PWR0140" H 3700 5800 50  0001 C CNN
F 1 "GNDREF" H 3700 5900 50  0000 C CNN
F 2 "" H 3700 6050 50  0001 C CNN
F 3 "" H 3700 6050 50  0001 C CNN
	1    3700 6050
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0141
U 1 1 6027DDA0
P 750 6400
F 0 "#PWR0141" H 750 6150 50  0001 C CNN
F 1 "GNDREF" H 750 6250 50  0000 C CNN
F 2 "" H 750 6400 50  0001 C CNN
F 3 "" H 750 6400 50  0001 C CNN
	1    750  6400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0142
U 1 1 602B00C1
P 2850 6400
F 0 "#PWR0142" H 2850 6150 50  0001 C CNN
F 1 "GNDREF" H 2850 6250 50  0000 C CNN
F 2 "" H 2850 6400 50  0001 C CNN
F 3 "" H 2850 6400 50  0001 C CNN
	1    2850 6400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0143
U 1 1 602E15CF
P 1650 6050
F 0 "#PWR0143" H 1650 5800 50  0001 C CNN
F 1 "GNDREF" H 1650 5900 50  0000 C CNN
F 2 "" H 1650 6050 50  0001 C CNN
F 3 "" H 1650 6050 50  0001 C CNN
	1    1650 6050
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0145
U 1 1 60320895
P 850 850
F 0 "#PWR0145" H 850 600 50  0001 C CNN
F 1 "GNDREF" H 850 700 50  0000 C CNN
F 2 "" H 850 850 50  0001 C CNN
F 3 "" H 850 850 50  0001 C CNN
	1    850  850 
	0    1    1    0   
$EndComp
Connection ~ 850  850 
Wire Wire Line
	3200 5650 3250 5650
Wire Wire Line
	3450 5650 3250 5650
Connection ~ 3250 5650
$Comp
L Device:C_Small C16
U 1 1 5BC45DC6
P 3250 6050
F 0 "C16" H 3330 6090 50  0000 L CNN
F 1 "1uF" H 3330 6020 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3250 6050 50  0001 C CNN
F 3 "" H 3250 6050 50  0001 C CNN
	1    3250 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R23
U 1 1 5BCAF842
P 3050 5650
F 0 "R23" V 3200 5590 50  0000 L CNN
F 1 "1.7k" V 3130 5570 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3050 5650 50  0001 C CNN
F 3 "" H 3050 5650 50  0001 C CNN
	1    3050 5650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3250 5650 3250 5950
$Comp
L power:GNDREF #PWR0122
U 1 1 5FE1343B
P 11250 3650
F 0 "#PWR0122" H 11250 3400 50  0001 C CNN
F 1 "GNDREF" H 11250 3500 50  0000 C CNN
F 2 "" H 11250 3650 50  0001 C CNN
F 3 "" H 11250 3650 50  0001 C CNN
	1    11250 3650
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDREF #PWR0121
U 1 1 5FDE0FE2
P 8800 3650
F 0 "#PWR0121" H 8800 3400 50  0001 C CNN
F 1 "GNDREF" H 8800 3500 50  0000 C CNN
F 2 "" H 8800 3650 50  0001 C CNN
F 3 "" H 8800 3650 50  0001 C CNN
	1    8800 3650
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDREF #PWR0130
U 1 1 601D999D
P 7700 3800
F 0 "#PWR0130" H 7700 3550 50  0001 C CNN
F 1 "GNDREF" H 7700 3650 50  0000 C CNN
F 2 "" H 7700 3800 50  0001 C CNN
F 3 "" H 7700 3800 50  0001 C CNN
	1    7700 3800
	-1   0    0    1   
$EndComp
$Comp
L power:GNDREF #PWR0129
U 1 1 601A66BB
P 10750 4550
F 0 "#PWR0129" H 10750 4300 50  0001 C CNN
F 1 "GNDREF" H 10750 4400 50  0000 C CNN
F 2 "" H 10750 4550 50  0001 C CNN
F 3 "" H 10750 4550 50  0001 C CNN
	1    10750 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0124
U 1 1 6016F656
P 10150 4300
F 0 "#PWR0124" H 10150 4050 50  0001 C CNN
F 1 "GNDREF" H 10150 4150 50  0000 C CNN
F 2 "" H 10150 4300 50  0001 C CNN
F 3 "" H 10150 4300 50  0001 C CNN
	1    10150 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0120
U 1 1 6012D482
P 8300 4550
F 0 "#PWR0120" H 8300 4300 50  0001 C CNN
F 1 "GNDREF" H 8300 4400 50  0000 C CNN
F 2 "" H 8300 4550 50  0001 C CNN
F 3 "" H 8300 4550 50  0001 C CNN
	1    8300 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R14
U 1 1 5BBD5B22
P 7700 4050
F 0 "R14" H 7730 4070 50  0000 L CNN
F 1 "2m" H 7730 4010 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 7700 4050 50  0001 C CNN
F 3 "" H 7700 4050 50  0001 C CNN
	1    7700 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R16
U 1 1 5BBD7E07
P 10150 4050
F 0 "R16" H 10180 4070 50  0000 L CNN
F 1 "2m" H 10180 4010 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 10150 4050 50  0001 C CNN
F 3 "" H 10150 4050 50  0001 C CNN
	1    10150 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 3900 7900 3900
Wire Wire Line
	7700 3800 7700 3900
Connection ~ 7700 3900
Wire Wire Line
	7700 3900 7700 3950
Wire Wire Line
	7700 4200 7900 4200
Wire Wire Line
	7700 4150 7700 4200
Connection ~ 7700 4200
Wire Wire Line
	7700 4200 7700 4350
Wire Wire Line
	7900 4200 7900 4150
Wire Wire Line
	7900 3900 7900 3950
Wire Wire Line
	10150 3900 10350 3900
Wire Wire Line
	10150 3750 10150 3900
Connection ~ 10150 3900
Wire Wire Line
	10150 3900 10150 3950
Wire Wire Line
	10150 4200 10150 4300
Wire Wire Line
	10150 4200 10350 4200
Connection ~ 10150 4200
Wire Wire Line
	10150 4150 10150 4200
Wire Wire Line
	10350 4200 10350 4150
Wire Wire Line
	10350 3900 10350 3950
Wire Wire Line
	10350 3950 10450 3950
Wire Wire Line
	10350 4150 10450 4150
Wire Wire Line
	7900 3950 8000 3950
Wire Wire Line
	7900 4150 8000 4150
Wire Notes Line
	12550 4850 12550 2750
Wire Wire Line
	9650 4050 9650 4150
Wire Wire Line
	12100 4050 12100 4150
Wire Wire Line
	11800 4050 11800 4150
Wire Wire Line
	9350 4050 9350 4150
Wire Wire Line
	10750 3650 10750 3750
Wire Wire Line
	10750 4500 10750 4550
Wire Wire Line
	8300 3650 8300 3750
Wire Wire Line
	8300 4500 8300 4550
Wire Wire Line
	12100 4500 12100 4450
Wire Wire Line
	9650 4500 9650 4450
$Comp
L Device:D_ALT D10
U 1 1 5C084E0C
P 12100 4300
F 0 "D10" V 12050 4440 50  0000 C CNN
F 1 "Diode" V 12130 4470 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 12100 4300 50  0001 C CNN
F 3 "" H 12100 4300 50  0001 C CNN
	1    12100 4300
	0    1    1    0   
$EndComp
$Comp
L Device:D_ALT D8
U 1 1 5C084A9F
P 9650 4300
F 0 "D8" V 9600 4420 50  0000 C CNN
F 1 "Diode" V 9680 4470 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 9650 4300 50  0001 C CNN
F 3 "" H 9650 4300 50  0001 C CNN
	1    9650 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	11800 4050 12100 4050
Wire Wire Line
	11450 4050 11800 4050
Connection ~ 11800 4050
Wire Wire Line
	11800 4500 12100 4500
Connection ~ 11800 4500
Wire Wire Line
	11800 4500 11800 4450
$Comp
L Device:D_Zener_ALT D9
U 1 1 5C07F1A2
P 11800 4300
F 0 "D9" H 11820 4400 50  0000 C CNN
F 1 "3.9V Zener" H 11780 4480 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 11800 4300 50  0001 C CNN
F 3 "" H 11800 4300 50  0001 C CNN
	1    11800 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	9350 4500 9650 4500
Connection ~ 9350 4500
Wire Wire Line
	9350 4500 9350 4450
Wire Wire Line
	9350 4050 9650 4050
Wire Wire Line
	9000 4050 9350 4050
Connection ~ 9350 4050
Wire Wire Line
	10750 4500 10850 4500
Connection ~ 10850 4500
Wire Wire Line
	10850 4350 10850 4500
Wire Wire Line
	8300 4500 8400 4500
Connection ~ 8400 4500
Wire Wire Line
	8400 4350 8400 4500
Wire Wire Line
	11200 4050 11150 4050
Wire Wire Line
	11250 3650 11150 3650
Wire Wire Line
	10950 3650 10750 3650
Wire Wire Line
	8750 4050 8700 4050
Wire Wire Line
	8800 3650 8700 3650
Wire Wire Line
	8500 3650 8300 3650
Wire Wire Line
	11450 4500 11800 4500
Wire Wire Line
	10850 4500 11450 4500
Connection ~ 11450 4500
Wire Wire Line
	11450 4500 11450 4400
Wire Wire Line
	11450 4050 11450 4200
Connection ~ 11450 4050
Wire Wire Line
	11400 4050 11450 4050
Wire Wire Line
	9000 4500 9350 4500
Wire Wire Line
	8400 4500 9000 4500
Connection ~ 9000 4500
Wire Wire Line
	9000 4500 9000 4400
Wire Wire Line
	9000 4050 9000 4200
Connection ~ 9000 4050
Wire Wire Line
	8950 4050 9000 4050
Connection ~ 10750 4500
Wire Wire Line
	10750 4350 10750 4500
Connection ~ 10750 3650
Wire Wire Line
	10750 3600 10750 3650
Connection ~ 8300 4500
Wire Wire Line
	8300 4350 8300 4500
Connection ~ 8300 3650
Wire Wire Line
	8300 3600 8300 3650
$Comp
L Device:D_Zener_ALT D7
U 1 1 5C07D3D2
P 9350 4300
F 0 "D7" H 9370 4410 50  0000 C CNN
F 1 "3.9V Zener" H 9330 4480 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 9350 4300 50  0001 C CNN
F 3 "" H 9350 4300 50  0001 C CNN
	1    9350 4300
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C14
U 1 1 5BC4CA30
P 11450 4300
F 0 "C14" H 11520 4350 50  0000 L CNN
F 1 "1uF" H 11520 4280 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 11450 4300 50  0001 C CNN
F 3 "" H 11450 4300 50  0001 C CNN
	1    11450 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R17
U 1 1 5BC4CA2A
P 11300 4050
F 0 "R17" H 11330 4080 50  0000 L CNN
F 1 "1.7k" H 11330 4010 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 11300 4050 50  0001 C CNN
F 3 "" H 11300 4050 50  0001 C CNN
	1    11300 4050
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C12
U 1 1 5BC49EBE
P 9000 4300
F 0 "C12" H 9090 4340 50  0000 L CNN
F 1 "1uF" H 9090 4260 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9000 4300 50  0001 C CNN
F 3 "" H 9000 4300 50  0001 C CNN
	1    9000 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R15
U 1 1 5BC49D64
P 8850 4050
F 0 "R15" H 8880 4070 50  0000 L CNN
F 1 "1.7k" H 8880 4010 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 8850 4050 50  0001 C CNN
F 3 "" H 8850 4050 50  0001 C CNN
	1    8850 4050
	0    -1   -1   0   
$EndComp
$Comp
L power:+9VA #PWR0119
U 1 1 5BC2A1CB
P 10750 3600
F 0 "#PWR0119" H 10750 3475 50  0001 C CNN
F 1 "+9VA" H 10750 3750 50  0000 C CNN
F 2 "" H 10750 3600 50  0001 C CNN
F 3 "" H 10750 3600 50  0001 C CNN
	1    10750 3600
	1    0    0    -1  
$EndComp
$Comp
L power:+9VA #PWR0118
U 1 1 5BC2A0EB
P 8300 3600
F 0 "#PWR0118" H 8300 3475 50  0001 C CNN
F 1 "+9VA" H 8300 3750 50  0000 C CNN
F 2 "" H 8300 3600 50  0001 C CNN
F 3 "" H 8300 3600 50  0001 C CNN
	1    8300 3600
	1    0    0    -1  
$EndComp
Connection ~ 12100 4050
$Comp
L Connector:TestPoint TP18
U 1 1 5BBE99F1
P 12100 4050
F 0 "TP18" H 12100 4350 50  0000 C BNN
F 1 "Batt_I" H 12100 4300 50  0000 C CNN
F 2 "TestPoint:TestPoint_Keystone_5005-5009_Compact" H 12100 4050 50  0001 C CNN
F 3 "" H 12100 4050 50  0001 C CNN
	1    12100 4050
	1    0    0    -1  
$EndComp
Connection ~ 9650 4050
$Comp
L Connector:TestPoint TP17
U 1 1 5BBE9727
P 9650 4050
F 0 "TP17" H 9650 4350 50  0000 C BNN
F 1 "Arr_I" H 9650 4300 50  0000 C CNN
F 2 "TestPoint:TestPoint_Keystone_5005-5009_Compact" H 9650 4050 50  0001 C CNN
F 3 "" H 9650 4050 50  0001 C CNN
	1    9650 4050
	1    0    0    -1  
$EndComp
Text Notes 11800 3050 0    39   ~ 0
Low-side current sense
Text Notes 10000 3450 0    40   ~ 0
This looks weird,\nbut it is correct.\nCurrent flows out\nof battery's -.
Text Label 11800 4050 1    39   ~ 8
Battery_Current
Text Label 10150 3750 1    39   ~ 8
-Batt
$Comp
L Device:C_Small C13
U 1 1 5BBD7E19
P 11050 3650
F 0 "C13" H 11150 3660 50  0000 L CNN
F 1 "0.1uF" H 11150 3600 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 11050 3650 50  0001 C CNN
F 3 "" H 11050 3650 50  0001 C CNN
	1    11050 3650
	0    -1   -1   0   
$EndComp
$Comp
L MPPT-rescue:OP_AMP_INA21x-Array U5
U 1 1 5BBD7DF1
P 10750 4050
F 0 "U5" H 10790 4310 60  0000 L CNN
F 1 "INA210" H 10790 4230 60  0000 L CNN
F 2 "MPPT-PrimaryPCB:SC70-6" H 10750 4050 60  0001 C CNN
F 3 "" H 10750 4050 60  0001 C CNN
	1    10750 4050
	1    0    0    -1  
$EndComp
Text Notes 7550 3450 0    40   ~ 0
This looks weird,\nbut it is correct.\nCurrent flows\ninto array's -.
Text Label 9350 4050 1    39   ~ 8
Array_Current
Text Label 7700 4350 3    39   ~ 8
-Arr
$Comp
L Device:C_Small C11
U 1 1 5BBD6119
P 8600 3650
F 0 "C11" H 8680 3670 50  0000 L CNN
F 1 "0.1uF" H 8680 3600 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8600 3650 50  0001 C CNN
F 3 "" H 8600 3650 50  0001 C CNN
	1    8600 3650
	0    -1   -1   0   
$EndComp
$Comp
L MPPT-rescue:OP_AMP_INA21x-Array U4
U 1 1 5BBD5537
P 8300 4050
F 0 "U4" H 8350 4320 60  0000 L CNN
F 1 "INA210" H 8350 4230 60  0000 L CNN
F 2 "MPPT-PrimaryPCB:SC70-6" H 8300 4050 60  0001 C CNN
F 3 "" H 8300 4050 60  0001 C CNN
	1    8300 4050
	1    0    0    -1  
$EndComp
Text Notes 11050 2950 0    120  ~ 24
Current Sensors
$EndSCHEMATC
