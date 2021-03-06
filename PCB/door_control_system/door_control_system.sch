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
P 5725 1525
F 0 "K1" H 6055 1571 50  0000 L CNN
F 1 "DIPxx-1Axx-13x" H 6055 1480 50  0000 L CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 6075 1475 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 5725 1525 50  0001 C CNN
	1    5725 1525
	-1   0    0    -1  
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:2N7000 Q7
U 1 1 606E17CF
P 5925 2600
F 0 "Q7" H 6032 2653 60  0000 L CNN
F 1 "2N7000" H 5475 2800 60  0000 L CNN
F 2 "digikey-footprints:TO-92-3" H 6125 2800 60  0001 L CNN
F 3 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 6125 2900 60  0001 L CNN
F 4 "2N7000FS-ND" H 6125 3000 60  0001 L CNN "Digi-Key_PN"
F 5 "2N7000" H 6125 3100 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 6125 3200 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 6125 3300 60  0001 L CNN "Family"
F 8 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 6125 3400 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/2N7000/2N7000FS-ND/244278" H 6125 3500 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 60V 200MA TO-92" H 6125 3600 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 6125 3700 60  0001 L CNN "Manufacturer"
F 12 "Active" H 6125 3800 60  0001 L CNN "Status"
	1    5925 2600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5925 1225 5925 1100
Text GLabel 6775 2700 2    50   Input ~ 0
FPGA_DO
$Comp
L my_power:GND #PWR04
U 1 1 606E66C6
P 5925 3225
F 0 "#PWR04" H 5925 2975 50  0001 C CNN
F 1 "GND" H 5930 3052 50  0000 C CNN
F 2 "" H 5925 3225 50  0001 C CNN
F 3 "" H 5925 3225 50  0001 C CNN
	1    5925 3225
	1    0    0    -1  
$EndComp
Wire Wire Line
	5925 2800 5925 3175
$Comp
L Device:D_Schottky D1
U 1 1 606EB8F6
P 6375 1525
F 0 "D1" V 6329 1605 50  0000 L CNN
F 1 "D_Schottky" V 6420 1605 50  0000 L CNN
F 2 "" H 6375 1525 50  0001 C CNN
F 3 "~" H 6375 1525 50  0001 C CNN
	1    6375 1525
	0    1    1    0   
$EndComp
Wire Wire Line
	5925 1900 6375 1900
Wire Wire Line
	6375 1900 6375 1675
Wire Wire Line
	5925 1900 5925 1825
Wire Wire Line
	6375 1375 6375 1100
Wire Wire Line
	6375 1100 5925 1100
Connection ~ 5925 1100
Wire Wire Line
	5925 1100 5925 850 
$Comp
L Device:R R1
U 1 1 606ED932
P 6500 2700
F 0 "R1" V 6293 2700 50  0000 C CNN
F 1 "100R" V 6384 2700 50  0000 C CNN
F 2 "" V 6430 2700 50  0001 C CNN
F 3 "~" H 6500 2700 50  0001 C CNN
	1    6500 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	6350 2700 6275 2700
Wire Wire Line
	6650 2700 6775 2700
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
	6075 5525 6900 5525
Wire Wire Line
	6575 5775 6575 5625
Wire Wire Line
	6575 6175 6575 7150
Wire Wire Line
	3025 6700 3025 7150
Wire Wire Line
	2675 7150 2725 7150
Connection ~ 3025 7150
Wire Wire Line
	3025 7150 3375 7150
Wire Wire Line
	3500 5025 3500 5775
Wire Wire Line
	3500 5025 6575 5025
Wire Wire Line
	3500 6175 3500 7150
Connection ~ 3500 7150
Wire Wire Line
	3500 7150 3725 7150
Wire Wire Line
	4025 6700 4025 7150
Connection ~ 4025 7150
Wire Wire Line
	4025 7150 4350 7150
Wire Wire Line
	4500 5225 6575 5225
Wire Wire Line
	4500 6175 4500 7150
Connection ~ 4500 7150
Wire Wire Line
	4500 7150 4725 7150
Wire Wire Line
	5025 6700 5025 7150
Connection ~ 5025 7150
Wire Wire Line
	5025 7150 5375 7150
Wire Wire Line
	5550 6175 5550 7150
Connection ~ 5550 7150
Wire Wire Line
	5550 7150 5775 7150
Wire Wire Line
	6075 6700 6075 7150
Connection ~ 6075 7150
Wire Wire Line
	6075 7150 6425 7150
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
L Device:R R13
U 1 1 6097512B
P 10500 4775
F 0 "R13" H 10570 4821 50  0000 L CNN
F 1 "10K" H 10570 4730 50  0000 L CNN
F 2 "" V 10430 4775 50  0001 C CNN
F 3 "~" H 10500 4775 50  0001 C CNN
	1    10500 4775
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 4700 9950 4925
Wire Wire Line
	10500 4575 10500 4625
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
L Device:R R11
U 1 1 60A0392D
P 10350 3450
F 0 "R11" H 10420 3496 50  0000 L CNN
F 1 "10K" H 10420 3405 50  0000 L CNN
F 2 "" V 10280 3450 50  0001 C CNN
F 3 "~" H 10350 3450 50  0001 C CNN
	1    10350 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9625 3400 9625 3625
Wire Wire Line
	10350 3250 10350 3300
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
L Device:R R12
U 1 1 60A20EE1
P 10500 2225
F 0 "R12" H 10570 2271 50  0000 L CNN
F 1 "10K" H 10570 2180 50  0000 L CNN
F 2 "" V 10430 2225 50  0001 C CNN
F 3 "~" H 10500 2225 50  0001 C CNN
	1    10500 2225
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 2150 9950 2375
Wire Wire Line
	10500 2025 10500 2075
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
L Device:R R10
U 1 1 60A51A27
P 10175 950
F 0 "R10" H 10245 996 50  0000 L CNN
F 1 "10K" H 10245 905 50  0000 L CNN
F 2 "" V 10105 950 50  0001 C CNN
F 3 "~" H 10175 950 50  0001 C CNN
	1    10175 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9625 875  9625 1100
Wire Wire Line
	10175 750  10175 800 
Text GLabel 10575 1200 2    50   Input ~ 0
CA1
Text GLabel 10575 2475 2    50   Input ~ 0
CA2
Text GLabel 10575 3725 2    50   Input ~ 0
CA3
Text GLabel 10625 5025 2    50   Input ~ 0
CA4
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
	2750 2425 2850 2425
Wire Wire Line
	1700 2425 1800 2425
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
Wire Wire Line
	6075 5525 6075 6300
$Comp
L Connector_Generic:Conn_02x06_Top_Bottom J1
U 1 1 60951214
P 1400 5325
F 0 "J1" H 1450 5742 50  0000 C CNN
F 1 "Conn_02x06_Top_Bottom" H 1450 5651 50  0000 C CNN
F 2 "" H 1400 5325 50  0001 C CNN
F 3 "~" H 1400 5325 50  0001 C CNN
	1    1400 5325
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x06_Top_Bottom J2
U 1 1 60C790B2
P 1400 6200
F 0 "J2" H 1450 6617 50  0000 C CNN
F 1 "Conn_02x06_Top_Bottom" H 1450 6526 50  0000 C CNN
F 2 "" H 1400 6200 50  0001 C CNN
F 3 "~" H 1400 6200 50  0001 C CNN
	1    1400 6200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x06_Top_Bottom J3
U 1 1 60C8C704
P 1400 7125
F 0 "J3" H 1450 7542 50  0000 C CNN
F 1 "Conn_02x06_Top_Bottom" H 1450 7451 50  0000 C CNN
F 2 "" H 1400 7125 50  0001 C CNN
F 3 "~" H 1400 7125 50  0001 C CNN
	1    1400 7125
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 6500 1200 6600
Wire Wire Line
	1200 6600 900  6600
Wire Wire Line
	1700 6500 1700 6600
Wire Wire Line
	1700 6600 1200 6600
Connection ~ 1200 6600
Wire Wire Line
	1200 7425 1200 7525
Wire Wire Line
	1200 7525 900  7525
Wire Wire Line
	1700 7525 1200 7525
Connection ~ 1200 7525
Wire Wire Line
	1200 5625 1200 5725
Wire Wire Line
	1200 5725 900  5725
Wire Wire Line
	1700 5725 1200 5725
Connection ~ 1200 5725
Wire Wire Line
	1700 5625 1700 5725
Wire Wire Line
	1700 7425 1700 7525
$Comp
L my_power:VCC #PWR030
U 1 1 60D1C818
P 9950 4700
F 0 "#PWR030" H 9950 4550 50  0001 C CNN
F 1 "VCC" H 9965 4873 50  0000 C CNN
F 2 "" H 9950 4700 50  0001 C CNN
F 3 "" H 9950 4700 50  0001 C CNN
	1    9950 4700
	1    0    0    -1  
$EndComp
$Comp
L my_power:VCC #PWR028
U 1 1 60D31E73
P 9625 3400
F 0 "#PWR028" H 9625 3250 50  0001 C CNN
F 1 "VCC" H 9640 3573 50  0000 C CNN
F 2 "" H 9625 3400 50  0001 C CNN
F 3 "" H 9625 3400 50  0001 C CNN
	1    9625 3400
	1    0    0    -1  
$EndComp
$Comp
L my_power:VCC #PWR029
U 1 1 60D46D53
P 9950 2150
F 0 "#PWR029" H 9950 2000 50  0001 C CNN
F 1 "VCC" H 9965 2323 50  0000 C CNN
F 2 "" H 9950 2150 50  0001 C CNN
F 3 "" H 9950 2150 50  0001 C CNN
	1    9950 2150
	1    0    0    -1  
$EndComp
$Comp
L my_power:VCC #PWR027
U 1 1 60D5BC92
P 9625 875
F 0 "#PWR027" H 9625 725 50  0001 C CNN
F 1 "VCC" H 9640 1048 50  0000 C CNN
F 2 "" H 9625 875 50  0001 C CNN
F 3 "" H 9625 875 50  0001 C CNN
	1    9625 875 
	1    0    0    -1  
$EndComp
$Comp
L my_power:VCC #PWR05
U 1 1 60D70D6C
P 900 5725
F 0 "#PWR05" H 900 5575 50  0001 C CNN
F 1 "VCC" H 915 5898 50  0000 C CNN
F 2 "" H 900 5725 50  0001 C CNN
F 3 "" H 900 5725 50  0001 C CNN
	1    900  5725
	0    -1   -1   0   
$EndComp
$Comp
L my_power:VCC #PWR06
U 1 1 60D85D45
P 900 6600
F 0 "#PWR06" H 900 6450 50  0001 C CNN
F 1 "VCC" H 915 6773 50  0000 C CNN
F 2 "" H 900 6600 50  0001 C CNN
F 3 "" H 900 6600 50  0001 C CNN
	1    900  6600
	0    -1   -1   0   
$EndComp
$Comp
L my_power:VCC #PWR07
U 1 1 60D9AD73
P 900 7525
F 0 "#PWR07" H 900 7375 50  0001 C CNN
F 1 "VCC" H 915 7698 50  0000 C CNN
F 2 "" H 900 7525 50  0001 C CNN
F 3 "" H 900 7525 50  0001 C CNN
	1    900  7525
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1200 7325 1100 7325
Wire Wire Line
	1700 7325 1800 7325
Wire Wire Line
	1800 7325 1800 7425
$Comp
L my_power:GND #PWR024
U 1 1 60DF184B
P 1800 7425
F 0 "#PWR024" H 1800 7175 50  0001 C CNN
F 1 "GND" H 1875 7275 50  0000 R CNN
F 2 "" H 1800 7425 50  0001 C CNN
F 3 "" H 1800 7425 50  0001 C CNN
	1    1800 7425
	1    0    0    -1  
$EndComp
$Comp
L my_power:GND #PWR021
U 1 1 60E070EB
P 1100 7325
F 0 "#PWR021" H 1100 7075 50  0001 C CNN
F 1 "GND" H 1075 7325 50  0000 R CNN
F 2 "" H 1100 7325 50  0001 C CNN
F 3 "" H 1100 7325 50  0001 C CNN
	1    1100 7325
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 6400 1800 6400
Wire Wire Line
	1800 6400 1800 6500
$Comp
L my_power:GND #PWR023
U 1 1 60E1D48F
P 1800 6500
F 0 "#PWR023" H 1800 6250 50  0001 C CNN
F 1 "GND" H 1875 6350 50  0000 R CNN
F 2 "" H 1800 6500 50  0001 C CNN
F 3 "" H 1800 6500 50  0001 C CNN
	1    1800 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 5525 1800 5525
Wire Wire Line
	1800 5525 1800 5625
$Comp
L my_power:GND #PWR022
U 1 1 60E333DA
P 1800 5625
F 0 "#PWR022" H 1800 5375 50  0001 C CNN
F 1 "GND" H 1875 5475 50  0000 R CNN
F 2 "" H 1800 5625 50  0001 C CNN
F 3 "" H 1800 5625 50  0001 C CNN
	1    1800 5625
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 6400 1100 6400
$Comp
L my_power:GND #PWR020
U 1 1 60E499BC
P 1100 6400
F 0 "#PWR020" H 1100 6150 50  0001 C CNN
F 1 "GND" H 1075 6400 50  0000 R CNN
F 2 "" H 1100 6400 50  0001 C CNN
F 3 "" H 1100 6400 50  0001 C CNN
	1    1100 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 5525 1100 5525
$Comp
L my_power:GND #PWR08
U 1 1 60E601A1
P 1100 5525
F 0 "#PWR08" H 1100 5275 50  0001 C CNN
F 1 "GND" H 1075 5525 50  0000 R CNN
F 2 "" H 1100 5525 50  0001 C CNN
F 3 "" H 1100 5525 50  0001 C CNN
	1    1100 5525
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 5125 1825 5125
Wire Wire Line
	1700 5225 1825 5225
Wire Wire Line
	1700 5325 1825 5325
Wire Wire Line
	1700 5425 1825 5425
Wire Wire Line
	1200 5425 1100 5425
Wire Wire Line
	1200 5325 1100 5325
Wire Wire Line
	1200 5225 1100 5225
Wire Wire Line
	1200 5125 1100 5125
Wire Wire Line
	1700 6000 1825 6000
Wire Wire Line
	1700 6100 1825 6100
Wire Wire Line
	1700 6200 1825 6200
Wire Wire Line
	1700 6300 1825 6300
Wire Wire Line
	1075 6925 1200 6925
Wire Wire Line
	1075 7025 1200 7025
Wire Wire Line
	1075 7125 1200 7125
Wire Wire Line
	1075 7225 1200 7225
Wire Wire Line
	1075 6000 1200 6000
Wire Wire Line
	1075 6100 1200 6100
Wire Wire Line
	1075 6200 1200 6200
Wire Wire Line
	1075 6300 1200 6300
$Comp
L Device:R R17
U 1 1 60FF24DA
P 5925 2125
F 0 "R17" V 5718 2125 50  0000 C CNN
F 1 "100R" V 5809 2125 50  0000 C CNN
F 2 "" V 5855 2125 50  0001 C CNN
F 3 "~" H 5925 2125 50  0001 C CNN
	1    5925 2125
	-1   0    0    1   
$EndComp
Wire Wire Line
	5925 2275 5925 2400
Wire Wire Line
	5925 1975 5925 1900
Connection ~ 5925 1900
Text GLabel 1100 5125 0    50   Input ~ 0
R1
Text GLabel 1100 5225 0    50   Input ~ 0
R2
Text GLabel 1100 5325 0    50   Input ~ 0
R3
Text GLabel 1100 5425 0    50   Input ~ 0
R4
Text GLabel 1825 5125 2    50   Input ~ 0
C1
Text GLabel 1825 5225 2    50   Input ~ 0
C2
Text GLabel 1825 5325 2    50   Input ~ 0
C3
Text GLabel 1825 5425 2    50   Input ~ 0
FPGA_DO
Text GLabel 1075 6000 0    50   Input ~ 0
CA
Text GLabel 1075 6100 0    50   Input ~ 0
CB
Text GLabel 1075 6200 0    50   Input ~ 0
CC
Text GLabel 1075 6300 0    50   Input ~ 0
CD
Text GLabel 1825 6000 2    50   Input ~ 0
CE
Text GLabel 1825 6100 2    50   Input ~ 0
CF
Text GLabel 1825 6200 2    50   Input ~ 0
CG
Text GLabel 1825 6300 2    50   Input ~ 0
CP
Text GLabel 1075 6925 0    50   Input ~ 0
CA1
Text GLabel 1075 7025 0    50   Input ~ 0
CA2
Text GLabel 1075 7125 0    50   Input ~ 0
CA3
Text GLabel 1075 7225 0    50   Input ~ 0
CA4
$Comp
L Device:R R25
U 1 1 61118FB1
P 6275 2950
F 0 "R25" V 6068 2950 50  0000 C CNN
F 1 "10k" V 6159 2950 50  0000 C CNN
F 2 "" V 6205 2950 50  0001 C CNN
F 3 "~" H 6275 2950 50  0001 C CNN
	1    6275 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6275 3100 6275 3175
Wire Wire Line
	6275 3175 5925 3175
Connection ~ 5925 3175
Wire Wire Line
	5925 3175 5925 3225
Wire Wire Line
	6275 2800 6275 2700
Connection ~ 6275 2700
Wire Wire Line
	6275 2700 6225 2700
$Comp
L Device:R R26
U 1 1 61152470
P 6425 6900
F 0 "R26" V 6350 6900 50  0000 C CNN
F 1 "10k" V 6425 6900 50  0000 C CNN
F 2 "" V 6355 6900 50  0001 C CNN
F 3 "~" H 6425 6900 50  0001 C CNN
	1    6425 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R24
U 1 1 6116E6AC
P 5775 6900
F 0 "R24" V 5700 6900 50  0000 C CNN
F 1 "10k" V 5775 6900 50  0000 C CNN
F 2 "" V 5705 6900 50  0001 C CNN
F 3 "~" H 5775 6900 50  0001 C CNN
	1    5775 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R23
U 1 1 6118AA23
P 5375 6900
F 0 "R23" V 5300 6900 50  0000 C CNN
F 1 "10k" V 5375 6900 50  0000 C CNN
F 2 "" V 5305 6900 50  0001 C CNN
F 3 "~" H 5375 6900 50  0001 C CNN
	1    5375 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R22
U 1 1 611A67DF
P 4725 6900
F 0 "R22" V 4625 6900 50  0000 C CNN
F 1 "10k" V 4725 6900 50  0000 C CNN
F 2 "" V 4655 6900 50  0001 C CNN
F 3 "~" H 4725 6900 50  0001 C CNN
	1    4725 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R21
U 1 1 611C2564
P 4350 6900
F 0 "R21" V 4275 6900 50  0000 C CNN
F 1 "10k" V 4350 6900 50  0000 C CNN
F 2 "" V 4280 6900 50  0001 C CNN
F 3 "~" H 4350 6900 50  0001 C CNN
	1    4350 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R20
U 1 1 61216A04
P 3725 6900
F 0 "R20" V 3650 6900 50  0000 C CNN
F 1 "10k" V 3725 6900 50  0000 C CNN
F 2 "" V 3655 6900 50  0001 C CNN
F 3 "~" H 3725 6900 50  0001 C CNN
	1    3725 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R19
U 1 1 612A2792
P 3375 6900
F 0 "R19" V 3300 6900 50  0000 C CNN
F 1 "10k" V 3375 6900 50  0000 C CNN
F 2 "" V 3305 6900 50  0001 C CNN
F 3 "~" H 3375 6900 50  0001 C CNN
	1    3375 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R18
U 1 1 612BE844
P 2725 6900
F 0 "R18" V 2650 6900 50  0000 C CNN
F 1 "10k" V 2725 6900 50  0000 C CNN
F 2 "" V 2655 6900 50  0001 C CNN
F 3 "~" H 2725 6900 50  0001 C CNN
	1    2725 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2725 6750 2725 6600
Connection ~ 2725 6600
Wire Wire Line
	2725 7050 2725 7150
Connection ~ 2725 7150
Wire Wire Line
	2725 7150 3025 7150
Wire Wire Line
	3375 6750 3375 6225
Wire Wire Line
	3375 6225 3200 6225
Wire Wire Line
	3200 6225 3200 6075
Connection ~ 3200 6075
Wire Wire Line
	3375 7050 3375 7150
Connection ~ 3375 7150
Wire Wire Line
	3375 7150 3500 7150
Wire Wire Line
	3725 7050 3725 7150
Connection ~ 3725 7150
Wire Wire Line
	3725 7150 4025 7150
Wire Wire Line
	3725 6750 3725 6600
Connection ~ 3725 6600
Wire Wire Line
	4350 7050 4350 7150
Connection ~ 4350 7150
Wire Wire Line
	4350 7150 4500 7150
Wire Wire Line
	4350 6750 4350 6250
Wire Wire Line
	4350 6250 4200 6250
Wire Wire Line
	4200 6250 4200 6075
Connection ~ 4200 6075
Wire Wire Line
	4725 6750 4725 6600
Connection ~ 4725 6600
Wire Wire Line
	4725 7050 4725 7150
Connection ~ 4725 7150
Wire Wire Line
	4725 7150 5025 7150
Wire Wire Line
	5375 6750 5375 6250
Wire Wire Line
	5375 6250 5250 6250
Wire Wire Line
	5250 6250 5250 6075
Connection ~ 5250 6075
Wire Wire Line
	5375 7050 5375 7150
Connection ~ 5375 7150
Wire Wire Line
	5375 7150 5550 7150
Wire Wire Line
	5775 7050 5775 7150
Connection ~ 5775 7150
Wire Wire Line
	5775 7150 6075 7150
Wire Wire Line
	5775 6750 5775 6600
Connection ~ 5775 6600
Wire Wire Line
	6425 6750 6425 6225
Wire Wire Line
	6425 6225 6275 6225
Wire Wire Line
	6275 6225 6275 6075
Connection ~ 6275 6075
Wire Wire Line
	6425 7050 6425 7150
Connection ~ 6425 7150
Wire Wire Line
	6425 7150 6575 7150
$Comp
L Connector:Screw_Terminal_01x02 J5
U 1 1 61882384
P 5050 2075
F 0 "J5" H 5175 2025 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 5050 2175 50  0000 C CNN
F 2 "" H 5050 2075 50  0001 C CNN
F 3 "~" H 5050 2075 50  0001 C CNN
	1    5050 2075
	-1   0    0    1   
$EndComp
Wire Wire Line
	5525 1975 5250 1975
Wire Wire Line
	5525 1825 5525 1975
Wire Wire Line
	1800 1925 1800 2425
Wire Wire Line
	2850 1925 2850 2425
Wire Wire Line
	3975 1925 3975 2425
$Comp
L my_power:GND #PWR035
U 1 1 608A0FBA
P 4625 4125
F 0 "#PWR035" H 4625 3875 50  0001 C CNN
F 1 "GND" H 4630 3952 50  0000 C CNN
F 2 "" H 4625 4125 50  0001 C CNN
F 3 "" H 4625 4125 50  0001 C CNN
	1    4625 4125
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4500 4125 4625 4125
$Comp
L Device:R R31
U 1 1 608A0FB4
P 4350 4125
F 0 "R31" V 4143 4125 50  0000 C CNN
F 1 "10k" V 4234 4125 50  0000 C CNN
F 2 "" V 4280 4125 50  0001 C CNN
F 3 "~" H 4350 4125 50  0001 C CNN
	1    4350 4125
	0    -1   -1   0   
$EndComp
Text GLabel 1100 2550 0    50   Input ~ 0
R1
Text GLabel 1100 3050 0    50   Input ~ 0
R2
Text GLabel 1100 3575 0    50   Input ~ 0
R3
Text GLabel 1100 4125 0    50   Input ~ 0
R4
Wire Wire Line
	4200 4125 3400 4125
Connection ~ 3400 4125
$Comp
L my_power:GND #PWR019
U 1 1 609B5E92
P 4625 3575
F 0 "#PWR019" H 4625 3325 50  0001 C CNN
F 1 "GND" H 4630 3402 50  0000 C CNN
F 2 "" H 4625 3575 50  0001 C CNN
F 3 "" H 4625 3575 50  0001 C CNN
	1    4625 3575
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4500 3575 4625 3575
$Comp
L Device:R R16
U 1 1 609B5E99
P 4350 3575
F 0 "R16" V 4143 3575 50  0000 C CNN
F 1 "10k" V 4234 3575 50  0000 C CNN
F 2 "" V 4280 3575 50  0001 C CNN
F 3 "~" H 4350 3575 50  0001 C CNN
	1    4350 3575
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4200 3575 3400 3575
Connection ~ 3400 3575
$Comp
L my_power:GND #PWR018
U 1 1 60A22D19
P 4625 3050
F 0 "#PWR018" H 4625 2800 50  0001 C CNN
F 1 "GND" H 4630 2877 50  0000 C CNN
F 2 "" H 4625 3050 50  0001 C CNN
F 3 "" H 4625 3050 50  0001 C CNN
	1    4625 3050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4500 3050 4625 3050
$Comp
L Device:R R15
U 1 1 60A22D20
P 4350 3050
F 0 "R15" V 4143 3050 50  0000 C CNN
F 1 "10k" V 4234 3050 50  0000 C CNN
F 2 "" V 4280 3050 50  0001 C CNN
F 3 "~" H 4350 3050 50  0001 C CNN
	1    4350 3050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4200 3050 3400 3050
Connection ~ 3400 3050
$Comp
L my_power:GND #PWR017
U 1 1 60A905B2
P 4625 2550
F 0 "#PWR017" H 4625 2300 50  0001 C CNN
F 1 "GND" H 4630 2377 50  0000 C CNN
F 2 "" H 4625 2550 50  0001 C CNN
F 3 "" H 4625 2550 50  0001 C CNN
	1    4625 2550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4500 2550 4625 2550
$Comp
L Device:R R14
U 1 1 60A905B9
P 4350 2550
F 0 "R14" V 4143 2550 50  0000 C CNN
F 1 "10k" V 4234 2550 50  0000 C CNN
F 2 "" V 4280 2550 50  0001 C CNN
F 3 "~" H 4350 2550 50  0001 C CNN
	1    4350 2550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4200 2550 3400 2550
Connection ~ 3400 2550
$Comp
L my_power:VCC #PWR012
U 1 1 60954B72
P 10350 3250
F 0 "#PWR012" H 10350 3100 50  0001 C CNN
F 1 "VCC" H 10365 3423 50  0000 C CNN
F 2 "" H 10350 3250 50  0001 C CNN
F 3 "" H 10350 3250 50  0001 C CNN
	1    10350 3250
	1    0    0    -1  
$EndComp
$Comp
L my_power:VCC #PWR014
U 1 1 60955250
P 10500 4575
F 0 "#PWR014" H 10500 4425 50  0001 C CNN
F 1 "VCC" H 10515 4748 50  0000 C CNN
F 2 "" H 10500 4575 50  0001 C CNN
F 3 "" H 10500 4575 50  0001 C CNN
	1    10500 4575
	1    0    0    -1  
$EndComp
$Comp
L my_power:VCC #PWR011
U 1 1 60959D34
P 10175 750
F 0 "#PWR011" H 10175 600 50  0001 C CNN
F 1 "VCC" H 10190 923 50  0000 C CNN
F 2 "" H 10175 750 50  0001 C CNN
F 3 "" H 10175 750 50  0001 C CNN
	1    10175 750 
	1    0    0    -1  
$EndComp
$Comp
L my_power:VCC #PWR013
U 1 1 6095A2D2
P 10500 2025
F 0 "#PWR013" H 10500 1875 50  0001 C CNN
F 1 "VCC" H 10515 2198 50  0000 C CNN
F 2 "" H 10500 2025 50  0001 C CNN
F 3 "" H 10500 2025 50  0001 C CNN
	1    10500 2025
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 2475 10500 2475
Wire Wire Line
	10500 2375 10500 2475
Connection ~ 10500 2475
Wire Wire Line
	10500 2475 10575 2475
Wire Wire Line
	9925 1200 10175 1200
Wire Wire Line
	10175 1100 10175 1200
Connection ~ 10175 1200
Wire Wire Line
	10175 1200 10575 1200
Wire Wire Line
	10250 5025 10500 5025
Wire Wire Line
	10500 4925 10500 5025
Connection ~ 10500 5025
Wire Wire Line
	10500 5025 10625 5025
Wire Wire Line
	9925 3725 10350 3725
Wire Wire Line
	10350 3600 10350 3725
Connection ~ 10350 3725
Wire Wire Line
	10350 3725 10575 3725
$Comp
L Device:LED D2
U 1 1 60BA2C2B
P 6250 3850
F 0 "D2" H 6243 4067 50  0000 C CNN
F 1 "LED RED" H 6243 3976 50  0000 C CNN
F 2 "" H 6250 3850 50  0001 C CNN
F 3 "~" H 6250 3850 50  0001 C CNN
	1    6250 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 60BA97C6
P 6250 4225
F 0 "D3" H 6243 4442 50  0000 C CNN
F 1 "LED GREEN" H 6243 4351 50  0000 C CNN
F 2 "" H 6250 4225 50  0001 C CNN
F 3 "~" H 6250 4225 50  0001 C CNN
	1    6250 4225
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D4
U 1 1 60BAA577
P 6250 4575
F 0 "D4" H 6243 4792 50  0000 C CNN
F 1 "LED BLUE" H 6243 4701 50  0000 C CNN
F 2 "" H 6250 4575 50  0001 C CNN
F 3 "~" H 6250 4575 50  0001 C CNN
	1    6250 4575
	1    0    0    -1  
$EndComp
$Comp
L my_power:GND #PWR09
U 1 1 60BAC1FF
P 5575 4675
F 0 "#PWR09" H 5575 4425 50  0001 C CNN
F 1 "GND" H 5580 4502 50  0000 C CNN
F 2 "" H 5575 4675 50  0001 C CNN
F 3 "" H 5575 4675 50  0001 C CNN
	1    5575 4675
	1    0    0    -1  
$EndComp
$Comp
L Device:R R27
U 1 1 60BACC6F
P 5775 3850
F 0 "R27" V 5850 3850 50  0000 C CNN
F 1 "100R" V 5775 3850 50  0000 C CNN
F 2 "" V 5705 3850 50  0001 C CNN
F 3 "~" H 5775 3850 50  0001 C CNN
	1    5775 3850
	0    1    1    0   
$EndComp
$Comp
L Device:R R28
U 1 1 60BAD52B
P 5775 4225
F 0 "R28" V 5850 4225 50  0000 C CNN
F 1 "100R" V 5775 4225 50  0000 C CNN
F 2 "" V 5705 4225 50  0001 C CNN
F 3 "~" H 5775 4225 50  0001 C CNN
	1    5775 4225
	0    1    1    0   
$EndComp
$Comp
L Device:R R29
U 1 1 60BADA7B
P 5775 4575
F 0 "R29" V 5850 4575 50  0000 C CNN
F 1 "100R" V 5775 4575 50  0000 C CNN
F 2 "" V 5705 4575 50  0001 C CNN
F 3 "~" H 5775 4575 50  0001 C CNN
	1    5775 4575
	0    1    1    0   
$EndComp
Wire Wire Line
	5575 4675 5575 4575
Wire Wire Line
	5575 3850 5625 3850
Wire Wire Line
	5625 4225 5575 4225
Connection ~ 5575 4225
Wire Wire Line
	5575 4225 5575 3850
Wire Wire Line
	5625 4575 5575 4575
Connection ~ 5575 4575
Wire Wire Line
	5575 4575 5575 4225
Wire Wire Line
	5925 4575 6100 4575
Wire Wire Line
	5925 4225 6100 4225
Wire Wire Line
	5925 3850 6100 3850
Wire Wire Line
	6400 3850 6575 3850
Wire Wire Line
	6400 4225 6575 4225
Wire Wire Line
	6400 4575 6575 4575
Text GLabel 6575 3850 2    50   Input ~ 0
LOCKED
Text GLabel 6575 4225 2    50   Input ~ 0
UNLOCKED
Text GLabel 6575 4575 2    50   Input ~ 0
CHECKING
$Comp
L Switch:SW_MEC_5G SW13
U 1 1 6088D737
P 2875 4650
F 0 "SW13" H 2875 4935 50  0000 C CNN
F 1 "SW_MEC_5G" H 2875 4844 50  0000 C CNN
F 2 "" H 2875 4850 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 2875 4850 50  0001 C CNN
	1    2875 4650
	1    0    0    -1  
$EndComp
$Comp
L my_power:VCC #PWR015
U 1 1 60891AF7
P 3275 4650
F 0 "#PWR015" H 3275 4500 50  0001 C CNN
F 1 "VCC" H 3290 4823 50  0000 C CNN
F 2 "" H 3275 4650 50  0001 C CNN
F 3 "" H 3275 4650 50  0001 C CNN
	1    3275 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	3275 4650 3075 4650
Wire Wire Line
	2675 4650 2575 4650
Text GLabel 2400 4650 0    50   Input ~ 0
RST
$Comp
L Device:R R30
U 1 1 608FFA4E
P 2575 4875
F 0 "R30" V 2368 4875 50  0000 C CNN
F 1 "10k" V 2459 4875 50  0000 C CNN
F 2 "" V 2505 4875 50  0001 C CNN
F 3 "~" H 2575 4875 50  0001 C CNN
	1    2575 4875
	1    0    0    -1  
$EndComp
$Comp
L my_power:GND #PWR010
U 1 1 60901309
P 2575 5125
F 0 "#PWR010" H 2575 4875 50  0001 C CNN
F 1 "GND" H 2650 4975 50  0000 R CNN
F 2 "" H 2575 5125 50  0001 C CNN
F 3 "" H 2575 5125 50  0001 C CNN
	1    2575 5125
	1    0    0    -1  
$EndComp
Wire Wire Line
	2575 5125 2575 5025
Wire Wire Line
	2575 4725 2575 4650
Connection ~ 2575 4650
Wire Wire Line
	2400 4650 2575 4650
Text GLabel 1825 7225 2    50   Input ~ 0
RST
Text GLabel 1825 7025 2    50   Input ~ 0
LOCKED
Text GLabel 1825 6925 2    50   Input ~ 0
UNLOCKED
Text GLabel 1825 7125 2    50   Input ~ 0
CHECKING
Wire Wire Line
	1700 7225 1825 7225
Wire Wire Line
	1700 7125 1825 7125
Wire Wire Line
	1700 7025 1825 7025
Wire Wire Line
	1700 6925 1825 6925
$Comp
L Connector:Screw_Terminal_01x01 J6
U 1 1 608D9259
P 5525 2950
F 0 "J6" V 5397 3030 50  0000 L CNN
F 1 "Screw_Terminal_01x01" V 5650 2375 50  0000 L CNN
F 2 "" H 5525 2950 50  0001 C CNN
F 3 "~" H 5525 2950 50  0001 C CNN
	1    5525 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 2075 5525 2075
$Comp
L my_power:VCC #PWR02
U 1 1 60926CF9
P 5925 850
F 0 "#PWR02" H 5925 700 50  0001 C CNN
F 1 "VCC" H 5940 1023 50  0000 C CNN
F 2 "" H 5925 850 50  0001 C CNN
F 3 "" H 5925 850 50  0001 C CNN
	1    5925 850 
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x01 J4
U 1 1 609754A9
P 4925 1050
F 0 "J4" V 4797 1130 50  0000 L CNN
F 1 "Screw_Terminal_01x01" H 4500 900 50  0000 L CNN
F 2 "" H 4925 1050 50  0001 C CNN
F 3 "~" H 4925 1050 50  0001 C CNN
	1    4925 1050
	-1   0    0    1   
$EndComp
Wire Wire Line
	5525 1050 5525 1225
Wire Wire Line
	5125 1050 5525 1050
Wire Wire Line
	5525 2075 5525 2750
$EndSCHEMATC
