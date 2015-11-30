EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:lbhb
LIBS:speaker drivers-cache
EELAYER 24 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Dual Speaker Driver v2 with highpass filter"
Date ""
Rev "1"
Comp "LBHB"
Comment1 "This is licensed under GPLv3"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 600  7600 0    60   ~ 0
Design notes:\n* NI M-series boards have an analog range of -10 to 10V, so we only need \nunity gain.  BUF634 is used to provide high-current, OPA2134 is used to \nstablize voltage output of BUF634.\n* Bypass capacitors are speced as ceramic (C), metal film electrolytic (E) or tantalum (T)\n* BUF634 should have wide-bandwidth mode enabled by shorting pin 1 to V-\nto ensure stable operation when driving a capacitive load (i.e. a speaker).\n* The second BUF634 is optional and can be used when up to 500 mA of current\nis needed.\n* Adjust the values of RL2 and RR2 to control op-amp gain.
$Comp
L +12V #PWR01
U 1 1 541735AC
P 1340 3630
F 0 "#PWR01" H 1340 3580 20  0001 C CNN
F 1 "+12V" H 1340 3730 30  0000 C CNN
F 2 "" H 1340 3630 60  0000 C CNN
F 3 "" H 1340 3630 60  0000 C CNN
	1    1340 3630
	1    0    0    -1  
$EndComp
$Comp
L -12V #PWR18
U 1 1 54173650
P 815 3620
F 0 "#PWR18" H 815 3750 20  0001 C CNN
F 1 "-12V" H 815 3720 30  0000 C CNN
F 2 "" H 815 3620 60  0000 C CNN
F 3 "" H 815 3620 60  0000 C CNN
	1    815  3620
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR02
U 1 1 54176FFA
P 815 4670
F 0 "#PWR02" H 815 4670 40  0001 C CNN
F 1 "AGND" H 815 4600 50  0000 C CNN
F 2 "" H 815 4670 60  0000 C CNN
F 3 "" H 815 4670 60  0000 C CNN
	1    815  4670
	1    0    0    -1  
$EndComp
$Comp
L OPA2134 OPA1
U 1 1 54178CE2
P 4785 5040
F 0 "OPA1" H 4935 5190 60  0000 C CNN
F 1 "OPA2134" H 4985 4840 60  0000 C CNN
F 2 "LBHB:DIP-8" H 4785 5040 60  0001 C CNN
F 3 "" H 4785 5040 60  0000 C CNN
	1    4785 5040
	1    0    0    -1  
$EndComp
$Comp
L R RL1
U 1 1 54178CF0
P 3760 665
F 0 "RL1" V 3840 665 40  0000 C CNN
F 1 "100k" V 3767 666 40  0000 C CNN
F 2 "LBHB:resistor-6x2.3mm" V 3690 665 30  0001 C CNN
F 3 "" H 3760 665 30  0000 C CNN
	1    3760 665 
	0    1    1    0   
$EndComp
$Comp
L R RL3
U 1 1 54178CF7
P 4110 2540
F 0 "RL3" V 4190 2540 40  0000 C CNN
F 1 "100k" V 4117 2541 40  0000 C CNN
F 2 "LBHB:resistor-6x2.3mm" V 4040 2540 30  0001 C CNN
F 3 "" H 4110 2540 30  0000 C CNN
	1    4110 2540
	-1   0    0    1   
$EndComp
$Comp
L C CLin1
U 1 1 54178CFE
P 3755 2140
F 0 "CLin1" H 3755 2240 40  0000 L CNN
F 1 "1uF" H 3761 2055 40  0000 L CNN
F 2 "LBHB:capacitor-D_5mm-L_2mm" H 3793 1990 30  0001 C CNN
F 3 "" H 3755 2140 60  0000 C CNN
	1    3755 2140
	0    1    1    0   
$EndComp
$Comp
L AGND #PWR03
U 1 1 54178D05
P 2240 665
F 0 "#PWR03" H 2240 665 40  0001 C CNN
F 1 "AGND" H 2240 595 50  0000 C CNN
F 2 "" H 2240 665 60  0000 C CNN
F 3 "" H 2240 665 60  0000 C CNN
	1    2240 665 
	0    1    1    0   
$EndComp
$Comp
L AGND #PWR04
U 1 1 54178D0B
P 4110 3040
F 0 "#PWR04" H 4110 3040 40  0001 C CNN
F 1 "AGND" H 4110 2970 50  0000 C CNN
F 2 "" H 4110 3040 60  0000 C CNN
F 3 "" H 4110 3040 60  0000 C CNN
	1    4110 3040
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 54178D12
P 4685 2740
F 0 "C2" H 4685 2840 40  0000 L CNN
F 1 "0.1uFC" H 4691 2655 40  0000 L CNN
F 2 "LBHB:capacitor-2.5x5mm-L_2.5mm" H 4723 2590 30  0001 C CNN
F 3 "" H 4685 2740 60  0000 C CNN
	1    4685 2740
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 54178D20
P 4685 1340
F 0 "C1" H 4685 1440 40  0000 L CNN
F 1 "0.1uFC" H 4691 1255 40  0000 L CNN
F 2 "LBHB:capacitor-2.5x5mm-L_2.5mm" H 4723 1190 30  0001 C CNN
F 3 "" H 4685 1340 60  0000 C CNN
	1    4685 1340
	1    0    0    -1  
$EndComp
$Comp
L OPA2134 OPA1
U 2 1 541856BE
P 4785 2040
F 0 "OPA1" H 4935 2190 60  0000 C CNN
F 1 "OPA2134" H 4985 1840 60  0000 C CNN
F 2 "LBHB:DIP-8" H 4785 2040 60  0001 C CNN
F 3 "" H 4785 2040 60  0000 C CNN
	2    4785 2040
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR05
U 1 1 5418FD3F
P 1340 4680
F 0 "#PWR05" H 1340 4680 40  0001 C CNN
F 1 "AGND" H 1340 4610 50  0000 C CNN
F 2 "" H 1340 4680 60  0000 C CNN
F 3 "" H 1340 4680 60  0000 C CNN
	1    1340 4680
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR06
U 1 1 54194683
P 4685 965
F 0 "#PWR06" H 4685 965 40  0001 C CNN
F 1 "AGND" H 4685 895 50  0000 C CNN
F 2 "" H 4685 965 60  0000 C CNN
F 3 "" H 4685 965 60  0000 C CNN
	1    4685 965 
	-1   0    0    1   
$EndComp
$Comp
L AGND #PWR07
U 1 1 54194831
P 4685 3115
F 0 "#PWR07" H 4685 3115 40  0001 C CNN
F 1 "AGND" H 4685 3045 50  0000 C CNN
F 2 "" H 4685 3115 60  0000 C CNN
F 3 "" H 4685 3115 60  0000 C CNN
	1    4685 3115
	-1   0    0    -1  
$EndComp
$Comp
L -12V #PWR11
U 1 1 54194843
P 4585 2490
F 0 "#PWR11" H 4585 2620 20  0001 C CNN
F 1 "-12V" H 4585 2590 30  0000 C CNN
F 2 "" H 4585 2490 60  0000 C CNN
F 3 "" H 4585 2490 60  0000 C CNN
	1    4585 2490
	0    -1   -1   0   
$EndComp
$Comp
L BUF634 BUFR1
U 1 1 54194E41
P 5935 5040
F 0 "BUFR1" H 6085 5190 60  0000 C CNN
F 1 "BUF634" H 6135 4840 60  0000 C CNN
F 2 "LBHB:BUF634" H 5935 5040 60  0001 C CNN
F 3 "" H 5935 5040 60  0000 C CNN
	1    5935 5040
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR08
U 1 1 54194E48
P 6635 4590
F 0 "#PWR08" H 6635 4590 40  0001 C CNN
F 1 "AGND" H 6635 4520 50  0000 C CNN
F 2 "" H 6635 4590 60  0000 C CNN
F 3 "" H 6635 4590 60  0000 C CNN
	1    6635 4590
	0    -1   -1   0   
$EndComp
$Comp
L +12V #PWR09
U 1 1 54194E4E
P 5835 4490
F 0 "#PWR09" H 5835 4440 20  0001 C CNN
F 1 "+12V" H 5835 4590 30  0000 C CNN
F 2 "" H 5835 4490 60  0000 C CNN
F 3 "" H 5835 4490 60  0000 C CNN
	1    5835 4490
	1    0    0    -1  
$EndComp
$Comp
L CP2 CR1
U 1 1 54194E54
P 6335 4590
F 0 "CR1" H 6335 4690 40  0000 L CNN
F 1 "10uFT" H 6341 4505 40  0000 L CNN
F 2 "LBHB:capacitor-D_4mm-L_2.4mm" H 6373 4440 30  0001 C CNN
F 3 "" H 6335 4590 60  0000 C CNN
	1    6335 4590
	0    -1   -1   0   
$EndComp
$Comp
L -12V #PWR25
U 1 1 54194E72
P 5735 5490
F 0 "#PWR25" H 5735 5620 20  0001 C CNN
F 1 "-12V" H 5735 5590 30  0000 C CNN
F 2 "" H 5735 5490 60  0000 C CNN
F 3 "" H 5735 5490 60  0000 C CNN
	1    5735 5490
	0    -1   -1   0   
$EndComp
$Comp
L C CP3
U 1 1 54195C28
P 1590 4105
F 0 "CP3" H 1590 4205 40  0000 L CNN
F 1 "0.1uFC" H 1596 4020 40  0000 L CNN
F 2 "LBHB:capacitor-2.5x5mm-L_2.5mm" H 1628 3955 30  0001 C CNN
F 3 "" H 1590 4105 60  0000 C CNN
	1    1590 4105
	1    0    0    -1  
$EndComp
$Comp
L CP2 CP2
U 1 1 54195C95
P 1340 4105
F 0 "CP2" H 1340 4205 40  0000 L CNN
F 1 "10uFE" H 1346 4020 40  0000 L CNN
F 2 "LBHB:capacitor-D_4mm-L_2.4mm" H 1378 3955 30  0001 C CNN
F 3 "" H 1340 4105 60  0000 C CNN
	1    1340 4105
	1    0    0    -1  
$EndComp
$Comp
L C CN3
U 1 1 54195F85
P 1040 4095
F 0 "CN3" H 1040 4195 40  0000 L CNN
F 1 "0.1uFC" H 1046 4010 40  0000 L CNN
F 2 "LBHB:capacitor-2.5x5mm-L_2.5mm" H 1078 3945 30  0001 C CNN
F 3 "" H 1040 4095 60  0000 C CNN
	1    1040 4095
	-1   0    0    1   
$EndComp
$Comp
L CP2 CN2
U 1 1 54195FF4
P 815 4095
F 0 "CN2" H 815 4195 40  0000 L CNN
F 1 "10uFE" H 821 4010 40  0000 L CNN
F 2 "LBHB:capacitor-D_4mm-L_2.4mm" H 853 3945 30  0001 C CNN
F 3 "" H 815 4095 60  0000 C CNN
	1    815  4095
	-1   0    0    1   
$EndComp
$Comp
L AGND #PWR010
U 1 1 5419DD95
P 695 1220
F 0 "#PWR010" H 695 1220 40  0001 C CNN
F 1 "AGND" H 695 1150 50  0000 C CNN
F 2 "" H 695 1220 60  0000 C CNN
F 3 "" H 695 1220 60  0000 C CNN
	1    695  1220
	0    1    1    0   
$EndComp
$Comp
L R RR2
U 1 1 5417B414
P 5410 3665
F 0 "RR2" V 5490 3665 40  0000 C CNN
F 1 "5k" V 5417 3666 40  0000 C CNN
F 2 "LBHB:resistor-4x2mm" V 5340 3665 30  0001 C CNN
F 3 "" H 5410 3665 30  0000 C CNN
	1    5410 3665
	0    1    1    0   
$EndComp
$Comp
L R RL2
U 1 1 54178CE9
P 5410 665
F 0 "RL2" V 5490 665 40  0000 C CNN
F 1 "5k" V 5417 666 40  0000 C CNN
F 2 "LBHB:resistor-4x2mm" V 5340 665 30  0001 C CNN
F 3 "" H 5410 665 30  0000 C CNN
	1    5410 665 
	0    1    1    0   
$EndComp
$Comp
L BUF634 BUFR2
U 1 1 54ADE7DF
P 5935 5940
F 0 "BUFR2" H 6085 6090 60  0000 C CNN
F 1 "BUF634" H 6120 6185 60  0000 C CNN
F 2 "LBHB:BUF634" H 5935 5940 60  0001 C CNN
F 3 "" H 5935 5940 60  0000 C CNN
	1    5935 5940
	1    0    0    1   
$EndComp
$Comp
L AGND #PWR011
U 1 1 54AE18FA
P 8360 5940
F 0 "#PWR011" H 8360 5940 40  0001 C CNN
F 1 "AGND" H 8360 5870 50  0000 C CNN
F 2 "" H 8360 5940 60  0000 C CNN
F 3 "" H 8360 5940 60  0000 C CNN
	1    8360 5940
	1    0    0    -1  
$EndComp
$Comp
L R RR4
U 1 1 54AE1906
P 7260 5040
F 0 "RR4" V 7340 5040 40  0000 C CNN
F 1 "22" V 7267 5041 40  0000 C CNN
F 2 "LBHB:resistor-13x4mm" V 7190 5040 30  0001 C CNN
F 3 "" H 7260 5040 30  0000 C CNN
	1    7260 5040
	0    -1   -1   0   
$EndComp
$Comp
L C CR3
U 1 1 54AE190C
P 7810 5040
F 0 "CR3" H 7810 5140 40  0000 L CNN
F 1 "2uF" H 7816 4955 40  0000 L CNN
F 2 "LBHB:capacitor-D_5mm-L_2mm" H 7848 4890 30  0001 C CNN
F 3 "" H 7810 5040 60  0000 C CNN
	1    7810 5040
	0    -1   -1   0   
$EndComp
$Comp
L INDUCTOR LR1
U 1 1 54AE1912
P 8110 5415
F 0 "LR1" V 8060 5415 40  0000 C CNN
F 1 "100uH" V 8210 5415 40  0000 C CNN
F 2 "LBHB:inductor-12mm" H 8110 5415 60  0001 C CNN
F 3 "" H 8110 5415 60  0000 C CNN
	1    8110 5415
	-1   0    0    1   
$EndComp
$Comp
L CP2 CR2
U 1 1 54AEF5C7
P 6310 5490
F 0 "CR2" H 6310 5590 40  0000 L CNN
F 1 "10uFT" H 6316 5405 40  0000 L CNN
F 2 "LBHB:capacitor-D_4mm-L_2.4mm" H 6348 5340 30  0001 C CNN
F 3 "" H 6310 5490 60  0000 C CNN
	1    6310 5490
	0    1    -1   0   
$EndComp
$Comp
L AGND #PWR012
U 1 1 54AEFB68
P 6635 5490
F 0 "#PWR012" H 6635 5490 40  0001 C CNN
F 1 "AGND" H 6635 5420 50  0000 C CNN
F 2 "" H 6635 5490 60  0000 C CNN
F 3 "" H 6635 5490 60  0000 C CNN
	1    6635 5490
	0    -1   -1   0   
$EndComp
$Comp
L +12V #PWR013
U 1 1 54AF0610
P 5710 6390
F 0 "#PWR013" H 5710 6340 20  0001 C CNN
F 1 "+12V" H 5710 6490 30  0000 C CNN
F 2 "" H 5710 6390 60  0000 C CNN
F 3 "" H 5710 6390 60  0000 C CNN
	1    5710 6390
	0    -1   -1   0   
$EndComp
$Comp
L BUF634 BUFL1
U 1 1 54AF3A82
P 5935 2040
F 0 "BUFL1" H 6085 2190 60  0000 C CNN
F 1 "BUF634" H 6135 1840 60  0000 C CNN
F 2 "LBHB:BUF634" H 5935 2040 60  0001 C CNN
F 3 "" H 5935 2040 60  0000 C CNN
	1    5935 2040
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR014
U 1 1 54AF3A88
P 6635 1590
F 0 "#PWR014" H 6635 1590 40  0001 C CNN
F 1 "AGND" H 6635 1520 50  0000 C CNN
F 2 "" H 6635 1590 60  0000 C CNN
F 3 "" H 6635 1590 60  0000 C CNN
	1    6635 1590
	0    -1   -1   0   
$EndComp
$Comp
L CP2 CL1
U 1 1 54AF3A94
P 6335 1590
F 0 "CL1" H 6335 1690 40  0000 L CNN
F 1 "10uFT" H 6341 1505 40  0000 L CNN
F 2 "LBHB:capacitor-D_4mm-L_2.4mm" H 6373 1440 30  0001 C CNN
F 3 "" H 6335 1590 60  0000 C CNN
	1    6335 1590
	0    -1   -1   0   
$EndComp
$Comp
L -12V #PWR12
U 1 1 54AF3A9A
P 5735 2490
F 0 "#PWR12" H 5735 2620 20  0001 C CNN
F 1 "-12V" H 5735 2590 30  0000 C CNN
F 2 "" H 5735 2490 60  0000 C CNN
F 3 "" H 5735 2490 60  0000 C CNN
	1    5735 2490
	0    -1   -1   0   
$EndComp
$Comp
L BUF634 BUFL2
U 1 1 54AF3AA0
P 5935 2940
F 0 "BUFL2" H 6085 3090 60  0000 C CNN
F 1 "BUF634" H 6125 3200 60  0000 C CNN
F 2 "LBHB:BUF634" H 5935 2940 60  0001 C CNN
F 3 "" H 5935 2940 60  0000 C CNN
	1    5935 2940
	1    0    0    1   
$EndComp
$Comp
L AGND #PWR015
U 1 1 54AF3AA6
P 8360 2940
F 0 "#PWR015" H 8360 2940 40  0001 C CNN
F 1 "AGND" H 8360 2870 50  0000 C CNN
F 2 "" H 8360 2940 60  0000 C CNN
F 3 "" H 8360 2940 60  0000 C CNN
	1    8360 2940
	1    0    0    -1  
$EndComp
$Comp
L R RL4
U 1 1 54AF3AB2
P 7260 2040
F 0 "RL4" V 7340 2040 40  0000 C CNN
F 1 "22" V 7267 2041 40  0000 C CNN
F 2 "LBHB:resistor-13x4mm" V 7190 2040 30  0001 C CNN
F 3 "" H 7260 2040 30  0000 C CNN
	1    7260 2040
	0    -1   -1   0   
$EndComp
$Comp
L C CL3
U 1 1 54AF3AB8
P 7810 2040
F 0 "CL3" H 7810 2140 40  0000 L CNN
F 1 "2uF" H 7816 1955 40  0000 L CNN
F 2 "LBHB:capacitor-D_5mm-L_2mm" H 7848 1890 30  0001 C CNN
F 3 "" H 7810 2040 60  0000 C CNN
	1    7810 2040
	0    -1   -1   0   
$EndComp
$Comp
L INDUCTOR LL1
U 1 1 54AF3ABE
P 8110 2415
F 0 "LL1" V 8060 2415 40  0000 C CNN
F 1 "100uH" V 8210 2415 40  0000 C CNN
F 2 "LBHB:inductor-12mm" H 8110 2415 60  0001 C CNN
F 3 "" H 8110 2415 60  0000 C CNN
	1    8110 2415
	-1   0    0    1   
$EndComp
$Comp
L CP2 CL2
U 1 1 54AF3AC4
P 6310 2490
F 0 "CL2" H 6310 2590 40  0000 L CNN
F 1 "10uFT" H 6316 2405 40  0000 L CNN
F 2 "LBHB:capacitor-D_4mm-L_2.4mm" H 6348 2340 30  0001 C CNN
F 3 "" H 6310 2490 60  0000 C CNN
	1    6310 2490
	0    1    -1   0   
$EndComp
$Comp
L AGND #PWR016
U 1 1 54AF3ACA
P 6635 2490
F 0 "#PWR016" H 6635 2490 40  0001 C CNN
F 1 "AGND" H 6635 2420 50  0000 C CNN
F 2 "" H 6635 2490 60  0000 C CNN
F 3 "" H 6635 2490 60  0000 C CNN
	1    6635 2490
	0    -1   -1   0   
$EndComp
$Comp
L +12V #PWR017
U 1 1 54AF3AD0
P 5710 3390
F 0 "#PWR017" H 5710 3340 20  0001 C CNN
F 1 "+12V" H 5710 3490 30  0000 C CNN
F 2 "" H 5710 3390 60  0000 C CNN
F 3 "" H 5710 3390 60  0000 C CNN
	1    5710 3390
	0    -1   -1   0   
$EndComp
$Comp
L +12V #PWR018
U 1 1 54AF49DD
P 5835 1490
F 0 "#PWR018" H 5835 1440 20  0001 C CNN
F 1 "+12V" H 5835 1590 30  0000 C CNN
F 2 "" H 5835 1490 60  0000 C CNN
F 3 "" H 5835 1490 60  0000 C CNN
	1    5835 1490
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR019
U 1 1 541A1342
P 925 2425
F 0 "#PWR019" H 925 2425 40  0001 C CNN
F 1 "AGND" H 925 2355 50  0000 C CNN
F 2 "" H 925 2425 60  0000 C CNN
F 3 "" H 925 2425 60  0000 C CNN
	1    925  2425
	-1   0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG020
U 1 1 541A1413
P 925 2195
F 0 "#FLG020" H 925 2290 30  0001 C CNN
F 1 "PWR_FLAG" H 925 2375 30  0000 C CNN
F 2 "" H 925 2195 60  0000 C CNN
F 3 "" H 925 2195 60  0000 C CNN
	1    925  2195
	1    0    0    -1  
$EndComp
$Comp
L C CR6
U 1 1 54E66AF5
P 6335 4355
F 0 "CR6" H 6335 4455 40  0000 L CNN
F 1 "0.1uF" H 6341 4270 40  0000 L CNN
F 2 "LBHB:capacitor-2.5x5mm-L_2.5mm" H 6373 4205 30  0001 C CNN
F 3 "" H 6335 4355 60  0000 C CNN
	1    6335 4355
	0    -1   -1   0   
$EndComp
$Comp
L C CR5
U 1 1 54E66E7E
P 6305 5715
F 0 "CR5" H 6305 5815 40  0000 L CNN
F 1 "0.1uF" H 6311 5630 40  0000 L CNN
F 2 "LBHB:capacitor-2.5x5mm-L_2.5mm" H 6343 5565 30  0001 C CNN
F 3 "" H 6305 5715 60  0000 C CNN
	1    6305 5715
	0    -1   -1   0   
$EndComp
$Comp
L C CL6
U 1 1 54E68109
P 6335 1355
F 0 "CL6" H 6335 1455 40  0000 L CNN
F 1 "0.1uF" H 6341 1270 40  0000 L CNN
F 2 "LBHB:capacitor-2.5x5mm-L_2.5mm" H 6373 1205 30  0001 C CNN
F 3 "" H 6335 1355 60  0000 C CNN
	1    6335 1355
	0    -1   -1   0   
$EndComp
$Comp
L C CL5
U 1 1 54E68923
P 6310 2715
F 0 "CL5" H 6310 2815 40  0000 L CNN
F 1 "0.1uF" H 6316 2630 40  0000 L CNN
F 2 "LBHB:capacitor-2.5x5mm-L_2.5mm" H 6348 2565 30  0001 C CNN
F 3 "" H 6310 2715 60  0000 C CNN
	1    6310 2715
	0    -1   -1   0   
$EndComp
$Comp
L BNC BNCLin1
U 1 1 564F895D
P 3235 2140
F 0 "BNCLin1" H 3245 2260 50  0000 C CNN
F 1 "BNC" V 3345 2080 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x02" H 3235 2140 60  0001 C CNN
F 3 "" H 3235 2140 60  0000 C CNN
	1    3235 2140
	-1   0    0    1   
$EndComp
$Comp
L R RR3
U 1 1 564FCB3E
P 4110 5540
F 0 "RR3" V 4190 5540 40  0000 C CNN
F 1 "100k" V 4117 5541 40  0000 C CNN
F 2 "LBHB:resistor-6x2.3mm" V 4040 5540 30  0001 C CNN
F 3 "" H 4110 5540 30  0000 C CNN
	1    4110 5540
	-1   0    0    1   
$EndComp
$Comp
L C CRin1
U 1 1 564FCB44
P 3755 5140
F 0 "CRin1" H 3755 5240 40  0000 L CNN
F 1 "1uF" H 3761 5055 40  0000 L CNN
F 2 "LBHB:capacitor-D_5mm-L_2mm" H 3793 4990 30  0001 C CNN
F 3 "" H 3755 5140 60  0000 C CNN
	1    3755 5140
	0    1    1    0   
$EndComp
$Comp
L AGND #PWR021
U 1 1 564FCB50
P 4110 6040
F 0 "#PWR021" H 4110 6040 40  0001 C CNN
F 1 "AGND" H 4110 5970 50  0000 C CNN
F 2 "" H 4110 6040 60  0000 C CNN
F 3 "" H 4110 6040 60  0000 C CNN
	1    4110 6040
	1    0    0    -1  
$EndComp
$Comp
L R RR1
U 1 1 564FCB38
P 3760 3665
F 0 "RR1" V 3840 3665 40  0000 C CNN
F 1 "100k" V 3767 3666 40  0000 C CNN
F 2 "LBHB:resistor-6x2.3mm" V 3690 3665 30  0001 C CNN
F 3 "" H 3760 3665 30  0000 C CNN
	1    3760 3665
	0    1    1    0   
$EndComp
$Comp
L -12V #PWR3
U 1 1 564FF76A
P 930 1120
F 0 "#PWR3" H 930 1250 20  0001 C CNN
F 1 "-12V" H 930 1220 30  0000 C CNN
F 2 "" H 930 1120 60  0000 C CNN
F 3 "" H 930 1120 60  0000 C CNN
	1    930  1120
	0    -1   -1   0   
$EndComp
$Comp
L +12V #PWR022
U 1 1 564FF770
P 935 1320
F 0 "#PWR022" H 935 1270 20  0001 C CNN
F 1 "+12V" H 935 1420 30  0000 C CNN
F 2 "" H 935 1320 60  0000 C CNN
F 3 "" H 935 1320 60  0000 C CNN
	1    935  1320
	0    -1   -1   0   
$EndComp
Connection ~ 5935 5490
Wire Wire Line
	1040 3795 1040 3895
Wire Wire Line
	1040 4445 1040 4295
Wire Wire Line
	5935 5440 5935 5540
Wire Wire Line
	4685 2940 4685 3115
Wire Wire Line
	4685 1140 4685 965 
Connection ~ 1340 4455
Wire Wire Line
	1590 4455 1590 4305
Connection ~ 1340 3805
Wire Wire Line
	1590 3805 1590 3905
Wire Wire Line
	5835 5440 5835 5540
Connection ~ 5835 5490
Connection ~ 5835 4590
Wire Wire Line
	4685 2440 4685 2540
Connection ~ 4685 2490
Wire Wire Line
	4685 2490 4585 2490
Wire Wire Line
	4685 1540 4685 1640
Connection ~ 815  4445
Wire Wire Line
	815  4295 815  4670
Connection ~ 815  3795
Wire Wire Line
	815  3620 815  3895
Wire Wire Line
	1340 4305 1340 4680
Connection ~ 4110 2140
Wire Wire Line
	4110 2140 4110 2290
Wire Wire Line
	4110 2790 4110 3040
Wire Wire Line
	4010 665  5160 665 
Connection ~ 8360 5815
Wire Wire Line
	8360 5815 8360 5940
Wire Wire Line
	8110 5715 8110 5815
Connection ~ 8110 5040
Wire Wire Line
	8010 5040 9335 5040
Wire Wire Line
	1340 3630 1340 3905
Wire Wire Line
	5360 5940 5435 5940
Connection ~ 5360 5040
Wire Wire Line
	5285 5040 5435 5040
Wire Wire Line
	5360 5040 5360 5940
Wire Wire Line
	5735 5490 6110 5490
Wire Wire Line
	6635 5490 6510 5490
Wire Wire Line
	6535 4590 6635 4590
Wire Wire Line
	5835 4490 5835 4640
Wire Wire Line
	5710 6390 5835 6390
Wire Wire Line
	5835 6390 5835 6340
Wire Wire Line
	6435 5040 7010 5040
Wire Wire Line
	6885 5940 6435 5940
Connection ~ 6885 5040
Wire Wire Line
	6885 3665 6885 5940
Wire Wire Line
	7510 5040 7610 5040
Wire Wire Line
	8110 5040 8110 5115
Connection ~ 5935 2490
Wire Wire Line
	5935 2440 5935 2540
Wire Wire Line
	5835 2440 5835 2540
Connection ~ 5835 2490
Connection ~ 8360 2815
Wire Wire Line
	8360 2815 8360 2940
Wire Wire Line
	8110 2715 8110 2815
Connection ~ 8110 2040
Wire Wire Line
	8010 2040 9335 2040
Wire Wire Line
	5360 2940 5435 2940
Connection ~ 5360 2040
Wire Wire Line
	5360 2040 5360 2940
Wire Wire Line
	5735 2490 6110 2490
Wire Wire Line
	6635 2490 6510 2490
Wire Wire Line
	6535 1590 6635 1590
Wire Wire Line
	5835 1490 5835 1640
Wire Wire Line
	5710 3390 5835 3390
Wire Wire Line
	5835 3390 5835 3340
Wire Wire Line
	6435 2040 7010 2040
Wire Wire Line
	6885 2940 6435 2940
Connection ~ 6885 2040
Wire Wire Line
	6885 665  6885 2940
Wire Wire Line
	7510 2040 7610 2040
Wire Wire Line
	8110 2040 8110 2115
Wire Wire Line
	5285 2040 5435 2040
Connection ~ 5835 1590
Wire Wire Line
	4685 1590 6135 1590
Connection ~ 4685 1590
Wire Wire Line
	6135 4590 5835 4590
Wire Wire Line
	5660 665  6885 665 
Wire Wire Line
	5660 3665 6885 3665
Wire Wire Line
	1340 4455 1590 4455
Wire Wire Line
	1340 3805 1590 3805
Wire Wire Line
	815  3795 1040 3795
Wire Wire Line
	815  4445 1040 4445
Wire Wire Line
	925  2195 925  2425
Wire Wire Line
	6040 5490 6040 5715
Wire Wire Line
	6040 5715 6105 5715
Connection ~ 6040 5490
Wire Wire Line
	6505 5715 6585 5715
Wire Wire Line
	6585 5715 6585 5490
Wire Wire Line
	6585 5490 6580 5490
Connection ~ 6580 5490
Wire Wire Line
	5995 4590 5995 4355
Wire Wire Line
	5995 4355 6135 4355
Connection ~ 5995 4590
Wire Wire Line
	6590 4590 6590 4355
Wire Wire Line
	6590 4355 6535 4355
Connection ~ 6590 4590
Wire Wire Line
	5995 1590 5995 1355
Wire Wire Line
	5995 1355 6135 1355
Wire Wire Line
	6590 1590 6590 1355
Wire Wire Line
	6590 1355 6535 1355
Connection ~ 5995 1590
Connection ~ 6590 1590
Wire Wire Line
	6045 2490 6045 2715
Wire Wire Line
	6045 2715 6110 2715
Wire Wire Line
	6510 2715 6590 2715
Wire Wire Line
	6590 2715 6590 2490
Connection ~ 6045 2490
Connection ~ 6590 2490
Wire Wire Line
	3955 2140 4285 2140
Wire Wire Line
	3385 2140 3555 2140
Wire Wire Line
	4110 1940 4110 665 
Connection ~ 4110 665 
Connection ~ 4110 5140
Wire Wire Line
	4110 5140 4110 5290
Wire Wire Line
	4110 5790 4110 6040
Wire Wire Line
	3955 5140 4285 5140
Wire Wire Line
	4110 3665 4110 4940
Connection ~ 4110 3665
Wire Wire Line
	4010 3665 5160 3665
Wire Wire Line
	930  1120 1035 1120
Wire Wire Line
	1035 1320 935  1320
$Comp
L CONN_01X02 Lout1
U 1 1 564FA386
P 9535 2090
F 0 "Lout1" H 9535 2240 50  0000 C CNN
F 1 "CONN_01X02" V 9635 2090 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x02" H 9535 2090 60  0001 C CNN
F 3 "" H 9535 2090 60  0000 C CNN
	1    9535 2090
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 Rout1
U 1 1 564FA81D
P 9535 5090
F 0 "Rout1" H 9535 5240 50  0000 C CNN
F 1 "CONN_01X02" V 9635 5090 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x02" H 9535 5090 60  0001 C CNN
F 3 "" H 9535 5090 60  0000 C CNN
	1    9535 5090
	1    0    0    -1  
$EndComp
Wire Wire Line
	9335 5815 9335 5140
Wire Wire Line
	8110 5815 9335 5815
Wire Wire Line
	8110 2815 9335 2815
Wire Wire Line
	9335 2815 9335 2140
$Comp
L CONN_01X03 PWR1
U 1 1 564FBDAF
P 1235 1220
F 0 "PWR1" H 1235 1420 50  0000 C CNN
F 1 "CONN_01X03" V 1335 1220 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x03" H 1235 1220 60  0001 C CNN
F 3 "" H 1235 1220 60  0000 C CNN
	1    1235 1220
	1    0    0    -1  
$EndComp
Wire Wire Line
	1035 1220 695  1220
$Comp
L PWR_FLAG #FLG023
U 1 1 564FD177
P 1310 2190
F 0 "#FLG023" H 1310 2285 30  0001 C CNN
F 1 "PWR_FLAG" H 1310 2370 30  0000 C CNN
F 2 "" H 1310 2190 60  0000 C CNN
F 3 "" H 1310 2190 60  0000 C CNN
	1    1310 2190
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG024
U 1 1 564FD1A9
P 1640 2190
F 0 "#FLG024" H 1640 2285 30  0001 C CNN
F 1 "PWR_FLAG" H 1640 2370 30  0000 C CNN
F 2 "" H 1640 2190 60  0000 C CNN
F 3 "" H 1640 2190 60  0000 C CNN
	1    1640 2190
	1    0    0    -1  
$EndComp
$Comp
L -12V #PWR9
U 1 1 564FD1DB
P 1310 2335
F 0 "#PWR9" H 1310 2465 20  0001 C CNN
F 1 "-12V" H 1310 2435 30  0000 C CNN
F 2 "" H 1310 2335 60  0000 C CNN
F 3 "" H 1310 2335 60  0000 C CNN
	1    1310 2335
	-1   0    0    1   
$EndComp
$Comp
L +12V #PWR025
U 1 1 564FD519
P 1640 2330
F 0 "#PWR025" H 1640 2280 20  0001 C CNN
F 1 "+12V" H 1640 2430 30  0000 C CNN
F 2 "" H 1640 2330 60  0000 C CNN
F 3 "" H 1640 2330 60  0000 C CNN
	1    1640 2330
	-1   0    0    1   
$EndComp
Wire Wire Line
	1640 2330 1640 2190
Wire Wire Line
	1310 2190 1310 2335
$Comp
L JUMPER3 JL2
U 1 1 564FE346
P 3235 1560
F 0 "JL2" H 3285 1460 50  0000 L CNN
F 1 "JUMPER3" H 3235 1660 50  0000 C BNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x03" H 3235 1560 60  0001 C CNN
F 3 "" H 3235 1560 60  0000 C CNN
	1    3235 1560
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4110 1940 4285 1940
Wire Wire Line
	3235 1940 3235 1810
Wire Wire Line
	3335 1560 4110 1560
Connection ~ 4110 1560
Wire Wire Line
	3235 1310 3235 665 
Wire Wire Line
	3070 665  3510 665 
$Comp
L JUMPER JL1
U 1 1 564FF5F3
P 2770 665
F 0 "JL1" H 2770 815 50  0000 C CNN
F 1 "JUMPER" H 2770 585 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x02" H 2770 665 60  0001 C CNN
F 3 "" H 2770 665 60  0000 C CNN
	1    2770 665 
	1    0    0    -1  
$EndComp
Connection ~ 3235 665 
Wire Wire Line
	2470 665  2240 665 
$Comp
L AGND #PWR026
U 1 1 5650063E
P 2240 3665
F 0 "#PWR026" H 2240 3665 40  0001 C CNN
F 1 "AGND" H 2240 3595 50  0000 C CNN
F 2 "" H 2240 3665 60  0000 C CNN
F 3 "" H 2240 3665 60  0000 C CNN
	1    2240 3665
	0    1    1    0   
$EndComp
$Comp
L BNC BNCRin1
U 1 1 56500644
P 3235 5140
F 0 "BNCRin1" H 3245 5260 50  0000 C CNN
F 1 "BNC" V 3345 5080 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x02" H 3235 5140 60  0001 C CNN
F 3 "" H 3235 5140 60  0000 C CNN
	1    3235 5140
	-1   0    0    1   
$EndComp
Wire Wire Line
	3385 5140 3555 5140
$Comp
L JUMPER3 JR2
U 1 1 5650064B
P 3235 4560
F 0 "JR2" H 3285 4460 50  0000 L CNN
F 1 "JUMPER3" H 3235 4660 50  0000 C BNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x03" H 3235 4560 60  0001 C CNN
F 3 "" H 3235 4560 60  0000 C CNN
	1    3235 4560
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3235 4940 3235 4810
Wire Wire Line
	3335 4560 4110 4560
Wire Wire Line
	3235 4310 3235 3665
Wire Wire Line
	3070 3665 3510 3665
$Comp
L JUMPER JR1
U 1 1 56500655
P 2770 3665
F 0 "JR1" H 2770 3815 50  0000 C CNN
F 1 "JUMPER" H 2770 3585 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x02" H 2770 3665 60  0001 C CNN
F 3 "" H 2770 3665 60  0000 C CNN
	1    2770 3665
	1    0    0    -1  
$EndComp
Connection ~ 3235 3665
Wire Wire Line
	2470 3665 2240 3665
Wire Wire Line
	4110 4940 4285 4940
Connection ~ 4110 4560
$EndSCHEMATC
