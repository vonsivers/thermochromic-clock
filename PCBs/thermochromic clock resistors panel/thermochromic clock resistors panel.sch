EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev "1"
Comp ""
Comment1 "Design for OSHPark 4-Layer Service"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:R R3
U 1 1 608AAD22
P 2800 2700
F 0 "R3" H 2870 2746 50  0000 L CNN
F 1 "33R" H 2870 2655 50  0000 L CNN
F 2 "Resistor_SMD:R_2512_6332Metric" V 2730 2700 50  0001 C CNN
F 3 "~" H 2800 2700 50  0001 C CNN
	1    2800 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 608ABEA9
P 3300 2700
F 0 "R8" H 3370 2746 50  0000 L CNN
F 1 "33R" H 3370 2655 50  0000 L CNN
F 2 "Resistor_SMD:R_2512_6332Metric" V 3230 2700 50  0001 C CNN
F 3 "~" H 3300 2700 50  0001 C CNN
	1    3300 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 608AC0B2
P 2800 3200
F 0 "R4" H 2870 3246 50  0000 L CNN
F 1 "33R" H 2870 3155 50  0000 L CNN
F 2 "Resistor_SMD:R_2512_6332Metric" V 2730 3200 50  0001 C CNN
F 3 "~" H 2800 3200 50  0001 C CNN
	1    2800 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 608AC3DF
P 3300 3200
F 0 "R9" H 3370 3246 50  0000 L CNN
F 1 "33R" H 3370 3155 50  0000 L CNN
F 2 "Resistor_SMD:R_2512_6332Metric" V 3230 3200 50  0001 C CNN
F 3 "~" H 3300 3200 50  0001 C CNN
	1    3300 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 608AC6AF
P 3050 3450
F 0 "R7" V 2843 3450 50  0000 C CNN
F 1 "33R" V 2934 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric" V 2980 3450 50  0001 C CNN
F 3 "~" H 3050 3450 50  0001 C CNN
	1    3050 3450
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 608ACA8A
P 3050 2950
F 0 "R6" V 2843 2950 50  0000 C CNN
F 1 "33R" V 2934 2950 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric" V 2980 2950 50  0001 C CNN
F 3 "~" H 3050 2950 50  0001 C CNN
	1    3050 2950
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 608ACD3B
P 3050 2450
F 0 "R5" V 2843 2450 50  0000 C CNN
F 1 "33R" V 2934 2450 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric" V 2980 2450 50  0001 C CNN
F 3 "~" H 3050 2450 50  0001 C CNN
	1    3050 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	3300 2850 3300 2950
Wire Wire Line
	3200 2950 3300 2950
Connection ~ 3300 2950
Wire Wire Line
	3300 2950 3300 3050
Wire Wire Line
	2800 2550 2800 2450
Wire Wire Line
	2800 2450 2900 2450
Wire Wire Line
	2800 3350 2800 3450
Wire Wire Line
	2800 3450 2900 3450
Text Label 3250 2400 0    50   ~ 0
1A
Text Label 3350 2500 0    50   ~ 0
1B
Text Label 3350 3400 0    50   ~ 0
1C
Wire Wire Line
	3300 3350 3300 3400
Wire Wire Line
	3300 3400 3350 3400
Wire Wire Line
	3200 2450 3250 2450
Wire Wire Line
	3250 2450 3250 2400
Wire Wire Line
	3350 2500 3300 2500
Wire Wire Line
	3300 2500 3300 2550
Text Label 3250 3500 0    50   ~ 0
1D
Text Label 2750 3000 0    50   ~ 0
1E
Text Label 2700 2900 0    50   ~ 0
1F
Text Label 2850 2900 0    50   ~ 0
1G
Wire Wire Line
	3200 3450 3250 3450
Wire Wire Line
	3250 3450 3250 3500
Wire Wire Line
	2800 3050 2800 3000
Wire Wire Line
	2800 3000 2750 3000
Wire Wire Line
	2800 2850 2800 2900
Wire Wire Line
	2800 2900 2700 2900
Wire Wire Line
	2900 2950 2850 2950
Wire Wire Line
	2850 2950 2850 2900
$Comp
L power:+5V #PWR0124
U 1 1 6095BB9F
P 2800 2450
F 0 "#PWR0124" H 2800 2300 50  0001 C CNN
F 1 "+5V" H 2815 2623 50  0000 C CNN
F 2 "" H 2800 2450 50  0001 C CNN
F 3 "" H 2800 2450 50  0001 C CNN
	1    2800 2450
	1    0    0    -1  
$EndComp
Connection ~ 2800 2450
$Comp
L power:+5V #PWR0125
U 1 1 6095BF8E
P 3300 2950
F 0 "#PWR0125" H 3300 2800 50  0001 C CNN
F 1 "+5V" V 3315 3078 50  0000 L CNN
F 2 "" H 3300 2950 50  0001 C CNN
F 3 "" H 3300 2950 50  0001 C CNN
	1    3300 2950
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0126
U 1 1 6095C48D
P 2800 3450
F 0 "#PWR0126" H 2800 3300 50  0001 C CNN
F 1 "+5V" H 2815 3623 50  0000 C CNN
F 2 "" H 2800 3450 50  0001 C CNN
F 3 "" H 2800 3450 50  0001 C CNN
	1    2800 3450
	-1   0    0    1   
$EndComp
Connection ~ 2800 3450
$Comp
L Device:R R10
U 1 1 6095CC72
P 4050 2700
F 0 "R10" H 4120 2746 50  0000 L CNN
F 1 "33R" H 4120 2655 50  0000 L CNN
F 2 "Resistor_SMD:R_2512_6332Metric" V 3980 2700 50  0001 C CNN
F 3 "~" H 4050 2700 50  0001 C CNN
	1    4050 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R15
U 1 1 6095CC7C
P 4550 2700
F 0 "R15" H 4620 2746 50  0000 L CNN
F 1 "33R" H 4620 2655 50  0000 L CNN
F 2 "Resistor_SMD:R_2512_6332Metric" V 4480 2700 50  0001 C CNN
F 3 "~" H 4550 2700 50  0001 C CNN
	1    4550 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 6095CC86
P 4050 3200
F 0 "R11" H 4120 3246 50  0000 L CNN
F 1 "33R" H 4120 3155 50  0000 L CNN
F 2 "Resistor_SMD:R_2512_6332Metric" V 3980 3200 50  0001 C CNN
F 3 "~" H 4050 3200 50  0001 C CNN
	1    4050 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R16
U 1 1 6095CC90
P 4550 3200
F 0 "R16" H 4620 3246 50  0000 L CNN
F 1 "33R" H 4620 3155 50  0000 L CNN
F 2 "Resistor_SMD:R_2512_6332Metric" V 4480 3200 50  0001 C CNN
F 3 "~" H 4550 3200 50  0001 C CNN
	1    4550 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 6095CC9A
P 4300 3450
F 0 "R14" V 4093 3450 50  0000 C CNN
F 1 "33R" V 4184 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric" V 4230 3450 50  0001 C CNN
F 3 "~" H 4300 3450 50  0001 C CNN
	1    4300 3450
	0    1    1    0   
$EndComp
$Comp
L Device:R R13
U 1 1 6095CCA4
P 4300 2950
F 0 "R13" V 4093 2950 50  0000 C CNN
F 1 "33R" V 4184 2950 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric" V 4230 2950 50  0001 C CNN
F 3 "~" H 4300 2950 50  0001 C CNN
	1    4300 2950
	0    1    1    0   
$EndComp
$Comp
L Device:R R12
U 1 1 6095CCAE
P 4300 2450
F 0 "R12" V 4093 2450 50  0000 C CNN
F 1 "33R" V 4184 2450 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric" V 4230 2450 50  0001 C CNN
F 3 "~" H 4300 2450 50  0001 C CNN
	1    4300 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	4550 2850 4550 2950
Wire Wire Line
	4450 2950 4550 2950
Connection ~ 4550 2950
Wire Wire Line
	4550 2950 4550 3050
Wire Wire Line
	4050 2550 4050 2450
Wire Wire Line
	4050 2450 4150 2450
Wire Wire Line
	4050 3350 4050 3450
Wire Wire Line
	4050 3450 4150 3450
Text Label 4500 2400 0    50   ~ 0
2A
Text Label 4600 2500 0    50   ~ 0
2B
Text Label 4600 3400 0    50   ~ 0
2C
Wire Wire Line
	4550 3350 4550 3400
Wire Wire Line
	4550 3400 4600 3400
Wire Wire Line
	4450 2450 4500 2450
Wire Wire Line
	4500 2450 4500 2400
Wire Wire Line
	4600 2500 4550 2500
Wire Wire Line
	4550 2500 4550 2550
Text Label 4500 3500 0    50   ~ 0
2D
Text Label 4000 3000 0    50   ~ 0
2E
Text Label 3950 2900 0    50   ~ 0
2F
Text Label 4100 2900 0    50   ~ 0
2G
Wire Wire Line
	4450 3450 4500 3450
Wire Wire Line
	4500 3450 4500 3500
Wire Wire Line
	4050 3050 4050 3000
Wire Wire Line
	4050 3000 4000 3000
Wire Wire Line
	4050 2850 4050 2900
Wire Wire Line
	4050 2900 3950 2900
Wire Wire Line
	4150 2950 4100 2950
Wire Wire Line
	4100 2950 4100 2900
$Comp
L power:+5V #PWR0127
U 1 1 6095CCD5
P 4050 2450
F 0 "#PWR0127" H 4050 2300 50  0001 C CNN
F 1 "+5V" H 4065 2623 50  0000 C CNN
F 2 "" H 4050 2450 50  0001 C CNN
F 3 "" H 4050 2450 50  0001 C CNN
	1    4050 2450
	1    0    0    -1  
$EndComp
Connection ~ 4050 2450
$Comp
L power:+5V #PWR0128
U 1 1 6095CCE0
P 4550 2950
F 0 "#PWR0128" H 4550 2800 50  0001 C CNN
F 1 "+5V" V 4565 3078 50  0000 L CNN
F 2 "" H 4550 2950 50  0001 C CNN
F 3 "" H 4550 2950 50  0001 C CNN
	1    4550 2950
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0129
U 1 1 6095CCEA
P 4050 3450
F 0 "#PWR0129" H 4050 3300 50  0001 C CNN
F 1 "+5V" H 4065 3623 50  0000 C CNN
F 2 "" H 4050 3450 50  0001 C CNN
F 3 "" H 4050 3450 50  0001 C CNN
	1    4050 3450
	-1   0    0    1   
$EndComp
Connection ~ 4050 3450
$Comp
L Device:R R18
U 1 1 609648E9
P 5700 2700
F 0 "R18" H 5770 2746 50  0000 L CNN
F 1 "33R" H 5770 2655 50  0000 L CNN
F 2 "Resistor_SMD:R_2512_6332Metric" V 5630 2700 50  0001 C CNN
F 3 "~" H 5700 2700 50  0001 C CNN
	1    5700 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R23
U 1 1 609648F3
P 6200 2700
F 0 "R23" H 6270 2746 50  0000 L CNN
F 1 "33R" H 6270 2655 50  0000 L CNN
F 2 "Resistor_SMD:R_2512_6332Metric" V 6130 2700 50  0001 C CNN
F 3 "~" H 6200 2700 50  0001 C CNN
	1    6200 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R19
U 1 1 609648FD
P 5700 3200
F 0 "R19" H 5770 3246 50  0000 L CNN
F 1 "33R" H 5770 3155 50  0000 L CNN
F 2 "Resistor_SMD:R_2512_6332Metric" V 5630 3200 50  0001 C CNN
F 3 "~" H 5700 3200 50  0001 C CNN
	1    5700 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R24
U 1 1 60964907
P 6200 3200
F 0 "R24" H 6270 3246 50  0000 L CNN
F 1 "33R" H 6270 3155 50  0000 L CNN
F 2 "Resistor_SMD:R_2512_6332Metric" V 6130 3200 50  0001 C CNN
F 3 "~" H 6200 3200 50  0001 C CNN
	1    6200 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R22
U 1 1 60964911
P 5950 3450
F 0 "R22" V 5743 3450 50  0000 C CNN
F 1 "33R" V 5834 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric" V 5880 3450 50  0001 C CNN
F 3 "~" H 5950 3450 50  0001 C CNN
	1    5950 3450
	0    1    1    0   
$EndComp
$Comp
L Device:R R21
U 1 1 6096491B
P 5950 2950
F 0 "R21" V 5743 2950 50  0000 C CNN
F 1 "33R" V 5834 2950 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric" V 5880 2950 50  0001 C CNN
F 3 "~" H 5950 2950 50  0001 C CNN
	1    5950 2950
	0    1    1    0   
$EndComp
$Comp
L Device:R R20
U 1 1 60964925
P 5950 2450
F 0 "R20" V 5743 2450 50  0000 C CNN
F 1 "33R" V 5834 2450 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric" V 5880 2450 50  0001 C CNN
F 3 "~" H 5950 2450 50  0001 C CNN
	1    5950 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	6200 2850 6200 2950
Wire Wire Line
	6100 2950 6200 2950
Connection ~ 6200 2950
Wire Wire Line
	6200 2950 6200 3050
Wire Wire Line
	5700 2550 5700 2450
Wire Wire Line
	5700 2450 5800 2450
Wire Wire Line
	5700 3350 5700 3450
Wire Wire Line
	5700 3450 5800 3450
Text Label 6150 2400 0    50   ~ 0
3A
Text Label 6250 2500 0    50   ~ 0
3B
Text Label 6250 3400 0    50   ~ 0
3C
Wire Wire Line
	6200 3350 6200 3400
Wire Wire Line
	6200 3400 6250 3400
Wire Wire Line
	6100 2450 6150 2450
Wire Wire Line
	6150 2450 6150 2400
Wire Wire Line
	6250 2500 6200 2500
Wire Wire Line
	6200 2500 6200 2550
Text Label 6150 3500 0    50   ~ 0
3D
Text Label 5650 3000 0    50   ~ 0
3E
Text Label 5600 2900 0    50   ~ 0
3F
Text Label 5750 2900 0    50   ~ 0
3G
Wire Wire Line
	6100 3450 6150 3450
Wire Wire Line
	6150 3450 6150 3500
Wire Wire Line
	5700 3050 5700 3000
Wire Wire Line
	5700 3000 5650 3000
Wire Wire Line
	5700 2850 5700 2900
Wire Wire Line
	5700 2900 5600 2900
Wire Wire Line
	5800 2950 5750 2950
Wire Wire Line
	5750 2950 5750 2900
$Comp
L power:+5V #PWR0130
U 1 1 6096494C
P 5700 2450
F 0 "#PWR0130" H 5700 2300 50  0001 C CNN
F 1 "+5V" H 5715 2623 50  0000 C CNN
F 2 "" H 5700 2450 50  0001 C CNN
F 3 "" H 5700 2450 50  0001 C CNN
	1    5700 2450
	1    0    0    -1  
$EndComp
Connection ~ 5700 2450
$Comp
L power:+5V #PWR0131
U 1 1 60964957
P 6200 2950
F 0 "#PWR0131" H 6200 2800 50  0001 C CNN
F 1 "+5V" V 6215 3078 50  0000 L CNN
F 2 "" H 6200 2950 50  0001 C CNN
F 3 "" H 6200 2950 50  0001 C CNN
	1    6200 2950
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0132
U 1 1 60964961
P 5700 3450
F 0 "#PWR0132" H 5700 3300 50  0001 C CNN
F 1 "+5V" H 5715 3623 50  0000 C CNN
F 2 "" H 5700 3450 50  0001 C CNN
F 3 "" H 5700 3450 50  0001 C CNN
	1    5700 3450
	-1   0    0    1   
$EndComp
Connection ~ 5700 3450
$Comp
L Device:R R25
U 1 1 6096496C
P 6950 2700
F 0 "R25" H 7020 2746 50  0000 L CNN
F 1 "33R" H 7020 2655 50  0000 L CNN
F 2 "Resistor_SMD:R_2512_6332Metric" V 6880 2700 50  0001 C CNN
F 3 "~" H 6950 2700 50  0001 C CNN
	1    6950 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R30
U 1 1 60964976
P 7450 2700
F 0 "R30" H 7520 2746 50  0000 L CNN
F 1 "33R" H 7520 2655 50  0000 L CNN
F 2 "Resistor_SMD:R_2512_6332Metric" V 7380 2700 50  0001 C CNN
F 3 "~" H 7450 2700 50  0001 C CNN
	1    7450 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R26
U 1 1 60964980
P 6950 3200
F 0 "R26" H 7020 3246 50  0000 L CNN
F 1 "33R" H 7020 3155 50  0000 L CNN
F 2 "Resistor_SMD:R_2512_6332Metric" V 6880 3200 50  0001 C CNN
F 3 "~" H 6950 3200 50  0001 C CNN
	1    6950 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R31
U 1 1 6096498A
P 7450 3200
F 0 "R31" H 7520 3246 50  0000 L CNN
F 1 "33R" H 7520 3155 50  0000 L CNN
F 2 "Resistor_SMD:R_2512_6332Metric" V 7380 3200 50  0001 C CNN
F 3 "~" H 7450 3200 50  0001 C CNN
	1    7450 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R29
U 1 1 60964994
P 7200 3450
F 0 "R29" V 6993 3450 50  0000 C CNN
F 1 "33R" V 7084 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric" V 7130 3450 50  0001 C CNN
F 3 "~" H 7200 3450 50  0001 C CNN
	1    7200 3450
	0    1    1    0   
$EndComp
$Comp
L Device:R R28
U 1 1 6096499E
P 7200 2950
F 0 "R28" V 6993 2950 50  0000 C CNN
F 1 "33R" V 7084 2950 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric" V 7130 2950 50  0001 C CNN
F 3 "~" H 7200 2950 50  0001 C CNN
	1    7200 2950
	0    1    1    0   
$EndComp
$Comp
L Device:R R27
U 1 1 609649A8
P 7200 2450
F 0 "R27" V 6993 2450 50  0000 C CNN
F 1 "33R" V 7084 2450 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric" V 7130 2450 50  0001 C CNN
F 3 "~" H 7200 2450 50  0001 C CNN
	1    7200 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	7450 2850 7450 2950
Wire Wire Line
	7350 2950 7450 2950
Connection ~ 7450 2950
Wire Wire Line
	7450 2950 7450 3050
Wire Wire Line
	6950 2550 6950 2450
Wire Wire Line
	6950 2450 7050 2450
Wire Wire Line
	6950 3350 6950 3450
Wire Wire Line
	6950 3450 7050 3450
Text Label 7400 2400 0    50   ~ 0
4A
Text Label 7500 2500 0    50   ~ 0
4B
Text Label 7500 3400 0    50   ~ 0
4C
Wire Wire Line
	7450 3350 7450 3400
Wire Wire Line
	7450 3400 7500 3400
Wire Wire Line
	7350 2450 7400 2450
Wire Wire Line
	7400 2450 7400 2400
Wire Wire Line
	7500 2500 7450 2500
Wire Wire Line
	7450 2500 7450 2550
Text Label 7400 3500 0    50   ~ 0
4D
Text Label 6900 3000 0    50   ~ 0
4E
Text Label 6850 2900 0    50   ~ 0
4F
Text Label 7000 2900 0    50   ~ 0
4G
Wire Wire Line
	7350 3450 7400 3450
Wire Wire Line
	7400 3450 7400 3500
Wire Wire Line
	6950 3050 6950 3000
Wire Wire Line
	6950 3000 6900 3000
Wire Wire Line
	6950 2850 6950 2900
Wire Wire Line
	6950 2900 6850 2900
Wire Wire Line
	7050 2950 7000 2950
Wire Wire Line
	7000 2950 7000 2900
$Comp
L power:+5V #PWR0133
U 1 1 609649CF
P 6950 2450
F 0 "#PWR0133" H 6950 2300 50  0001 C CNN
F 1 "+5V" H 6965 2623 50  0000 C CNN
F 2 "" H 6950 2450 50  0001 C CNN
F 3 "" H 6950 2450 50  0001 C CNN
	1    6950 2450
	1    0    0    -1  
$EndComp
Connection ~ 6950 2450
$Comp
L power:+5V #PWR0134
U 1 1 609649DA
P 7450 2950
F 0 "#PWR0134" H 7450 2800 50  0001 C CNN
F 1 "+5V" V 7465 3078 50  0000 L CNN
F 2 "" H 7450 2950 50  0001 C CNN
F 3 "" H 7450 2950 50  0001 C CNN
	1    7450 2950
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0135
U 1 1 609649E4
P 6950 3450
F 0 "#PWR0135" H 6950 3300 50  0001 C CNN
F 1 "+5V" H 6965 3623 50  0000 C CNN
F 2 "" H 6950 3450 50  0001 C CNN
F 3 "" H 6950 3450 50  0001 C CNN
	1    6950 3450
	-1   0    0    1   
$EndComp
Connection ~ 6950 3450
Wire Wire Line
	4400 4300 4400 4150
Wire Wire Line
	4500 4300 4500 4150
Wire Wire Line
	4600 4300 4600 4150
Wire Wire Line
	4700 4300 4700 4150
Wire Wire Line
	4800 4300 4800 4150
Wire Wire Line
	4900 4300 4900 4150
Wire Wire Line
	5000 4300 5000 4150
Wire Wire Line
	5100 4300 5100 4150
Wire Wire Line
	5200 4300 5200 4150
Wire Wire Line
	5300 4300 5300 4150
Wire Wire Line
	5400 4300 5400 4150
Wire Wire Line
	5500 4300 5500 4150
Wire Wire Line
	5600 4300 5600 4150
Wire Wire Line
	5700 4300 5700 4150
Wire Wire Line
	5800 4300 5800 4150
Wire Wire Line
	4400 4800 4400 4950
Wire Wire Line
	4500 4800 4500 4950
Wire Wire Line
	4600 4800 4600 4950
Wire Wire Line
	4700 4800 4700 4950
Wire Wire Line
	4800 4800 4800 4950
Wire Wire Line
	4900 4800 4900 4950
Wire Wire Line
	5000 4800 5000 4950
Wire Wire Line
	5100 4800 5100 4950
Wire Wire Line
	5200 4800 5200 4950
Wire Wire Line
	5300 4800 5300 4950
Wire Wire Line
	5400 4800 5400 4950
Wire Wire Line
	5500 4800 5500 4950
Wire Wire Line
	5600 4800 5600 4950
Wire Wire Line
	5700 4800 5700 4950
Wire Wire Line
	5800 4800 5800 4950
Text Label 4400 4150 1    50   ~ 0
1A
Text Label 4400 4950 1    50   ~ 0
1B
Text Label 4500 4150 1    50   ~ 0
1C
Text Label 4500 4950 1    50   ~ 0
1D
Text Label 4600 4150 1    50   ~ 0
1E
Text Label 4600 4950 1    50   ~ 0
1F
Text Label 4700 4150 1    50   ~ 0
1G
Text Label 4700 4950 1    50   ~ 0
2A
Text Label 4800 4150 1    50   ~ 0
2B
Text Label 4800 4950 1    50   ~ 0
2C
Text Label 4900 4150 1    50   ~ 0
2D
Text Label 4900 4950 1    50   ~ 0
2E
Text Label 5000 4150 1    50   ~ 0
2F
Text Label 5000 4950 1    50   ~ 0
2G
Text Label 5100 4150 1    50   ~ 0
3A
Text Label 5100 4950 1    50   ~ 0
3B
Text Label 5200 4150 1    50   ~ 0
3C
Text Label 5200 4950 1    50   ~ 0
3D
Text Label 5300 4150 1    50   ~ 0
3E
Text Label 5300 4950 1    50   ~ 0
3F
Text Label 5400 4150 1    50   ~ 0
3G
Text Label 5400 4950 1    50   ~ 0
4A
Text Label 5500 4150 1    50   ~ 0
4B
Text Label 5500 4950 1    50   ~ 0
4C
Text Label 5600 4150 1    50   ~ 0
4D
Text Label 5600 4950 1    50   ~ 0
4E
Text Label 5700 4150 1    50   ~ 0
4F
Text Label 5700 4950 1    50   ~ 0
4G
$Comp
L power:+5V #PWR0101
U 1 1 609359B6
P 5800 4150
F 0 "#PWR0101" H 5800 4000 50  0001 C CNN
F 1 "+5V" H 5815 4323 50  0000 C CNN
F 2 "" H 5800 4150 50  0001 C CNN
F 3 "" H 5800 4150 50  0001 C CNN
	1    5800 4150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 60936343
P 5800 4950
F 0 "#PWR0102" H 5800 4800 50  0001 C CNN
F 1 "+5V" H 5815 5123 50  0000 C CNN
F 2 "" H 5800 4950 50  0001 C CNN
F 3 "" H 5800 4950 50  0001 C CNN
	1    5800 4950
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_02x15_Odd_Even J1
U 1 1 6096337C
P 5100 4500
F 0 "J1" V 5104 5280 50  0000 L CNN
F 1 "Conn_02x15_Odd_Even" V 5195 5280 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x15_P2.54mm_Horizontal" H 5100 4500 50  0001 C CNN
F 3 "~" H 5100 4500 50  0001 C CNN
	1    5100 4500
	0    1    1    0   
$EndComp
$EndSCHEMATC