EESchema Schematic File Version 4
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
L Relay:DIPxx-1Axx-13x K1
U 1 1 606DF168
P 5475 2575
F 0 "K1" H 5805 2621 50  0000 L CNN
F 1 "DIPxx-1Axx-13x" H 5805 2530 50  0000 L CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 5825 2525 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 5475 2575 50  0001 C CNN
	1    5475 2575
	-1   0    0    -1  
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:2N7000 Q7
U 1 1 606E17CF
P 5675 3325
F 0 "Q7" H 5782 3378 60  0000 L CNN
F 1 "2N7000" H 5225 3525 60  0000 L CNN
F 2 "digikey-footprints:TO-92-3" H 5875 3525 60  0001 L CNN
F 3 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 5875 3625 60  0001 L CNN
F 4 "2N7000FS-ND" H 5875 3725 60  0001 L CNN "Digi-Key_PN"
F 5 "2N7000" H 5875 3825 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 5875 3925 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 5875 4025 60  0001 L CNN "Family"
F 8 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 5875 4125 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/2N7000/2N7000FS-ND/244278" H 5875 4225 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 60V 200MA TO-92" H 5875 4325 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 5875 4425 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5875 4525 60  0001 L CNN "Status"
	1    5675 3325
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5675 3125 5675 2950
Wire Wire Line
	5275 2275 5275 1800
Wire Wire Line
	5275 1800 5025 1800
Text GLabel 5025 1800 0    50   Input ~ 0
DOOR_SOLENOID
Wire Wire Line
	5675 2275 5675 2150
$Comp
L my_power:GNDPWR #PWR02
U 1 1 606E8472
P 5275 3950
F 0 "#PWR02" H 5275 3750 50  0001 C CNN
F 1 "GNDPWR" H 5279 3796 50  0000 C CNN
F 2 "" H 5275 3900 50  0001 C CNN
F 3 "" H 5275 3900 50  0001 C CNN
	1    5275 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5275 2875 5275 3950
Text GLabel 6525 3425 2    50   Input ~ 0
FPGA_DOOR_OPEN
$Comp
L my_power:GND #PWR04
U 1 1 606E66C6
P 5675 3950
F 0 "#PWR04" H 5675 3700 50  0001 C CNN
F 1 "GND" H 5680 3777 50  0000 C CNN
F 2 "" H 5675 3950 50  0001 C CNN
F 3 "" H 5675 3950 50  0001 C CNN
	1    5675 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5675 3525 5675 3950
$Comp
L Device:D_Schottky D1
U 1 1 606EB8F6
P 6125 2575
F 0 "D1" V 6079 2655 50  0000 L CNN
F 1 "D_Schottky" V 6170 2655 50  0000 L CNN
F 2 "" H 6125 2575 50  0001 C CNN
F 3 "~" H 6125 2575 50  0001 C CNN
	1    6125 2575
	0    1    1    0   
$EndComp
Wire Wire Line
	5675 2950 6125 2950
Wire Wire Line
	6125 2950 6125 2725
Connection ~ 5675 2950
Wire Wire Line
	5675 2950 5675 2875
Wire Wire Line
	6125 2425 6125 2150
Wire Wire Line
	6125 2150 5675 2150
Connection ~ 5675 2150
Wire Wire Line
	5675 2150 5675 1900
$Comp
L my_power:+12V #PWR03
U 1 1 606ED15E
P 5675 1900
F 0 "#PWR03" H 5675 1750 50  0001 C CNN
F 1 "+12V" H 5690 2073 50  0000 C CNN
F 2 "" H 5675 1900 50  0001 C CNN
F 3 "" H 5675 1900 50  0001 C CNN
	1    5675 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 606ED932
P 6250 3425
F 0 "R1" V 6043 3425 50  0000 C CNN
F 1 "100R" V 6134 3425 50  0000 C CNN
F 2 "" V 6180 3425 50  0001 C CNN
F 3 "~" H 6250 3425 50  0001 C CNN
	1    6250 3425
	0    1    1    0   
$EndComp
Wire Wire Line
	6100 3425 5975 3425
Wire Wire Line
	6400 3425 6525 3425
$Comp
L Display_Character:HDSP-A401 U1
U 1 1 606EF8DE
P 8925 1400
F 0 "U1" H 8925 2067 50  0000 C CNN
F 1 "HDSP-A401" H 8925 1976 50  0000 C CNN
F 2 "Display_7Segment:HDSP-A401" H 8925 850 50  0001 C CNN
F 3 "https://docs.broadcom.com/docs/AV02-2553EN" H 8125 2400 50  0001 C CNN
	1    8925 1400
	1    0    0    -1  
$EndComp
$Comp
L Display_Character:HDSP-A401 U2
U 1 1 606F7E3C
P 8925 2675
F 0 "U2" H 8925 3342 50  0000 C CNN
F 1 "HDSP-A401" H 8925 3251 50  0000 C CNN
F 2 "Display_7Segment:HDSP-A401" H 8925 2125 50  0001 C CNN
F 3 "https://docs.broadcom.com/docs/AV02-2553EN" H 8125 3675 50  0001 C CNN
	1    8925 2675
	1    0    0    -1  
$EndComp
$Comp
L Display_Character:HDSP-A401 U3
U 1 1 606F8CFD
P 8925 3925
F 0 "U3" H 8925 4592 50  0000 C CNN
F 1 "HDSP-A401" H 8925 4501 50  0000 C CNN
F 2 "Display_7Segment:HDSP-A401" H 8925 3375 50  0001 C CNN
F 3 "https://docs.broadcom.com/docs/AV02-2553EN" H 8125 4925 50  0001 C CNN
	1    8925 3925
	1    0    0    -1  
$EndComp
$Comp
L Display_Character:HDSP-A401 U4
U 1 1 606F9662
P 8925 5225
F 0 "U4" H 8925 5892 50  0000 C CNN
F 1 "HDSP-A401" H 8925 5801 50  0000 C CNN
F 2 "Display_7Segment:HDSP-A401" H 8925 4675 50  0001 C CNN
F 3 "https://docs.broadcom.com/docs/AV02-2553EN" H 8125 6225 50  0001 C CNN
	1    8925 5225
	1    0    0    -1  
$EndComp
Wire Wire Line
	7425 1100 8625 1100
Wire Wire Line
	7575 1200 8625 1200
Wire Wire Line
	7725 1300 8625 1300
Wire Wire Line
	7875 1400 8625 1400
Wire Wire Line
	8025 1500 8625 1500
Wire Wire Line
	8175 1600 8625 1600
Wire Wire Line
	8325 1700 8625 1700
Wire Wire Line
	8475 1800 8625 1800
Wire Wire Line
	7425 2375 8625 2375
Wire Wire Line
	7575 2475 8625 2475
Wire Wire Line
	7725 2575 8625 2575
Wire Wire Line
	7875 2675 8625 2675
Wire Wire Line
	8025 2775 8625 2775
Wire Wire Line
	8175 2875 8625 2875
Wire Wire Line
	8325 2975 8625 2975
Wire Wire Line
	8475 3075 8625 3075
Wire Wire Line
	7425 3625 8625 3625
Wire Wire Line
	7575 3725 8625 3725
Wire Wire Line
	7725 3825 8625 3825
Wire Wire Line
	7875 3925 8625 3925
Wire Wire Line
	8025 4025 8625 4025
Wire Wire Line
	8175 4125 8625 4125
Wire Wire Line
	8325 4225 8625 4225
Wire Wire Line
	8475 4325 8625 4325
Wire Wire Line
	7425 4925 8625 4925
Wire Wire Line
	7725 5125 8625 5125
Wire Wire Line
	7875 5225 8625 5225
Wire Wire Line
	8025 5325 8625 5325
Wire Wire Line
	8175 5425 8625 5425
Wire Wire Line
	8325 5525 8625 5525
Wire Wire Line
	8475 5625 8625 5625
Wire Wire Line
	8475 1800 8475 3075
Connection ~ 8475 3075
Wire Wire Line
	8475 3075 8475 4325
Connection ~ 8475 4325
Wire Wire Line
	8475 4325 8475 5625
Wire Wire Line
	8325 5525 8325 4225
Connection ~ 8325 2975
Wire Wire Line
	8325 2975 8325 1700
Connection ~ 8325 4225
Wire Wire Line
	8325 4225 8325 2975
Wire Wire Line
	8175 5425 8175 4125
Connection ~ 8175 2875
Wire Wire Line
	8175 2875 8175 1600
Connection ~ 8175 4125
Wire Wire Line
	8175 4125 8175 2875
Wire Wire Line
	8025 5325 8025 4025
Connection ~ 8025 2775
Wire Wire Line
	8025 2775 8025 1500
Connection ~ 8025 4025
Wire Wire Line
	8025 4025 8025 2775
Wire Wire Line
	7875 5225 7875 3925
Connection ~ 7875 2675
Wire Wire Line
	7875 2675 7875 1400
Connection ~ 7875 3925
Wire Wire Line
	7875 3925 7875 2675
Wire Wire Line
	7725 5125 7725 3825
Connection ~ 7725 2575
Wire Wire Line
	7725 2575 7725 1300
Connection ~ 7725 3825
Wire Wire Line
	7725 3825 7725 2575
Wire Wire Line
	7575 5025 7575 3725
Connection ~ 7575 2475
Wire Wire Line
	7575 2475 7575 1200
Connection ~ 7575 3725
Wire Wire Line
	7575 3725 7575 2475
Wire Wire Line
	7425 4925 7425 3625
Connection ~ 7425 2375
Wire Wire Line
	7425 2375 7425 1100
Connection ~ 7425 3625
Wire Wire Line
	7425 3625 7425 2375
$Comp
L Device:R R6
U 1 1 6071A733
P 7050 4925
F 0 "R6" V 7100 5075 50  0000 C CNN
F 1 "100R" V 7050 4925 50  0000 C CNN
F 2 "" V 6980 4925 50  0001 C CNN
F 3 "~" H 7050 4925 50  0001 C CNN
	1    7050 4925
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 607310B1
P 6725 5025
F 0 "R2" V 6775 5175 50  0000 C CNN
F 1 "100R" V 6725 5025 50  0000 C CNN
F 2 "" V 6655 5025 50  0001 C CNN
F 3 "~" H 6725 5025 50  0001 C CNN
	1    6725 5025
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 6073370B
P 7050 5125
F 0 "R7" V 7100 5275 50  0000 C CNN
F 1 "100R" V 7050 5125 50  0000 C CNN
F 2 "" V 6980 5125 50  0001 C CNN
F 3 "~" H 7050 5125 50  0001 C CNN
	1    7050 5125
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 60737C36
P 6725 5225
F 0 "R3" V 6775 5375 50  0000 C CNN
F 1 "100R" V 6725 5225 50  0000 C CNN
F 2 "" V 6655 5225 50  0001 C CNN
F 3 "~" H 6725 5225 50  0001 C CNN
	1    6725 5225
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 60737C3C
P 7050 5325
F 0 "R8" V 7100 5475 50  0000 C CNN
F 1 "100R" V 7050 5325 50  0000 C CNN
F 2 "" V 6980 5325 50  0001 C CNN
F 3 "~" H 7050 5325 50  0001 C CNN
	1    7050 5325
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 60737C42
P 6725 5425
F 0 "R4" V 6775 5575 50  0000 C CNN
F 1 "100R" V 6725 5425 50  0000 C CNN
F 2 "" V 6655 5425 50  0001 C CNN
F 3 "~" H 6725 5425 50  0001 C CNN
	1    6725 5425
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 6073B35F
P 7050 5525
F 0 "R9" V 7100 5675 50  0000 C CNN
F 1 "100R" V 7050 5525 50  0000 C CNN
F 2 "" V 6980 5525 50  0001 C CNN
F 3 "~" H 7050 5525 50  0001 C CNN
	1    7050 5525
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 6073B365
P 6725 5625
F 0 "R5" V 6775 5775 50  0000 C CNN
F 1 "100R" V 6725 5625 50  0000 C CNN
F 2 "" V 6655 5625 50  0001 C CNN
F 3 "~" H 6725 5625 50  0001 C CNN
	1    6725 5625
	0    1    1    0   
$EndComp
Wire Wire Line
	7425 4925 7200 4925
Connection ~ 7425 4925
Wire Wire Line
	6875 5025 7575 5025
Connection ~ 7575 5025
Wire Wire Line
	7575 5025 8625 5025
Wire Wire Line
	7725 5125 7200 5125
Connection ~ 7725 5125
Wire Wire Line
	6875 5225 7875 5225
Connection ~ 7875 5225
Wire Wire Line
	8025 5325 7200 5325
Connection ~ 8025 5325
Wire Wire Line
	8175 5425 6875 5425
Connection ~ 8175 5425
Wire Wire Line
	7200 5525 8325 5525
Connection ~ 8325 5525
Wire Wire Line
	6875 5625 8475 5625
Connection ~ 8475 5625
$Comp
L dk_Transistors-FETs-MOSFETs-Single:2N7000 Q9
U 1 1 607FD688
P 6575 5975
F 0 "Q9" H 6682 6028 60  0000 L CNN
F 1 "2N7000" V 6525 5400 60  0000 L CNN
F 2 "digikey-footprints:TO-92-3" H 6775 6175 60  0001 L CNN
F 3 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 6775 6275 60  0001 L CNN
F 4 "2N7000FS-ND" H 6775 6375 60  0001 L CNN "Digi-Key_PN"
F 5 "2N7000" H 6775 6475 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 6775 6575 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 6775 6675 60  0001 L CNN "Family"
F 8 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 6775 6775 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/2N7000/2N7000FS-ND/244278" H 6775 6875 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 60V 200MA TO-92" H 6775 6975 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 6775 7075 60  0001 L CNN "Manufacturer"
F 12 "Active" H 6775 7175 60  0001 L CNN "Status"
	1    6575 5975
	1    0    0    -1  
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:2N7000 Q3
U 1 1 60817970
P 4025 6500
F 0 "Q3" H 4132 6553 60  0000 L CNN
F 1 "2N7000" V 3975 6700 60  0000 L CNN
F 2 "digikey-footprints:TO-92-3" H 4225 6700 60  0001 L CNN
F 3 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 4225 6800 60  0001 L CNN
F 4 "2N7000FS-ND" H 4225 6900 60  0001 L CNN "Digi-Key_PN"
F 5 "2N7000" H 4225 7000 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 4225 7100 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 4225 7200 60  0001 L CNN "Family"
F 8 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 4225 7300 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/2N7000/2N7000FS-ND/244278" H 4225 7400 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 60V 200MA TO-92" H 4225 7500 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 4225 7600 60  0001 L CNN "Manufacturer"
F 12 "Active" H 4225 7700 60  0001 L CNN "Status"
	1    4025 6500
	1    0    0    -1  
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:2N7000 Q8
U 1 1 60819F39
P 6075 6500
F 0 "Q8" H 6182 6553 60  0000 L CNN
F 1 "2N7000" V 6000 6800 60  0000 L CNN
F 2 "digikey-footprints:TO-92-3" H 6275 6700 60  0001 L CNN
F 3 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 6275 6800 60  0001 L CNN
F 4 "2N7000FS-ND" H 6275 6900 60  0001 L CNN "Digi-Key_PN"
F 5 "2N7000" H 6275 7000 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 6275 7100 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 6275 7200 60  0001 L CNN "Family"
F 8 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 6275 7300 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/2N7000/2N7000FS-ND/244278" H 6275 7400 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 60V 200MA TO-92" H 6275 7500 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 6275 7600 60  0001 L CNN "Manufacturer"
F 12 "Active" H 6275 7700 60  0001 L CNN "Status"
	1    6075 6500
	1    0    0    -1  
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:2N7000 Q5
U 1 1 6081AEE2
P 5025 6500
F 0 "Q5" H 5132 6553 60  0000 L CNN
F 1 "2N7000" V 4975 6725 60  0000 L CNN
F 2 "digikey-footprints:TO-92-3" H 5225 6700 60  0001 L CNN
F 3 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 5225 6800 60  0001 L CNN
F 4 "2N7000FS-ND" H 5225 6900 60  0001 L CNN "Digi-Key_PN"
F 5 "2N7000" H 5225 7000 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 5225 7100 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 5225 7200 60  0001 L CNN "Family"
F 8 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 5225 7300 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/2N7000/2N7000FS-ND/244278" H 5225 7400 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 60V 200MA TO-92" H 5225 7500 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 5225 7600 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5225 7700 60  0001 L CNN "Status"
	1    5025 6500
	1    0    0    -1  
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:2N7000 Q4
U 1 1 6081BDDD
P 4500 5975
F 0 "Q4" H 4607 6028 60  0000 L CNN
F 1 "2N7000" V 4450 6175 60  0000 L CNN
F 2 "digikey-footprints:TO-92-3" H 4700 6175 60  0001 L CNN
F 3 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 4700 6275 60  0001 L CNN
F 4 "2N7000FS-ND" H 4700 6375 60  0001 L CNN "Digi-Key_PN"
F 5 "2N7000" H 4700 6475 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 4700 6575 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 4700 6675 60  0001 L CNN "Family"
F 8 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 4700 6775 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/2N7000/2N7000FS-ND/244278" H 4700 6875 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 60V 200MA TO-92" H 4700 6975 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 4700 7075 60  0001 L CNN "Manufacturer"
F 12 "Active" H 4700 7175 60  0001 L CNN "Status"
	1    4500 5975
	1    0    0    -1  
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:2N7000 Q6
U 1 1 6081F4EC
P 5550 5975
F 0 "Q6" H 5657 6028 60  0000 L CNN
F 1 "2N7000" V 5475 6200 60  0000 L CNN
F 2 "digikey-footprints:TO-92-3" H 5750 6175 60  0001 L CNN
F 3 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 5750 6275 60  0001 L CNN
F 4 "2N7000FS-ND" H 5750 6375 60  0001 L CNN "Digi-Key_PN"
F 5 "2N7000" H 5750 6475 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 5750 6575 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 5750 6675 60  0001 L CNN "Family"
F 8 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 5750 6775 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/2N7000/2N7000FS-ND/244278" H 5750 6875 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 60V 200MA TO-92" H 5750 6975 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 5750 7075 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5750 7175 60  0001 L CNN "Status"
	1    5550 5975
	1    0    0    -1  
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:2N7000 Q2
U 1 1 60826B19
P 3500 5975
F 0 "Q2" H 3607 6028 60  0000 L CNN
F 1 "2N7000" V 3450 6175 60  0000 L CNN
F 2 "digikey-footprints:TO-92-3" H 3700 6175 60  0001 L CNN
F 3 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 3700 6275 60  0001 L CNN
F 4 "2N7000FS-ND" H 3700 6375 60  0001 L CNN "Digi-Key_PN"
F 5 "2N7000" H 3700 6475 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 3700 6575 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 3700 6675 60  0001 L CNN "Family"
F 8 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 3700 6775 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/2N7000/2N7000FS-ND/244278" H 3700 6875 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 60V 200MA TO-92" H 3700 6975 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 3700 7075 60  0001 L CNN "Manufacturer"
F 12 "Active" H 3700 7175 60  0001 L CNN "Status"
	1    3500 5975
	1    0    0    -1  
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:2N7000 Q1
U 1 1 60861850
P 3025 6500
F 0 "Q1" H 3132 6553 60  0000 L CNN
F 1 "2N7000" V 2975 6700 60  0000 L CNN
F 2 "digikey-footprints:TO-92-3" H 3225 6700 60  0001 L CNN
F 3 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 3225 6800 60  0001 L CNN
F 4 "2N7000FS-ND" H 3225 6900 60  0001 L CNN "Digi-Key_PN"
F 5 "2N7000" H 3225 7000 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 3225 7100 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 3225 7200 60  0001 L CNN "Family"
F 8 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 3225 7300 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/2N7000/2N7000FS-ND/244278" H 3225 7400 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 60V 200MA TO-92" H 3225 7500 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 3225 7600 60  0001 L CNN "Manufacturer"
F 12 "Active" H 3225 7700 60  0001 L CNN "Status"
	1    3025 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 4925 3025 4925
Wire Wire Line
	3025 4925 3025 6300
Wire Wire Line
	4025 6300 4025 5125
Wire Wire Line
	4025 5125 6900 5125
Wire Wire Line
	4500 5775 4500 5225
Wire Wire Line
	5025 6300 5025 5325
Wire Wire Line
	5025 5325 6900 5325
Wire Wire Line
	5550 5775 5550 5425
Wire Wire Line
	5550 5425 6575 5425
Wire Wire Line
	6075 6275 6075 5525
Wire Wire Line
	6075 5525 6900 5525
Wire Wire Line
	6575 5775 6575 5625
Wire Wire Line
	6575 6175 6575 7150
Wire Wire Line
	3025 6700 3025 7150
Wire Wire Line
	2675 7150 3025 7150
Connection ~ 3025 7150
Wire Wire Line
	3025 7150 3500 7150
Wire Wire Line
	3500 5025 3500 5775
Wire Wire Line
	3500 5025 6575 5025
Wire Wire Line
	3500 6175 3500 7150
Connection ~ 3500 7150
Wire Wire Line
	3500 7150 4025 7150
Wire Wire Line
	4025 6700 4025 7150
Connection ~ 4025 7150
Wire Wire Line
	4025 7150 4500 7150
Wire Wire Line
	4500 5225 6575 5225
Wire Wire Line
	4500 6175 4500 7150
Connection ~ 4500 7150
Wire Wire Line
	4500 7150 5025 7150
Wire Wire Line
	5025 6700 5025 7150
Connection ~ 5025 7150
Wire Wire Line
	5025 7150 5550 7150
Wire Wire Line
	5550 6175 5550 7150
Connection ~ 5550 7150
Wire Wire Line
	5550 7150 6075 7150
Wire Wire Line
	6075 6700 6075 7150
Connection ~ 6075 7150
Wire Wire Line
	6075 7150 6575 7150
$Comp
L my_power:GND #PWR01
U 1 1 608C190D
P 2675 7150
F 0 "#PWR01" H 2675 6900 50  0001 C CNN
F 1 "GND" V 2680 7022 50  0000 R CNN
F 2 "" H 2675 7150 50  0001 C CNN
F 3 "" H 2675 7150 50  0001 C CNN
	1    2675 7150
	0    1    1    0   
$EndComp
Wire Wire Line
	2725 6600 2625 6600
Wire Wire Line
	2625 6600 2625 6450
Text GLabel 2625 6450 1    50   Input ~ 0
CA
Wire Wire Line
	3200 6075 3100 6075
Wire Wire Line
	3100 6075 3100 5925
Text GLabel 3100 5925 1    50   Input ~ 0
CB
Wire Wire Line
	3725 6600 3625 6600
Wire Wire Line
	3625 6600 3625 6450
Text GLabel 3625 6450 1    50   Input ~ 0
CC
Wire Wire Line
	4200 6075 4100 6075
Wire Wire Line
	4100 6075 4100 5925
Text GLabel 4100 5925 1    50   Input ~ 0
CD
Wire Wire Line
	4725 6600 4625 6600
Wire Wire Line
	4625 6600 4625 6450
Text GLabel 4625 6450 1    50   Input ~ 0
CE
Wire Wire Line
	5250 6075 5150 6075
Wire Wire Line
	5150 6075 5150 5925
Text GLabel 5150 5925 1    50   Input ~ 0
CF
Wire Wire Line
	5775 6600 5675 6600
Wire Wire Line
	5675 6600 5675 6450
Text GLabel 5675 6450 1    50   Input ~ 0
CG
Wire Wire Line
	6275 6075 6175 6075
Wire Wire Line
	6175 6075 6175 5925
Text GLabel 6175 5925 1    50   Input ~ 0
CP
$Comp
L dk_Transistors-FETs-MOSFETs-Single:BSS84 Q13
U 1 1 60933935
P 9950 5125
F 0 "Q13" H 10057 5072 60  0000 L CNN
F 1 "BSS84" H 10057 5178 60  0000 L CNN
F 2 "digikey-footprints:SOT-23-3" H 10150 5325 60  0001 L CNN
F 3 "https://www.onsemi.com/pub/Collateral/BSS84-D.PDF" H 10150 5425 60  0001 L CNN
F 4 "BSS84CT-ND" H 10150 5525 60  0001 L CNN "Digi-Key_PN"
F 5 "BSS84" H 10150 5625 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 10150 5725 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 10150 5825 60  0001 L CNN "Family"
F 8 "https://www.onsemi.com/pub/Collateral/BSS84-D.PDF" H 10150 5925 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/BSS84/BSS84CT-ND/244297" H 10150 6025 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET P-CH 50V 130MA SOT-23" H 10150 6125 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 10150 6225 60  0001 L CNN "Manufacturer"
F 12 "Active" H 10150 6325 60  0001 L CNN "Status"
	1    9950 5125
	-1   0    0    1   
$EndComp
Wire Wire Line
	9950 5525 9950 5325
Wire Wire Line
	9950 5625 9950 5525
Connection ~ 9950 5525
$Comp
L my_power:+5V #PWR08
U 1 1 60952491
P 9950 4700
F 0 "#PWR08" H 9950 4550 50  0001 C CNN
F 1 "+5V" H 9965 4873 50  0000 C CNN
F 2 "" H 9950 4700 50  0001 C CNN
F 3 "" H 9950 4700 50  0001 C CNN
	1    9950 4700
	1    0    0    -1  
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:2N7000 Q17
U 1 1 609588C5
P 10500 5325
F 0 "Q17" H 10607 5378 60  0000 L CNN
F 1 "2N7000" V 10450 4750 60  0000 L CNN
F 2 "digikey-footprints:TO-92-3" H 10700 5525 60  0001 L CNN
F 3 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 10700 5625 60  0001 L CNN
F 4 "2N7000FS-ND" H 10700 5725 60  0001 L CNN "Digi-Key_PN"
F 5 "2N7000" H 10700 5825 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 10700 5925 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 10700 6025 60  0001 L CNN "Family"
F 8 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 10700 6125 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/2N7000/2N7000FS-ND/244278" H 10700 6225 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 60V 200MA TO-92" H 10700 6325 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 10700 6425 60  0001 L CNN "Manufacturer"
F 12 "Active" H 10700 6525 60  0001 L CNN "Status"
	1    10500 5325
	-1   0    0    -1  
$EndComp
$Comp
L my_power:+12V #PWR015
U 1 1 6095A4BB
P 10500 4675
F 0 "#PWR015" H 10500 4525 50  0001 C CNN
F 1 "+12V" H 10515 4848 50  0000 C CNN
F 2 "" H 10500 4675 50  0001 C CNN
F 3 "" H 10500 4675 50  0001 C CNN
	1    10500 4675
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 5025 10500 5025
Wire Wire Line
	10500 5025 10500 5125
$Comp
L Device:R R13
U 1 1 6097512B
P 10500 4875
F 0 "R13" H 10570 4921 50  0000 L CNN
F 1 "10K" H 10570 4830 50  0000 L CNN
F 2 "" V 10430 4875 50  0001 C CNN
F 3 "~" H 10500 4875 50  0001 C CNN
	1    10500 4875
	1    0    0    -1  
$EndComp
Connection ~ 10500 5025
Wire Wire Line
	9950 4700 9950 4925
Wire Wire Line
	10500 4675 10500 4725
Wire Wire Line
	10500 5525 10500 5925
$Comp
L my_power:GND #PWR016
U 1 1 609A0FA1
P 10500 5925
F 0 "#PWR016" H 10500 5675 50  0001 C CNN
F 1 "GND" H 10505 5752 50  0000 C CNN
F 2 "" H 10500 5925 50  0001 C CNN
F 3 "" H 10500 5925 50  0001 C CNN
	1    10500 5925
	1    0    0    -1  
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:BSS84 Q11
U 1 1 60A03905
P 9625 3825
F 0 "Q11" H 9732 3772 60  0000 L CNN
F 1 "BSS84" H 9732 3878 60  0000 L CNN
F 2 "digikey-footprints:SOT-23-3" H 9825 4025 60  0001 L CNN
F 3 "https://www.onsemi.com/pub/Collateral/BSS84-D.PDF" H 9825 4125 60  0001 L CNN
F 4 "BSS84CT-ND" H 9825 4225 60  0001 L CNN "Digi-Key_PN"
F 5 "BSS84" H 9825 4325 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 9825 4425 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 9825 4525 60  0001 L CNN "Family"
F 8 "https://www.onsemi.com/pub/Collateral/BSS84-D.PDF" H 9825 4625 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/BSS84/BSS84CT-ND/244297" H 9825 4725 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET P-CH 50V 130MA SOT-23" H 9825 4825 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 9825 4925 60  0001 L CNN "Manufacturer"
F 12 "Active" H 9825 5025 60  0001 L CNN "Status"
	1    9625 3825
	-1   0    0    1   
$EndComp
Wire Wire Line
	9225 4225 9625 4225
Wire Wire Line
	9625 4225 9625 4025
Wire Wire Line
	9225 4325 9625 4325
Wire Wire Line
	9625 4325 9625 4225
Connection ~ 9625 4225
$Comp
L my_power:+5V #PWR06
U 1 1 60A03910
P 9625 3400
F 0 "#PWR06" H 9625 3250 50  0001 C CNN
F 1 "+5V" H 9640 3573 50  0000 C CNN
F 2 "" H 9625 3400 50  0001 C CNN
F 3 "" H 9625 3400 50  0001 C CNN
	1    9625 3400
	1    0    0    -1  
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:2N7000 Q15
U 1 1 60A0391F
P 10175 4025
F 0 "Q15" H 10282 4078 60  0000 L CNN
F 1 "2N7000" V 10125 3450 60  0000 L CNN
F 2 "digikey-footprints:TO-92-3" H 10375 4225 60  0001 L CNN
F 3 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 10375 4325 60  0001 L CNN
F 4 "2N7000FS-ND" H 10375 4425 60  0001 L CNN "Digi-Key_PN"
F 5 "2N7000" H 10375 4525 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 10375 4625 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 10375 4725 60  0001 L CNN "Family"
F 8 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 10375 4825 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/2N7000/2N7000FS-ND/244278" H 10375 4925 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 60V 200MA TO-92" H 10375 5025 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 10375 5125 60  0001 L CNN "Manufacturer"
F 12 "Active" H 10375 5225 60  0001 L CNN "Status"
	1    10175 4025
	-1   0    0    -1  
$EndComp
$Comp
L my_power:+12V #PWR011
U 1 1 60A03925
P 10175 3375
F 0 "#PWR011" H 10175 3225 50  0001 C CNN
F 1 "+12V" H 10190 3548 50  0000 C CNN
F 2 "" H 10175 3375 50  0001 C CNN
F 3 "" H 10175 3375 50  0001 C CNN
	1    10175 3375
	1    0    0    -1  
$EndComp
Wire Wire Line
	9925 3725 10175 3725
Wire Wire Line
	10175 3725 10175 3825
$Comp
L Device:R R11
U 1 1 60A0392D
P 10175 3575
F 0 "R11" H 10245 3621 50  0000 L CNN
F 1 "10K" H 10245 3530 50  0000 L CNN
F 2 "" V 10105 3575 50  0001 C CNN
F 3 "~" H 10175 3575 50  0001 C CNN
	1    10175 3575
	1    0    0    -1  
$EndComp
Connection ~ 10175 3725
Wire Wire Line
	9625 3400 9625 3625
Wire Wire Line
	10175 3375 10175 3425
Wire Wire Line
	10175 4225 10175 4625
$Comp
L my_power:GND #PWR012
U 1 1 60A03937
P 10175 4625
F 0 "#PWR012" H 10175 4375 50  0001 C CNN
F 1 "GND" H 10180 4452 50  0000 C CNN
F 2 "" H 10175 4625 50  0001 C CNN
F 3 "" H 10175 4625 50  0001 C CNN
	1    10175 4625
	1    0    0    -1  
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:BSS84 Q12
U 1 1 60A20EB9
P 9950 2575
F 0 "Q12" H 10057 2522 60  0000 L CNN
F 1 "BSS84" H 10057 2628 60  0000 L CNN
F 2 "digikey-footprints:SOT-23-3" H 10150 2775 60  0001 L CNN
F 3 "https://www.onsemi.com/pub/Collateral/BSS84-D.PDF" H 10150 2875 60  0001 L CNN
F 4 "BSS84CT-ND" H 10150 2975 60  0001 L CNN "Digi-Key_PN"
F 5 "BSS84" H 10150 3075 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 10150 3175 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 10150 3275 60  0001 L CNN "Family"
F 8 "https://www.onsemi.com/pub/Collateral/BSS84-D.PDF" H 10150 3375 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/BSS84/BSS84CT-ND/244297" H 10150 3475 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET P-CH 50V 130MA SOT-23" H 10150 3575 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 10150 3675 60  0001 L CNN "Manufacturer"
F 12 "Active" H 10150 3775 60  0001 L CNN "Status"
	1    9950 2575
	-1   0    0    1   
$EndComp
Wire Wire Line
	9950 2975 9950 2775
Wire Wire Line
	9950 3075 9950 2975
Connection ~ 9950 2975
$Comp
L my_power:+5V #PWR07
U 1 1 60A20EC4
P 9950 2150
F 0 "#PWR07" H 9950 2000 50  0001 C CNN
F 1 "+5V" H 9965 2323 50  0000 C CNN
F 2 "" H 9950 2150 50  0001 C CNN
F 3 "" H 9950 2150 50  0001 C CNN
	1    9950 2150
	1    0    0    -1  
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:2N7000 Q16
U 1 1 60A20ED3
P 10500 2775
F 0 "Q16" H 10607 2828 60  0000 L CNN
F 1 "2N7000" V 10450 2200 60  0000 L CNN
F 2 "digikey-footprints:TO-92-3" H 10700 2975 60  0001 L CNN
F 3 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 10700 3075 60  0001 L CNN
F 4 "2N7000FS-ND" H 10700 3175 60  0001 L CNN "Digi-Key_PN"
F 5 "2N7000" H 10700 3275 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 10700 3375 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 10700 3475 60  0001 L CNN "Family"
F 8 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 10700 3575 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/2N7000/2N7000FS-ND/244278" H 10700 3675 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 60V 200MA TO-92" H 10700 3775 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 10700 3875 60  0001 L CNN "Manufacturer"
F 12 "Active" H 10700 3975 60  0001 L CNN "Status"
	1    10500 2775
	-1   0    0    -1  
$EndComp
$Comp
L my_power:+12V #PWR013
U 1 1 60A20ED9
P 10500 2125
F 0 "#PWR013" H 10500 1975 50  0001 C CNN
F 1 "+12V" H 10515 2298 50  0000 C CNN
F 2 "" H 10500 2125 50  0001 C CNN
F 3 "" H 10500 2125 50  0001 C CNN
	1    10500 2125
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 2475 10500 2475
Wire Wire Line
	10500 2475 10500 2575
$Comp
L Device:R R12
U 1 1 60A20EE1
P 10500 2325
F 0 "R12" H 10570 2371 50  0000 L CNN
F 1 "10K" H 10570 2280 50  0000 L CNN
F 2 "" V 10430 2325 50  0001 C CNN
F 3 "~" H 10500 2325 50  0001 C CNN
	1    10500 2325
	1    0    0    -1  
$EndComp
Connection ~ 10500 2475
Wire Wire Line
	9950 2150 9950 2375
Wire Wire Line
	10500 2125 10500 2175
Wire Wire Line
	10500 2975 10500 3375
$Comp
L my_power:GND #PWR014
U 1 1 60A20EEB
P 10500 3375
F 0 "#PWR014" H 10500 3125 50  0001 C CNN
F 1 "GND" H 10505 3202 50  0000 C CNN
F 2 "" H 10500 3375 50  0001 C CNN
F 3 "" H 10500 3375 50  0001 C CNN
	1    10500 3375
	1    0    0    -1  
$EndComp
Wire Wire Line
	9225 3075 9950 3075
Wire Wire Line
	9225 2975 9950 2975
Wire Wire Line
	9225 5525 9950 5525
Wire Wire Line
	9225 5625 9950 5625
$Comp
L dk_Transistors-FETs-MOSFETs-Single:BSS84 Q10
U 1 1 60A519FF
P 9625 1300
F 0 "Q10" H 9732 1247 60  0000 L CNN
F 1 "BSS84" H 9732 1353 60  0000 L CNN
F 2 "digikey-footprints:SOT-23-3" H 9825 1500 60  0001 L CNN
F 3 "https://www.onsemi.com/pub/Collateral/BSS84-D.PDF" H 9825 1600 60  0001 L CNN
F 4 "BSS84CT-ND" H 9825 1700 60  0001 L CNN "Digi-Key_PN"
F 5 "BSS84" H 9825 1800 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 9825 1900 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 9825 2000 60  0001 L CNN "Family"
F 8 "https://www.onsemi.com/pub/Collateral/BSS84-D.PDF" H 9825 2100 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/BSS84/BSS84CT-ND/244297" H 9825 2200 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET P-CH 50V 130MA SOT-23" H 9825 2300 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 9825 2400 60  0001 L CNN "Manufacturer"
F 12 "Active" H 9825 2500 60  0001 L CNN "Status"
	1    9625 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	9225 1700 9625 1700
Wire Wire Line
	9625 1700 9625 1500
Wire Wire Line
	9225 1800 9625 1800
Wire Wire Line
	9625 1800 9625 1700
Connection ~ 9625 1700
$Comp
L my_power:+5V #PWR05
U 1 1 60A51A0A
P 9625 875
F 0 "#PWR05" H 9625 725 50  0001 C CNN
F 1 "+5V" H 9640 1048 50  0000 C CNN
F 2 "" H 9625 875 50  0001 C CNN
F 3 "" H 9625 875 50  0001 C CNN
	1    9625 875 
	1    0    0    -1  
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:2N7000 Q14
U 1 1 60A51A19
P 10175 1500
F 0 "Q14" H 10282 1553 60  0000 L CNN
F 1 "2N7000" V 10125 925 60  0000 L CNN
F 2 "digikey-footprints:TO-92-3" H 10375 1700 60  0001 L CNN
F 3 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 10375 1800 60  0001 L CNN
F 4 "2N7000FS-ND" H 10375 1900 60  0001 L CNN "Digi-Key_PN"
F 5 "2N7000" H 10375 2000 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 10375 2100 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 10375 2200 60  0001 L CNN "Family"
F 8 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 10375 2300 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/2N7000/2N7000FS-ND/244278" H 10375 2400 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 60V 200MA TO-92" H 10375 2500 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 10375 2600 60  0001 L CNN "Manufacturer"
F 12 "Active" H 10375 2700 60  0001 L CNN "Status"
	1    10175 1500
	-1   0    0    -1  
$EndComp
$Comp
L my_power:+12V #PWR09
U 1 1 60A51A1F
P 10175 850
F 0 "#PWR09" H 10175 700 50  0001 C CNN
F 1 "+12V" H 10190 1023 50  0000 C CNN
F 2 "" H 10175 850 50  0001 C CNN
F 3 "" H 10175 850 50  0001 C CNN
	1    10175 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9925 1200 10175 1200
Wire Wire Line
	10175 1200 10175 1300
$Comp
L Device:R R10
U 1 1 60A51A27
P 10175 1050
F 0 "R10" H 10245 1096 50  0000 L CNN
F 1 "10K" H 10245 1005 50  0000 L CNN
F 2 "" V 10105 1050 50  0001 C CNN
F 3 "~" H 10175 1050 50  0001 C CNN
	1    10175 1050
	1    0    0    -1  
$EndComp
Connection ~ 10175 1200
Wire Wire Line
	9625 875  9625 1100
Wire Wire Line
	10175 850  10175 900 
Wire Wire Line
	10175 1700 10175 2100
$Comp
L my_power:GND #PWR010
U 1 1 60A51A31
P 10175 2100
F 0 "#PWR010" H 10175 1850 50  0001 C CNN
F 1 "GND" H 10180 1927 50  0000 C CNN
F 2 "" H 10175 2100 50  0001 C CNN
F 3 "" H 10175 2100 50  0001 C CNN
	1    10175 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10475 1600 10875 1600
Text GLabel 10875 1600 2    50   Input ~ 0
CA1
Text GLabel 10875 2875 2    50   Input ~ 0
CA2
Wire Wire Line
	10875 2875 10800 2875
Wire Wire Line
	10475 4125 10875 4125
Text GLabel 10875 4125 2    50   Input ~ 0
CA3
Text GLabel 10875 5425 2    50   Input ~ 0
CA4
Wire Wire Line
	10875 5425 10800 5425
$Comp
L Switch:SW_MEC_5G SW1
U 1 1 60ACF3EB
P 1500 2425
F 0 "SW1" H 1500 2710 50  0000 C CNN
F 1 "SW_MEC_5G" H 1500 2619 50  0000 C CNN
F 2 "" H 1500 2625 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 1500 2625 50  0001 C CNN
	1    1500 2425
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_MEC_5G SW5
U 1 1 60AD26C4
P 2550 2425
F 0 "SW5" H 2550 2710 50  0000 C CNN
F 1 "SW_MEC_5G" H 2550 2619 50  0000 C CNN
F 2 "" H 2550 2625 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 2550 2625 50  0001 C CNN
	1    2550 2425
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_MEC_5G SW9
U 1 1 60ADB2C3
P 3675 2425
F 0 "SW9" H 3675 2710 50  0000 C CNN
F 1 "SW_MEC_5G" H 3675 2619 50  0000 C CNN
F 2 "" H 3675 2625 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 3675 2625 50  0001 C CNN
	1    3675 2425
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_MEC_5G SW2
U 1 1 60AE43FA
P 1500 2925
F 0 "SW2" H 1500 3210 50  0000 C CNN
F 1 "SW_MEC_5G" H 1500 3119 50  0000 C CNN
F 2 "" H 1500 3125 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 1500 3125 50  0001 C CNN
	1    1500 2925
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_MEC_5G SW6
U 1 1 60AE4400
P 2550 2925
F 0 "SW6" H 2550 3210 50  0000 C CNN
F 1 "SW_MEC_5G" H 2550 3119 50  0000 C CNN
F 2 "" H 2550 3125 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 2550 3125 50  0001 C CNN
	1    2550 2925
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_MEC_5G SW10
U 1 1 60AE4406
P 3675 2925
F 0 "SW10" H 3675 3210 50  0000 C CNN
F 1 "SW_MEC_5G" H 3675 3119 50  0000 C CNN
F 2 "" H 3675 3125 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 3675 3125 50  0001 C CNN
	1    3675 2925
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_MEC_5G SW3
U 1 1 60AEC2C0
P 1500 3450
F 0 "SW3" H 1500 3735 50  0000 C CNN
F 1 "SW_MEC_5G" H 1500 3644 50  0000 C CNN
F 2 "" H 1500 3650 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 1500 3650 50  0001 C CNN
	1    1500 3450
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_MEC_5G SW7
U 1 1 60AEC2C6
P 2550 3450
F 0 "SW7" H 2550 3735 50  0000 C CNN
F 1 "SW_MEC_5G" H 2550 3644 50  0000 C CNN
F 2 "" H 2550 3650 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 2550 3650 50  0001 C CNN
	1    2550 3450
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_MEC_5G SW11
U 1 1 60AEC2CC
P 3675 3450
F 0 "SW11" H 3675 3735 50  0000 C CNN
F 1 "SW_MEC_5G" H 3675 3644 50  0000 C CNN
F 2 "" H 3675 3650 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 3675 3650 50  0001 C CNN
	1    3675 3450
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_MEC_5G SW4
U 1 1 60AFD063
P 1500 4000
F 0 "SW4" H 1500 4285 50  0000 C CNN
F 1 "SW_MEC_5G" H 1500 4194 50  0000 C CNN
F 2 "" H 1500 4200 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 1500 4200 50  0001 C CNN
	1    1500 4000
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_MEC_5G SW8
U 1 1 60AFD069
P 2550 4000
F 0 "SW8" H 2550 4285 50  0000 C CNN
F 1 "SW_MEC_5G" H 2550 4194 50  0000 C CNN
F 2 "" H 2550 4200 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 2550 4200 50  0001 C CNN
	1    2550 4000
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_MEC_5G SW12
U 1 1 60AFD06F
P 3675 4000
F 0 "SW12" H 3675 4285 50  0000 C CNN
F 1 "SW_MEC_5G" H 3675 4194 50  0000 C CNN
F 2 "" H 3675 4200 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 3675 4200 50  0001 C CNN
	1    3675 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3875 2425 3975 2425
Wire Wire Line
	3975 2425 3975 1925
Wire Wire Line
	2750 2425 2850 2425
Wire Wire Line
	2850 2425 2850 1925
Wire Wire Line
	1700 2425 1800 2425
Wire Wire Line
	1800 2425 1800 1925
Wire Wire Line
	2350 2425 2275 2425
Wire Wire Line
	2275 2425 2275 2550
Wire Wire Line
	3475 2425 3400 2425
Wire Wire Line
	3400 2425 3400 2550
Wire Wire Line
	3400 2550 2275 2550
Connection ~ 2275 2550
Wire Wire Line
	1300 2425 1225 2425
Wire Wire Line
	1225 2425 1225 2550
Wire Wire Line
	1700 2925 1800 2925
Wire Wire Line
	1800 2925 1800 2425
Connection ~ 1800 2425
Wire Wire Line
	1700 3450 1800 3450
Wire Wire Line
	1800 3450 1800 2925
Connection ~ 1800 2925
Wire Wire Line
	1700 4000 1800 4000
Wire Wire Line
	1800 4000 1800 3450
Connection ~ 1800 3450
Connection ~ 2850 2425
Wire Wire Line
	2750 2925 2850 2925
Wire Wire Line
	2850 2425 2850 2925
Wire Wire Line
	2750 3450 2850 3450
Connection ~ 2850 2925
Wire Wire Line
	2850 2925 2850 3450
Wire Wire Line
	2750 4000 2850 4000
Wire Wire Line
	2850 4000 2850 3450
Connection ~ 2850 3450
Wire Wire Line
	3875 2925 3975 2925
Connection ~ 3975 2425
Wire Wire Line
	3875 3450 3975 3450
Wire Wire Line
	3975 2425 3975 2925
Connection ~ 3975 2925
Wire Wire Line
	3975 2925 3975 3450
Wire Wire Line
	3875 4000 3975 4000
Wire Wire Line
	3975 4000 3975 3450
Connection ~ 3975 3450
Wire Wire Line
	3475 2925 3400 2925
Wire Wire Line
	3400 2925 3400 3050
Wire Wire Line
	3400 3050 2275 3050
Wire Wire Line
	3475 3450 3400 3450
Wire Wire Line
	3400 3450 3400 3575
Wire Wire Line
	3400 3575 2275 3575
Wire Wire Line
	3475 4000 3400 4000
Wire Wire Line
	3400 4000 3400 4125
Wire Wire Line
	3400 4125 2275 4125
Wire Wire Line
	2350 4000 2275 4000
Wire Wire Line
	2275 4000 2275 4125
Connection ~ 2275 4125
Wire Wire Line
	2275 4125 1225 4125
Wire Wire Line
	2350 3450 2275 3450
Wire Wire Line
	2275 3450 2275 3575
Connection ~ 2275 3575
Wire Wire Line
	2275 3575 1225 3575
Wire Wire Line
	2350 2925 2275 2925
Wire Wire Line
	2275 2925 2275 3050
Connection ~ 2275 3050
Wire Wire Line
	2275 3050 1225 3050
Wire Wire Line
	2275 2550 1225 2550
Connection ~ 1225 2550
Wire Wire Line
	1225 2550 1100 2550
Text GLabel 1800 1925 1    50   Input ~ 0
C1
Text GLabel 2850 1925 1    50   Input ~ 0
C2
Text GLabel 3975 1925 1    50   Input ~ 0
C3
Text GLabel 1100 2550 0    50   Input ~ 0
R1
Text GLabel 1100 3050 0    50   Input ~ 0
R2
Text GLabel 1100 3575 0    50   Input ~ 0
R3
Text GLabel 1100 4125 0    50   Input ~ 0
R4
Wire Wire Line
	1300 2925 1225 2925
Wire Wire Line
	1225 2925 1225 3050
Wire Wire Line
	1300 3450 1225 3450
Wire Wire Line
	1225 3450 1225 3575
Wire Wire Line
	1300 4000 1225 4000
Wire Wire Line
	1225 4000 1225 4125
Connection ~ 1225 3050
Wire Wire Line
	1225 3050 1100 3050
Connection ~ 1225 3575
Wire Wire Line
	1225 3575 1100 3575
Connection ~ 1225 4125
Wire Wire Line
	1225 4125 1100 4125
$EndSCHEMATC
