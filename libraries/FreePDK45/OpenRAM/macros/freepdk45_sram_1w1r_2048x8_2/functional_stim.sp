* Functional test stimulus file for 5ns period

* TT process corner
.include "/home/jp502/Projects/system-PPA/OpenRAM/technology/freepdk45/models/tran_models/models_nom/PMOS_VTG.inc"
.include "/home/jp502/Projects/system-PPA/OpenRAM/technology/freepdk45/models/tran_models/models_nom/NMOS_VTG.inc"
.include "freepdk45_sram_1w1r_2048x8_2.sp"

* Global Power Supplies
Vvdd vdd 0 0.9

*Nodes gnd and 0 are the same global ground node in ngspice/hspice/xa. Otherwise, this source may be needed.
*Vgnd gnd 0 0.0

* Instantiation of the SRAM
Xfreepdk45_sram_1w1r_2048x8_2 din0_0 din0_1 din0_2 din0_3 din0_4 din0_5 din0_6 din0_7 a0_0 a0_1 a0_2 a0_3 a0_4 a0_5 a0_6 a0_7 a0_8 a0_9 a0_10 a1_0 a1_1 a1_2 a1_3 a1_4 a1_5 a1_6 a1_7 a1_8 a1_9 a1_10 CSB0 CSB1 clk0 clk1 WMASK0_0 WMASK0_1 WMASK0_2 WMASK0_3 dout1_0 dout1_1 dout1_2 dout1_3 dout1_4 dout1_5 dout1_6 dout1_7 vdd gnd freepdk45_sram_1w1r_2048x8_2

* SRAM output loads
CD10 dout1_0  0 0.8364f
CD11 dout1_1  0 0.8364f
CD12 dout1_2  0 0.8364f
CD13 dout1_3  0 0.8364f
CD14 dout1_4  0 0.8364f
CD15 dout1_5  0 0.8364f
CD16 dout1_6  0 0.8364f
CD17 dout1_7  0 0.8364f


* Important signals for debug
* bl:	xfreepdk45_sram_1w1r_2048x8_2.xbank0.bl_1_0
* br:	xfreepdk45_sram_1w1r_2048x8_2.xbank0.br_1_0
* s_en:	xfreepdk45_sram_1w1r_2048x8_2.s_en
* q:	xfreepdk45_sram_1w1r_2048x8_2.xbank0.xbitcell_array.xreplica_bitcell_array.xbitcell_array.xbit_r0_c0.Q
* qbar:	xfreepdk45_sram_1w1r_2048x8_2.xbank0.xbitcell_array.xreplica_bitcell_array.xbitcell_array.xbit_r0_c0.Q_bar


* Sequence of operations
*	Idle during cycle 0 (0ns - 5ns)
*	Writing 00000100  to  address 00000000111 (from port 0) during cycle 1 (5ns - 10ns)
*	Writing 11111010  to  address 00000000101 (from port 0) during cycle 2 (10ns - 15ns)
*	Writing 01110001  to  address 11111110011 (from port 0) during cycle 3 (15ns - 20ns)
*	Reading 11111010 from address 00000000101 (from port 1) during cycle 4 (20ns - 25ns)
*	Reading 00000100 from address 00000000111 (from port 1) during cycle 5 (25ns - 30ns)
*	Writing (partial) 00001010  to  address 00000000111 with mask bit 0010 (from port 0) during cycle 6 (30ns - 35ns)
*	Writing 10001011  to  address 00000001001 (from port 0) during cycle 7 (35ns - 40ns)
*	Reading 01110001 from address 11111110011 (from port 1) during cycle 8 (40ns - 45ns)
*	Writing (partial) 11110111  to  address 00000000111 with mask bit 0100 (from port 0) during cycle 9 (45ns - 50ns)
*	Writing (partial) 10110000  to  address 00000000111 with mask bit 1001 (from port 0) during cycle 10 (50ns - 55ns)
*	Reading 10111000 from address 00000000111 (from port 1) during cycle 11 (55ns - 60ns)
*	Writing (partial) 01100110  to  address 00000000111 with mask bit 0100 (from port 0) during cycle 12 (60ns - 65ns)
*	Writing (partial) 01011101  to  address 00000000111 with mask bit 0111 (from port 0) during cycle 13 (65ns - 70ns)
*	Reading 11111010 from address 00000000101 (from port 1) during cycle 13 (65ns - 70ns)
*	Reading 10001011 from address 00000001001 (from port 1) during cycle 14 (70ns - 75ns)
*	Writing 11000011  to  address 11111111101 (from port 0) during cycle 15 (75ns - 80ns)
*	Writing (partial) 11000101  to  address 00000000101 with mask bit 0100 (from port 0) during cycle 16 (80ns - 85ns)
*	Writing 11001111  to  address 00000001100 (from port 0) during cycle 17 (85ns - 90ns)
*	Reading 11001010 from address 00000000101 (from port 1) during cycle 17 (85ns - 90ns)
*	Writing (partial) 11101111  to  address 00000000101 with mask bit 0011 (from port 0) during cycle 18 (90ns - 95ns)
*	Reading 11001111 from address 00000001100 (from port 1) during cycle 18 (90ns - 95ns)
*	Writing (partial) 11011110  to  address 11111111101 with mask bit 1000 (from port 0) during cycle 19 (95ns - 100ns)
*	Writing 01010111  to  address 00000001110 (from port 0) during cycle 20 (100ns - 105ns)
*	Reading 01110001 from address 11111110011 (from port 1) during cycle 20 (100ns - 105ns)
*	Writing 11001101  to  address 11111111110 (from port 0) during cycle 21 (105ns - 110ns)
*	Writing (partial) 01000011  to  address 00000000101 with mask bit 1100 (from port 0) during cycle 22 (110ns - 115ns)
*	Writing 11001001  to  address 00000000100 (from port 0) during cycle 23 (115ns - 120ns)
*	Reading 11001101 from address 11111111110 (from port 1) during cycle 23 (115ns - 120ns)
*	Writing (partial) 00001110  to  address 00000000100 with mask bit 1110 (from port 0) during cycle 24 (120ns - 125ns)
*	Writing 10100110  to  address 11111111000 (from port 0) during cycle 25 (125ns - 130ns)
*	Reading 10001011 from address 00000001001 (from port 1) during cycle 25 (125ns - 130ns)
*	Writing (partial) 10111101  to  address 11111111101 with mask bit 0111 (from port 0) during cycle 26 (130ns - 135ns)
*	Reading 01001111 from address 00000000101 (from port 1) during cycle 26 (130ns - 135ns)
*	Writing (partial) 11000010  to  address 00000000111 with mask bit 0110 (from port 0) during cycle 27 (135ns - 140ns)
*	Writing (partial) 10100000  to  address 00000000100 with mask bit 1100 (from port 0) during cycle 28 (140ns - 145ns)
*	Writing 01011101  to  address 11111110000 (from port 0) during cycle 29 (145ns - 150ns)
*	Writing (partial) 10011001  to  address 00000000111 with mask bit 0101 (from port 0) during cycle 30 (150ns - 155ns)
*	Writing (partial) 00111101  to  address 00000000111 with mask bit 0100 (from port 0) during cycle 32 (160ns - 165ns)
*	Reading 01110001 from address 11111110011 (from port 1) during cycle 32 (160ns - 165ns)
*	Writing 01011111  to  address 11111110001 (from port 0) during cycle 34 (170ns - 175ns)
*	Reading 11001111 from address 00000001100 (from port 1) during cycle 34 (170ns - 175ns)
*	Writing (partial) 01110100  to  address 11111111110 with mask bit 1101 (from port 0) during cycle 35 (175ns - 180ns)
*	Writing (partial) 01101110  to  address 00000000100 with mask bit 0111 (from port 0) during cycle 38 (190ns - 195ns)
*	Writing (partial) 00111010  to  address 11111110011 with mask bit 1100 (from port 0) during cycle 39 (195ns - 200ns)
*	Reading 11111101 from address 11111111101 (from port 1) during cycle 39 (195ns - 200ns)
*	Writing 00010001  to  address 00000001110 (from port 0) during cycle 40 (200ns - 205ns)
*	Writing 01101110  to  address 11111110101 (from port 0) during cycle 41 (205ns - 210ns)
*	Writing (partial) 11010111  to  address 11111110011 with mask bit 0111 (from port 0) during cycle 42 (210ns - 215ns)
*	Reading 01111100 from address 11111111110 (from port 1) during cycle 42 (210ns - 215ns)
*	Writing (partial) 00110100  to  address 00000000100 with mask bit 1011 (from port 0) during cycle 43 (215ns - 220ns)
*	Reading 01011101 from address 11111110000 (from port 1) during cycle 44 (220ns - 225ns)
*	Writing (partial) 10101010  to  address 00000001110 with mask bit 0100 (from port 0) during cycle 45 (225ns - 230ns)
*	Reading 01001111 from address 00000000101 (from port 1) during cycle 45 (225ns - 230ns)
*	Writing 01010001  to  address 00000000010 (from port 0) during cycle 46 (230ns - 235ns)
*	Reading 01101110 from address 11111110101 (from port 1) during cycle 46 (230ns - 235ns)
*	Writing 10011100  to  address 00000001011 (from port 0) during cycle 47 (235ns - 240ns)
*	Reading 11111101 from address 11111111101 (from port 1) during cycle 48 (240ns - 245ns)
*	Writing (partial) 00111001  to  address 11111110001 with mask bit 1110 (from port 0) during cycle 49 (245ns - 250ns)
*	Reading 00100001 from address 00000001110 (from port 1) during cycle 49 (245ns - 250ns)
*	Writing (partial) 11101001  to  address 00000001001 with mask bit 1110 (from port 0) during cycle 50 (250ns - 255ns)
*	Reading 10011100 from address 00000001011 (from port 1) during cycle 50 (250ns - 255ns)
*	Writing 10011110  to  address 11111110001 (from port 0) during cycle 52 (260ns - 265ns)
*	Writing 01111011  to  address 11111111100 (from port 0) during cycle 53 (265ns - 270ns)
*	Writing (partial) 00011110  to  address 00000001011 with mask bit 1000 (from port 0) during cycle 54 (270ns - 275ns)
*	Writing 00000010  to  address 11111110110 (from port 0) during cycle 55 (275ns - 280ns)
*	Writing (partial) 11001000  to  address 00000000101 with mask bit 1000 (from port 0) during cycle 56 (280ns - 285ns)
*	Reading 11001111 from address 00000001100 (from port 1) during cycle 56 (280ns - 285ns)
*	Writing 01000000  to  address 00000000010 (from port 0) during cycle 57 (285ns - 290ns)
*	Reading 01111011 from address 11111111100 (from port 1) during cycle 57 (285ns - 290ns)
*	Writing 10000011  to  address 00000000100 (from port 0) during cycle 58 (290ns - 295ns)
*	Writing 11111011  to  address 00000001100 (from port 0) during cycle 59 (295ns - 300ns)
*	Reading 00010111 from address 11111110011 (from port 1) during cycle 59 (295ns - 300ns)
*	Reading 10100110 from address 11111111000 (from port 1) during cycle 60 (300ns - 305ns)
*	Writing (partial) 00100101  to  address 11111110011 with mask bit 1011 (from port 0) during cycle 62 (310ns - 315ns)
*	Reading 01111011 from address 11111111100 (from port 1) during cycle 62 (310ns - 315ns)
*	Writing (partial) 01000000  to  address 11111111100 with mask bit 1010 (from port 0) during cycle 63 (315ns - 320ns)
*	Reading 11001111 from address 00000000101 (from port 1) during cycle 63 (315ns - 320ns)
*	Writing (partial) 01111001  to  address 11111111100 with mask bit 0010 (from port 0) during cycle 64 (320ns - 325ns)
*	Reading 01101110 from address 11111110101 (from port 1) during cycle 64 (320ns - 325ns)
*	Writing (partial) 11101000  to  address 00000001011 with mask bit 1000 (from port 0) during cycle 65 (325ns - 330ns)
*	Reading 11111011 from address 00000001100 (from port 1) during cycle 65 (325ns - 330ns)
*	Writing 01011101  to  address 11111110101 (from port 0) during cycle 66 (330ns - 335ns)
*	Reading 01011101 from address 11111110000 (from port 1) during cycle 66 (330ns - 335ns)
*	Reading 10110001 from address 00000000111 (from port 1) during cycle 67 (335ns - 340ns)
*	Writing (partial) 00100011  to  address 00000001100 with mask bit 0010 (from port 0) during cycle 68 (340ns - 345ns)
*	Reading 11101011 from address 00000001001 (from port 1) during cycle 68 (340ns - 345ns)
*	Reading 11111101 from address 11111111101 (from port 1) during cycle 69 (345ns - 350ns)
*	Reading 10110001 from address 00000000111 (from port 1) during cycle 71 (355ns - 360ns)
*	Writing 11100110  to  address 11111110001 (from port 0) during cycle 72 (360ns - 365ns)
*	Reading 01011101 from address 11111110000 (from port 1) during cycle 73 (365ns - 370ns)
*	Writing 01111000  to  address 11111111100 (from port 0) during cycle 75 (375ns - 380ns)
*	Reading 10110001 from address 00000000111 (from port 1) during cycle 75 (375ns - 380ns)
*	Writing (partial) 00100010  to  address 11111110001 with mask bit 1101 (from port 0) during cycle 77 (385ns - 390ns)
*	Writing (partial) 00110001  to  address 11111111110 with mask bit 1011 (from port 0) during cycle 78 (390ns - 395ns)
*	Writing (partial) 11101010  to  address 11111110000 with mask bit 1100 (from port 0) during cycle 80 (400ns - 405ns)
*	Writing (partial) 11110011  to  address 00000001110 with mask bit 1010 (from port 0) during cycle 81 (405ns - 410ns)
*	Reading 10000011 from address 00000000100 (from port 1) during cycle 81 (405ns - 410ns)
*	Writing 10010011  to  address 00000001000 (from port 0) during cycle 83 (415ns - 420ns)
*	Writing (partial) 10101111  to  address 00000001000 with mask bit 1110 (from port 0) during cycle 84 (420ns - 425ns)
*	Reading 01111000 from address 11111111100 (from port 1) during cycle 84 (420ns - 425ns)
*	Writing 00001110  to  address 00000001000 (from port 0) during cycle 85 (425ns - 430ns)
*	Reading 11011100 from address 00000001011 (from port 1) during cycle 85 (425ns - 430ns)
*	Writing 10111000  to  address 00000000011 (from port 0) during cycle 86 (430ns - 435ns)
*	Writing (partial) 11101100  to  address 00000001100 with mask bit 0001 (from port 0) during cycle 87 (435ns - 440ns)
*	Reading 00100110 from address 11111110001 (from port 1) during cycle 87 (435ns - 440ns)
*	Writing 00110000  to  address 11111110100 (from port 0) during cycle 89 (445ns - 450ns)
*	Writing 01111110  to  address 11111101111 (from port 0) during cycle 90 (450ns - 455ns)
*	Writing 00010011  to  address 00000001001 (from port 0) during cycle 91 (455ns - 460ns)
*	Reading 10110001 from address 00000000111 (from port 1) during cycle 91 (455ns - 460ns)
*	Writing (partial) 01100110  to  address 11111110100 with mask bit 0101 (from port 0) during cycle 92 (460ns - 465ns)
*	Reading 00010011 from address 00000001001 (from port 1) during cycle 92 (460ns - 465ns)
*	Writing 11111001  to  address 11111111010 (from port 0) during cycle 93 (465ns - 470ns)
*	Writing 00000101  to  address 00000001101 (from port 0) during cycle 94 (470ns - 475ns)
*	Reading 00001110 from address 00000001000 (from port 1) during cycle 94 (470ns - 475ns)
*	Writing (partial) 11001100  to  address 11111110000 with mask bit 1011 (from port 0) during cycle 95 (475ns - 480ns)
*	Reading 01011101 from address 11111110101 (from port 1) during cycle 95 (475ns - 480ns)
*	Writing (partial) 01001101  to  address 11111110000 with mask bit 1001 (from port 0) during cycle 96 (480ns - 485ns)
*	Writing 11100010  to  address 00000001100 (from port 0) during cycle 97 (485ns - 490ns)
*	Reading 01101101 from address 11111110000 (from port 1) during cycle 97 (485ns - 490ns)
*	Writing (partial) 01001011  to  address 11111110101 with mask bit 0100 (from port 0) during cycle 98 (490ns - 495ns)
*	Writing 11010100  to  address 11111111011 (from port 0) during cycle 99 (495ns - 500ns)
*	Writing (partial) 00000111  to  address 11111111010 with mask bit 1011 (from port 0) during cycle 100 (500ns - 505ns)
*	Writing 10011100  to  address 00000001011 (from port 0) during cycle 101 (505ns - 510ns)
*	Writing (partial) 01000111  to  address 11111110000 with mask bit 1001 (from port 0) during cycle 102 (510ns - 515ns)
*	Reading 11100010 from address 00000001100 (from port 1) during cycle 102 (510ns - 515ns)
*	Writing 00101001  to  address 00000001010 (from port 0) during cycle 103 (515ns - 520ns)
*	Reading 10011100 from address 00000001011 (from port 1) during cycle 103 (515ns - 520ns)
*	Writing 01010100  to  address 00000000000 (from port 0) during cycle 106 (530ns - 535ns)
*	Writing (partial) 00111000  to  address 11111111010 with mask bit 1110 (from port 0) during cycle 108 (540ns - 545ns)
*	Reading 10110001 from address 00000000111 (from port 1) during cycle 108 (540ns - 545ns)
*	Writing (partial) 11101000  to  address 00000000011 with mask bit 1010 (from port 0) during cycle 109 (545ns - 550ns)
*	Reading 00010011 from address 00000001001 (from port 1) during cycle 110 (550ns - 555ns)
*	Writing 00100100  to  address 11111110001 (from port 0) during cycle 111 (555ns - 560ns)
*	Reading 11010100 from address 11111111011 (from port 1) during cycle 111 (555ns - 560ns)
*	Writing 11010100  to  address 00000001010 (from port 0) during cycle 112 (560ns - 565ns)
*	Writing (partial) 01010111  to  address 00000000100 with mask bit 0001 (from port 0) during cycle 113 (565ns - 570ns)
*	Reading 01000000 from address 00000000010 (from port 1) during cycle 113 (565ns - 570ns)
*	Writing 11100001  to  address 11111111010 (from port 0) during cycle 114 (570ns - 575ns)
*	Writing (partial) 01001001  to  address 11111111000 with mask bit 0100 (from port 0) during cycle 115 (575ns - 580ns)
*	Reading 00001110 from address 00000001000 (from port 1) during cycle 115 (575ns - 580ns)
*	Reading 00010101 from address 11111110011 (from port 1) during cycle 116 (580ns - 585ns)
*	Writing 00010100  to  address 11111110111 (from port 0) during cycle 117 (585ns - 590ns)
*	Reading 00010101 from address 11111110011 (from port 1) during cycle 118 (590ns - 595ns)
*	Reading 10110001 from address 00000000111 (from port 1) during cycle 119 (595ns - 600ns)
*	Writing (partial) 11111001  to  address 11111111010 with mask bit 0011 (from port 0) during cycle 120 (600ns - 605ns)
*	Writing (partial) 00011111  to  address 11111111110 with mask bit 1000 (from port 0) during cycle 121 (605ns - 610ns)
*	Reading 10110001 from address 00000000111 (from port 1) during cycle 121 (605ns - 610ns)
*	Writing (partial) 01011100  to  address 11111111000 with mask bit 1101 (from port 0) during cycle 122 (610ns - 615ns)
*	Reading 11010100 from address 00000001010 (from port 1) during cycle 122 (610ns - 615ns)
*	Writing (partial) 11110000  to  address 00000001000 with mask bit 1010 (from port 0) during cycle 123 (615ns - 620ns)
*	Writing (partial) 10100101  to  address 11111101111 with mask bit 0001 (from port 0) during cycle 124 (620ns - 625ns)
*	Reading 01000000 from address 00000000010 (from port 1) during cycle 124 (620ns - 625ns)
*	Writing 00000110  to  address 00000000100 (from port 0) during cycle 125 (625ns - 630ns)
*	Writing 00100001  to  address 00000000110 (from port 0) during cycle 126 (630ns - 635ns)
*	Reading 00100100 from address 11111110001 (from port 1) during cycle 126 (630ns - 635ns)
*	Reading 11000010 from address 00000001000 (from port 1) during cycle 127 (635ns - 640ns)
*	Writing (partial) 01100001  to  address 00000001100 with mask bit 1001 (from port 0) during cycle 128 (640ns - 645ns)
*	Reading 10110001 from address 00000000111 (from port 1) during cycle 128 (640ns - 645ns)
*	Writing (partial) 11010111  to  address 00000000000 with mask bit 0101 (from port 0) during cycle 129 (645ns - 650ns)
*	Reading 11010100 from address 11111111011 (from port 1) during cycle 129 (645ns - 650ns)
*	Writing (partial) 01101100  to  address 11111110100 with mask bit 0011 (from port 0) during cycle 130 (650ns - 655ns)
*	Reading 00100100 from address 11111110001 (from port 1) during cycle 130 (650ns - 655ns)
*	Writing 00101000  to  address 11111110000 (from port 0) during cycle 131 (655ns - 660ns)
*	Reading 00110001 from address 11111111110 (from port 1) during cycle 131 (655ns - 660ns)
*	Reading 00010011 from address 00000001001 (from port 1) during cycle 132 (660ns - 665ns)
*	Writing 10011000  to  address 00000000011 (from port 0) during cycle 133 (665ns - 670ns)
*	Reading 01010100 from address 11111111000 (from port 1) during cycle 133 (665ns - 670ns)
*	Writing (partial) 10000110  to  address 00000001101 with mask bit 0110 (from port 0) during cycle 134 (670ns - 675ns)
*	Writing (partial) 10011001  to  address 11111110111 with mask bit 1011 (from port 0) during cycle 135 (675ns - 680ns)
*	Writing 00010101  to  address 11111111000 (from port 0) during cycle 136 (680ns - 685ns)
*	Reading 11001111 from address 00000000101 (from port 1) during cycle 137 (685ns - 690ns)
*	Reading 10011000 from address 00000000011 (from port 1) during cycle 139 (695ns - 700ns)
*	Writing (partial) 00010101  to  address 00000000100 with mask bit 1001 (from port 0) during cycle 140 (700ns - 705ns)
*	Reading 00101100 from address 11111110100 (from port 1) during cycle 142 (710ns - 715ns)
*	Writing (partial) 10011101  to  address 00000001000 with mask bit 1010 (from port 0) during cycle 143 (715ns - 720ns)
*	Writing (partial) 00011111  to  address 00000000101 with mask bit 0100 (from port 0) during cycle 144 (720ns - 725ns)
*	Writing 01001010  to  address 11111110100 (from port 0) during cycle 145 (725ns - 730ns)
*	Reading 01010111 from address 00000000000 (from port 1) during cycle 145 (725ns - 730ns)
*	Writing 00010101  to  address 00000000100 (from port 0) during cycle 147 (735ns - 740ns)
*	Writing 01001011  to  address 11111111010 (from port 0) during cycle 148 (740ns - 745ns)
*	Reading 00100001 from address 00000000110 (from port 1) during cycle 148 (740ns - 745ns)
*	Reading 11111101 from address 11111111101 (from port 1) during cycle 149 (745ns - 750ns)
*	Writing (partial) 01101110  to  address 11111110000 with mask bit 1010 (from port 0) during cycle 150 (750ns - 755ns)
*	Reading 01010111 from address 00000000000 (from port 1) during cycle 150 (750ns - 755ns)
*	Reading 00100001 from address 00000000110 (from port 1) during cycle 151 (755ns - 760ns)
*	Reading 01100001 from address 00000001100 (from port 1) during cycle 152 (760ns - 765ns)
*	Writing (partial) 01000100  to  address 11111111110 with mask bit 1010 (from port 0) during cycle 153 (765ns - 770ns)
*	Reading 11010100 from address 00000001010 (from port 1) during cycle 153 (765ns - 770ns)
*	Writing 01000000  to  address 00000000010 (from port 0) during cycle 154 (770ns - 775ns)
*	Reading 00010101 from address 00000000100 (from port 1) during cycle 154 (770ns - 775ns)
*	Writing (partial) 11000100  to  address 00000001001 with mask bit 1100 (from port 0) during cycle 156 (780ns - 785ns)
*	Reading 01000000 from address 00000000010 (from port 1) during cycle 156 (780ns - 785ns)
*	Writing (partial) 00101111  to  address 00000001101 with mask bit 1010 (from port 0) during cycle 157 (785ns - 790ns)
*	Writing (partial) 01110110  to  address 11111111000 with mask bit 1110 (from port 0) during cycle 158 (790ns - 795ns)
*	Writing 00001100  to  address 00000001100 (from port 0) during cycle 159 (795ns - 800ns)
*	Reading 10011001 from address 11111110111 (from port 1) during cycle 159 (795ns - 800ns)
*	Reading 01110101 from address 11111111110 (from port 1) during cycle 160 (800ns - 805ns)
*	Writing (partial) 11011011  to  address 00000001101 with mask bit 1110 (from port 0) during cycle 161 (805ns - 810ns)
*	Reading 01001101 from address 11111110101 (from port 1) during cycle 161 (805ns - 810ns)
*	Writing (partial) 11000001  to  address 11111110011 with mask bit 1000 (from port 0) during cycle 164 (820ns - 825ns)
*	Reading 00100001 from address 00000000110 (from port 1) during cycle 164 (820ns - 825ns)
*	Writing 11110100  to  address 11111111110 (from port 0) during cycle 165 (825ns - 830ns)
*	Writing (partial) 01001000  to  address 11111110110 with mask bit 1110 (from port 0) during cycle 166 (830ns - 835ns)
*	Writing (partial) 10000001  to  address 00000000100 with mask bit 1000 (from port 0) during cycle 167 (835ns - 840ns)
*	Reading 01000000 from address 00000000010 (from port 1) during cycle 167 (835ns - 840ns)
*	Writing 10000111  to  address 00000000011 (from port 0) during cycle 168 (840ns - 845ns)
*	Writing 00000111  to  address 00000000011 (from port 0) during cycle 169 (845ns - 850ns)
*	Writing 11011110  to  address 00000001101 (from port 0) during cycle 170 (850ns - 855ns)
*	Writing (partial) 00100010  to  address 11111111101 with mask bit 1101 (from port 0) during cycle 171 (855ns - 860ns)
*	Writing (partial) 00000110  to  address 00000001010 with mask bit 1101 (from port 0) during cycle 172 (860ns - 865ns)
*	Writing (partial) 00001001  to  address 11111110011 with mask bit 1000 (from port 0) during cycle 174 (870ns - 875ns)
*	Reading 11100001 from address 00000001110 (from port 1) during cycle 174 (870ns - 875ns)
*	Writing (partial) 01101000  to  address 11111110100 with mask bit 1011 (from port 0) during cycle 176 (880ns - 885ns)
*	Reading 11011110 from address 00000001101 (from port 1) during cycle 176 (880ns - 885ns)
*	Reading 01000000 from address 00000000010 (from port 1) during cycle 177 (885ns - 890ns)
*	Writing 11100001  to  address 00000000101 (from port 0) during cycle 178 (890ns - 895ns)
*	Writing 10100000  to  address 00000000011 (from port 0) during cycle 179 (895ns - 900ns)
*	Writing (partial) 00111100  to  address 00000001100 with mask bit 0100 (from port 0) during cycle 180 (900ns - 905ns)
*	Writing 01000101  to  address 11111110111 (from port 0) during cycle 181 (905ns - 910ns)
*	Reading 01001101 from address 11111110101 (from port 1) during cycle 181 (905ns - 910ns)
*	Writing (partial) 01101101  to  address 00000000110 with mask bit 0010 (from port 0) during cycle 182 (910ns - 915ns)
*	Reading 01111101 from address 11111101111 (from port 1) during cycle 183 (915ns - 920ns)
*	Writing (partial) 00011110  to  address 11111110001 with mask bit 0010 (from port 0) during cycle 184 (920ns - 925ns)
*	Reading 10010101 from address 00000000100 (from port 1) during cycle 185 (925ns - 930ns)
*	Writing (partial) 00010110  to  address 11111110100 with mask bit 0111 (from port 0) during cycle 186 (930ns - 935ns)
*	Reading 01111000 from address 11111111100 (from port 1) during cycle 186 (930ns - 935ns)
*	Writing (partial) 00111001  to  address 11111110111 with mask bit 1010 (from port 0) during cycle 187 (935ns - 940ns)
*	Reading 01001010 from address 11111110110 (from port 1) during cycle 187 (935ns - 940ns)
*	Writing (partial) 00011110  to  address 00000000000 with mask bit 1101 (from port 0) during cycle 188 (940ns - 945ns)
*	Writing (partial) 11100110  to  address 11111110101 with mask bit 1101 (from port 0) during cycle 189 (945ns - 950ns)
*	Writing 00111111  to  address 11111111101 (from port 0) during cycle 191 (955ns - 960ns)
*	Reading 11000011 from address 00000001001 (from port 1) during cycle 191 (955ns - 960ns)
*	Writing 10000000  to  address 00000000011 (from port 0) during cycle 192 (960ns - 965ns)
*	Reading 00000110 from address 00000001010 (from port 1) during cycle 192 (960ns - 965ns)
*	Writing (partial) 11000111  to  address 11111110100 with mask bit 0101 (from port 0) during cycle 193 (965ns - 970ns)
*	Reading 11100001 from address 00000001110 (from port 1) during cycle 194 (970ns - 975ns)
*	Writing 11101110  to  address 00000000111 (from port 0) during cycle 195 (975ns - 980ns)
*	Reading 11101110 from address 00000000111 (from port 1) during cycle 196 (980ns - 985ns)
*	Writing 00010110  to  address 11111110101 (from port 0) during cycle 198 (990ns - 995ns)
*	Writing 11011001  to  address 00000001001 (from port 0) during cycle 199 (995ns - 1000ns)
*	Reading 00010101 from address 11111110011 (from port 1) during cycle 199 (995ns - 1000ns)
*	Writing 10111100  to  address 00000000101 (from port 0) during cycle 200 (1000ns - 1005ns)
*	Writing 11000110  to  address 11111111011 (from port 0) during cycle 201 (1005ns - 1010ns)
*	Reading 10010101 from address 00000000100 (from port 1) during cycle 202 (1010ns - 1015ns)
*	Writing 10101100  to  address 00000001100 (from port 0) during cycle 203 (1015ns - 1020ns)
*	Reading 01000111 from address 11111110100 (from port 1) during cycle 204 (1020ns - 1025ns)
*	Idle during cycle 205 (1025ns - 1030ns)

* Generation of data and address signals
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 1), (20, 1), (25, 1), (30, 0), (35, 1), (40, 1), (45, 1), (50, 0), (55, 0), (60, 0), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 0), (100, 1), (105, 1), (110, 1), (115, 1), (120, 0), (125, 0), (130, 1), (135, 0), (140, 0), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 1), (205, 0), (210, 1), (215, 0), (220, 0), (225, 0), (230, 1), (235, 0), (240, 0), (245, 1), (250, 1), (255, 1), (260, 0), (265, 1), (270, 0), (275, 0), (280, 0), (285, 0), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 0), (320, 1), (325, 0), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 1), (395, 1), (400, 0), (405, 1), (410, 1), (415, 1), (420, 1), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 1), (460, 0), (465, 1), (470, 1), (475, 0), (480, 1), (485, 0), (490, 1), (495, 0), (500, 1), (505, 0), (510, 1), (515, 1), (520, 1), (525, 1), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 1), (570, 1), (575, 1), (580, 1), (585, 0), (590, 0), (595, 0), (600, 1), (605, 1), (610, 0), (615, 0), (620, 1), (625, 0), (630, 1), (635, 1), (640, 1), (645, 1), (650, 0), (655, 0), (660, 0), (665, 0), (670, 0), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 0), (730, 0), (735, 1), (740, 1), (745, 1), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 1), (790, 0), (795, 0), (800, 0), (805, 1), (810, 1), (815, 1), (820, 1), (825, 0), (830, 0), (835, 1), (840, 1), (845, 1), (850, 0), (855, 0), (860, 0), (865, 0), (870, 1), (875, 1), (880, 0), (885, 0), (890, 1), (895, 0), (900, 0), (905, 1), (910, 1), (915, 1), (920, 0), (925, 0), (930, 0), (935, 1), (940, 0), (945, 0), (950, 0), (955, 1), (960, 0), (965, 1), (970, 1), (975, 0), (980, 0), (985, 0), (990, 0), (995, 1), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_0  din0_0  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.0v 34.745n 0.0v 34.755n 0.9v 39.745n 0.9v 39.755n 0.9v 44.745n 0.9v 44.755n 0.9v 49.745n 0.9v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.9v 69.745n 0.9v 69.755n 0.9v 74.745n 0.9v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.0v 99.745n 0.0v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.9v 119.745n 0.9v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.9v 134.745n 0.9v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.9v 149.745n 0.9v 149.755n 0.9v 154.745n 0.9v 154.755n 0.9v 159.745n 0.9v 159.755n 0.9v 164.745n 0.9v 164.755n 0.9v 169.745n 0.9v 169.755n 0.9v 174.745n 0.9v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.9v 204.745n 0.9v 204.755n 0.0v 209.745n 0.0v 209.755n 0.9v 214.745n 0.9v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.9v 234.745n 0.9v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.0v 264.745n 0.0v 264.755n 0.9v 269.745n 0.9v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.0v 319.745n 0.0v 319.755n 0.9v 324.745n 0.9v 324.755n 0.0v 329.745n 0.0v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.0v 404.745n 0.0v 404.755n 0.9v 409.745n 0.9v 409.755n 0.9v 414.745n 0.9v 414.755n 0.9v 419.745n 0.9v 419.755n 0.9v 424.745n 0.9v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.9v 459.745n 0.9v 459.755n 0.0v 464.745n 0.0v 464.755n 0.9v 469.745n 0.9v 469.755n 0.9v 474.745n 0.9v 474.755n 0.0v 479.745n 0.0v 479.755n 0.9v 484.745n 0.9v 484.755n 0.0v 489.745n 0.0v 489.755n 0.9v 494.745n 0.9v 494.755n 0.0v 499.745n 0.0v 499.755n 0.9v 504.745n 0.9v 504.755n 0.0v 509.745n 0.0v 509.755n 0.9v 514.745n 0.9v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.9v 624.745n 0.9v 624.755n 0.0v 629.745n 0.0v 629.755n 0.9v 634.745n 0.9v 634.755n 0.9v 639.745n 0.9v 639.755n 0.9v 644.745n 0.9v 644.755n 0.9v 649.745n 0.9v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.9v 739.745n 0.9v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.9v 789.745n 0.9v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.9v 824.745n 0.9v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.9v 894.745n 0.9v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.9v 909.745n 0.9v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.9v 939.745n 0.9v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.9v 959.745n 0.9v 959.755n 0.0v 964.745n 0.0v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.9v 999.745n 0.9v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 0), (20, 0), (25, 0), (30, 1), (35, 1), (40, 1), (45, 1), (50, 0), (55, 0), (60, 1), (65, 0), (70, 0), (75, 1), (80, 0), (85, 1), (90, 1), (95, 1), (100, 1), (105, 0), (110, 1), (115, 0), (120, 1), (125, 1), (130, 0), (135, 1), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 1), (175, 0), (180, 0), (185, 0), (190, 1), (195, 1), (200, 0), (205, 1), (210, 1), (215, 0), (220, 0), (225, 1), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 1), (265, 1), (270, 1), (275, 1), (280, 0), (285, 0), (290, 1), (295, 1), (300, 1), (305, 1), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 0), (380, 0), (385, 1), (390, 0), (395, 0), (400, 1), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 0), (435, 0), (440, 0), (445, 0), (450, 1), (455, 1), (460, 1), (465, 0), (470, 0), (475, 0), (480, 0), (485, 1), (490, 1), (495, 0), (500, 1), (505, 0), (510, 1), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 1), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 0), (605, 1), (610, 0), (615, 0), (620, 0), (625, 1), (630, 0), (635, 0), (640, 0), (645, 1), (650, 0), (655, 0), (660, 0), (665, 0), (670, 1), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 1), (725, 1), (730, 1), (735, 0), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 0), (770, 0), (775, 0), (780, 0), (785, 1), (790, 1), (795, 0), (800, 0), (805, 1), (810, 1), (815, 1), (820, 0), (825, 0), (830, 0), (835, 0), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 1), (925, 1), (930, 1), (935, 0), (940, 1), (945, 1), (950, 1), (955, 1), (960, 0), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 1), (995, 0), (1000, 0), (1005, 1), (1010, 1), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_1  din0_1  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.9v 14.745n 0.9v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.9v 44.745n 0.9v 44.755n 0.9v 49.745n 0.9v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.9v 64.745n 0.9v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.9v 79.745n 0.9v 79.755n 0.0v 84.745n 0.0v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.0v 109.745n 0.0v 109.755n 0.9v 114.745n 0.9v 114.755n 0.0v 119.745n 0.0v 119.755n 0.9v 124.745n 0.9v 124.755n 0.9v 129.745n 0.9v 129.755n 0.0v 134.745n 0.0v 134.755n 0.9v 139.745n 0.9v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.9v 174.745n 0.9v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.9v 194.745n 0.9v 194.755n 0.9v 199.745n 0.9v 199.755n 0.0v 204.745n 0.0v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.9v 229.745n 0.9v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.9v 389.745n 0.9v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.9v 404.745n 0.9v 404.755n 0.9v 409.745n 0.9v 409.755n 0.9v 414.745n 0.9v 414.755n 0.9v 419.745n 0.9v 419.755n 0.9v 424.745n 0.9v 424.755n 0.9v 429.745n 0.9v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.9v 454.745n 0.9v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.0v 499.745n 0.0v 499.755n 0.9v 504.745n 0.9v 504.755n 0.0v 509.745n 0.0v 509.755n 0.9v 514.745n 0.9v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.9v 569.745n 0.9v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.9v 609.745n 0.9v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.9v 629.745n 0.9v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.9v 649.745n 0.9v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.9v 674.745n 0.9v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.9v 724.745n 0.9v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.0v 739.745n 0.0v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.9v 759.745n 0.9v 759.755n 0.9v 764.745n 0.9v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.9v 789.745n 0.9v 789.755n 0.9v 794.745n 0.9v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.9v 854.745n 0.9v 854.755n 0.9v 859.745n 0.9v 859.755n 0.9v 864.745n 0.9v 864.755n 0.9v 869.745n 0.9v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.0v 939.745n 0.0v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.0v 964.745n 0.0v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.9v 994.745n 0.9v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 1), (50, 0), (55, 0), (60, 1), (65, 1), (70, 1), (75, 0), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 0), (115, 0), (120, 1), (125, 1), (130, 1), (135, 0), (140, 0), (145, 1), (150, 0), (155, 0), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 0), (200, 0), (205, 1), (210, 1), (215, 1), (220, 1), (225, 0), (230, 0), (235, 1), (240, 1), (245, 0), (250, 0), (255, 0), (260, 1), (265, 0), (270, 1), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 1), (315, 0), (320, 0), (325, 0), (330, 1), (335, 1), (340, 0), (345, 0), (350, 0), (355, 0), (360, 1), (365, 1), (370, 1), (375, 0), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 1), (425, 1), (430, 0), (435, 1), (440, 1), (445, 0), (450, 1), (455, 0), (460, 1), (465, 0), (470, 1), (475, 1), (480, 1), (485, 0), (490, 0), (495, 1), (500, 1), (505, 1), (510, 1), (515, 0), (520, 0), (525, 0), (530, 1), (535, 1), (540, 0), (545, 0), (550, 0), (555, 1), (560, 1), (565, 1), (570, 0), (575, 0), (580, 0), (585, 1), (590, 1), (595, 1), (600, 0), (605, 1), (610, 1), (615, 0), (620, 1), (625, 1), (630, 0), (635, 0), (640, 0), (645, 1), (650, 1), (655, 0), (660, 0), (665, 0), (670, 1), (675, 0), (680, 1), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 0), (730, 0), (735, 1), (740, 0), (745, 0), (750, 1), (755, 1), (760, 1), (765, 1), (770, 0), (775, 0), (780, 1), (785, 1), (790, 1), (795, 1), (800, 1), (805, 0), (810, 0), (815, 0), (820, 0), (825, 1), (830, 0), (835, 0), (840, 1), (845, 1), (850, 1), (855, 0), (860, 1), (865, 1), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 0), (940, 1), (945, 1), (950, 1), (955, 1), (960, 0), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 1), (995, 0), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_2  din0_2  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.9v 49.745n 0.9v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.9v 64.745n 0.9v 64.755n 0.9v 69.745n 0.9v 69.755n 0.9v 74.745n 0.9v 74.755n 0.0v 79.745n 0.0v 79.755n 0.9v 84.745n 0.9v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.9v 124.745n 0.9v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.9v 149.745n 0.9v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.9v 164.745n 0.9v 164.755n 0.9v 169.745n 0.9v 169.755n 0.9v 174.745n 0.9v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.9v 194.745n 0.9v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.9v 264.745n 0.9v 264.755n 0.0v 269.745n 0.0v 269.755n 0.9v 274.745n 0.9v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.9v 314.745n 0.9v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.9v 424.745n 0.9v 424.755n 0.9v 429.745n 0.9v 429.755n 0.0v 434.745n 0.0v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.0v 449.745n 0.0v 449.755n 0.9v 454.745n 0.9v 454.755n 0.0v 459.745n 0.0v 459.755n 0.9v 464.745n 0.9v 464.755n 0.0v 469.745n 0.0v 469.755n 0.9v 474.745n 0.9v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.9v 509.745n 0.9v 509.755n 0.9v 514.745n 0.9v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.9v 559.745n 0.9v 559.755n 0.9v 564.745n 0.9v 564.755n 0.9v 569.745n 0.9v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.0v 604.745n 0.0v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.0v 619.745n 0.0v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.9v 649.745n 0.9v 649.755n 0.9v 654.745n 0.9v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.9v 674.745n 0.9v 674.755n 0.0v 679.745n 0.0v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.9v 739.745n 0.9v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.9v 754.745n 0.9v 754.755n 0.9v 759.745n 0.9v 759.755n 0.9v 764.745n 0.9v 764.755n 0.9v 769.745n 0.9v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.9v 784.745n 0.9v 784.755n 0.9v 789.745n 0.9v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.9v 829.745n 0.9v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.9v 854.745n 0.9v 854.755n 0.0v 859.745n 0.0v 859.755n 0.9v 864.745n 0.9v 864.755n 0.9v 869.745n 0.9v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.9v 904.745n 0.9v 904.755n 0.9v 909.745n 0.9v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.0v 939.745n 0.0v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.0v 964.745n 0.0v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.9v 994.745n 0.9v 994.755n 0.0v 999.745n 0.0v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 0), (20, 0), (25, 0), (30, 1), (35, 1), (40, 1), (45, 0), (50, 0), (55, 0), (60, 0), (65, 1), (70, 1), (75, 0), (80, 0), (85, 1), (90, 1), (95, 1), (100, 0), (105, 1), (110, 0), (115, 1), (120, 1), (125, 0), (130, 1), (135, 0), (140, 0), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 0), (180, 0), (185, 0), (190, 1), (195, 1), (200, 0), (205, 1), (210, 0), (215, 0), (220, 0), (225, 1), (230, 0), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 0), (280, 1), (285, 0), (290, 0), (295, 1), (300, 1), (305, 1), (310, 0), (315, 0), (320, 1), (325, 1), (330, 1), (335, 1), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 1), (380, 1), (385, 0), (390, 0), (395, 0), (400, 1), (405, 0), (410, 0), (415, 0), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 0), (450, 1), (455, 0), (460, 0), (465, 1), (470, 0), (475, 1), (480, 1), (485, 0), (490, 1), (495, 0), (500, 0), (505, 1), (510, 0), (515, 1), (520, 1), (525, 1), (530, 0), (535, 0), (540, 1), (545, 1), (550, 1), (555, 0), (560, 0), (565, 0), (570, 0), (575, 1), (580, 1), (585, 0), (590, 0), (595, 0), (600, 1), (605, 1), (610, 1), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 1), (655, 1), (660, 1), (665, 1), (670, 0), (675, 1), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 1), (720, 1), (725, 1), (730, 1), (735, 0), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 0), (770, 0), (775, 0), (780, 0), (785, 1), (790, 0), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 0), (825, 0), (830, 1), (835, 0), (840, 0), (845, 0), (850, 1), (855, 0), (860, 0), (865, 0), (870, 1), (875, 1), (880, 1), (885, 1), (890, 0), (895, 0), (900, 1), (905, 0), (910, 1), (915, 1), (920, 1), (925, 1), (930, 0), (935, 1), (940, 1), (945, 0), (950, 0), (955, 1), (960, 0), (965, 0), (970, 0), (975, 1), (980, 1), (985, 1), (990, 0), (995, 1), (1000, 1), (1005, 0), (1010, 0), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_3  din0_3  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.9v 14.745n 0.9v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.9v 44.745n 0.9v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.9v 69.745n 0.9v 69.755n 0.9v 74.745n 0.9v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.0v 104.745n 0.0v 104.755n 0.9v 109.745n 0.9v 109.755n 0.0v 114.745n 0.0v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.0v 129.745n 0.0v 129.755n 0.9v 134.745n 0.9v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.9v 149.745n 0.9v 149.755n 0.9v 154.745n 0.9v 154.755n 0.9v 159.745n 0.9v 159.755n 0.9v 164.745n 0.9v 164.755n 0.9v 169.745n 0.9v 169.755n 0.9v 174.745n 0.9v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.9v 194.745n 0.9v 194.755n 0.9v 199.745n 0.9v 199.755n 0.0v 204.745n 0.0v 204.755n 0.9v 209.745n 0.9v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.9v 229.745n 0.9v 229.755n 0.0v 234.745n 0.0v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.0v 279.745n 0.0v 279.755n 0.9v 284.745n 0.9v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.9v 404.745n 0.9v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.9v 424.745n 0.9v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.0v 449.745n 0.0v 449.755n 0.9v 454.745n 0.9v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.9v 469.745n 0.9v 469.755n 0.0v 474.745n 0.0v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.0v 489.745n 0.0v 489.755n 0.9v 494.745n 0.9v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.9v 509.745n 0.9v 509.755n 0.0v 514.745n 0.0v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.9v 669.745n 0.9v 669.755n 0.0v 674.745n 0.0v 674.755n 0.9v 679.745n 0.9v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.0v 739.745n 0.0v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.9v 759.745n 0.9v 759.755n 0.9v 764.745n 0.9v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.9v 789.745n 0.9v 789.755n 0.0v 794.745n 0.0v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.9v 834.745n 0.9v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.9v 854.745n 0.9v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.9v 904.745n 0.9v 904.755n 0.0v 909.745n 0.0v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.0v 934.745n 0.0v 934.755n 0.9v 939.745n 0.9v 939.755n 0.9v 944.745n 0.9v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.9v 959.745n 0.9v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.0v 994.745n 0.0v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 1), (20, 1), (25, 1), (30, 0), (35, 0), (40, 0), (45, 1), (50, 1), (55, 1), (60, 0), (65, 1), (70, 1), (75, 0), (80, 0), (85, 0), (90, 0), (95, 1), (100, 1), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 1), (135, 0), (140, 0), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 0), (195, 1), (200, 1), (205, 0), (210, 1), (215, 1), (220, 1), (225, 0), (230, 1), (235, 1), (240, 1), (245, 1), (250, 0), (255, 0), (260, 1), (265, 1), (270, 1), (275, 0), (280, 0), (285, 0), (290, 0), (295, 1), (300, 1), (305, 1), (310, 0), (315, 0), (320, 1), (325, 0), (330, 1), (335, 1), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 1), (380, 1), (385, 0), (390, 1), (395, 1), (400, 0), (405, 1), (410, 1), (415, 1), (420, 0), (425, 0), (430, 1), (435, 0), (440, 0), (445, 1), (450, 1), (455, 1), (460, 0), (465, 1), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 1), (500, 0), (505, 1), (510, 0), (515, 0), (520, 0), (525, 0), (530, 1), (535, 1), (540, 1), (545, 0), (550, 0), (555, 0), (560, 1), (565, 1), (570, 0), (575, 0), (580, 0), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 1), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 1), (650, 0), (655, 0), (660, 0), (665, 1), (670, 0), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 0), (730, 0), (735, 1), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 1), (795, 0), (800, 0), (805, 1), (810, 1), (815, 1), (820, 0), (825, 1), (830, 0), (835, 0), (840, 0), (845, 0), (850, 1), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 1), (905, 0), (910, 0), (915, 0), (920, 1), (925, 1), (930, 1), (935, 1), (940, 1), (945, 0), (950, 0), (955, 1), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 1), (995, 1), (1000, 1), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_4  din0_4  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.9v 14.745n 0.9v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.9v 59.745n 0.9v 59.755n 0.0v 64.745n 0.0v 64.755n 0.9v 69.745n 0.9v 69.755n 0.9v 74.745n 0.9v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.9v 134.745n 0.9v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.9v 149.745n 0.9v 149.755n 0.9v 154.745n 0.9v 154.755n 0.9v 159.745n 0.9v 159.755n 0.9v 164.745n 0.9v 164.755n 0.9v 169.745n 0.9v 169.755n 0.9v 174.745n 0.9v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.0v 194.745n 0.0v 194.755n 0.9v 199.745n 0.9v 199.755n 0.9v 204.745n 0.9v 204.755n 0.0v 209.745n 0.0v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.0v 229.745n 0.0v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.9v 324.745n 0.9v 324.755n 0.0v 329.745n 0.0v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.0v 389.745n 0.0v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.0v 404.745n 0.0v 404.755n 0.9v 409.745n 0.9v 409.755n 0.9v 414.745n 0.9v 414.755n 0.9v 419.745n 0.9v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.9v 434.745n 0.9v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.9v 459.745n 0.9v 459.755n 0.0v 464.745n 0.0v 464.755n 0.9v 469.745n 0.9v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.9v 499.745n 0.9v 499.755n 0.0v 504.745n 0.0v 504.755n 0.9v 509.745n 0.9v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.9v 564.745n 0.9v 564.755n 0.9v 569.745n 0.9v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.9v 619.745n 0.9v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.9v 649.745n 0.9v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.9v 669.745n 0.9v 669.755n 0.0v 674.745n 0.0v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.9v 739.745n 0.9v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.9v 794.745n 0.9v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.0v 824.745n 0.0v 824.755n 0.9v 829.745n 0.9v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.9v 854.745n 0.9v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.9v 904.745n 0.9v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.9v 944.745n 0.9v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.9v 959.745n 0.9v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 1), (20, 1), (25, 1), (30, 0), (35, 0), (40, 0), (45, 1), (50, 1), (55, 1), (60, 1), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 1), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 1), (130, 1), (135, 0), (140, 1), (145, 0), (150, 0), (155, 0), (160, 1), (165, 1), (170, 0), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 0), (205, 1), (210, 0), (215, 1), (220, 1), (225, 1), (230, 0), (235, 0), (240, 0), (245, 1), (250, 1), (255, 1), (260, 0), (265, 1), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 1), (300, 1), (305, 1), (310, 1), (315, 0), (320, 1), (325, 1), (330, 0), (335, 0), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 1), (415, 0), (420, 1), (425, 0), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 0), (460, 1), (465, 1), (470, 0), (475, 0), (480, 0), (485, 1), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 1), (520, 1), (525, 1), (530, 0), (535, 0), (540, 1), (545, 1), (550, 1), (555, 1), (560, 0), (565, 0), (570, 1), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 1), (605, 0), (610, 0), (615, 1), (620, 1), (625, 0), (630, 1), (635, 1), (640, 1), (645, 0), (650, 1), (655, 1), (660, 1), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 1), (755, 1), (760, 1), (765, 0), (770, 0), (775, 0), (780, 0), (785, 1), (790, 1), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 1), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 1), (860, 0), (865, 0), (870, 0), (875, 0), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 0), (910, 1), (915, 1), (920, 0), (925, 0), (930, 0), (935, 1), (940, 0), (945, 1), (950, 1), (955, 1), (960, 0), (965, 0), (970, 0), (975, 1), (980, 1), (985, 1), (990, 0), (995, 0), (1000, 1), (1005, 0), (1010, 0), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_5  din0_5  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.9v 14.745n 0.9v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.9v 59.745n 0.9v 59.755n 0.9v 64.745n 0.9v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.9v 94.745n 0.9v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.0v 139.745n 0.0v 139.755n 0.9v 144.745n 0.9v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.9v 164.745n 0.9v 164.755n 0.9v 169.745n 0.9v 169.755n 0.0v 174.745n 0.0v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.9v 194.745n 0.9v 194.755n 0.9v 199.745n 0.9v 199.755n 0.0v 204.745n 0.0v 204.755n 0.9v 209.745n 0.9v 209.755n 0.0v 214.745n 0.0v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.9v 229.745n 0.9v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.0v 264.745n 0.0v 264.755n 0.9v 269.745n 0.9v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.0v 319.745n 0.0v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.9v 404.745n 0.9v 404.755n 0.9v 409.745n 0.9v 409.755n 0.9v 414.745n 0.9v 414.755n 0.0v 419.745n 0.0v 419.755n 0.9v 424.745n 0.9v 424.755n 0.0v 429.745n 0.0v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.0v 459.745n 0.0v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.9v 489.745n 0.9v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.9v 574.745n 0.9v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.9v 604.745n 0.9v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.9v 619.745n 0.9v 619.755n 0.9v 624.745n 0.9v 624.755n 0.0v 629.745n 0.0v 629.755n 0.9v 634.745n 0.9v 634.755n 0.9v 639.745n 0.9v 639.755n 0.9v 644.745n 0.9v 644.755n 0.0v 649.745n 0.0v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.9v 754.745n 0.9v 754.755n 0.9v 759.745n 0.9v 759.755n 0.9v 764.745n 0.9v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.9v 789.745n 0.9v 789.755n 0.9v 794.745n 0.9v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.9v 829.745n 0.9v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.9v 859.745n 0.9v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.9v 894.745n 0.9v 894.755n 0.9v 899.745n 0.9v 899.755n 0.9v 904.745n 0.9v 904.755n 0.0v 909.745n 0.0v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.9v 939.745n 0.9v 939.755n 0.0v 944.745n 0.0v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 1), (20, 1), (25, 1), (30, 0), (35, 0), (40, 0), (45, 1), (50, 0), (55, 0), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 0), (125, 0), (130, 0), (135, 1), (140, 0), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 0), (200, 0), (205, 1), (210, 1), (215, 0), (220, 0), (225, 0), (230, 1), (235, 0), (240, 0), (245, 0), (250, 1), (255, 1), (260, 0), (265, 1), (270, 0), (275, 0), (280, 1), (285, 1), (290, 0), (295, 1), (300, 1), (305, 1), (310, 0), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 0), (345, 0), (350, 0), (355, 0), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 0), (390, 0), (395, 0), (400, 1), (405, 1), (410, 1), (415, 0), (420, 0), (425, 0), (430, 0), (435, 1), (440, 1), (445, 0), (450, 1), (455, 0), (460, 1), (465, 1), (470, 0), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 0), (505, 0), (510, 1), (515, 0), (520, 0), (525, 0), (530, 1), (535, 1), (540, 0), (545, 1), (550, 1), (555, 0), (560, 1), (565, 1), (570, 1), (575, 1), (580, 1), (585, 0), (590, 0), (595, 0), (600, 1), (605, 0), (610, 1), (615, 1), (620, 0), (625, 0), (630, 0), (635, 0), (640, 1), (645, 1), (650, 1), (655, 0), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 1), (735, 0), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 1), (775, 1), (780, 1), (785, 0), (790, 1), (795, 0), (800, 0), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 0), (840, 0), (845, 0), (850, 1), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 1), (885, 1), (890, 1), (895, 0), (900, 0), (905, 1), (910, 1), (915, 1), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 1), (950, 1), (955, 0), (960, 0), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 0), (995, 1), (1000, 0), (1005, 1), (1010, 1), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_6  din0_6  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.9v 14.745n 0.9v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.9v 49.745n 0.9v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.9v 64.745n 0.9v 64.755n 0.9v 69.745n 0.9v 69.755n 0.9v 74.745n 0.9v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.9v 119.745n 0.9v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.9v 139.745n 0.9v 139.755n 0.0v 144.745n 0.0v 144.755n 0.9v 149.745n 0.9v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.9v 174.745n 0.9v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.9v 194.745n 0.9v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.9v 234.745n 0.9v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.0v 264.745n 0.0v 264.755n 0.9v 269.745n 0.9v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.9v 284.745n 0.9v 284.755n 0.9v 289.745n 0.9v 289.755n 0.0v 294.745n 0.0v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.0v 314.745n 0.0v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.9v 404.745n 0.9v 404.755n 0.9v 409.745n 0.9v 409.755n 0.9v 414.745n 0.9v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.0v 449.745n 0.0v 449.755n 0.9v 454.745n 0.9v 454.755n 0.0v 459.745n 0.0v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.0v 474.745n 0.0v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.9v 499.745n 0.9v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.9v 514.745n 0.9v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.0v 544.745n 0.0v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.0v 559.745n 0.0v 559.755n 0.9v 564.745n 0.9v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.9v 604.745n 0.9v 604.755n 0.0v 609.745n 0.0v 609.755n 0.9v 614.745n 0.9v 614.755n 0.9v 619.745n 0.9v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.9v 644.745n 0.9v 644.755n 0.9v 649.745n 0.9v 649.755n 0.9v 654.745n 0.9v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.0v 739.745n 0.0v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.9v 759.745n 0.9v 759.755n 0.9v 764.745n 0.9v 764.755n 0.9v 769.745n 0.9v 769.755n 0.9v 774.745n 0.9v 774.755n 0.9v 779.745n 0.9v 779.755n 0.9v 784.745n 0.9v 784.755n 0.0v 789.745n 0.0v 789.755n 0.9v 794.745n 0.9v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.9v 854.745n 0.9v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.9v 894.745n 0.9v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.9v 909.745n 0.9v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.0v 994.745n 0.0v 994.755n 0.9v 999.745n 0.9v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 0), (20, 0), (25, 0), (30, 0), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 0), (65, 0), (70, 0), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 0), (105, 1), (110, 0), (115, 1), (120, 0), (125, 1), (130, 1), (135, 1), (140, 1), (145, 0), (150, 1), (155, 1), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 0), (210, 1), (215, 0), (220, 0), (225, 1), (230, 0), (235, 1), (240, 1), (245, 0), (250, 1), (255, 1), (260, 1), (265, 0), (270, 0), (275, 0), (280, 1), (285, 0), (290, 1), (295, 1), (300, 1), (305, 1), (310, 0), (315, 0), (320, 0), (325, 1), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 1), (365, 1), (370, 1), (375, 0), (380, 0), (385, 0), (390, 0), (395, 0), (400, 1), (405, 1), (410, 1), (415, 1), (420, 1), (425, 0), (430, 1), (435, 1), (440, 1), (445, 0), (450, 0), (455, 0), (460, 0), (465, 1), (470, 0), (475, 1), (480, 0), (485, 1), (490, 0), (495, 1), (500, 0), (505, 1), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 1), (550, 1), (555, 0), (560, 1), (565, 0), (570, 1), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 1), (605, 0), (610, 0), (615, 1), (620, 1), (625, 0), (630, 0), (635, 0), (640, 0), (645, 1), (650, 0), (655, 0), (660, 0), (665, 1), (670, 1), (675, 1), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 1), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 1), (785, 0), (790, 0), (795, 0), (800, 0), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 0), (835, 1), (840, 1), (845, 0), (850, 1), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 1), (895, 1), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 1), (950, 1), (955, 0), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 0), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_7  din0_7  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.9v 14.745n 0.9v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.9v 39.745n 0.9v 39.755n 0.9v 44.745n 0.9v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.9v 59.745n 0.9v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.0v 104.745n 0.0v 104.755n 0.9v 109.745n 0.9v 109.755n 0.0v 114.745n 0.0v 114.755n 0.9v 119.745n 0.9v 119.755n 0.0v 124.745n 0.0v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.9v 139.745n 0.9v 139.755n 0.9v 144.745n 0.9v 144.755n 0.0v 149.745n 0.0v 149.755n 0.9v 154.745n 0.9v 154.755n 0.9v 159.745n 0.9v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.9v 214.745n 0.9v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.9v 229.745n 0.9v 229.755n 0.0v 234.745n 0.0v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.0v 249.745n 0.0v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.9v 284.745n 0.9v 284.755n 0.0v 289.745n 0.0v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.9v 329.745n 0.9v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.9v 404.745n 0.9v 404.755n 0.9v 409.745n 0.9v 409.755n 0.9v 414.745n 0.9v 414.755n 0.9v 419.745n 0.9v 419.755n 0.9v 424.745n 0.9v 424.755n 0.0v 429.745n 0.0v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.9v 469.745n 0.9v 469.755n 0.0v 474.745n 0.0v 474.755n 0.9v 479.745n 0.9v 479.755n 0.0v 484.745n 0.0v 484.755n 0.9v 489.745n 0.9v 489.755n 0.0v 494.745n 0.0v 494.755n 0.9v 499.745n 0.9v 499.755n 0.0v 504.745n 0.0v 504.755n 0.9v 509.745n 0.9v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.0v 559.745n 0.0v 559.755n 0.9v 564.745n 0.9v 564.755n 0.0v 569.745n 0.0v 569.755n 0.9v 574.745n 0.9v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.9v 604.745n 0.9v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.9v 619.745n 0.9v 619.755n 0.9v 624.745n 0.9v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.9v 649.745n 0.9v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.9v 719.745n 0.9v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.9v 784.745n 0.9v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.0v 834.745n 0.0v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.0v 849.745n 0.0v 849.755n 0.9v 854.745n 0.9v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.9v 894.745n 0.9v 894.755n 0.9v 899.745n 0.9v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.0v 959.745n 0.0v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.0v 994.745n 0.0v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 0), (90, 1), (95, 1), (100, 0), (105, 0), (110, 1), (115, 0), (120, 0), (125, 0), (130, 1), (135, 1), (140, 0), (145, 0), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 0), (180, 0), (185, 0), (190, 0), (195, 1), (200, 0), (205, 1), (210, 1), (215, 0), (220, 0), (225, 0), (230, 0), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 0), (270, 1), (275, 0), (280, 1), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 1), (315, 0), (320, 0), (325, 1), (330, 1), (335, 1), (340, 0), (345, 0), (350, 0), (355, 0), (360, 1), (365, 1), (370, 1), (375, 0), (380, 0), (385, 1), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 1), (435, 0), (440, 0), (445, 0), (450, 1), (455, 1), (460, 0), (465, 0), (470, 1), (475, 0), (480, 0), (485, 0), (490, 1), (495, 1), (500, 0), (505, 1), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 1), (550, 1), (555, 1), (560, 0), (565, 0), (570, 0), (575, 0), (580, 0), (585, 1), (590, 1), (595, 1), (600, 0), (605, 0), (610, 0), (615, 0), (620, 1), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 0), (665, 1), (670, 1), (675, 1), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 1), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 1), (785, 1), (790, 0), (795, 0), (800, 0), (805, 1), (810, 1), (815, 1), (820, 1), (825, 0), (830, 0), (835, 0), (840, 1), (845, 1), (850, 1), (855, 1), (860, 0), (865, 0), (870, 1), (875, 1), (880, 0), (885, 0), (890, 1), (895, 1), (900, 0), (905, 1), (910, 0), (915, 0), (920, 1), (925, 1), (930, 0), (935, 1), (940, 0), (945, 1), (950, 1), (955, 1), (960, 1), (965, 0), (970, 0), (975, 1), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 0), (1020, 0), (1025, 0)]
Va0_0  a0_0  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.9v 14.745n 0.9v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.9v 44.745n 0.9v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.9v 59.745n 0.9v 59.755n 0.9v 64.745n 0.9v 64.755n 0.9v 69.745n 0.9v 69.755n 0.9v 74.745n 0.9v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.0v 89.745n 0.0v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.9v 114.745n 0.9v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.9v 134.745n 0.9v 134.755n 0.9v 139.745n 0.9v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.9v 154.745n 0.9v 154.755n 0.9v 159.745n 0.9v 159.755n 0.9v 164.745n 0.9v 164.755n 0.9v 169.745n 0.9v 169.755n 0.9v 174.745n 0.9v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.9v 199.745n 0.9v 199.755n 0.0v 204.745n 0.0v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.0v 269.745n 0.0v 269.755n 0.9v 274.745n 0.9v 274.755n 0.0v 279.745n 0.0v 279.755n 0.9v 284.745n 0.9v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.9v 314.745n 0.9v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.9v 389.745n 0.9v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.9v 434.745n 0.9v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.9v 454.745n 0.9v 454.755n 0.9v 459.745n 0.9v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.9v 474.745n 0.9v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.9v 494.745n 0.9v 494.755n 0.9v 499.745n 0.9v 499.755n 0.0v 504.745n 0.0v 504.755n 0.9v 509.745n 0.9v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.9v 624.745n 0.9v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.9v 724.745n 0.9v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.9v 784.745n 0.9v 784.755n 0.9v 789.745n 0.9v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.9v 824.745n 0.9v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.9v 854.745n 0.9v 854.755n 0.9v 859.745n 0.9v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.9v 894.745n 0.9v 894.755n 0.9v 899.745n 0.9v 899.755n 0.0v 904.745n 0.0v 904.755n 0.9v 909.745n 0.9v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.0v 934.745n 0.0v 934.755n 0.9v 939.745n 0.9v 939.755n 0.0v 944.745n 0.0v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.9v 964.745n 0.9v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 1), (20, 1), (25, 1), (30, 1), (35, 0), (40, 0), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 1), (105, 1), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 1), (140, 0), (145, 0), (150, 1), (155, 1), (160, 1), (165, 1), (170, 0), (175, 1), (180, 1), (185, 1), (190, 0), (195, 1), (200, 1), (205, 0), (210, 1), (215, 0), (220, 0), (225, 1), (230, 1), (235, 1), (240, 1), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 1), (275, 1), (280, 0), (285, 1), (290, 0), (295, 0), (300, 0), (305, 0), (310, 1), (315, 0), (320, 0), (325, 1), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 1), (395, 1), (400, 0), (405, 1), (410, 1), (415, 0), (420, 0), (425, 0), (430, 1), (435, 0), (440, 0), (445, 0), (450, 1), (455, 0), (460, 0), (465, 1), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 1), (500, 1), (505, 1), (510, 0), (515, 1), (520, 1), (525, 1), (530, 0), (535, 0), (540, 1), (545, 1), (550, 1), (555, 0), (560, 1), (565, 0), (570, 1), (575, 0), (580, 0), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 0), (615, 0), (620, 1), (625, 0), (630, 1), (635, 1), (640, 0), (645, 0), (650, 0), (655, 0), (660, 0), (665, 1), (670, 0), (675, 1), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 1), (745, 1), (750, 0), (755, 0), (760, 0), (765, 1), (770, 1), (775, 1), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 1), (825, 1), (830, 1), (835, 0), (840, 1), (845, 1), (850, 0), (855, 0), (860, 1), (865, 1), (870, 1), (875, 1), (880, 0), (885, 0), (890, 0), (895, 1), (900, 0), (905, 1), (910, 1), (915, 1), (920, 0), (925, 0), (930, 0), (935, 1), (940, 0), (945, 0), (950, 0), (955, 0), (960, 1), (965, 0), (970, 0), (975, 1), (980, 1), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 1), (1010, 1), (1015, 0), (1020, 0), (1025, 0)]
Va0_1  a0_1  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.0v 14.745n 0.0v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.9v 34.745n 0.9v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.9v 59.745n 0.9v 59.755n 0.9v 64.745n 0.9v 64.755n 0.9v 69.745n 0.9v 69.755n 0.9v 74.745n 0.9v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.9v 139.745n 0.9v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.9v 154.745n 0.9v 154.755n 0.9v 159.745n 0.9v 159.755n 0.9v 164.745n 0.9v 164.755n 0.9v 169.745n 0.9v 169.755n 0.0v 174.745n 0.0v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.0v 194.745n 0.0v 194.755n 0.9v 199.745n 0.9v 199.755n 0.9v 204.745n 0.9v 204.755n 0.0v 209.745n 0.0v 209.755n 0.9v 214.745n 0.9v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.9v 229.745n 0.9v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.0v 284.745n 0.0v 284.755n 0.9v 289.745n 0.9v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.9v 314.745n 0.9v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.9v 329.745n 0.9v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.0v 404.745n 0.0v 404.755n 0.9v 409.745n 0.9v 409.755n 0.9v 414.745n 0.9v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.9v 434.745n 0.9v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.9v 454.745n 0.9v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.9v 469.745n 0.9v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.9v 509.745n 0.9v 509.755n 0.0v 514.745n 0.0v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.0v 559.745n 0.0v 559.755n 0.9v 564.745n 0.9v 564.755n 0.0v 569.745n 0.0v 569.755n 0.9v 574.745n 0.9v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.9v 624.745n 0.9v 624.755n 0.0v 629.745n 0.0v 629.755n 0.9v 634.745n 0.9v 634.755n 0.9v 639.745n 0.9v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.9v 669.745n 0.9v 669.755n 0.0v 674.745n 0.0v 674.755n 0.9v 679.745n 0.9v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.9v 769.745n 0.9v 769.755n 0.9v 774.745n 0.9v 774.755n 0.9v 779.745n 0.9v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.0v 839.745n 0.0v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.9v 864.745n 0.9v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.9v 899.745n 0.9v 899.755n 0.0v 904.745n 0.0v 904.755n 0.9v 909.745n 0.9v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.9v 939.745n 0.9v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.9v 964.745n 0.9v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 0), (20, 0), (25, 0), (30, 1), (35, 0), (40, 0), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 0), (130, 1), (135, 1), (140, 1), (145, 0), (150, 1), (155, 1), (160, 1), (165, 1), (170, 0), (175, 1), (180, 1), (185, 1), (190, 1), (195, 0), (200, 1), (205, 1), (210, 0), (215, 1), (220, 1), (225, 1), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 1), (270, 0), (275, 1), (280, 1), (285, 0), (290, 1), (295, 1), (300, 1), (305, 1), (310, 0), (315, 1), (320, 1), (325, 0), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 0), (365, 0), (370, 0), (375, 1), (380, 1), (385, 0), (390, 1), (395, 1), (400, 0), (405, 1), (410, 1), (415, 0), (420, 0), (425, 0), (430, 0), (435, 1), (440, 1), (445, 1), (450, 1), (455, 0), (460, 1), (465, 0), (470, 1), (475, 0), (480, 0), (485, 1), (490, 1), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 1), (570, 0), (575, 0), (580, 0), (585, 1), (590, 1), (595, 1), (600, 0), (605, 1), (610, 0), (615, 0), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 0), (650, 1), (655, 0), (660, 0), (665, 0), (670, 1), (675, 1), (680, 0), (685, 0), (690, 0), (695, 0), (700, 1), (705, 1), (710, 1), (715, 0), (720, 1), (725, 1), (730, 1), (735, 1), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 1), (770, 0), (775, 0), (780, 0), (785, 1), (790, 0), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 0), (825, 1), (830, 1), (835, 1), (840, 0), (845, 0), (850, 1), (855, 1), (860, 0), (865, 0), (870, 0), (875, 0), (880, 1), (885, 1), (890, 1), (895, 0), (900, 1), (905, 1), (910, 1), (915, 1), (920, 0), (925, 0), (930, 1), (935, 1), (940, 0), (945, 1), (950, 1), (955, 1), (960, 0), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 1), (995, 0), (1000, 1), (1005, 0), (1010, 0), (1015, 1), (1020, 1), (1025, 1)]
Va0_2  a0_2  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.9v 14.745n 0.9v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.9v 34.745n 0.9v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.9v 59.745n 0.9v 59.755n 0.9v 64.745n 0.9v 64.755n 0.9v 69.745n 0.9v 69.755n 0.9v 74.745n 0.9v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.0v 129.745n 0.0v 129.755n 0.9v 134.745n 0.9v 134.755n 0.9v 139.745n 0.9v 139.755n 0.9v 144.745n 0.9v 144.755n 0.0v 149.745n 0.0v 149.755n 0.9v 154.745n 0.9v 154.755n 0.9v 159.745n 0.9v 159.755n 0.9v 164.745n 0.9v 164.755n 0.9v 169.745n 0.9v 169.755n 0.0v 174.745n 0.0v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.9v 194.745n 0.9v 194.755n 0.0v 199.745n 0.0v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.0v 214.745n 0.0v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.9v 229.745n 0.9v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.9v 269.745n 0.9v 269.755n 0.0v 274.745n 0.0v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.0v 289.745n 0.0v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.0v 314.745n 0.0v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.0v 329.745n 0.0v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.0v 389.745n 0.0v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.0v 404.745n 0.0v 404.755n 0.9v 409.745n 0.9v 409.755n 0.9v 414.745n 0.9v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.0v 459.745n 0.0v 459.755n 0.9v 464.745n 0.9v 464.755n 0.0v 469.745n 0.0v 469.755n 0.9v 474.745n 0.9v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.9v 569.745n 0.9v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.0v 604.745n 0.0v 604.755n 0.9v 609.745n 0.9v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.9v 639.745n 0.9v 639.755n 0.9v 644.745n 0.9v 644.755n 0.0v 649.745n 0.0v 649.755n 0.9v 654.745n 0.9v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.0v 719.745n 0.0v 719.755n 0.9v 724.745n 0.9v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.9v 739.745n 0.9v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.9v 769.745n 0.9v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.9v 789.745n 0.9v 789.755n 0.0v 794.745n 0.0v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.0v 824.745n 0.0v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.9v 854.745n 0.9v 854.755n 0.9v 859.745n 0.9v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.9v 894.745n 0.9v 894.755n 0.0v 899.745n 0.0v 899.755n 0.9v 904.745n 0.9v 904.755n 0.9v 909.745n 0.9v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.0v 944.745n 0.0v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.0v 964.745n 0.0v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.9v 994.745n 0.9v 994.755n 0.0v 999.745n 0.0v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 1), (40, 1), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 1), (80, 0), (85, 1), (90, 0), (95, 1), (100, 1), (105, 1), (110, 0), (115, 0), (120, 0), (125, 1), (130, 1), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 1), (180, 1), (185, 1), (190, 0), (195, 0), (200, 1), (205, 0), (210, 0), (215, 0), (220, 0), (225, 1), (230, 0), (235, 1), (240, 1), (245, 0), (250, 1), (255, 1), (260, 0), (265, 1), (270, 1), (275, 0), (280, 0), (285, 0), (290, 0), (295, 1), (300, 1), (305, 1), (310, 0), (315, 1), (320, 1), (325, 1), (330, 0), (335, 0), (340, 1), (345, 1), (350, 1), (355, 1), (360, 0), (365, 0), (370, 0), (375, 1), (380, 1), (385, 0), (390, 1), (395, 1), (400, 0), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 0), (435, 1), (440, 1), (445, 0), (450, 1), (455, 1), (460, 0), (465, 1), (470, 1), (475, 0), (480, 0), (485, 1), (490, 0), (495, 1), (500, 1), (505, 1), (510, 0), (515, 1), (520, 1), (525, 1), (530, 0), (535, 0), (540, 1), (545, 0), (550, 0), (555, 0), (560, 1), (565, 0), (570, 1), (575, 1), (580, 1), (585, 0), (590, 0), (595, 0), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 0), (630, 0), (635, 0), (640, 1), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 1), (675, 0), (680, 1), (685, 1), (690, 1), (695, 1), (700, 0), (705, 0), (710, 0), (715, 1), (720, 0), (725, 0), (730, 0), (735, 0), (740, 1), (745, 1), (750, 0), (755, 0), (760, 0), (765, 1), (770, 0), (775, 0), (780, 1), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 0), (825, 1), (830, 0), (835, 0), (840, 0), (845, 0), (850, 1), (855, 1), (860, 1), (865, 1), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 1), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 1), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 1), (1000, 0), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Va0_3  a0_3  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.9v 39.745n 0.9v 39.755n 0.9v 44.745n 0.9v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.9v 79.745n 0.9v 79.755n 0.0v 84.745n 0.0v 84.755n 0.9v 89.745n 0.9v 89.755n 0.0v 94.745n 0.0v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.9v 204.745n 0.9v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.9v 229.745n 0.9v 229.755n 0.0v 234.745n 0.0v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.0v 249.745n 0.0v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.0v 264.745n 0.0v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.0v 314.745n 0.0v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.0v 389.745n 0.0v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.0v 404.745n 0.0v 404.755n 0.9v 409.745n 0.9v 409.755n 0.9v 414.745n 0.9v 414.755n 0.9v 419.745n 0.9v 419.755n 0.9v 424.745n 0.9v 424.755n 0.9v 429.745n 0.9v 429.755n 0.0v 434.745n 0.0v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.0v 449.745n 0.0v 449.755n 0.9v 454.745n 0.9v 454.755n 0.9v 459.745n 0.9v 459.755n 0.0v 464.745n 0.0v 464.755n 0.9v 469.745n 0.9v 469.755n 0.9v 474.745n 0.9v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.9v 489.745n 0.9v 489.755n 0.0v 494.745n 0.0v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.9v 509.745n 0.9v 509.755n 0.0v 514.745n 0.0v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.9v 544.745n 0.9v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.9v 564.745n 0.9v 564.755n 0.0v 569.745n 0.0v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.9v 619.745n 0.9v 619.755n 0.9v 624.745n 0.9v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.9v 644.745n 0.9v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.9v 674.745n 0.9v 674.755n 0.0v 679.745n 0.0v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.9v 719.745n 0.9v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.9v 769.745n 0.9v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.9v 784.745n 0.9v 784.755n 0.9v 789.745n 0.9v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.0v 824.745n 0.0v 824.755n 0.9v 829.745n 0.9v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.9v 854.745n 0.9v 854.755n 0.9v 859.745n 0.9v 859.755n 0.9v 864.745n 0.9v 864.755n 0.9v 869.745n 0.9v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.9v 904.745n 0.9v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.9v 959.745n 0.9v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.9v 999.745n 0.9v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 1), (20, 1), (25, 1), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 1), (80, 0), (85, 0), (90, 0), (95, 1), (100, 0), (105, 1), (110, 0), (115, 0), (120, 0), (125, 1), (130, 1), (135, 0), (140, 0), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 1), (175, 1), (180, 1), (185, 1), (190, 0), (195, 1), (200, 0), (205, 1), (210, 1), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 1), (250, 0), (255, 0), (260, 1), (265, 1), (270, 0), (275, 1), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 1), (315, 1), (320, 1), (325, 0), (330, 1), (335, 1), (340, 0), (345, 0), (350, 0), (355, 0), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 1), (450, 0), (455, 0), (460, 1), (465, 1), (470, 0), (475, 1), (480, 1), (485, 0), (490, 1), (495, 1), (500, 1), (505, 0), (510, 1), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 1), (545, 0), (550, 0), (555, 1), (560, 0), (565, 0), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 1), (655, 1), (660, 1), (665, 0), (670, 0), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 1), (735, 0), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 0), (775, 0), (780, 0), (785, 0), (790, 1), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 1), (825, 1), (830, 1), (835, 0), (840, 0), (845, 0), (850, 0), (855, 1), (860, 0), (865, 0), (870, 1), (875, 1), (880, 1), (885, 1), (890, 0), (895, 0), (900, 0), (905, 1), (910, 0), (915, 0), (920, 1), (925, 1), (930, 1), (935, 1), (940, 0), (945, 1), (950, 1), (955, 1), (960, 0), (965, 1), (970, 1), (975, 0), (980, 0), (985, 0), (990, 1), (995, 0), (1000, 0), (1005, 1), (1010, 1), (1015, 0), (1020, 0), (1025, 0)]
Va0_4  a0_4  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.9v 79.745n 0.9v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.9v 99.745n 0.9v 99.755n 0.0v 104.745n 0.0v 104.755n 0.9v 109.745n 0.9v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.9v 149.745n 0.9v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.9v 174.745n 0.9v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.0v 194.745n 0.0v 194.755n 0.9v 199.745n 0.9v 199.755n 0.0v 204.745n 0.0v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.9v 249.745n 0.9v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.0v 274.745n 0.0v 274.755n 0.9v 279.745n 0.9v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.0v 329.745n 0.0v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.9v 404.745n 0.9v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.9v 449.745n 0.9v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.0v 474.745n 0.0v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.0v 489.745n 0.0v 489.755n 0.9v 494.745n 0.9v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.0v 509.745n 0.0v 509.755n 0.9v 514.745n 0.9v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.9v 544.745n 0.9v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.9v 559.745n 0.9v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.0v 739.745n 0.0v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.9v 759.745n 0.9v 759.755n 0.9v 764.745n 0.9v 764.755n 0.9v 769.745n 0.9v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.9v 794.745n 0.9v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.9v 859.745n 0.9v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.9v 909.745n 0.9v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.0v 944.745n 0.0v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.0v 964.745n 0.0v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.9v 994.745n 0.9v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 1), (20, 1), (25, 1), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 1), (80, 0), (85, 0), (90, 0), (95, 1), (100, 0), (105, 1), (110, 0), (115, 0), (120, 0), (125, 1), (130, 1), (135, 0), (140, 0), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 1), (175, 1), (180, 1), (185, 1), (190, 0), (195, 1), (200, 0), (205, 1), (210, 1), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 1), (250, 0), (255, 0), (260, 1), (265, 1), (270, 0), (275, 1), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 1), (315, 1), (320, 1), (325, 0), (330, 1), (335, 1), (340, 0), (345, 0), (350, 0), (355, 0), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 1), (450, 1), (455, 0), (460, 1), (465, 1), (470, 0), (475, 1), (480, 1), (485, 0), (490, 1), (495, 1), (500, 1), (505, 0), (510, 1), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 1), (545, 0), (550, 0), (555, 1), (560, 0), (565, 0), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 0), (620, 1), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 1), (655, 1), (660, 1), (665, 0), (670, 0), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 1), (735, 0), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 0), (775, 0), (780, 0), (785, 0), (790, 1), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 1), (825, 1), (830, 1), (835, 0), (840, 0), (845, 0), (850, 0), (855, 1), (860, 0), (865, 0), (870, 1), (875, 1), (880, 1), (885, 1), (890, 0), (895, 0), (900, 0), (905, 1), (910, 0), (915, 0), (920, 1), (925, 1), (930, 1), (935, 1), (940, 0), (945, 1), (950, 1), (955, 1), (960, 0), (965, 1), (970, 1), (975, 0), (980, 0), (985, 0), (990, 1), (995, 0), (1000, 0), (1005, 1), (1010, 1), (1015, 0), (1020, 0), (1025, 0)]
Va0_5  a0_5  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.9v 79.745n 0.9v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.9v 99.745n 0.9v 99.755n 0.0v 104.745n 0.0v 104.755n 0.9v 109.745n 0.9v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.9v 149.745n 0.9v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.9v 174.745n 0.9v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.0v 194.745n 0.0v 194.755n 0.9v 199.745n 0.9v 199.755n 0.0v 204.745n 0.0v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.9v 249.745n 0.9v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.0v 274.745n 0.0v 274.755n 0.9v 279.745n 0.9v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.0v 329.745n 0.0v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.9v 404.745n 0.9v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.0v 459.745n 0.0v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.0v 474.745n 0.0v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.0v 489.745n 0.0v 489.755n 0.9v 494.745n 0.9v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.0v 509.745n 0.0v 509.755n 0.9v 514.745n 0.9v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.9v 544.745n 0.9v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.9v 559.745n 0.9v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.0v 619.745n 0.0v 619.755n 0.9v 624.745n 0.9v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.0v 739.745n 0.0v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.9v 759.745n 0.9v 759.755n 0.9v 764.745n 0.9v 764.755n 0.9v 769.745n 0.9v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.9v 794.745n 0.9v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.9v 859.745n 0.9v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.9v 909.745n 0.9v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.0v 944.745n 0.0v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.0v 964.745n 0.0v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.9v 994.745n 0.9v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 1), (20, 1), (25, 1), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 1), (80, 0), (85, 0), (90, 0), (95, 1), (100, 0), (105, 1), (110, 0), (115, 0), (120, 0), (125, 1), (130, 1), (135, 0), (140, 0), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 1), (175, 1), (180, 1), (185, 1), (190, 0), (195, 1), (200, 0), (205, 1), (210, 1), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 1), (250, 0), (255, 0), (260, 1), (265, 1), (270, 0), (275, 1), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 1), (315, 1), (320, 1), (325, 0), (330, 1), (335, 1), (340, 0), (345, 0), (350, 0), (355, 0), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 1), (450, 1), (455, 0), (460, 1), (465, 1), (470, 0), (475, 1), (480, 1), (485, 0), (490, 1), (495, 1), (500, 1), (505, 0), (510, 1), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 1), (545, 0), (550, 0), (555, 1), (560, 0), (565, 0), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 0), (620, 1), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 1), (655, 1), (660, 1), (665, 0), (670, 0), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 1), (735, 0), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 0), (775, 0), (780, 0), (785, 0), (790, 1), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 1), (825, 1), (830, 1), (835, 0), (840, 0), (845, 0), (850, 0), (855, 1), (860, 0), (865, 0), (870, 1), (875, 1), (880, 1), (885, 1), (890, 0), (895, 0), (900, 0), (905, 1), (910, 0), (915, 0), (920, 1), (925, 1), (930, 1), (935, 1), (940, 0), (945, 1), (950, 1), (955, 1), (960, 0), (965, 1), (970, 1), (975, 0), (980, 0), (985, 0), (990, 1), (995, 0), (1000, 0), (1005, 1), (1010, 1), (1015, 0), (1020, 0), (1025, 0)]
Va0_6  a0_6  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.9v 79.745n 0.9v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.9v 99.745n 0.9v 99.755n 0.0v 104.745n 0.0v 104.755n 0.9v 109.745n 0.9v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.9v 149.745n 0.9v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.9v 174.745n 0.9v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.0v 194.745n 0.0v 194.755n 0.9v 199.745n 0.9v 199.755n 0.0v 204.745n 0.0v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.9v 249.745n 0.9v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.0v 274.745n 0.0v 274.755n 0.9v 279.745n 0.9v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.0v 329.745n 0.0v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.9v 404.745n 0.9v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.0v 459.745n 0.0v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.0v 474.745n 0.0v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.0v 489.745n 0.0v 489.755n 0.9v 494.745n 0.9v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.0v 509.745n 0.0v 509.755n 0.9v 514.745n 0.9v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.9v 544.745n 0.9v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.9v 559.745n 0.9v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.0v 619.745n 0.0v 619.755n 0.9v 624.745n 0.9v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.0v 739.745n 0.0v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.9v 759.745n 0.9v 759.755n 0.9v 764.745n 0.9v 764.755n 0.9v 769.745n 0.9v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.9v 794.745n 0.9v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.9v 859.745n 0.9v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.9v 909.745n 0.9v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.0v 944.745n 0.0v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.0v 964.745n 0.0v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.9v 994.745n 0.9v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 1), (20, 1), (25, 1), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 1), (80, 0), (85, 0), (90, 0), (95, 1), (100, 0), (105, 1), (110, 0), (115, 0), (120, 0), (125, 1), (130, 1), (135, 0), (140, 0), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 1), (175, 1), (180, 1), (185, 1), (190, 0), (195, 1), (200, 0), (205, 1), (210, 1), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 1), (250, 0), (255, 0), (260, 1), (265, 1), (270, 0), (275, 1), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 1), (315, 1), (320, 1), (325, 0), (330, 1), (335, 1), (340, 0), (345, 0), (350, 0), (355, 0), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 1), (450, 1), (455, 0), (460, 1), (465, 1), (470, 0), (475, 1), (480, 1), (485, 0), (490, 1), (495, 1), (500, 1), (505, 0), (510, 1), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 1), (545, 0), (550, 0), (555, 1), (560, 0), (565, 0), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 0), (620, 1), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 1), (655, 1), (660, 1), (665, 0), (670, 0), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 1), (735, 0), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 0), (775, 0), (780, 0), (785, 0), (790, 1), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 1), (825, 1), (830, 1), (835, 0), (840, 0), (845, 0), (850, 0), (855, 1), (860, 0), (865, 0), (870, 1), (875, 1), (880, 1), (885, 1), (890, 0), (895, 0), (900, 0), (905, 1), (910, 0), (915, 0), (920, 1), (925, 1), (930, 1), (935, 1), (940, 0), (945, 1), (950, 1), (955, 1), (960, 0), (965, 1), (970, 1), (975, 0), (980, 0), (985, 0), (990, 1), (995, 0), (1000, 0), (1005, 1), (1010, 1), (1015, 0), (1020, 0), (1025, 0)]
Va0_7  a0_7  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.9v 79.745n 0.9v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.9v 99.745n 0.9v 99.755n 0.0v 104.745n 0.0v 104.755n 0.9v 109.745n 0.9v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.9v 149.745n 0.9v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.9v 174.745n 0.9v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.0v 194.745n 0.0v 194.755n 0.9v 199.745n 0.9v 199.755n 0.0v 204.745n 0.0v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.9v 249.745n 0.9v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.0v 274.745n 0.0v 274.755n 0.9v 279.745n 0.9v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.0v 329.745n 0.0v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.9v 404.745n 0.9v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.0v 459.745n 0.0v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.0v 474.745n 0.0v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.0v 489.745n 0.0v 489.755n 0.9v 494.745n 0.9v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.0v 509.745n 0.0v 509.755n 0.9v 514.745n 0.9v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.9v 544.745n 0.9v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.9v 559.745n 0.9v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.0v 619.745n 0.0v 619.755n 0.9v 624.745n 0.9v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.0v 739.745n 0.0v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.9v 759.745n 0.9v 759.755n 0.9v 764.745n 0.9v 764.755n 0.9v 769.745n 0.9v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.9v 794.745n 0.9v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.9v 859.745n 0.9v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.9v 909.745n 0.9v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.0v 944.745n 0.0v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.0v 964.745n 0.0v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.9v 994.745n 0.9v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 1), (20, 1), (25, 1), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 1), (80, 0), (85, 0), (90, 0), (95, 1), (100, 0), (105, 1), (110, 0), (115, 0), (120, 0), (125, 1), (130, 1), (135, 0), (140, 0), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 1), (175, 1), (180, 1), (185, 1), (190, 0), (195, 1), (200, 0), (205, 1), (210, 1), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 1), (250, 0), (255, 0), (260, 1), (265, 1), (270, 0), (275, 1), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 1), (315, 1), (320, 1), (325, 0), (330, 1), (335, 1), (340, 0), (345, 0), (350, 0), (355, 0), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 1), (450, 1), (455, 0), (460, 1), (465, 1), (470, 0), (475, 1), (480, 1), (485, 0), (490, 1), (495, 1), (500, 1), (505, 0), (510, 1), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 1), (545, 0), (550, 0), (555, 1), (560, 0), (565, 0), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 0), (620, 1), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 1), (655, 1), (660, 1), (665, 0), (670, 0), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 1), (735, 0), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 0), (775, 0), (780, 0), (785, 0), (790, 1), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 1), (825, 1), (830, 1), (835, 0), (840, 0), (845, 0), (850, 0), (855, 1), (860, 0), (865, 0), (870, 1), (875, 1), (880, 1), (885, 1), (890, 0), (895, 0), (900, 0), (905, 1), (910, 0), (915, 0), (920, 1), (925, 1), (930, 1), (935, 1), (940, 0), (945, 1), (950, 1), (955, 1), (960, 0), (965, 1), (970, 1), (975, 0), (980, 0), (985, 0), (990, 1), (995, 0), (1000, 0), (1005, 1), (1010, 1), (1015, 0), (1020, 0), (1025, 0)]
Va0_8  a0_8  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.9v 79.745n 0.9v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.9v 99.745n 0.9v 99.755n 0.0v 104.745n 0.0v 104.755n 0.9v 109.745n 0.9v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.9v 149.745n 0.9v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.9v 174.745n 0.9v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.0v 194.745n 0.0v 194.755n 0.9v 199.745n 0.9v 199.755n 0.0v 204.745n 0.0v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.9v 249.745n 0.9v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.0v 274.745n 0.0v 274.755n 0.9v 279.745n 0.9v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.0v 329.745n 0.0v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.9v 404.745n 0.9v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.0v 459.745n 0.0v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.0v 474.745n 0.0v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.0v 489.745n 0.0v 489.755n 0.9v 494.745n 0.9v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.0v 509.745n 0.0v 509.755n 0.9v 514.745n 0.9v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.9v 544.745n 0.9v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.9v 559.745n 0.9v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.0v 619.745n 0.0v 619.755n 0.9v 624.745n 0.9v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.0v 739.745n 0.0v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.9v 759.745n 0.9v 759.755n 0.9v 764.745n 0.9v 764.755n 0.9v 769.745n 0.9v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.9v 794.745n 0.9v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.9v 859.745n 0.9v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.9v 909.745n 0.9v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.0v 944.745n 0.0v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.0v 964.745n 0.0v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.9v 994.745n 0.9v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 1), (20, 1), (25, 1), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 1), (80, 0), (85, 0), (90, 0), (95, 1), (100, 0), (105, 1), (110, 0), (115, 0), (120, 0), (125, 1), (130, 1), (135, 0), (140, 0), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 1), (175, 1), (180, 1), (185, 1), (190, 0), (195, 1), (200, 0), (205, 1), (210, 1), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 1), (250, 0), (255, 0), (260, 1), (265, 1), (270, 0), (275, 1), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 1), (315, 1), (320, 1), (325, 0), (330, 1), (335, 1), (340, 0), (345, 0), (350, 0), (355, 0), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 1), (450, 1), (455, 0), (460, 1), (465, 1), (470, 0), (475, 1), (480, 1), (485, 0), (490, 1), (495, 1), (500, 1), (505, 0), (510, 1), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 1), (545, 0), (550, 0), (555, 1), (560, 0), (565, 0), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 0), (620, 1), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 1), (655, 1), (660, 1), (665, 0), (670, 0), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 1), (735, 0), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 0), (775, 0), (780, 0), (785, 0), (790, 1), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 1), (825, 1), (830, 1), (835, 0), (840, 0), (845, 0), (850, 0), (855, 1), (860, 0), (865, 0), (870, 1), (875, 1), (880, 1), (885, 1), (890, 0), (895, 0), (900, 0), (905, 1), (910, 0), (915, 0), (920, 1), (925, 1), (930, 1), (935, 1), (940, 0), (945, 1), (950, 1), (955, 1), (960, 0), (965, 1), (970, 1), (975, 0), (980, 0), (985, 0), (990, 1), (995, 0), (1000, 0), (1005, 1), (1010, 1), (1015, 0), (1020, 0), (1025, 0)]
Va0_9  a0_9  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.9v 79.745n 0.9v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.9v 99.745n 0.9v 99.755n 0.0v 104.745n 0.0v 104.755n 0.9v 109.745n 0.9v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.9v 149.745n 0.9v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.9v 174.745n 0.9v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.0v 194.745n 0.0v 194.755n 0.9v 199.745n 0.9v 199.755n 0.0v 204.745n 0.0v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.9v 249.745n 0.9v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.0v 274.745n 0.0v 274.755n 0.9v 279.745n 0.9v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.0v 329.745n 0.0v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.9v 404.745n 0.9v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.0v 459.745n 0.0v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.0v 474.745n 0.0v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.0v 489.745n 0.0v 489.755n 0.9v 494.745n 0.9v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.0v 509.745n 0.0v 509.755n 0.9v 514.745n 0.9v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.9v 544.745n 0.9v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.9v 559.745n 0.9v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.0v 619.745n 0.0v 619.755n 0.9v 624.745n 0.9v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.0v 739.745n 0.0v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.9v 759.745n 0.9v 759.755n 0.9v 764.745n 0.9v 764.755n 0.9v 769.745n 0.9v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.9v 794.745n 0.9v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.9v 859.745n 0.9v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.9v 909.745n 0.9v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.0v 944.745n 0.0v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.0v 964.745n 0.0v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.9v 994.745n 0.9v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 1), (20, 1), (25, 1), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 1), (80, 0), (85, 0), (90, 0), (95, 1), (100, 0), (105, 1), (110, 0), (115, 0), (120, 0), (125, 1), (130, 1), (135, 0), (140, 0), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 1), (175, 1), (180, 1), (185, 1), (190, 0), (195, 1), (200, 0), (205, 1), (210, 1), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 1), (250, 0), (255, 0), (260, 1), (265, 1), (270, 0), (275, 1), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 1), (315, 1), (320, 1), (325, 0), (330, 1), (335, 1), (340, 0), (345, 0), (350, 0), (355, 0), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 1), (450, 1), (455, 0), (460, 1), (465, 1), (470, 0), (475, 1), (480, 1), (485, 0), (490, 1), (495, 1), (500, 1), (505, 0), (510, 1), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 1), (545, 0), (550, 0), (555, 1), (560, 0), (565, 0), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 0), (620, 1), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 1), (655, 1), (660, 1), (665, 0), (670, 0), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 1), (735, 0), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 0), (775, 0), (780, 0), (785, 0), (790, 1), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 1), (825, 1), (830, 1), (835, 0), (840, 0), (845, 0), (850, 0), (855, 1), (860, 0), (865, 0), (870, 1), (875, 1), (880, 1), (885, 1), (890, 0), (895, 0), (900, 0), (905, 1), (910, 0), (915, 0), (920, 1), (925, 1), (930, 1), (935, 1), (940, 0), (945, 1), (950, 1), (955, 1), (960, 0), (965, 1), (970, 1), (975, 0), (980, 0), (985, 0), (990, 1), (995, 0), (1000, 0), (1005, 1), (1010, 1), (1015, 0), (1020, 0), (1025, 0)]
Va0_10  a0_10  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.9v 79.745n 0.9v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.9v 99.745n 0.9v 99.755n 0.0v 104.745n 0.0v 104.755n 0.9v 109.745n 0.9v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.9v 149.745n 0.9v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.9v 174.745n 0.9v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.0v 194.745n 0.0v 194.755n 0.9v 199.745n 0.9v 199.755n 0.0v 204.745n 0.0v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.9v 249.745n 0.9v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.0v 274.745n 0.0v 274.755n 0.9v 279.745n 0.9v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.0v 329.745n 0.0v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.9v 404.745n 0.9v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.0v 459.745n 0.0v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.0v 474.745n 0.0v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.0v 489.745n 0.0v 489.755n 0.9v 494.745n 0.9v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.0v 509.745n 0.0v 509.755n 0.9v 514.745n 0.9v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.9v 544.745n 0.9v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.9v 559.745n 0.9v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.0v 619.745n 0.0v 619.755n 0.9v 624.745n 0.9v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.0v 739.745n 0.0v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.9v 759.745n 0.9v 759.755n 0.9v 764.745n 0.9v 764.755n 0.9v 769.745n 0.9v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.9v 794.745n 0.9v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.9v 859.745n 0.9v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.9v 909.745n 0.9v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.0v 944.745n 0.0v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.0v 964.745n 0.0v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.9v 994.745n 0.9v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 0), (95, 0), (100, 1), (105, 1), (110, 1), (115, 0), (120, 0), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 1), (200, 1), (205, 1), (210, 0), (215, 0), (220, 0), (225, 1), (230, 1), (235, 1), (240, 1), (245, 0), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 0), (285, 0), (290, 0), (295, 1), (300, 0), (305, 0), (310, 0), (315, 1), (320, 1), (325, 0), (330, 0), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 0), (370, 0), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 0), (410, 0), (415, 0), (420, 0), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 0), (475, 1), (480, 1), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 0), (570, 0), (575, 0), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 0), (615, 0), (620, 0), (625, 0), (630, 1), (635, 0), (640, 1), (645, 1), (650, 1), (655, 0), (660, 1), (665, 0), (670, 0), (675, 0), (680, 0), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 1), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 1), (800, 0), (805, 1), (810, 1), (815, 1), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 1), (885, 0), (890, 0), (895, 0), (900, 0), (905, 1), (910, 1), (915, 1), (920, 1), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 1), (960, 0), (965, 0), (970, 0), (975, 0), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va1_0  a1_0  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.9v 44.745n 0.9v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.9v 59.745n 0.9v 59.755n 0.9v 64.745n 0.9v 64.755n 0.9v 69.745n 0.9v 69.755n 0.9v 74.745n 0.9v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.9v 89.745n 0.9v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.9v 139.745n 0.9v 139.755n 0.9v 144.745n 0.9v 144.755n 0.9v 149.745n 0.9v 149.755n 0.9v 154.745n 0.9v 154.755n 0.9v 159.745n 0.9v 159.755n 0.9v 164.745n 0.9v 164.755n 0.9v 169.745n 0.9v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.9v 199.745n 0.9v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.9v 229.745n 0.9v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.0v 249.745n 0.0v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.9v 299.745n 0.9v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.9v 364.745n 0.9v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.9v 404.745n 0.9v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.0v 474.745n 0.0v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.9v 564.745n 0.9v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.9v 634.745n 0.9v 634.755n 0.0v 639.745n 0.0v 639.755n 0.9v 644.745n 0.9v 644.755n 0.9v 649.745n 0.9v 649.755n 0.9v 654.745n 0.9v 654.755n 0.0v 659.745n 0.0v 659.755n 0.9v 664.745n 0.9v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.9v 749.745n 0.9v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.9v 799.745n 0.9v 799.755n 0.0v 804.745n 0.0v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.9v 884.745n 0.9v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.9v 909.745n 0.9v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.9v 959.745n 0.9v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 1), (165, 1), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 0), (210, 1), (215, 1), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 0), (285, 0), (290, 0), (295, 1), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 1), (340, 0), (345, 0), (350, 0), (355, 1), (360, 1), (365, 0), (370, 0), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 0), (410, 0), (415, 0), (420, 0), (425, 1), (430, 1), (435, 0), (440, 0), (445, 0), (450, 0), (455, 1), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 0), (555, 1), (560, 1), (565, 1), (570, 1), (575, 0), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 0), (635, 0), (640, 1), (645, 1), (650, 0), (655, 1), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 1), (700, 1), (705, 1), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 1), (745, 0), (750, 0), (755, 1), (760, 0), (765, 1), (770, 0), (775, 0), (780, 1), (785, 1), (790, 1), (795, 1), (800, 1), (805, 0), (810, 0), (815, 0), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 0), (885, 1), (890, 1), (895, 1), (900, 1), (905, 0), (910, 0), (915, 1), (920, 1), (925, 0), (930, 0), (935, 1), (940, 1), (945, 1), (950, 1), (955, 0), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va1_1  a1_1  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.9v 29.745n 0.9v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.9v 44.745n 0.9v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.9v 59.745n 0.9v 59.755n 0.9v 64.745n 0.9v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.9v 164.745n 0.9v 164.755n 0.9v 169.745n 0.9v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.9v 299.745n 0.9v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.9v 339.745n 0.9v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.9v 359.745n 0.9v 359.755n 0.9v 364.745n 0.9v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.9v 404.745n 0.9v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.9v 459.745n 0.9v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.0v 554.745n 0.0v 554.755n 0.9v 559.745n 0.9v 559.755n 0.9v 564.745n 0.9v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.0v 579.745n 0.0v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.9v 619.745n 0.9v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.9v 644.745n 0.9v 644.755n 0.9v 649.745n 0.9v 649.755n 0.0v 654.745n 0.0v 654.755n 0.9v 659.745n 0.9v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.9v 699.745n 0.9v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.9v 744.745n 0.9v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.9v 759.745n 0.9v 759.755n 0.0v 764.745n 0.0v 764.755n 0.9v 769.745n 0.9v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.9v 784.745n 0.9v 784.755n 0.9v 789.745n 0.9v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.9v 854.745n 0.9v 854.755n 0.9v 859.745n 0.9v 859.755n 0.9v 864.745n 0.9v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.0v 884.745n 0.0v 884.755n 0.9v 889.745n 0.9v 889.755n 0.9v 894.745n 0.9v 894.755n 0.9v 899.745n 0.9v 899.755n 0.9v 904.745n 0.9v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.9v 939.745n 0.9v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.0v 959.745n 0.0v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 1), (25, 1), (30, 1), (35, 1), (40, 0), (45, 0), (50, 0), (55, 1), (60, 1), (65, 1), (70, 0), (75, 0), (80, 0), (85, 1), (90, 1), (95, 1), (100, 0), (105, 0), (110, 0), (115, 1), (120, 1), (125, 0), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 0), (165, 0), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 0), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 1), (285, 1), (290, 1), (295, 0), (300, 0), (305, 0), (310, 1), (315, 1), (320, 1), (325, 1), (330, 0), (335, 1), (340, 0), (345, 1), (350, 1), (355, 1), (360, 1), (365, 0), (370, 0), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 1), (415, 1), (420, 1), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 1), (460, 0), (465, 0), (470, 0), (475, 1), (480, 1), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 1), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 1), (545, 1), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 1), (600, 1), (605, 1), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 1), (645, 0), (650, 0), (655, 1), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 1), (690, 1), (695, 0), (700, 0), (705, 0), (710, 1), (715, 1), (720, 1), (725, 0), (730, 0), (735, 0), (740, 1), (745, 1), (750, 0), (755, 1), (760, 1), (765, 0), (770, 1), (775, 1), (780, 0), (785, 0), (790, 0), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 1), (875, 1), (880, 1), (885, 0), (890, 0), (895, 0), (900, 0), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 1), (945, 1), (950, 1), (955, 0), (960, 0), (965, 0), (970, 1), (975, 1), (980, 1), (985, 1), (990, 1), (995, 0), (1000, 0), (1005, 0), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Va1_2  a1_2  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.9v 59.745n 0.9v 59.755n 0.9v 64.745n 0.9v 64.755n 0.9v 69.745n 0.9v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.0v 129.745n 0.0v 129.755n 0.9v 134.745n 0.9v 134.755n 0.9v 139.745n 0.9v 139.755n 0.9v 144.745n 0.9v 144.755n 0.9v 149.745n 0.9v 149.755n 0.9v 154.745n 0.9v 154.755n 0.9v 159.745n 0.9v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.9v 174.745n 0.9v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.9v 194.745n 0.9v 194.755n 0.9v 199.745n 0.9v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.0v 224.745n 0.0v 224.755n 0.9v 229.745n 0.9v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.9v 284.745n 0.9v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.0v 334.745n 0.0v 334.755n 0.9v 339.745n 0.9v 339.755n 0.0v 344.745n 0.0v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.9v 364.745n 0.9v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.9v 404.745n 0.9v 404.755n 0.9v 409.745n 0.9v 409.755n 0.9v 414.745n 0.9v 414.755n 0.9v 419.745n 0.9v 419.755n 0.9v 424.745n 0.9v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.9v 459.745n 0.9v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.9v 514.745n 0.9v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.9v 599.745n 0.9v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.9v 644.745n 0.9v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.9v 659.745n 0.9v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.0v 754.745n 0.0v 754.755n 0.9v 759.745n 0.9v 759.755n 0.9v 764.745n 0.9v 764.755n 0.0v 769.745n 0.0v 769.755n 0.9v 774.745n 0.9v 774.755n 0.9v 779.745n 0.9v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.9v 909.745n 0.9v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.9v 974.745n 0.9v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.9v 994.745n 0.9v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 1), (75, 1), (80, 1), (85, 0), (90, 1), (95, 1), (100, 0), (105, 0), (110, 0), (115, 1), (120, 1), (125, 1), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 0), (225, 0), (230, 0), (235, 0), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 0), (300, 1), (305, 1), (310, 1), (315, 0), (320, 0), (325, 1), (330, 0), (335, 0), (340, 1), (345, 1), (350, 1), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 1), (425, 1), (430, 1), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 1), (465, 1), (470, 1), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 0), (545, 0), (550, 1), (555, 1), (560, 1), (565, 0), (570, 0), (575, 1), (580, 0), (585, 0), (590, 0), (595, 0), (600, 0), (605, 0), (610, 1), (615, 1), (620, 0), (625, 0), (630, 0), (635, 1), (640, 0), (645, 1), (650, 0), (655, 1), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 1), (750, 0), (755, 0), (760, 1), (765, 1), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 1), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 1), (875, 1), (880, 1), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 1), (920, 1), (925, 0), (930, 1), (935, 0), (940, 0), (945, 0), (950, 0), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va1_3  a1_3  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.9v 74.745n 0.9v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.0v 89.745n 0.0v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.9v 129.745n 0.9v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.9v 174.745n 0.9v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.9v 194.745n 0.9v 194.755n 0.9v 199.745n 0.9v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.0v 299.745n 0.0v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.9v 329.745n 0.9v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.9v 424.745n 0.9v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.9v 474.745n 0.9v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.9v 514.745n 0.9v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.9v 564.745n 0.9v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.9v 579.745n 0.9v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.9v 614.745n 0.9v 614.755n 0.9v 619.745n 0.9v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.9v 639.745n 0.9v 639.755n 0.0v 644.745n 0.0v 644.755n 0.9v 649.745n 0.9v 649.755n 0.0v 654.745n 0.0v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.9v 749.745n 0.9v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.9v 764.745n 0.9v 764.755n 0.9v 769.745n 0.9v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.9v 804.745n 0.9v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.0v 929.745n 0.0v 929.755n 0.9v 934.745n 0.9v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.9v 959.745n 0.9v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.9v 979.745n 0.9v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 1), (45, 1), (50, 1), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 1), (165, 1), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 0), (230, 1), (235, 1), (240, 1), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 0), (320, 1), (325, 0), (330, 1), (335, 0), (340, 0), (345, 1), (350, 1), (355, 0), (360, 0), (365, 1), (370, 1), (375, 0), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 1), (425, 0), (430, 0), (435, 1), (440, 1), (445, 1), (450, 1), (455, 0), (460, 0), (465, 0), (470, 0), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 1), (560, 1), (565, 0), (570, 0), (575, 0), (580, 1), (585, 1), (590, 1), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 1), (635, 0), (640, 0), (645, 1), (650, 1), (655, 1), (660, 0), (665, 1), (670, 1), (675, 1), (680, 1), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 1), (715, 1), (720, 1), (725, 0), (730, 0), (735, 0), (740, 0), (745, 1), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 1), (910, 1), (915, 0), (920, 0), (925, 0), (930, 1), (935, 1), (940, 1), (945, 1), (950, 1), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 1), (1000, 1), (1005, 1), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Va1_4  a1_4  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.9v 44.745n 0.9v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.9v 164.745n 0.9v 164.755n 0.9v 169.745n 0.9v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.9v 199.745n 0.9v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.0v 229.745n 0.0v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.0v 319.745n 0.0v 319.755n 0.9v 324.745n 0.9v 324.755n 0.0v 329.745n 0.0v 329.755n 0.9v 334.745n 0.9v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.9v 424.745n 0.9v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.9v 509.745n 0.9v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.9v 559.745n 0.9v 559.755n 0.9v 564.745n 0.9v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.9v 634.745n 0.9v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.9v 649.745n 0.9v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.0v 664.745n 0.0v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.9v 749.745n 0.9v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.9v 909.745n 0.9v 909.755n 0.9v 914.745n 0.9v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 1), (45, 1), (50, 1), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 1), (165, 1), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 0), (230, 1), (235, 1), (240, 1), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 0), (320, 1), (325, 0), (330, 1), (335, 0), (340, 0), (345, 1), (350, 1), (355, 0), (360, 0), (365, 1), (370, 1), (375, 0), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 1), (425, 0), (430, 0), (435, 1), (440, 1), (445, 1), (450, 1), (455, 0), (460, 0), (465, 0), (470, 0), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 1), (560, 1), (565, 0), (570, 0), (575, 0), (580, 1), (585, 1), (590, 1), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 1), (635, 0), (640, 0), (645, 1), (650, 1), (655, 1), (660, 0), (665, 1), (670, 1), (675, 1), (680, 1), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 1), (715, 1), (720, 1), (725, 0), (730, 0), (735, 0), (740, 0), (745, 1), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 1), (910, 1), (915, 1), (920, 1), (925, 0), (930, 1), (935, 1), (940, 1), (945, 1), (950, 1), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 1), (1000, 1), (1005, 1), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Va1_5  a1_5  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.9v 44.745n 0.9v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.9v 164.745n 0.9v 164.755n 0.9v 169.745n 0.9v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.9v 199.745n 0.9v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.0v 229.745n 0.0v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.0v 319.745n 0.0v 319.755n 0.9v 324.745n 0.9v 324.755n 0.0v 329.745n 0.0v 329.755n 0.9v 334.745n 0.9v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.9v 424.745n 0.9v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.9v 509.745n 0.9v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.9v 559.745n 0.9v 559.755n 0.9v 564.745n 0.9v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.9v 634.745n 0.9v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.9v 649.745n 0.9v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.0v 664.745n 0.0v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.9v 749.745n 0.9v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.9v 909.745n 0.9v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.0v 929.745n 0.0v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 1), (45, 1), (50, 1), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 1), (165, 1), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 0), (230, 1), (235, 1), (240, 1), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 0), (320, 1), (325, 0), (330, 1), (335, 0), (340, 0), (345, 1), (350, 1), (355, 0), (360, 0), (365, 1), (370, 1), (375, 0), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 1), (425, 0), (430, 0), (435, 1), (440, 1), (445, 1), (450, 1), (455, 0), (460, 0), (465, 0), (470, 0), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 1), (560, 1), (565, 0), (570, 0), (575, 0), (580, 1), (585, 1), (590, 1), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 1), (635, 0), (640, 0), (645, 1), (650, 1), (655, 1), (660, 0), (665, 1), (670, 1), (675, 1), (680, 1), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 1), (715, 1), (720, 1), (725, 0), (730, 0), (735, 0), (740, 0), (745, 1), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 1), (910, 1), (915, 1), (920, 1), (925, 0), (930, 1), (935, 1), (940, 1), (945, 1), (950, 1), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 1), (1000, 1), (1005, 1), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Va1_6  a1_6  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.9v 44.745n 0.9v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.9v 164.745n 0.9v 164.755n 0.9v 169.745n 0.9v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.9v 199.745n 0.9v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.0v 229.745n 0.0v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.0v 319.745n 0.0v 319.755n 0.9v 324.745n 0.9v 324.755n 0.0v 329.745n 0.0v 329.755n 0.9v 334.745n 0.9v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.9v 424.745n 0.9v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.9v 509.745n 0.9v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.9v 559.745n 0.9v 559.755n 0.9v 564.745n 0.9v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.9v 634.745n 0.9v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.9v 649.745n 0.9v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.0v 664.745n 0.0v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.9v 749.745n 0.9v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.9v 909.745n 0.9v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.0v 929.745n 0.0v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 1), (45, 1), (50, 1), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 1), (165, 1), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 0), (230, 1), (235, 1), (240, 1), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 0), (320, 1), (325, 0), (330, 1), (335, 0), (340, 0), (345, 1), (350, 1), (355, 0), (360, 0), (365, 1), (370, 1), (375, 0), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 1), (425, 0), (430, 0), (435, 1), (440, 1), (445, 1), (450, 1), (455, 0), (460, 0), (465, 0), (470, 0), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 1), (560, 1), (565, 0), (570, 0), (575, 0), (580, 1), (585, 1), (590, 1), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 1), (635, 0), (640, 0), (645, 1), (650, 1), (655, 1), (660, 0), (665, 1), (670, 1), (675, 1), (680, 1), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 1), (715, 1), (720, 1), (725, 0), (730, 0), (735, 0), (740, 0), (745, 1), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 1), (910, 1), (915, 1), (920, 1), (925, 0), (930, 1), (935, 1), (940, 1), (945, 1), (950, 1), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 1), (1000, 1), (1005, 1), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Va1_7  a1_7  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.9v 44.745n 0.9v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.9v 164.745n 0.9v 164.755n 0.9v 169.745n 0.9v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.9v 199.745n 0.9v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.0v 229.745n 0.0v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.0v 319.745n 0.0v 319.755n 0.9v 324.745n 0.9v 324.755n 0.0v 329.745n 0.0v 329.755n 0.9v 334.745n 0.9v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.9v 424.745n 0.9v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.9v 509.745n 0.9v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.9v 559.745n 0.9v 559.755n 0.9v 564.745n 0.9v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.9v 634.745n 0.9v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.9v 649.745n 0.9v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.0v 664.745n 0.0v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.9v 749.745n 0.9v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.9v 909.745n 0.9v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.0v 929.745n 0.0v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 1), (45, 1), (50, 1), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 1), (165, 1), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 0), (230, 1), (235, 1), (240, 1), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 0), (320, 1), (325, 0), (330, 1), (335, 0), (340, 0), (345, 1), (350, 1), (355, 0), (360, 0), (365, 1), (370, 1), (375, 0), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 1), (425, 0), (430, 0), (435, 1), (440, 1), (445, 1), (450, 1), (455, 0), (460, 0), (465, 0), (470, 0), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 1), (560, 1), (565, 0), (570, 0), (575, 0), (580, 1), (585, 1), (590, 1), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 1), (635, 0), (640, 0), (645, 1), (650, 1), (655, 1), (660, 0), (665, 1), (670, 1), (675, 1), (680, 1), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 1), (715, 1), (720, 1), (725, 0), (730, 0), (735, 0), (740, 0), (745, 1), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 1), (910, 1), (915, 1), (920, 1), (925, 0), (930, 1), (935, 1), (940, 1), (945, 1), (950, 1), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 1), (1000, 1), (1005, 1), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Va1_8  a1_8  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.9v 44.745n 0.9v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.9v 164.745n 0.9v 164.755n 0.9v 169.745n 0.9v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.9v 199.745n 0.9v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.0v 229.745n 0.0v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.0v 319.745n 0.0v 319.755n 0.9v 324.745n 0.9v 324.755n 0.0v 329.745n 0.0v 329.755n 0.9v 334.745n 0.9v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.9v 424.745n 0.9v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.9v 509.745n 0.9v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.9v 559.745n 0.9v 559.755n 0.9v 564.745n 0.9v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.9v 634.745n 0.9v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.9v 649.745n 0.9v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.0v 664.745n 0.0v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.9v 749.745n 0.9v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.9v 909.745n 0.9v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.0v 929.745n 0.0v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 1), (45, 1), (50, 1), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 1), (165, 1), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 0), (230, 1), (235, 1), (240, 1), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 0), (320, 1), (325, 0), (330, 1), (335, 0), (340, 0), (345, 1), (350, 1), (355, 0), (360, 0), (365, 1), (370, 1), (375, 0), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 1), (425, 0), (430, 0), (435, 1), (440, 1), (445, 1), (450, 1), (455, 0), (460, 0), (465, 0), (470, 0), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 1), (560, 1), (565, 0), (570, 0), (575, 0), (580, 1), (585, 1), (590, 1), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 1), (635, 0), (640, 0), (645, 1), (650, 1), (655, 1), (660, 0), (665, 1), (670, 1), (675, 1), (680, 1), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 1), (715, 1), (720, 1), (725, 0), (730, 0), (735, 0), (740, 0), (745, 1), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 1), (910, 1), (915, 1), (920, 1), (925, 0), (930, 1), (935, 1), (940, 1), (945, 1), (950, 1), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 1), (1000, 1), (1005, 1), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Va1_9  a1_9  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.9v 44.745n 0.9v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.9v 164.745n 0.9v 164.755n 0.9v 169.745n 0.9v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.9v 199.745n 0.9v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.0v 229.745n 0.0v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.0v 319.745n 0.0v 319.755n 0.9v 324.745n 0.9v 324.755n 0.0v 329.745n 0.0v 329.755n 0.9v 334.745n 0.9v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.9v 424.745n 0.9v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.9v 509.745n 0.9v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.9v 559.745n 0.9v 559.755n 0.9v 564.745n 0.9v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.9v 634.745n 0.9v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.9v 649.745n 0.9v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.0v 664.745n 0.0v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.9v 749.745n 0.9v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.9v 909.745n 0.9v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.0v 929.745n 0.0v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 1), (45, 1), (50, 1), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 1), (165, 1), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 0), (230, 1), (235, 1), (240, 1), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 0), (320, 1), (325, 0), (330, 1), (335, 0), (340, 0), (345, 1), (350, 1), (355, 0), (360, 0), (365, 1), (370, 1), (375, 0), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 1), (425, 0), (430, 0), (435, 1), (440, 1), (445, 1), (450, 1), (455, 0), (460, 0), (465, 0), (470, 0), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 1), (560, 1), (565, 0), (570, 0), (575, 0), (580, 1), (585, 1), (590, 1), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 1), (635, 0), (640, 0), (645, 1), (650, 1), (655, 1), (660, 0), (665, 1), (670, 1), (675, 1), (680, 1), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 1), (715, 1), (720, 1), (725, 0), (730, 0), (735, 0), (740, 0), (745, 1), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 1), (910, 1), (915, 1), (920, 1), (925, 0), (930, 1), (935, 1), (940, 1), (945, 1), (950, 1), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 1), (1000, 1), (1005, 1), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Va1_10  a1_10  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.9v 44.745n 0.9v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.9v 164.745n 0.9v 164.755n 0.9v 169.745n 0.9v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.9v 199.745n 0.9v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.0v 229.745n 0.0v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.0v 319.745n 0.0v 319.755n 0.9v 324.745n 0.9v 324.755n 0.0v 329.745n 0.0v 329.755n 0.9v 334.745n 0.9v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.9v 424.745n 0.9v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.9v 509.745n 0.9v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.9v 559.745n 0.9v 559.755n 0.9v 564.745n 0.9v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.9v 634.745n 0.9v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.9v 649.745n 0.9v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.0v 664.745n 0.0v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.9v 749.745n 0.9v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.9v 909.745n 0.9v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.0v 929.745n 0.0v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )

 * Generation of control signals
* (time, data): [(0, 1), (5, 0), (10, 0), (15, 0), (20, 1), (25, 1), (30, 0), (35, 0), (40, 1), (45, 0), (50, 0), (55, 1), (60, 0), (65, 0), (70, 1), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 1), (160, 0), (165, 1), (170, 0), (175, 0), (180, 1), (185, 1), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 1), (225, 0), (230, 0), (235, 0), (240, 1), (245, 0), (250, 0), (255, 1), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 1), (305, 1), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 1), (340, 0), (345, 1), (350, 1), (355, 1), (360, 0), (365, 1), (370, 1), (375, 0), (380, 1), (385, 0), (390, 0), (395, 1), (400, 0), (405, 0), (410, 1), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 1), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 1), (525, 1), (530, 0), (535, 1), (540, 0), (545, 0), (550, 1), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 1), (585, 0), (590, 1), (595, 1), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 1), (640, 0), (645, 0), (650, 0), (655, 0), (660, 1), (665, 0), (670, 0), (675, 0), (680, 0), (685, 1), (690, 1), (695, 1), (700, 0), (705, 1), (710, 1), (715, 0), (720, 0), (725, 0), (730, 1), (735, 0), (740, 0), (745, 1), (750, 0), (755, 1), (760, 1), (765, 0), (770, 0), (775, 1), (780, 0), (785, 0), (790, 0), (795, 0), (800, 1), (805, 0), (810, 1), (815, 1), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 1), (870, 0), (875, 1), (880, 0), (885, 1), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 1), (920, 0), (925, 1), (930, 0), (935, 0), (940, 0), (945, 0), (950, 1), (955, 0), (960, 0), (965, 0), (970, 1), (975, 0), (980, 1), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 1), (1015, 0), (1020, 1), (1025, 1)]
VCSB0 CSB0 0 PWL (0n 0.9v 4.745n 0.9v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.9v 44.745n 0.9v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.9v 59.745n 0.9v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.9v 74.745n 0.9v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.9v 159.745n 0.9v 159.755n 0.0v 164.745n 0.0v 164.755n 0.9v 169.745n 0.9v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.9v 224.745n 0.9v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.9v 244.745n 0.9v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.9v 259.745n 0.9v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.9v 339.745n 0.9v 339.755n 0.0v 344.745n 0.0v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.0v 364.745n 0.0v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.0v 379.745n 0.0v 379.755n 0.9v 384.745n 0.9v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.9v 399.745n 0.9v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.9v 414.745n 0.9v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.9v 444.745n 0.9v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.0v 534.745n 0.0v 534.755n 0.9v 539.745n 0.9v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.9v 554.745n 0.9v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.9v 584.745n 0.9v 584.755n 0.0v 589.745n 0.0v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.9v 639.745n 0.9v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.9v 664.745n 0.9v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.0v 704.745n 0.0v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.9v 734.745n 0.9v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.9v 749.745n 0.9v 749.755n 0.0v 754.745n 0.0v 754.755n 0.9v 759.745n 0.9v 759.755n 0.9v 764.745n 0.9v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.9v 779.745n 0.9v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.9v 804.745n 0.9v 804.755n 0.0v 809.745n 0.0v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.9v 869.745n 0.9v 869.755n 0.0v 874.745n 0.0v 874.755n 0.9v 879.745n 0.9v 879.755n 0.0v 884.745n 0.0v 884.755n 0.9v 889.745n 0.9v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.9v 919.745n 0.9v 919.755n 0.0v 924.745n 0.0v 924.755n 0.9v 929.745n 0.9v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.9v 954.745n 0.9v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.9v 974.745n 0.9v 974.755n 0.0v 979.745n 0.0v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 1), (5, 1), (10, 1), (15, 1), (20, 0), (25, 0), (30, 1), (35, 1), (40, 0), (45, 1), (50, 1), (55, 0), (60, 1), (65, 0), (70, 0), (75, 1), (80, 1), (85, 0), (90, 0), (95, 1), (100, 0), (105, 1), (110, 1), (115, 0), (120, 1), (125, 0), (130, 0), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 0), (165, 1), (170, 0), (175, 1), (180, 1), (185, 1), (190, 1), (195, 0), (200, 1), (205, 1), (210, 0), (215, 1), (220, 0), (225, 0), (230, 0), (235, 1), (240, 0), (245, 0), (250, 0), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 0), (285, 0), (290, 1), (295, 0), (300, 0), (305, 1), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 1), (355, 0), (360, 1), (365, 0), (370, 1), (375, 0), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 0), (410, 1), (415, 1), (420, 0), (425, 0), (430, 1), (435, 0), (440, 1), (445, 1), (450, 1), (455, 0), (460, 0), (465, 1), (470, 0), (475, 0), (480, 1), (485, 0), (490, 1), (495, 1), (500, 1), (505, 1), (510, 0), (515, 0), (520, 1), (525, 1), (530, 1), (535, 1), (540, 0), (545, 1), (550, 0), (555, 0), (560, 1), (565, 0), (570, 1), (575, 0), (580, 0), (585, 1), (590, 0), (595, 0), (600, 1), (605, 0), (610, 0), (615, 1), (620, 0), (625, 1), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 1), (675, 1), (680, 1), (685, 0), (690, 1), (695, 0), (700, 1), (705, 1), (710, 0), (715, 1), (720, 1), (725, 0), (730, 1), (735, 1), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 1), (780, 0), (785, 1), (790, 1), (795, 0), (800, 0), (805, 0), (810, 1), (815, 1), (820, 0), (825, 1), (830, 1), (835, 0), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 0), (875, 1), (880, 0), (885, 0), (890, 1), (895, 1), (900, 1), (905, 0), (910, 1), (915, 0), (920, 1), (925, 0), (930, 0), (935, 0), (940, 1), (945, 1), (950, 1), (955, 0), (960, 0), (965, 1), (970, 0), (975, 1), (980, 0), (985, 1), (990, 1), (995, 0), (1000, 1), (1005, 1), (1010, 0), (1015, 1), (1020, 0), (1025, 1)]
VCSB1 CSB1 0 PWL (0n 0.9v 4.745n 0.9v 4.755n 0.9v 9.745n 0.9v 9.755n 0.9v 14.745n 0.9v 14.755n 0.9v 19.745n 0.9v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.0v 44.745n 0.0v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.0v 59.745n 0.0v 59.755n 0.9v 64.745n 0.9v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.9v 99.745n 0.9v 99.755n 0.0v 104.745n 0.0v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.0v 119.745n 0.0v 119.755n 0.9v 124.745n 0.9v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.9v 139.745n 0.9v 139.755n 0.9v 144.745n 0.9v 144.755n 0.9v 149.745n 0.9v 149.755n 0.9v 154.745n 0.9v 154.755n 0.9v 159.745n 0.9v 159.755n 0.0v 164.745n 0.0v 164.755n 0.9v 169.745n 0.9v 169.755n 0.0v 174.745n 0.0v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.9v 194.745n 0.9v 194.755n 0.0v 199.745n 0.0v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.0v 214.745n 0.0v 214.755n 0.9v 219.745n 0.9v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.9v 239.745n 0.9v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.9v 294.745n 0.9v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.9v 309.745n 0.9v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.9v 354.745n 0.9v 354.755n 0.0v 359.745n 0.0v 359.755n 0.9v 364.745n 0.9v 364.755n 0.0v 369.745n 0.0v 369.755n 0.9v 374.745n 0.9v 374.755n 0.0v 379.745n 0.0v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.9v 404.745n 0.9v 404.755n 0.0v 409.745n 0.0v 409.755n 0.9v 414.745n 0.9v 414.755n 0.9v 419.745n 0.9v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.9v 434.745n 0.9v 434.755n 0.0v 439.745n 0.0v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.9v 469.745n 0.9v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.9v 484.745n 0.9v 484.755n 0.0v 489.745n 0.0v 489.755n 0.9v 494.745n 0.9v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.9v 509.745n 0.9v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.0v 544.745n 0.0v 544.755n 0.9v 549.745n 0.9v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.9v 564.745n 0.9v 564.755n 0.0v 569.745n 0.0v 569.755n 0.9v 574.745n 0.9v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.9v 589.745n 0.9v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.9v 604.745n 0.9v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.9v 619.745n 0.9v 619.755n 0.0v 624.745n 0.0v 624.755n 0.9v 629.745n 0.9v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.0v 689.745n 0.0v 689.755n 0.9v 694.745n 0.9v 694.755n 0.0v 699.745n 0.0v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.0v 714.745n 0.0v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.0v 729.745n 0.0v 729.755n 0.9v 734.745n 0.9v 734.755n 0.9v 739.745n 0.9v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.9v 779.745n 0.9v 779.755n 0.0v 784.745n 0.0v 784.755n 0.9v 789.745n 0.9v 789.755n 0.9v 794.745n 0.9v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.0v 824.745n 0.0v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.0v 839.745n 0.0v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.9v 854.745n 0.9v 854.755n 0.9v 859.745n 0.9v 859.755n 0.9v 864.745n 0.9v 864.755n 0.9v 869.745n 0.9v 869.755n 0.0v 874.745n 0.0v 874.755n 0.9v 879.745n 0.9v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.9v 894.745n 0.9v 894.755n 0.9v 899.745n 0.9v 899.755n 0.9v 904.745n 0.9v 904.755n 0.0v 909.745n 0.0v 909.755n 0.9v 914.745n 0.9v 914.755n 0.0v 919.745n 0.0v 919.755n 0.9v 924.745n 0.9v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.9v 969.745n 0.9v 969.755n 0.0v 974.745n 0.0v 974.755n 0.9v 979.745n 0.9v 979.755n 0.0v 984.745n 0.0v 984.755n 0.9v 989.745n 0.9v 989.755n 0.9v 994.745n 0.9v 994.755n 0.0v 999.745n 0.0v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.9v )

* Generation of wmask signals
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 0), (35, 1), (40, 1), (45, 0), (50, 1), (55, 1), (60, 0), (65, 1), (70, 1), (75, 1), (80, 0), (85, 1), (90, 1), (95, 0), (100, 1), (105, 1), (110, 0), (115, 1), (120, 0), (125, 1), (130, 1), (135, 0), (140, 0), (145, 1), (150, 1), (155, 1), (160, 0), (165, 0), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 0), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 0), (230, 1), (235, 1), (240, 1), (245, 0), (250, 0), (255, 0), (260, 1), (265, 1), (270, 0), (275, 1), (280, 0), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 0), (320, 0), (325, 0), (330, 1), (335, 1), (340, 0), (345, 0), (350, 0), (355, 0), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 0), (405, 0), (410, 0), (415, 1), (420, 0), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 0), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 0), (545, 0), (550, 0), (555, 1), (560, 1), (565, 1), (570, 1), (575, 0), (580, 0), (585, 1), (590, 1), (595, 1), (600, 1), (605, 0), (610, 1), (615, 0), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 1), (665, 1), (670, 0), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 1), (715, 0), (720, 0), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 0), (755, 0), (760, 0), (765, 0), (770, 1), (775, 1), (780, 0), (785, 0), (790, 0), (795, 1), (800, 1), (805, 0), (810, 0), (815, 0), (820, 0), (825, 1), (830, 0), (835, 0), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 0), (875, 0), (880, 1), (885, 1), (890, 1), (895, 1), (900, 0), (905, 1), (910, 0), (915, 0), (920, 0), (925, 0), (930, 1), (935, 0), (940, 1), (945, 1), (950, 1), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
VWMASK0_0  WMASK0_0  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.9v 14.745n 0.9v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.0v 34.745n 0.0v 34.755n 0.9v 39.745n 0.9v 39.755n 0.9v 44.745n 0.9v 44.755n 0.0v 49.745n 0.0v 49.755n 0.9v 54.745n 0.9v 54.755n 0.9v 59.745n 0.9v 59.755n 0.0v 64.745n 0.0v 64.755n 0.9v 69.745n 0.9v 69.755n 0.9v 74.745n 0.9v 74.755n 0.9v 79.745n 0.9v 79.755n 0.0v 84.745n 0.0v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.0v 99.745n 0.0v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.0v 114.745n 0.0v 114.755n 0.9v 119.745n 0.9v 119.755n 0.0v 124.745n 0.0v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.9v 149.745n 0.9v 149.755n 0.9v 154.745n 0.9v 154.755n 0.9v 159.745n 0.9v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.9v 174.745n 0.9v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.9v 194.745n 0.9v 194.755n 0.0v 199.745n 0.0v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.0v 229.745n 0.0v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.0v 274.745n 0.0v 274.755n 0.9v 279.745n 0.9v 279.755n 0.0v 284.745n 0.0v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.9v 419.745n 0.9v 419.755n 0.0v 424.745n 0.0v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.9v 474.745n 0.9v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.0v 494.745n 0.0v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.9v 509.745n 0.9v 509.755n 0.9v 514.745n 0.9v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.9v 559.745n 0.9v 559.755n 0.9v 564.745n 0.9v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.9v 604.745n 0.9v 604.755n 0.0v 609.745n 0.0v 609.755n 0.9v 614.745n 0.9v 614.755n 0.0v 619.745n 0.0v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.9v 639.745n 0.9v 639.755n 0.9v 644.745n 0.9v 644.755n 0.9v 649.745n 0.9v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.9v 669.745n 0.9v 669.755n 0.0v 674.745n 0.0v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.9v 739.745n 0.9v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.9v 774.745n 0.9v 774.755n 0.9v 779.745n 0.9v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.9v 829.745n 0.9v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.9v 854.745n 0.9v 854.755n 0.9v 859.745n 0.9v 859.755n 0.9v 864.745n 0.9v 864.755n 0.9v 869.745n 0.9v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.9v 894.745n 0.9v 894.755n 0.9v 899.745n 0.9v 899.755n 0.0v 904.745n 0.0v 904.755n 0.9v 909.745n 0.9v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.9v 934.745n 0.9v 934.755n 0.0v 939.745n 0.0v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 0), (50, 0), (55, 0), (60, 0), (65, 1), (70, 1), (75, 1), (80, 0), (85, 1), (90, 1), (95, 0), (100, 1), (105, 1), (110, 0), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 0), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 1), (175, 0), (180, 0), (185, 0), (190, 1), (195, 0), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 0), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 0), (275, 1), (280, 0), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 0), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 0), (390, 1), (395, 1), (400, 0), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 0), (440, 0), (445, 1), (450, 1), (455, 1), (460, 0), (465, 1), (470, 1), (475, 1), (480, 0), (485, 1), (490, 0), (495, 1), (500, 1), (505, 1), (510, 0), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 0), (570, 1), (575, 0), (580, 0), (585, 1), (590, 1), (595, 1), (600, 1), (605, 0), (610, 0), (615, 1), (620, 0), (625, 1), (630, 1), (635, 1), (640, 0), (645, 0), (650, 1), (655, 1), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 0), (705, 0), (710, 0), (715, 1), (720, 0), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 1), (775, 1), (780, 0), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 0), (825, 1), (830, 1), (835, 0), (840, 1), (845, 1), (850, 1), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 1), (885, 1), (890, 1), (895, 1), (900, 0), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 0), (945, 0), (950, 0), (955, 1), (960, 1), (965, 0), (970, 0), (975, 1), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
VWMASK0_1  WMASK0_1  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.9v 14.745n 0.9v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.9v 44.745n 0.9v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.9v 69.745n 0.9v 69.755n 0.9v 74.745n 0.9v 74.755n 0.9v 79.745n 0.9v 79.755n 0.0v 84.745n 0.0v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.0v 99.745n 0.0v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.0v 114.745n 0.0v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.9v 139.745n 0.9v 139.755n 0.0v 144.745n 0.0v 144.755n 0.9v 149.745n 0.9v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.9v 174.745n 0.9v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.9v 194.745n 0.9v 194.755n 0.0v 199.745n 0.0v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.0v 229.745n 0.0v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.0v 274.745n 0.0v 274.755n 0.9v 279.745n 0.9v 279.755n 0.0v 284.745n 0.0v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.0v 329.745n 0.0v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.0v 389.745n 0.0v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.0v 404.745n 0.0v 404.755n 0.9v 409.745n 0.9v 409.755n 0.9v 414.745n 0.9v 414.755n 0.9v 419.745n 0.9v 419.755n 0.9v 424.745n 0.9v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.9v 459.745n 0.9v 459.755n 0.0v 464.745n 0.0v 464.755n 0.9v 469.745n 0.9v 469.755n 0.9v 474.745n 0.9v 474.755n 0.9v 479.745n 0.9v 479.755n 0.0v 484.745n 0.0v 484.755n 0.9v 489.745n 0.9v 489.755n 0.0v 494.745n 0.0v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.9v 509.745n 0.9v 509.755n 0.0v 514.745n 0.0v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.9v 564.745n 0.9v 564.755n 0.0v 569.745n 0.0v 569.755n 0.9v 574.745n 0.9v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.9v 604.745n 0.9v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.9v 619.745n 0.9v 619.755n 0.0v 624.745n 0.0v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.9v 639.745n 0.9v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.9v 719.745n 0.9v 719.755n 0.0v 724.745n 0.0v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.9v 739.745n 0.9v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.9v 759.745n 0.9v 759.755n 0.9v 764.745n 0.9v 764.755n 0.9v 769.745n 0.9v 769.755n 0.9v 774.745n 0.9v 774.755n 0.9v 779.745n 0.9v 779.755n 0.0v 784.745n 0.0v 784.755n 0.9v 789.745n 0.9v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.0v 824.745n 0.0v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.0v 839.745n 0.0v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.9v 854.745n 0.9v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.9v 894.745n 0.9v 894.755n 0.9v 899.745n 0.9v 899.755n 0.0v 904.745n 0.0v 904.755n 0.9v 909.745n 0.9v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.9v 959.745n 0.9v 959.755n 0.9v 964.745n 0.9v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 0), (35, 1), (40, 1), (45, 1), (50, 0), (55, 0), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 0), (95, 0), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 1), (210, 1), (215, 0), (220, 0), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 0), (275, 1), (280, 0), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 0), (315, 0), (320, 0), (325, 0), (330, 1), (335, 1), (340, 0), (345, 0), (350, 0), (355, 0), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 0), (395, 0), (400, 1), (405, 0), (410, 0), (415, 1), (420, 1), (425, 1), (430, 1), (435, 0), (440, 0), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 0), (480, 0), (485, 1), (490, 1), (495, 1), (500, 0), (505, 1), (510, 0), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 0), (550, 0), (555, 1), (560, 1), (565, 0), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 0), (605, 0), (610, 1), (615, 0), (620, 0), (625, 1), (630, 1), (635, 1), (640, 0), (645, 1), (650, 0), (655, 1), (660, 1), (665, 1), (670, 1), (675, 0), (680, 1), (685, 1), (690, 1), (695, 1), (700, 0), (705, 0), (710, 0), (715, 0), (720, 1), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 0), (755, 0), (760, 0), (765, 0), (770, 1), (775, 1), (780, 1), (785, 0), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 0), (825, 1), (830, 1), (835, 0), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 0), (875, 0), (880, 0), (885, 0), (890, 1), (895, 1), (900, 1), (905, 1), (910, 0), (915, 0), (920, 0), (925, 0), (930, 1), (935, 0), (940, 1), (945, 1), (950, 1), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
VWMASK0_2  WMASK0_2  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.9v 14.745n 0.9v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.0v 34.745n 0.0v 34.755n 0.9v 39.745n 0.9v 39.755n 0.9v 44.745n 0.9v 44.755n 0.9v 49.745n 0.9v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.9v 64.745n 0.9v 64.755n 0.9v 69.745n 0.9v 69.755n 0.9v 74.745n 0.9v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.9v 89.745n 0.9v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.9v 139.745n 0.9v 139.755n 0.9v 144.745n 0.9v 144.755n 0.9v 149.745n 0.9v 149.755n 0.9v 154.745n 0.9v 154.755n 0.9v 159.745n 0.9v 159.755n 0.9v 164.745n 0.9v 164.755n 0.9v 169.745n 0.9v 169.755n 0.9v 174.745n 0.9v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.9v 194.745n 0.9v 194.755n 0.9v 199.745n 0.9v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.9v 229.745n 0.9v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.0v 274.745n 0.0v 274.755n 0.9v 279.745n 0.9v 279.755n 0.0v 284.745n 0.0v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.9v 404.745n 0.9v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.9v 419.745n 0.9v 419.755n 0.9v 424.745n 0.9v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.9v 474.745n 0.9v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.9v 499.745n 0.9v 499.755n 0.0v 504.745n 0.0v 504.755n 0.9v 509.745n 0.9v 509.755n 0.0v 514.745n 0.0v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.9v 559.745n 0.9v 559.755n 0.9v 564.745n 0.9v 564.755n 0.0v 569.745n 0.0v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.9v 614.745n 0.9v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.9v 639.745n 0.9v 639.755n 0.0v 644.745n 0.0v 644.755n 0.9v 649.745n 0.9v 649.755n 0.0v 654.745n 0.0v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.0v 679.745n 0.0v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.9v 724.745n 0.9v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.9v 739.745n 0.9v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.9v 774.745n 0.9v 774.755n 0.9v 779.745n 0.9v 779.755n 0.9v 784.745n 0.9v 784.755n 0.0v 789.745n 0.0v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.0v 824.745n 0.0v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.0v 839.745n 0.0v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.9v 854.745n 0.9v 854.755n 0.9v 859.745n 0.9v 859.755n 0.9v 864.745n 0.9v 864.755n 0.9v 869.745n 0.9v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.9v 894.745n 0.9v 894.755n 0.9v 899.745n 0.9v 899.755n 0.9v 904.745n 0.9v 904.755n 0.9v 909.745n 0.9v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.9v 934.745n 0.9v 934.755n 0.0v 939.745n 0.0v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 0), (35, 1), (40, 1), (45, 0), (50, 1), (55, 1), (60, 0), (65, 0), (70, 0), (75, 1), (80, 0), (85, 1), (90, 0), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 1), (130, 0), (135, 0), (140, 1), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 1), (175, 1), (180, 1), (185, 1), (190, 0), (195, 1), (200, 1), (205, 1), (210, 0), (215, 1), (220, 1), (225, 0), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 0), (325, 1), (330, 1), (335, 1), (340, 0), (345, 0), (350, 0), (355, 0), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 0), (440, 0), (445, 1), (450, 1), (455, 1), (460, 0), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 0), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 0), (570, 1), (575, 0), (580, 0), (585, 1), (590, 1), (595, 1), (600, 0), (605, 1), (610, 1), (615, 1), (620, 0), (625, 1), (630, 1), (635, 1), (640, 1), (645, 0), (650, 0), (655, 1), (660, 1), (665, 1), (670, 0), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 0), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 1), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 0), (905, 1), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 1), (940, 1), (945, 1), (950, 1), (955, 1), (960, 1), (965, 0), (970, 0), (975, 1), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
VWMASK0_3  WMASK0_3  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.9v 14.745n 0.9v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.0v 34.745n 0.0v 34.755n 0.9v 39.745n 0.9v 39.755n 0.9v 44.745n 0.9v 44.755n 0.0v 49.745n 0.0v 49.755n 0.9v 54.745n 0.9v 54.755n 0.9v 59.745n 0.9v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.9v 79.745n 0.9v 79.755n 0.0v 84.745n 0.0v 84.755n 0.9v 89.745n 0.9v 89.755n 0.0v 94.745n 0.0v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.9v 129.745n 0.9v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.9v 144.745n 0.9v 144.755n 0.9v 149.745n 0.9v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.9v 174.745n 0.9v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.0v 194.745n 0.0v 194.755n 0.9v 199.745n 0.9v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.0v 214.745n 0.0v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.0v 229.745n 0.0v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.0v 324.745n 0.0v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.9v 404.745n 0.9v 404.755n 0.9v 409.745n 0.9v 409.755n 0.9v 414.745n 0.9v 414.755n 0.9v 419.745n 0.9v 419.755n 0.9v 424.745n 0.9v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.9v 459.745n 0.9v 459.755n 0.0v 464.745n 0.0v 464.755n 0.9v 469.745n 0.9v 469.755n 0.9v 474.745n 0.9v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.0v 494.745n 0.0v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.9v 509.745n 0.9v 509.755n 0.9v 514.745n 0.9v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.9v 564.745n 0.9v 564.755n 0.0v 569.745n 0.0v 569.755n 0.9v 574.745n 0.9v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.0v 604.745n 0.0v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.9v 619.745n 0.9v 619.755n 0.0v 624.745n 0.0v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.9v 639.745n 0.9v 639.755n 0.9v 644.745n 0.9v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.9v 669.745n 0.9v 669.755n 0.0v 674.745n 0.0v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.0v 724.745n 0.0v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.9v 739.745n 0.9v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.9v 759.745n 0.9v 759.755n 0.9v 764.745n 0.9v 764.755n 0.9v 769.745n 0.9v 769.755n 0.9v 774.745n 0.9v 774.755n 0.9v 779.745n 0.9v 779.755n 0.9v 784.745n 0.9v 784.755n 0.9v 789.745n 0.9v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.9v 854.745n 0.9v 854.755n 0.9v 859.745n 0.9v 859.755n 0.9v 864.745n 0.9v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.9v 894.745n 0.9v 894.755n 0.9v 899.745n 0.9v 899.755n 0.0v 904.745n 0.0v 904.755n 0.9v 909.745n 0.9v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.9v 939.745n 0.9v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.9v 964.745n 0.9v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* PULSE: period=5
Vclk0 clk0 0 PULSE (0 0.9 4.995n 0.01n 0.01n 2.49n 5n)
* PULSE: period=5
Vclk1 clk1 0 PULSE (0 0.9 4.995n 0.01n 0.01n 2.49n 5n)

 * Generation of dout measurements
* CHECK dout1_0 Vdout1_0ck4 = 0 time = 25
.meas tran vdout1_0ck4 FIND v(dout1_0) AT=25.025n

* CHECK dout1_1 Vdout1_1ck4 = 0.9 time = 25
.meas tran vdout1_1ck4 FIND v(dout1_1) AT=25.025n

* CHECK dout1_2 Vdout1_2ck4 = 0 time = 25
.meas tran vdout1_2ck4 FIND v(dout1_2) AT=25.025n

* CHECK dout1_3 Vdout1_3ck4 = 0.9 time = 25
.meas tran vdout1_3ck4 FIND v(dout1_3) AT=25.025n

* CHECK dout1_4 Vdout1_4ck4 = 0.9 time = 25
.meas tran vdout1_4ck4 FIND v(dout1_4) AT=25.025n

* CHECK dout1_5 Vdout1_5ck4 = 0.9 time = 25
.meas tran vdout1_5ck4 FIND v(dout1_5) AT=25.025n

* CHECK dout1_6 Vdout1_6ck4 = 0.9 time = 25
.meas tran vdout1_6ck4 FIND v(dout1_6) AT=25.025n

* CHECK dout1_7 Vdout1_7ck4 = 0.9 time = 25
.meas tran vdout1_7ck4 FIND v(dout1_7) AT=25.025n

* CHECK dout1_0 Vdout1_0ck5 = 0 time = 30
.meas tran vdout1_0ck5 FIND v(dout1_0) AT=30.025n

* CHECK dout1_1 Vdout1_1ck5 = 0 time = 30
.meas tran vdout1_1ck5 FIND v(dout1_1) AT=30.025n

* CHECK dout1_2 Vdout1_2ck5 = 0.9 time = 30
.meas tran vdout1_2ck5 FIND v(dout1_2) AT=30.025n

* CHECK dout1_3 Vdout1_3ck5 = 0 time = 30
.meas tran vdout1_3ck5 FIND v(dout1_3) AT=30.025n

* CHECK dout1_4 Vdout1_4ck5 = 0 time = 30
.meas tran vdout1_4ck5 FIND v(dout1_4) AT=30.025n

* CHECK dout1_5 Vdout1_5ck5 = 0 time = 30
.meas tran vdout1_5ck5 FIND v(dout1_5) AT=30.025n

* CHECK dout1_6 Vdout1_6ck5 = 0 time = 30
.meas tran vdout1_6ck5 FIND v(dout1_6) AT=30.025n

* CHECK dout1_7 Vdout1_7ck5 = 0 time = 30
.meas tran vdout1_7ck5 FIND v(dout1_7) AT=30.025n

* CHECK dout1_0 Vdout1_0ck8 = 0.9 time = 45
.meas tran vdout1_0ck8 FIND v(dout1_0) AT=45.025n

* CHECK dout1_1 Vdout1_1ck8 = 0 time = 45
.meas tran vdout1_1ck8 FIND v(dout1_1) AT=45.025n

* CHECK dout1_2 Vdout1_2ck8 = 0 time = 45
.meas tran vdout1_2ck8 FIND v(dout1_2) AT=45.025n

* CHECK dout1_3 Vdout1_3ck8 = 0 time = 45
.meas tran vdout1_3ck8 FIND v(dout1_3) AT=45.025n

* CHECK dout1_4 Vdout1_4ck8 = 0.9 time = 45
.meas tran vdout1_4ck8 FIND v(dout1_4) AT=45.025n

* CHECK dout1_5 Vdout1_5ck8 = 0.9 time = 45
.meas tran vdout1_5ck8 FIND v(dout1_5) AT=45.025n

* CHECK dout1_6 Vdout1_6ck8 = 0.9 time = 45
.meas tran vdout1_6ck8 FIND v(dout1_6) AT=45.025n

* CHECK dout1_7 Vdout1_7ck8 = 0 time = 45
.meas tran vdout1_7ck8 FIND v(dout1_7) AT=45.025n

* CHECK dout1_0 Vdout1_0ck11 = 0 time = 60
.meas tran vdout1_0ck11 FIND v(dout1_0) AT=60.025n

* CHECK dout1_1 Vdout1_1ck11 = 0 time = 60
.meas tran vdout1_1ck11 FIND v(dout1_1) AT=60.025n

* CHECK dout1_2 Vdout1_2ck11 = 0 time = 60
.meas tran vdout1_2ck11 FIND v(dout1_2) AT=60.025n

* CHECK dout1_3 Vdout1_3ck11 = 0.9 time = 60
.meas tran vdout1_3ck11 FIND v(dout1_3) AT=60.025n

* CHECK dout1_4 Vdout1_4ck11 = 0.9 time = 60
.meas tran vdout1_4ck11 FIND v(dout1_4) AT=60.025n

* CHECK dout1_5 Vdout1_5ck11 = 0.9 time = 60
.meas tran vdout1_5ck11 FIND v(dout1_5) AT=60.025n

* CHECK dout1_6 Vdout1_6ck11 = 0 time = 60
.meas tran vdout1_6ck11 FIND v(dout1_6) AT=60.025n

* CHECK dout1_7 Vdout1_7ck11 = 0.9 time = 60
.meas tran vdout1_7ck11 FIND v(dout1_7) AT=60.025n

* CHECK dout1_0 Vdout1_0ck13 = 0 time = 70
.meas tran vdout1_0ck13 FIND v(dout1_0) AT=70.025n

* CHECK dout1_1 Vdout1_1ck13 = 0.9 time = 70
.meas tran vdout1_1ck13 FIND v(dout1_1) AT=70.025n

* CHECK dout1_2 Vdout1_2ck13 = 0 time = 70
.meas tran vdout1_2ck13 FIND v(dout1_2) AT=70.025n

* CHECK dout1_3 Vdout1_3ck13 = 0.9 time = 70
.meas tran vdout1_3ck13 FIND v(dout1_3) AT=70.025n

* CHECK dout1_4 Vdout1_4ck13 = 0.9 time = 70
.meas tran vdout1_4ck13 FIND v(dout1_4) AT=70.025n

* CHECK dout1_5 Vdout1_5ck13 = 0.9 time = 70
.meas tran vdout1_5ck13 FIND v(dout1_5) AT=70.025n

* CHECK dout1_6 Vdout1_6ck13 = 0.9 time = 70
.meas tran vdout1_6ck13 FIND v(dout1_6) AT=70.025n

* CHECK dout1_7 Vdout1_7ck13 = 0.9 time = 70
.meas tran vdout1_7ck13 FIND v(dout1_7) AT=70.025n

* CHECK dout1_0 Vdout1_0ck14 = 0.9 time = 75
.meas tran vdout1_0ck14 FIND v(dout1_0) AT=75.025n

* CHECK dout1_1 Vdout1_1ck14 = 0.9 time = 75
.meas tran vdout1_1ck14 FIND v(dout1_1) AT=75.025n

* CHECK dout1_2 Vdout1_2ck14 = 0 time = 75
.meas tran vdout1_2ck14 FIND v(dout1_2) AT=75.025n

* CHECK dout1_3 Vdout1_3ck14 = 0.9 time = 75
.meas tran vdout1_3ck14 FIND v(dout1_3) AT=75.025n

* CHECK dout1_4 Vdout1_4ck14 = 0 time = 75
.meas tran vdout1_4ck14 FIND v(dout1_4) AT=75.025n

* CHECK dout1_5 Vdout1_5ck14 = 0 time = 75
.meas tran vdout1_5ck14 FIND v(dout1_5) AT=75.025n

* CHECK dout1_6 Vdout1_6ck14 = 0 time = 75
.meas tran vdout1_6ck14 FIND v(dout1_6) AT=75.025n

* CHECK dout1_7 Vdout1_7ck14 = 0.9 time = 75
.meas tran vdout1_7ck14 FIND v(dout1_7) AT=75.025n

* CHECK dout1_0 Vdout1_0ck17 = 0 time = 90
.meas tran vdout1_0ck17 FIND v(dout1_0) AT=90.025n

* CHECK dout1_1 Vdout1_1ck17 = 0.9 time = 90
.meas tran vdout1_1ck17 FIND v(dout1_1) AT=90.025n

* CHECK dout1_2 Vdout1_2ck17 = 0 time = 90
.meas tran vdout1_2ck17 FIND v(dout1_2) AT=90.025n

* CHECK dout1_3 Vdout1_3ck17 = 0.9 time = 90
.meas tran vdout1_3ck17 FIND v(dout1_3) AT=90.025n

* CHECK dout1_4 Vdout1_4ck17 = 0 time = 90
.meas tran vdout1_4ck17 FIND v(dout1_4) AT=90.025n

* CHECK dout1_5 Vdout1_5ck17 = 0 time = 90
.meas tran vdout1_5ck17 FIND v(dout1_5) AT=90.025n

* CHECK dout1_6 Vdout1_6ck17 = 0.9 time = 90
.meas tran vdout1_6ck17 FIND v(dout1_6) AT=90.025n

* CHECK dout1_7 Vdout1_7ck17 = 0.9 time = 90
.meas tran vdout1_7ck17 FIND v(dout1_7) AT=90.025n

* CHECK dout1_0 Vdout1_0ck18 = 0.9 time = 95
.meas tran vdout1_0ck18 FIND v(dout1_0) AT=95.025n

* CHECK dout1_1 Vdout1_1ck18 = 0.9 time = 95
.meas tran vdout1_1ck18 FIND v(dout1_1) AT=95.025n

* CHECK dout1_2 Vdout1_2ck18 = 0.9 time = 95
.meas tran vdout1_2ck18 FIND v(dout1_2) AT=95.025n

* CHECK dout1_3 Vdout1_3ck18 = 0.9 time = 95
.meas tran vdout1_3ck18 FIND v(dout1_3) AT=95.025n

* CHECK dout1_4 Vdout1_4ck18 = 0 time = 95
.meas tran vdout1_4ck18 FIND v(dout1_4) AT=95.025n

* CHECK dout1_5 Vdout1_5ck18 = 0 time = 95
.meas tran vdout1_5ck18 FIND v(dout1_5) AT=95.025n

* CHECK dout1_6 Vdout1_6ck18 = 0.9 time = 95
.meas tran vdout1_6ck18 FIND v(dout1_6) AT=95.025n

* CHECK dout1_7 Vdout1_7ck18 = 0.9 time = 95
.meas tran vdout1_7ck18 FIND v(dout1_7) AT=95.025n

* CHECK dout1_0 Vdout1_0ck20 = 0.9 time = 105
.meas tran vdout1_0ck20 FIND v(dout1_0) AT=105.025n

* CHECK dout1_1 Vdout1_1ck20 = 0 time = 105
.meas tran vdout1_1ck20 FIND v(dout1_1) AT=105.025n

* CHECK dout1_2 Vdout1_2ck20 = 0 time = 105
.meas tran vdout1_2ck20 FIND v(dout1_2) AT=105.025n

* CHECK dout1_3 Vdout1_3ck20 = 0 time = 105
.meas tran vdout1_3ck20 FIND v(dout1_3) AT=105.025n

* CHECK dout1_4 Vdout1_4ck20 = 0.9 time = 105
.meas tran vdout1_4ck20 FIND v(dout1_4) AT=105.025n

* CHECK dout1_5 Vdout1_5ck20 = 0.9 time = 105
.meas tran vdout1_5ck20 FIND v(dout1_5) AT=105.025n

* CHECK dout1_6 Vdout1_6ck20 = 0.9 time = 105
.meas tran vdout1_6ck20 FIND v(dout1_6) AT=105.025n

* CHECK dout1_7 Vdout1_7ck20 = 0 time = 105
.meas tran vdout1_7ck20 FIND v(dout1_7) AT=105.025n

* CHECK dout1_0 Vdout1_0ck23 = 0.9 time = 120
.meas tran vdout1_0ck23 FIND v(dout1_0) AT=120.025n

* CHECK dout1_1 Vdout1_1ck23 = 0 time = 120
.meas tran vdout1_1ck23 FIND v(dout1_1) AT=120.025n

* CHECK dout1_2 Vdout1_2ck23 = 0.9 time = 120
.meas tran vdout1_2ck23 FIND v(dout1_2) AT=120.025n

* CHECK dout1_3 Vdout1_3ck23 = 0.9 time = 120
.meas tran vdout1_3ck23 FIND v(dout1_3) AT=120.025n

* CHECK dout1_4 Vdout1_4ck23 = 0 time = 120
.meas tran vdout1_4ck23 FIND v(dout1_4) AT=120.025n

* CHECK dout1_5 Vdout1_5ck23 = 0 time = 120
.meas tran vdout1_5ck23 FIND v(dout1_5) AT=120.025n

* CHECK dout1_6 Vdout1_6ck23 = 0.9 time = 120
.meas tran vdout1_6ck23 FIND v(dout1_6) AT=120.025n

* CHECK dout1_7 Vdout1_7ck23 = 0.9 time = 120
.meas tran vdout1_7ck23 FIND v(dout1_7) AT=120.025n

* CHECK dout1_0 Vdout1_0ck25 = 0.9 time = 130
.meas tran vdout1_0ck25 FIND v(dout1_0) AT=130.025n

* CHECK dout1_1 Vdout1_1ck25 = 0.9 time = 130
.meas tran vdout1_1ck25 FIND v(dout1_1) AT=130.025n

* CHECK dout1_2 Vdout1_2ck25 = 0 time = 130
.meas tran vdout1_2ck25 FIND v(dout1_2) AT=130.025n

* CHECK dout1_3 Vdout1_3ck25 = 0.9 time = 130
.meas tran vdout1_3ck25 FIND v(dout1_3) AT=130.025n

* CHECK dout1_4 Vdout1_4ck25 = 0 time = 130
.meas tran vdout1_4ck25 FIND v(dout1_4) AT=130.025n

* CHECK dout1_5 Vdout1_5ck25 = 0 time = 130
.meas tran vdout1_5ck25 FIND v(dout1_5) AT=130.025n

* CHECK dout1_6 Vdout1_6ck25 = 0 time = 130
.meas tran vdout1_6ck25 FIND v(dout1_6) AT=130.025n

* CHECK dout1_7 Vdout1_7ck25 = 0.9 time = 130
.meas tran vdout1_7ck25 FIND v(dout1_7) AT=130.025n

* CHECK dout1_0 Vdout1_0ck26 = 0.9 time = 135
.meas tran vdout1_0ck26 FIND v(dout1_0) AT=135.025n

* CHECK dout1_1 Vdout1_1ck26 = 0.9 time = 135
.meas tran vdout1_1ck26 FIND v(dout1_1) AT=135.025n

* CHECK dout1_2 Vdout1_2ck26 = 0.9 time = 135
.meas tran vdout1_2ck26 FIND v(dout1_2) AT=135.025n

* CHECK dout1_3 Vdout1_3ck26 = 0.9 time = 135
.meas tran vdout1_3ck26 FIND v(dout1_3) AT=135.025n

* CHECK dout1_4 Vdout1_4ck26 = 0 time = 135
.meas tran vdout1_4ck26 FIND v(dout1_4) AT=135.025n

* CHECK dout1_5 Vdout1_5ck26 = 0 time = 135
.meas tran vdout1_5ck26 FIND v(dout1_5) AT=135.025n

* CHECK dout1_6 Vdout1_6ck26 = 0.9 time = 135
.meas tran vdout1_6ck26 FIND v(dout1_6) AT=135.025n

* CHECK dout1_7 Vdout1_7ck26 = 0 time = 135
.meas tran vdout1_7ck26 FIND v(dout1_7) AT=135.025n

* CHECK dout1_0 Vdout1_0ck32 = 0.9 time = 165
.meas tran vdout1_0ck32 FIND v(dout1_0) AT=165.025n

* CHECK dout1_1 Vdout1_1ck32 = 0 time = 165
.meas tran vdout1_1ck32 FIND v(dout1_1) AT=165.025n

* CHECK dout1_2 Vdout1_2ck32 = 0 time = 165
.meas tran vdout1_2ck32 FIND v(dout1_2) AT=165.025n

* CHECK dout1_3 Vdout1_3ck32 = 0 time = 165
.meas tran vdout1_3ck32 FIND v(dout1_3) AT=165.025n

* CHECK dout1_4 Vdout1_4ck32 = 0.9 time = 165
.meas tran vdout1_4ck32 FIND v(dout1_4) AT=165.025n

* CHECK dout1_5 Vdout1_5ck32 = 0.9 time = 165
.meas tran vdout1_5ck32 FIND v(dout1_5) AT=165.025n

* CHECK dout1_6 Vdout1_6ck32 = 0.9 time = 165
.meas tran vdout1_6ck32 FIND v(dout1_6) AT=165.025n

* CHECK dout1_7 Vdout1_7ck32 = 0 time = 165
.meas tran vdout1_7ck32 FIND v(dout1_7) AT=165.025n

* CHECK dout1_0 Vdout1_0ck34 = 0.9 time = 175
.meas tran vdout1_0ck34 FIND v(dout1_0) AT=175.025n

* CHECK dout1_1 Vdout1_1ck34 = 0.9 time = 175
.meas tran vdout1_1ck34 FIND v(dout1_1) AT=175.025n

* CHECK dout1_2 Vdout1_2ck34 = 0.9 time = 175
.meas tran vdout1_2ck34 FIND v(dout1_2) AT=175.025n

* CHECK dout1_3 Vdout1_3ck34 = 0.9 time = 175
.meas tran vdout1_3ck34 FIND v(dout1_3) AT=175.025n

* CHECK dout1_4 Vdout1_4ck34 = 0 time = 175
.meas tran vdout1_4ck34 FIND v(dout1_4) AT=175.025n

* CHECK dout1_5 Vdout1_5ck34 = 0 time = 175
.meas tran vdout1_5ck34 FIND v(dout1_5) AT=175.025n

* CHECK dout1_6 Vdout1_6ck34 = 0.9 time = 175
.meas tran vdout1_6ck34 FIND v(dout1_6) AT=175.025n

* CHECK dout1_7 Vdout1_7ck34 = 0.9 time = 175
.meas tran vdout1_7ck34 FIND v(dout1_7) AT=175.025n

* CHECK dout1_0 Vdout1_0ck39 = 0.9 time = 200
.meas tran vdout1_0ck39 FIND v(dout1_0) AT=200.025n

* CHECK dout1_1 Vdout1_1ck39 = 0 time = 200
.meas tran vdout1_1ck39 FIND v(dout1_1) AT=200.025n

* CHECK dout1_2 Vdout1_2ck39 = 0.9 time = 200
.meas tran vdout1_2ck39 FIND v(dout1_2) AT=200.025n

* CHECK dout1_3 Vdout1_3ck39 = 0.9 time = 200
.meas tran vdout1_3ck39 FIND v(dout1_3) AT=200.025n

* CHECK dout1_4 Vdout1_4ck39 = 0.9 time = 200
.meas tran vdout1_4ck39 FIND v(dout1_4) AT=200.025n

* CHECK dout1_5 Vdout1_5ck39 = 0.9 time = 200
.meas tran vdout1_5ck39 FIND v(dout1_5) AT=200.025n

* CHECK dout1_6 Vdout1_6ck39 = 0.9 time = 200
.meas tran vdout1_6ck39 FIND v(dout1_6) AT=200.025n

* CHECK dout1_7 Vdout1_7ck39 = 0.9 time = 200
.meas tran vdout1_7ck39 FIND v(dout1_7) AT=200.025n

* CHECK dout1_0 Vdout1_0ck42 = 0 time = 215
.meas tran vdout1_0ck42 FIND v(dout1_0) AT=215.025n

* CHECK dout1_1 Vdout1_1ck42 = 0 time = 215
.meas tran vdout1_1ck42 FIND v(dout1_1) AT=215.025n

* CHECK dout1_2 Vdout1_2ck42 = 0.9 time = 215
.meas tran vdout1_2ck42 FIND v(dout1_2) AT=215.025n

* CHECK dout1_3 Vdout1_3ck42 = 0.9 time = 215
.meas tran vdout1_3ck42 FIND v(dout1_3) AT=215.025n

* CHECK dout1_4 Vdout1_4ck42 = 0.9 time = 215
.meas tran vdout1_4ck42 FIND v(dout1_4) AT=215.025n

* CHECK dout1_5 Vdout1_5ck42 = 0.9 time = 215
.meas tran vdout1_5ck42 FIND v(dout1_5) AT=215.025n

* CHECK dout1_6 Vdout1_6ck42 = 0.9 time = 215
.meas tran vdout1_6ck42 FIND v(dout1_6) AT=215.025n

* CHECK dout1_7 Vdout1_7ck42 = 0 time = 215
.meas tran vdout1_7ck42 FIND v(dout1_7) AT=215.025n

* CHECK dout1_0 Vdout1_0ck44 = 0.9 time = 225
.meas tran vdout1_0ck44 FIND v(dout1_0) AT=225.025n

* CHECK dout1_1 Vdout1_1ck44 = 0 time = 225
.meas tran vdout1_1ck44 FIND v(dout1_1) AT=225.025n

* CHECK dout1_2 Vdout1_2ck44 = 0.9 time = 225
.meas tran vdout1_2ck44 FIND v(dout1_2) AT=225.025n

* CHECK dout1_3 Vdout1_3ck44 = 0.9 time = 225
.meas tran vdout1_3ck44 FIND v(dout1_3) AT=225.025n

* CHECK dout1_4 Vdout1_4ck44 = 0.9 time = 225
.meas tran vdout1_4ck44 FIND v(dout1_4) AT=225.025n

* CHECK dout1_5 Vdout1_5ck44 = 0 time = 225
.meas tran vdout1_5ck44 FIND v(dout1_5) AT=225.025n

* CHECK dout1_6 Vdout1_6ck44 = 0.9 time = 225
.meas tran vdout1_6ck44 FIND v(dout1_6) AT=225.025n

* CHECK dout1_7 Vdout1_7ck44 = 0 time = 225
.meas tran vdout1_7ck44 FIND v(dout1_7) AT=225.025n

* CHECK dout1_0 Vdout1_0ck45 = 0.9 time = 230
.meas tran vdout1_0ck45 FIND v(dout1_0) AT=230.025n

* CHECK dout1_1 Vdout1_1ck45 = 0.9 time = 230
.meas tran vdout1_1ck45 FIND v(dout1_1) AT=230.025n

* CHECK dout1_2 Vdout1_2ck45 = 0.9 time = 230
.meas tran vdout1_2ck45 FIND v(dout1_2) AT=230.025n

* CHECK dout1_3 Vdout1_3ck45 = 0.9 time = 230
.meas tran vdout1_3ck45 FIND v(dout1_3) AT=230.025n

* CHECK dout1_4 Vdout1_4ck45 = 0 time = 230
.meas tran vdout1_4ck45 FIND v(dout1_4) AT=230.025n

* CHECK dout1_5 Vdout1_5ck45 = 0 time = 230
.meas tran vdout1_5ck45 FIND v(dout1_5) AT=230.025n

* CHECK dout1_6 Vdout1_6ck45 = 0.9 time = 230
.meas tran vdout1_6ck45 FIND v(dout1_6) AT=230.025n

* CHECK dout1_7 Vdout1_7ck45 = 0 time = 230
.meas tran vdout1_7ck45 FIND v(dout1_7) AT=230.025n

* CHECK dout1_0 Vdout1_0ck46 = 0 time = 235
.meas tran vdout1_0ck46 FIND v(dout1_0) AT=235.025n

* CHECK dout1_1 Vdout1_1ck46 = 0.9 time = 235
.meas tran vdout1_1ck46 FIND v(dout1_1) AT=235.025n

* CHECK dout1_2 Vdout1_2ck46 = 0.9 time = 235
.meas tran vdout1_2ck46 FIND v(dout1_2) AT=235.025n

* CHECK dout1_3 Vdout1_3ck46 = 0.9 time = 235
.meas tran vdout1_3ck46 FIND v(dout1_3) AT=235.025n

* CHECK dout1_4 Vdout1_4ck46 = 0 time = 235
.meas tran vdout1_4ck46 FIND v(dout1_4) AT=235.025n

* CHECK dout1_5 Vdout1_5ck46 = 0.9 time = 235
.meas tran vdout1_5ck46 FIND v(dout1_5) AT=235.025n

* CHECK dout1_6 Vdout1_6ck46 = 0.9 time = 235
.meas tran vdout1_6ck46 FIND v(dout1_6) AT=235.025n

* CHECK dout1_7 Vdout1_7ck46 = 0 time = 235
.meas tran vdout1_7ck46 FIND v(dout1_7) AT=235.025n

* CHECK dout1_0 Vdout1_0ck48 = 0.9 time = 245
.meas tran vdout1_0ck48 FIND v(dout1_0) AT=245.025n

* CHECK dout1_1 Vdout1_1ck48 = 0 time = 245
.meas tran vdout1_1ck48 FIND v(dout1_1) AT=245.025n

* CHECK dout1_2 Vdout1_2ck48 = 0.9 time = 245
.meas tran vdout1_2ck48 FIND v(dout1_2) AT=245.025n

* CHECK dout1_3 Vdout1_3ck48 = 0.9 time = 245
.meas tran vdout1_3ck48 FIND v(dout1_3) AT=245.025n

* CHECK dout1_4 Vdout1_4ck48 = 0.9 time = 245
.meas tran vdout1_4ck48 FIND v(dout1_4) AT=245.025n

* CHECK dout1_5 Vdout1_5ck48 = 0.9 time = 245
.meas tran vdout1_5ck48 FIND v(dout1_5) AT=245.025n

* CHECK dout1_6 Vdout1_6ck48 = 0.9 time = 245
.meas tran vdout1_6ck48 FIND v(dout1_6) AT=245.025n

* CHECK dout1_7 Vdout1_7ck48 = 0.9 time = 245
.meas tran vdout1_7ck48 FIND v(dout1_7) AT=245.025n

* CHECK dout1_0 Vdout1_0ck49 = 0.9 time = 250
.meas tran vdout1_0ck49 FIND v(dout1_0) AT=250.025n

* CHECK dout1_1 Vdout1_1ck49 = 0 time = 250
.meas tran vdout1_1ck49 FIND v(dout1_1) AT=250.025n

* CHECK dout1_2 Vdout1_2ck49 = 0 time = 250
.meas tran vdout1_2ck49 FIND v(dout1_2) AT=250.025n

* CHECK dout1_3 Vdout1_3ck49 = 0 time = 250
.meas tran vdout1_3ck49 FIND v(dout1_3) AT=250.025n

* CHECK dout1_4 Vdout1_4ck49 = 0 time = 250
.meas tran vdout1_4ck49 FIND v(dout1_4) AT=250.025n

* CHECK dout1_5 Vdout1_5ck49 = 0.9 time = 250
.meas tran vdout1_5ck49 FIND v(dout1_5) AT=250.025n

* CHECK dout1_6 Vdout1_6ck49 = 0 time = 250
.meas tran vdout1_6ck49 FIND v(dout1_6) AT=250.025n

* CHECK dout1_7 Vdout1_7ck49 = 0 time = 250
.meas tran vdout1_7ck49 FIND v(dout1_7) AT=250.025n

* CHECK dout1_0 Vdout1_0ck50 = 0 time = 255
.meas tran vdout1_0ck50 FIND v(dout1_0) AT=255.025n

* CHECK dout1_1 Vdout1_1ck50 = 0 time = 255
.meas tran vdout1_1ck50 FIND v(dout1_1) AT=255.025n

* CHECK dout1_2 Vdout1_2ck50 = 0.9 time = 255
.meas tran vdout1_2ck50 FIND v(dout1_2) AT=255.025n

* CHECK dout1_3 Vdout1_3ck50 = 0.9 time = 255
.meas tran vdout1_3ck50 FIND v(dout1_3) AT=255.025n

* CHECK dout1_4 Vdout1_4ck50 = 0.9 time = 255
.meas tran vdout1_4ck50 FIND v(dout1_4) AT=255.025n

* CHECK dout1_5 Vdout1_5ck50 = 0 time = 255
.meas tran vdout1_5ck50 FIND v(dout1_5) AT=255.025n

* CHECK dout1_6 Vdout1_6ck50 = 0 time = 255
.meas tran vdout1_6ck50 FIND v(dout1_6) AT=255.025n

* CHECK dout1_7 Vdout1_7ck50 = 0.9 time = 255
.meas tran vdout1_7ck50 FIND v(dout1_7) AT=255.025n

* CHECK dout1_0 Vdout1_0ck56 = 0.9 time = 285
.meas tran vdout1_0ck56 FIND v(dout1_0) AT=285.025n

* CHECK dout1_1 Vdout1_1ck56 = 0.9 time = 285
.meas tran vdout1_1ck56 FIND v(dout1_1) AT=285.025n

* CHECK dout1_2 Vdout1_2ck56 = 0.9 time = 285
.meas tran vdout1_2ck56 FIND v(dout1_2) AT=285.025n

* CHECK dout1_3 Vdout1_3ck56 = 0.9 time = 285
.meas tran vdout1_3ck56 FIND v(dout1_3) AT=285.025n

* CHECK dout1_4 Vdout1_4ck56 = 0 time = 285
.meas tran vdout1_4ck56 FIND v(dout1_4) AT=285.025n

* CHECK dout1_5 Vdout1_5ck56 = 0 time = 285
.meas tran vdout1_5ck56 FIND v(dout1_5) AT=285.025n

* CHECK dout1_6 Vdout1_6ck56 = 0.9 time = 285
.meas tran vdout1_6ck56 FIND v(dout1_6) AT=285.025n

* CHECK dout1_7 Vdout1_7ck56 = 0.9 time = 285
.meas tran vdout1_7ck56 FIND v(dout1_7) AT=285.025n

* CHECK dout1_0 Vdout1_0ck57 = 0.9 time = 290
.meas tran vdout1_0ck57 FIND v(dout1_0) AT=290.025n

* CHECK dout1_1 Vdout1_1ck57 = 0.9 time = 290
.meas tran vdout1_1ck57 FIND v(dout1_1) AT=290.025n

* CHECK dout1_2 Vdout1_2ck57 = 0 time = 290
.meas tran vdout1_2ck57 FIND v(dout1_2) AT=290.025n

* CHECK dout1_3 Vdout1_3ck57 = 0.9 time = 290
.meas tran vdout1_3ck57 FIND v(dout1_3) AT=290.025n

* CHECK dout1_4 Vdout1_4ck57 = 0.9 time = 290
.meas tran vdout1_4ck57 FIND v(dout1_4) AT=290.025n

* CHECK dout1_5 Vdout1_5ck57 = 0.9 time = 290
.meas tran vdout1_5ck57 FIND v(dout1_5) AT=290.025n

* CHECK dout1_6 Vdout1_6ck57 = 0.9 time = 290
.meas tran vdout1_6ck57 FIND v(dout1_6) AT=290.025n

* CHECK dout1_7 Vdout1_7ck57 = 0 time = 290
.meas tran vdout1_7ck57 FIND v(dout1_7) AT=290.025n

* CHECK dout1_0 Vdout1_0ck59 = 0.9 time = 300
.meas tran vdout1_0ck59 FIND v(dout1_0) AT=300.025n

* CHECK dout1_1 Vdout1_1ck59 = 0.9 time = 300
.meas tran vdout1_1ck59 FIND v(dout1_1) AT=300.025n

* CHECK dout1_2 Vdout1_2ck59 = 0.9 time = 300
.meas tran vdout1_2ck59 FIND v(dout1_2) AT=300.025n

* CHECK dout1_3 Vdout1_3ck59 = 0 time = 300
.meas tran vdout1_3ck59 FIND v(dout1_3) AT=300.025n

* CHECK dout1_4 Vdout1_4ck59 = 0.9 time = 300
.meas tran vdout1_4ck59 FIND v(dout1_4) AT=300.025n

* CHECK dout1_5 Vdout1_5ck59 = 0 time = 300
.meas tran vdout1_5ck59 FIND v(dout1_5) AT=300.025n

* CHECK dout1_6 Vdout1_6ck59 = 0 time = 300
.meas tran vdout1_6ck59 FIND v(dout1_6) AT=300.025n

* CHECK dout1_7 Vdout1_7ck59 = 0 time = 300
.meas tran vdout1_7ck59 FIND v(dout1_7) AT=300.025n

* CHECK dout1_0 Vdout1_0ck60 = 0 time = 305
.meas tran vdout1_0ck60 FIND v(dout1_0) AT=305.025n

* CHECK dout1_1 Vdout1_1ck60 = 0.9 time = 305
.meas tran vdout1_1ck60 FIND v(dout1_1) AT=305.025n

* CHECK dout1_2 Vdout1_2ck60 = 0.9 time = 305
.meas tran vdout1_2ck60 FIND v(dout1_2) AT=305.025n

* CHECK dout1_3 Vdout1_3ck60 = 0 time = 305
.meas tran vdout1_3ck60 FIND v(dout1_3) AT=305.025n

* CHECK dout1_4 Vdout1_4ck60 = 0 time = 305
.meas tran vdout1_4ck60 FIND v(dout1_4) AT=305.025n

* CHECK dout1_5 Vdout1_5ck60 = 0.9 time = 305
.meas tran vdout1_5ck60 FIND v(dout1_5) AT=305.025n

* CHECK dout1_6 Vdout1_6ck60 = 0 time = 305
.meas tran vdout1_6ck60 FIND v(dout1_6) AT=305.025n

* CHECK dout1_7 Vdout1_7ck60 = 0.9 time = 305
.meas tran vdout1_7ck60 FIND v(dout1_7) AT=305.025n

* CHECK dout1_0 Vdout1_0ck62 = 0.9 time = 315
.meas tran vdout1_0ck62 FIND v(dout1_0) AT=315.025n

* CHECK dout1_1 Vdout1_1ck62 = 0.9 time = 315
.meas tran vdout1_1ck62 FIND v(dout1_1) AT=315.025n

* CHECK dout1_2 Vdout1_2ck62 = 0 time = 315
.meas tran vdout1_2ck62 FIND v(dout1_2) AT=315.025n

* CHECK dout1_3 Vdout1_3ck62 = 0.9 time = 315
.meas tran vdout1_3ck62 FIND v(dout1_3) AT=315.025n

* CHECK dout1_4 Vdout1_4ck62 = 0.9 time = 315
.meas tran vdout1_4ck62 FIND v(dout1_4) AT=315.025n

* CHECK dout1_5 Vdout1_5ck62 = 0.9 time = 315
.meas tran vdout1_5ck62 FIND v(dout1_5) AT=315.025n

* CHECK dout1_6 Vdout1_6ck62 = 0.9 time = 315
.meas tran vdout1_6ck62 FIND v(dout1_6) AT=315.025n

* CHECK dout1_7 Vdout1_7ck62 = 0 time = 315
.meas tran vdout1_7ck62 FIND v(dout1_7) AT=315.025n

* CHECK dout1_0 Vdout1_0ck63 = 0.9 time = 320
.meas tran vdout1_0ck63 FIND v(dout1_0) AT=320.025n

* CHECK dout1_1 Vdout1_1ck63 = 0.9 time = 320
.meas tran vdout1_1ck63 FIND v(dout1_1) AT=320.025n

* CHECK dout1_2 Vdout1_2ck63 = 0.9 time = 320
.meas tran vdout1_2ck63 FIND v(dout1_2) AT=320.025n

* CHECK dout1_3 Vdout1_3ck63 = 0.9 time = 320
.meas tran vdout1_3ck63 FIND v(dout1_3) AT=320.025n

* CHECK dout1_4 Vdout1_4ck63 = 0 time = 320
.meas tran vdout1_4ck63 FIND v(dout1_4) AT=320.025n

* CHECK dout1_5 Vdout1_5ck63 = 0 time = 320
.meas tran vdout1_5ck63 FIND v(dout1_5) AT=320.025n

* CHECK dout1_6 Vdout1_6ck63 = 0.9 time = 320
.meas tran vdout1_6ck63 FIND v(dout1_6) AT=320.025n

* CHECK dout1_7 Vdout1_7ck63 = 0.9 time = 320
.meas tran vdout1_7ck63 FIND v(dout1_7) AT=320.025n

* CHECK dout1_0 Vdout1_0ck64 = 0 time = 325
.meas tran vdout1_0ck64 FIND v(dout1_0) AT=325.025n

* CHECK dout1_1 Vdout1_1ck64 = 0.9 time = 325
.meas tran vdout1_1ck64 FIND v(dout1_1) AT=325.025n

* CHECK dout1_2 Vdout1_2ck64 = 0.9 time = 325
.meas tran vdout1_2ck64 FIND v(dout1_2) AT=325.025n

* CHECK dout1_3 Vdout1_3ck64 = 0.9 time = 325
.meas tran vdout1_3ck64 FIND v(dout1_3) AT=325.025n

* CHECK dout1_4 Vdout1_4ck64 = 0 time = 325
.meas tran vdout1_4ck64 FIND v(dout1_4) AT=325.025n

* CHECK dout1_5 Vdout1_5ck64 = 0.9 time = 325
.meas tran vdout1_5ck64 FIND v(dout1_5) AT=325.025n

* CHECK dout1_6 Vdout1_6ck64 = 0.9 time = 325
.meas tran vdout1_6ck64 FIND v(dout1_6) AT=325.025n

* CHECK dout1_7 Vdout1_7ck64 = 0 time = 325
.meas tran vdout1_7ck64 FIND v(dout1_7) AT=325.025n

* CHECK dout1_0 Vdout1_0ck65 = 0.9 time = 330
.meas tran vdout1_0ck65 FIND v(dout1_0) AT=330.025n

* CHECK dout1_1 Vdout1_1ck65 = 0.9 time = 330
.meas tran vdout1_1ck65 FIND v(dout1_1) AT=330.025n

* CHECK dout1_2 Vdout1_2ck65 = 0 time = 330
.meas tran vdout1_2ck65 FIND v(dout1_2) AT=330.025n

* CHECK dout1_3 Vdout1_3ck65 = 0.9 time = 330
.meas tran vdout1_3ck65 FIND v(dout1_3) AT=330.025n

* CHECK dout1_4 Vdout1_4ck65 = 0.9 time = 330
.meas tran vdout1_4ck65 FIND v(dout1_4) AT=330.025n

* CHECK dout1_5 Vdout1_5ck65 = 0.9 time = 330
.meas tran vdout1_5ck65 FIND v(dout1_5) AT=330.025n

* CHECK dout1_6 Vdout1_6ck65 = 0.9 time = 330
.meas tran vdout1_6ck65 FIND v(dout1_6) AT=330.025n

* CHECK dout1_7 Vdout1_7ck65 = 0.9 time = 330
.meas tran vdout1_7ck65 FIND v(dout1_7) AT=330.025n

* CHECK dout1_0 Vdout1_0ck66 = 0.9 time = 335
.meas tran vdout1_0ck66 FIND v(dout1_0) AT=335.025n

* CHECK dout1_1 Vdout1_1ck66 = 0 time = 335
.meas tran vdout1_1ck66 FIND v(dout1_1) AT=335.025n

* CHECK dout1_2 Vdout1_2ck66 = 0.9 time = 335
.meas tran vdout1_2ck66 FIND v(dout1_2) AT=335.025n

* CHECK dout1_3 Vdout1_3ck66 = 0.9 time = 335
.meas tran vdout1_3ck66 FIND v(dout1_3) AT=335.025n

* CHECK dout1_4 Vdout1_4ck66 = 0.9 time = 335
.meas tran vdout1_4ck66 FIND v(dout1_4) AT=335.025n

* CHECK dout1_5 Vdout1_5ck66 = 0 time = 335
.meas tran vdout1_5ck66 FIND v(dout1_5) AT=335.025n

* CHECK dout1_6 Vdout1_6ck66 = 0.9 time = 335
.meas tran vdout1_6ck66 FIND v(dout1_6) AT=335.025n

* CHECK dout1_7 Vdout1_7ck66 = 0 time = 335
.meas tran vdout1_7ck66 FIND v(dout1_7) AT=335.025n

* CHECK dout1_0 Vdout1_0ck67 = 0.9 time = 340
.meas tran vdout1_0ck67 FIND v(dout1_0) AT=340.025n

* CHECK dout1_1 Vdout1_1ck67 = 0 time = 340
.meas tran vdout1_1ck67 FIND v(dout1_1) AT=340.025n

* CHECK dout1_2 Vdout1_2ck67 = 0 time = 340
.meas tran vdout1_2ck67 FIND v(dout1_2) AT=340.025n

* CHECK dout1_3 Vdout1_3ck67 = 0 time = 340
.meas tran vdout1_3ck67 FIND v(dout1_3) AT=340.025n

* CHECK dout1_4 Vdout1_4ck67 = 0.9 time = 340
.meas tran vdout1_4ck67 FIND v(dout1_4) AT=340.025n

* CHECK dout1_5 Vdout1_5ck67 = 0.9 time = 340
.meas tran vdout1_5ck67 FIND v(dout1_5) AT=340.025n

* CHECK dout1_6 Vdout1_6ck67 = 0 time = 340
.meas tran vdout1_6ck67 FIND v(dout1_6) AT=340.025n

* CHECK dout1_7 Vdout1_7ck67 = 0.9 time = 340
.meas tran vdout1_7ck67 FIND v(dout1_7) AT=340.025n

* CHECK dout1_0 Vdout1_0ck68 = 0.9 time = 345
.meas tran vdout1_0ck68 FIND v(dout1_0) AT=345.025n

* CHECK dout1_1 Vdout1_1ck68 = 0.9 time = 345
.meas tran vdout1_1ck68 FIND v(dout1_1) AT=345.025n

* CHECK dout1_2 Vdout1_2ck68 = 0 time = 345
.meas tran vdout1_2ck68 FIND v(dout1_2) AT=345.025n

* CHECK dout1_3 Vdout1_3ck68 = 0.9 time = 345
.meas tran vdout1_3ck68 FIND v(dout1_3) AT=345.025n

* CHECK dout1_4 Vdout1_4ck68 = 0 time = 345
.meas tran vdout1_4ck68 FIND v(dout1_4) AT=345.025n

* CHECK dout1_5 Vdout1_5ck68 = 0.9 time = 345
.meas tran vdout1_5ck68 FIND v(dout1_5) AT=345.025n

* CHECK dout1_6 Vdout1_6ck68 = 0.9 time = 345
.meas tran vdout1_6ck68 FIND v(dout1_6) AT=345.025n

* CHECK dout1_7 Vdout1_7ck68 = 0.9 time = 345
.meas tran vdout1_7ck68 FIND v(dout1_7) AT=345.025n

* CHECK dout1_0 Vdout1_0ck69 = 0.9 time = 350
.meas tran vdout1_0ck69 FIND v(dout1_0) AT=350.025n

* CHECK dout1_1 Vdout1_1ck69 = 0 time = 350
.meas tran vdout1_1ck69 FIND v(dout1_1) AT=350.025n

* CHECK dout1_2 Vdout1_2ck69 = 0.9 time = 350
.meas tran vdout1_2ck69 FIND v(dout1_2) AT=350.025n

* CHECK dout1_3 Vdout1_3ck69 = 0.9 time = 350
.meas tran vdout1_3ck69 FIND v(dout1_3) AT=350.025n

* CHECK dout1_4 Vdout1_4ck69 = 0.9 time = 350
.meas tran vdout1_4ck69 FIND v(dout1_4) AT=350.025n

* CHECK dout1_5 Vdout1_5ck69 = 0.9 time = 350
.meas tran vdout1_5ck69 FIND v(dout1_5) AT=350.025n

* CHECK dout1_6 Vdout1_6ck69 = 0.9 time = 350
.meas tran vdout1_6ck69 FIND v(dout1_6) AT=350.025n

* CHECK dout1_7 Vdout1_7ck69 = 0.9 time = 350
.meas tran vdout1_7ck69 FIND v(dout1_7) AT=350.025n

* CHECK dout1_0 Vdout1_0ck71 = 0.9 time = 360
.meas tran vdout1_0ck71 FIND v(dout1_0) AT=360.025n

* CHECK dout1_1 Vdout1_1ck71 = 0 time = 360
.meas tran vdout1_1ck71 FIND v(dout1_1) AT=360.025n

* CHECK dout1_2 Vdout1_2ck71 = 0 time = 360
.meas tran vdout1_2ck71 FIND v(dout1_2) AT=360.025n

* CHECK dout1_3 Vdout1_3ck71 = 0 time = 360
.meas tran vdout1_3ck71 FIND v(dout1_3) AT=360.025n

* CHECK dout1_4 Vdout1_4ck71 = 0.9 time = 360
.meas tran vdout1_4ck71 FIND v(dout1_4) AT=360.025n

* CHECK dout1_5 Vdout1_5ck71 = 0.9 time = 360
.meas tran vdout1_5ck71 FIND v(dout1_5) AT=360.025n

* CHECK dout1_6 Vdout1_6ck71 = 0 time = 360
.meas tran vdout1_6ck71 FIND v(dout1_6) AT=360.025n

* CHECK dout1_7 Vdout1_7ck71 = 0.9 time = 360
.meas tran vdout1_7ck71 FIND v(dout1_7) AT=360.025n

* CHECK dout1_0 Vdout1_0ck73 = 0.9 time = 370
.meas tran vdout1_0ck73 FIND v(dout1_0) AT=370.025n

* CHECK dout1_1 Vdout1_1ck73 = 0 time = 370
.meas tran vdout1_1ck73 FIND v(dout1_1) AT=370.025n

* CHECK dout1_2 Vdout1_2ck73 = 0.9 time = 370
.meas tran vdout1_2ck73 FIND v(dout1_2) AT=370.025n

* CHECK dout1_3 Vdout1_3ck73 = 0.9 time = 370
.meas tran vdout1_3ck73 FIND v(dout1_3) AT=370.025n

* CHECK dout1_4 Vdout1_4ck73 = 0.9 time = 370
.meas tran vdout1_4ck73 FIND v(dout1_4) AT=370.025n

* CHECK dout1_5 Vdout1_5ck73 = 0 time = 370
.meas tran vdout1_5ck73 FIND v(dout1_5) AT=370.025n

* CHECK dout1_6 Vdout1_6ck73 = 0.9 time = 370
.meas tran vdout1_6ck73 FIND v(dout1_6) AT=370.025n

* CHECK dout1_7 Vdout1_7ck73 = 0 time = 370
.meas tran vdout1_7ck73 FIND v(dout1_7) AT=370.025n

* CHECK dout1_0 Vdout1_0ck75 = 0.9 time = 380
.meas tran vdout1_0ck75 FIND v(dout1_0) AT=380.025n

* CHECK dout1_1 Vdout1_1ck75 = 0 time = 380
.meas tran vdout1_1ck75 FIND v(dout1_1) AT=380.025n

* CHECK dout1_2 Vdout1_2ck75 = 0 time = 380
.meas tran vdout1_2ck75 FIND v(dout1_2) AT=380.025n

* CHECK dout1_3 Vdout1_3ck75 = 0 time = 380
.meas tran vdout1_3ck75 FIND v(dout1_3) AT=380.025n

* CHECK dout1_4 Vdout1_4ck75 = 0.9 time = 380
.meas tran vdout1_4ck75 FIND v(dout1_4) AT=380.025n

* CHECK dout1_5 Vdout1_5ck75 = 0.9 time = 380
.meas tran vdout1_5ck75 FIND v(dout1_5) AT=380.025n

* CHECK dout1_6 Vdout1_6ck75 = 0 time = 380
.meas tran vdout1_6ck75 FIND v(dout1_6) AT=380.025n

* CHECK dout1_7 Vdout1_7ck75 = 0.9 time = 380
.meas tran vdout1_7ck75 FIND v(dout1_7) AT=380.025n

* CHECK dout1_0 Vdout1_0ck81 = 0.9 time = 410
.meas tran vdout1_0ck81 FIND v(dout1_0) AT=410.025n

* CHECK dout1_1 Vdout1_1ck81 = 0.9 time = 410
.meas tran vdout1_1ck81 FIND v(dout1_1) AT=410.025n

* CHECK dout1_2 Vdout1_2ck81 = 0 time = 410
.meas tran vdout1_2ck81 FIND v(dout1_2) AT=410.025n

* CHECK dout1_3 Vdout1_3ck81 = 0 time = 410
.meas tran vdout1_3ck81 FIND v(dout1_3) AT=410.025n

* CHECK dout1_4 Vdout1_4ck81 = 0 time = 410
.meas tran vdout1_4ck81 FIND v(dout1_4) AT=410.025n

* CHECK dout1_5 Vdout1_5ck81 = 0 time = 410
.meas tran vdout1_5ck81 FIND v(dout1_5) AT=410.025n

* CHECK dout1_6 Vdout1_6ck81 = 0 time = 410
.meas tran vdout1_6ck81 FIND v(dout1_6) AT=410.025n

* CHECK dout1_7 Vdout1_7ck81 = 0.9 time = 410
.meas tran vdout1_7ck81 FIND v(dout1_7) AT=410.025n

* CHECK dout1_0 Vdout1_0ck84 = 0 time = 425
.meas tran vdout1_0ck84 FIND v(dout1_0) AT=425.025n

* CHECK dout1_1 Vdout1_1ck84 = 0 time = 425
.meas tran vdout1_1ck84 FIND v(dout1_1) AT=425.025n

* CHECK dout1_2 Vdout1_2ck84 = 0 time = 425
.meas tran vdout1_2ck84 FIND v(dout1_2) AT=425.025n

* CHECK dout1_3 Vdout1_3ck84 = 0.9 time = 425
.meas tran vdout1_3ck84 FIND v(dout1_3) AT=425.025n

* CHECK dout1_4 Vdout1_4ck84 = 0.9 time = 425
.meas tran vdout1_4ck84 FIND v(dout1_4) AT=425.025n

* CHECK dout1_5 Vdout1_5ck84 = 0.9 time = 425
.meas tran vdout1_5ck84 FIND v(dout1_5) AT=425.025n

* CHECK dout1_6 Vdout1_6ck84 = 0.9 time = 425
.meas tran vdout1_6ck84 FIND v(dout1_6) AT=425.025n

* CHECK dout1_7 Vdout1_7ck84 = 0 time = 425
.meas tran vdout1_7ck84 FIND v(dout1_7) AT=425.025n

* CHECK dout1_0 Vdout1_0ck85 = 0 time = 430
.meas tran vdout1_0ck85 FIND v(dout1_0) AT=430.025n

* CHECK dout1_1 Vdout1_1ck85 = 0 time = 430
.meas tran vdout1_1ck85 FIND v(dout1_1) AT=430.025n

* CHECK dout1_2 Vdout1_2ck85 = 0.9 time = 430
.meas tran vdout1_2ck85 FIND v(dout1_2) AT=430.025n

* CHECK dout1_3 Vdout1_3ck85 = 0.9 time = 430
.meas tran vdout1_3ck85 FIND v(dout1_3) AT=430.025n

* CHECK dout1_4 Vdout1_4ck85 = 0.9 time = 430
.meas tran vdout1_4ck85 FIND v(dout1_4) AT=430.025n

* CHECK dout1_5 Vdout1_5ck85 = 0 time = 430
.meas tran vdout1_5ck85 FIND v(dout1_5) AT=430.025n

* CHECK dout1_6 Vdout1_6ck85 = 0.9 time = 430
.meas tran vdout1_6ck85 FIND v(dout1_6) AT=430.025n

* CHECK dout1_7 Vdout1_7ck85 = 0.9 time = 430
.meas tran vdout1_7ck85 FIND v(dout1_7) AT=430.025n

* CHECK dout1_0 Vdout1_0ck87 = 0 time = 440
.meas tran vdout1_0ck87 FIND v(dout1_0) AT=440.025n

* CHECK dout1_1 Vdout1_1ck87 = 0.9 time = 440
.meas tran vdout1_1ck87 FIND v(dout1_1) AT=440.025n

* CHECK dout1_2 Vdout1_2ck87 = 0.9 time = 440
.meas tran vdout1_2ck87 FIND v(dout1_2) AT=440.025n

* CHECK dout1_3 Vdout1_3ck87 = 0 time = 440
.meas tran vdout1_3ck87 FIND v(dout1_3) AT=440.025n

* CHECK dout1_4 Vdout1_4ck87 = 0 time = 440
.meas tran vdout1_4ck87 FIND v(dout1_4) AT=440.025n

* CHECK dout1_5 Vdout1_5ck87 = 0.9 time = 440
.meas tran vdout1_5ck87 FIND v(dout1_5) AT=440.025n

* CHECK dout1_6 Vdout1_6ck87 = 0 time = 440
.meas tran vdout1_6ck87 FIND v(dout1_6) AT=440.025n

* CHECK dout1_7 Vdout1_7ck87 = 0 time = 440
.meas tran vdout1_7ck87 FIND v(dout1_7) AT=440.025n

* CHECK dout1_0 Vdout1_0ck91 = 0.9 time = 460
.meas tran vdout1_0ck91 FIND v(dout1_0) AT=460.025n

* CHECK dout1_1 Vdout1_1ck91 = 0 time = 460
.meas tran vdout1_1ck91 FIND v(dout1_1) AT=460.025n

* CHECK dout1_2 Vdout1_2ck91 = 0 time = 460
.meas tran vdout1_2ck91 FIND v(dout1_2) AT=460.025n

* CHECK dout1_3 Vdout1_3ck91 = 0 time = 460
.meas tran vdout1_3ck91 FIND v(dout1_3) AT=460.025n

* CHECK dout1_4 Vdout1_4ck91 = 0.9 time = 460
.meas tran vdout1_4ck91 FIND v(dout1_4) AT=460.025n

* CHECK dout1_5 Vdout1_5ck91 = 0.9 time = 460
.meas tran vdout1_5ck91 FIND v(dout1_5) AT=460.025n

* CHECK dout1_6 Vdout1_6ck91 = 0 time = 460
.meas tran vdout1_6ck91 FIND v(dout1_6) AT=460.025n

* CHECK dout1_7 Vdout1_7ck91 = 0.9 time = 460
.meas tran vdout1_7ck91 FIND v(dout1_7) AT=460.025n

* CHECK dout1_0 Vdout1_0ck92 = 0.9 time = 465
.meas tran vdout1_0ck92 FIND v(dout1_0) AT=465.025n

* CHECK dout1_1 Vdout1_1ck92 = 0.9 time = 465
.meas tran vdout1_1ck92 FIND v(dout1_1) AT=465.025n

* CHECK dout1_2 Vdout1_2ck92 = 0 time = 465
.meas tran vdout1_2ck92 FIND v(dout1_2) AT=465.025n

* CHECK dout1_3 Vdout1_3ck92 = 0 time = 465
.meas tran vdout1_3ck92 FIND v(dout1_3) AT=465.025n

* CHECK dout1_4 Vdout1_4ck92 = 0.9 time = 465
.meas tran vdout1_4ck92 FIND v(dout1_4) AT=465.025n

* CHECK dout1_5 Vdout1_5ck92 = 0 time = 465
.meas tran vdout1_5ck92 FIND v(dout1_5) AT=465.025n

* CHECK dout1_6 Vdout1_6ck92 = 0 time = 465
.meas tran vdout1_6ck92 FIND v(dout1_6) AT=465.025n

* CHECK dout1_7 Vdout1_7ck92 = 0 time = 465
.meas tran vdout1_7ck92 FIND v(dout1_7) AT=465.025n

* CHECK dout1_0 Vdout1_0ck94 = 0 time = 475
.meas tran vdout1_0ck94 FIND v(dout1_0) AT=475.025n

* CHECK dout1_1 Vdout1_1ck94 = 0.9 time = 475
.meas tran vdout1_1ck94 FIND v(dout1_1) AT=475.025n

* CHECK dout1_2 Vdout1_2ck94 = 0.9 time = 475
.meas tran vdout1_2ck94 FIND v(dout1_2) AT=475.025n

* CHECK dout1_3 Vdout1_3ck94 = 0.9 time = 475
.meas tran vdout1_3ck94 FIND v(dout1_3) AT=475.025n

* CHECK dout1_4 Vdout1_4ck94 = 0 time = 475
.meas tran vdout1_4ck94 FIND v(dout1_4) AT=475.025n

* CHECK dout1_5 Vdout1_5ck94 = 0 time = 475
.meas tran vdout1_5ck94 FIND v(dout1_5) AT=475.025n

* CHECK dout1_6 Vdout1_6ck94 = 0 time = 475
.meas tran vdout1_6ck94 FIND v(dout1_6) AT=475.025n

* CHECK dout1_7 Vdout1_7ck94 = 0 time = 475
.meas tran vdout1_7ck94 FIND v(dout1_7) AT=475.025n

* CHECK dout1_0 Vdout1_0ck95 = 0.9 time = 480
.meas tran vdout1_0ck95 FIND v(dout1_0) AT=480.025n

* CHECK dout1_1 Vdout1_1ck95 = 0 time = 480
.meas tran vdout1_1ck95 FIND v(dout1_1) AT=480.025n

* CHECK dout1_2 Vdout1_2ck95 = 0.9 time = 480
.meas tran vdout1_2ck95 FIND v(dout1_2) AT=480.025n

* CHECK dout1_3 Vdout1_3ck95 = 0.9 time = 480
.meas tran vdout1_3ck95 FIND v(dout1_3) AT=480.025n

* CHECK dout1_4 Vdout1_4ck95 = 0.9 time = 480
.meas tran vdout1_4ck95 FIND v(dout1_4) AT=480.025n

* CHECK dout1_5 Vdout1_5ck95 = 0 time = 480
.meas tran vdout1_5ck95 FIND v(dout1_5) AT=480.025n

* CHECK dout1_6 Vdout1_6ck95 = 0.9 time = 480
.meas tran vdout1_6ck95 FIND v(dout1_6) AT=480.025n

* CHECK dout1_7 Vdout1_7ck95 = 0 time = 480
.meas tran vdout1_7ck95 FIND v(dout1_7) AT=480.025n

* CHECK dout1_0 Vdout1_0ck97 = 0.9 time = 490
.meas tran vdout1_0ck97 FIND v(dout1_0) AT=490.025n

* CHECK dout1_1 Vdout1_1ck97 = 0 time = 490
.meas tran vdout1_1ck97 FIND v(dout1_1) AT=490.025n

* CHECK dout1_2 Vdout1_2ck97 = 0.9 time = 490
.meas tran vdout1_2ck97 FIND v(dout1_2) AT=490.025n

* CHECK dout1_3 Vdout1_3ck97 = 0.9 time = 490
.meas tran vdout1_3ck97 FIND v(dout1_3) AT=490.025n

* CHECK dout1_4 Vdout1_4ck97 = 0 time = 490
.meas tran vdout1_4ck97 FIND v(dout1_4) AT=490.025n

* CHECK dout1_5 Vdout1_5ck97 = 0.9 time = 490
.meas tran vdout1_5ck97 FIND v(dout1_5) AT=490.025n

* CHECK dout1_6 Vdout1_6ck97 = 0.9 time = 490
.meas tran vdout1_6ck97 FIND v(dout1_6) AT=490.025n

* CHECK dout1_7 Vdout1_7ck97 = 0 time = 490
.meas tran vdout1_7ck97 FIND v(dout1_7) AT=490.025n

* CHECK dout1_0 Vdout1_0ck102 = 0 time = 515
.meas tran vdout1_0ck102 FIND v(dout1_0) AT=515.025n

* CHECK dout1_1 Vdout1_1ck102 = 0.9 time = 515
.meas tran vdout1_1ck102 FIND v(dout1_1) AT=515.025n

* CHECK dout1_2 Vdout1_2ck102 = 0 time = 515
.meas tran vdout1_2ck102 FIND v(dout1_2) AT=515.025n

* CHECK dout1_3 Vdout1_3ck102 = 0 time = 515
.meas tran vdout1_3ck102 FIND v(dout1_3) AT=515.025n

* CHECK dout1_4 Vdout1_4ck102 = 0 time = 515
.meas tran vdout1_4ck102 FIND v(dout1_4) AT=515.025n

* CHECK dout1_5 Vdout1_5ck102 = 0.9 time = 515
.meas tran vdout1_5ck102 FIND v(dout1_5) AT=515.025n

* CHECK dout1_6 Vdout1_6ck102 = 0.9 time = 515
.meas tran vdout1_6ck102 FIND v(dout1_6) AT=515.025n

* CHECK dout1_7 Vdout1_7ck102 = 0.9 time = 515
.meas tran vdout1_7ck102 FIND v(dout1_7) AT=515.025n

* CHECK dout1_0 Vdout1_0ck103 = 0 time = 520
.meas tran vdout1_0ck103 FIND v(dout1_0) AT=520.025n

* CHECK dout1_1 Vdout1_1ck103 = 0 time = 520
.meas tran vdout1_1ck103 FIND v(dout1_1) AT=520.025n

* CHECK dout1_2 Vdout1_2ck103 = 0.9 time = 520
.meas tran vdout1_2ck103 FIND v(dout1_2) AT=520.025n

* CHECK dout1_3 Vdout1_3ck103 = 0.9 time = 520
.meas tran vdout1_3ck103 FIND v(dout1_3) AT=520.025n

* CHECK dout1_4 Vdout1_4ck103 = 0.9 time = 520
.meas tran vdout1_4ck103 FIND v(dout1_4) AT=520.025n

* CHECK dout1_5 Vdout1_5ck103 = 0 time = 520
.meas tran vdout1_5ck103 FIND v(dout1_5) AT=520.025n

* CHECK dout1_6 Vdout1_6ck103 = 0 time = 520
.meas tran vdout1_6ck103 FIND v(dout1_6) AT=520.025n

* CHECK dout1_7 Vdout1_7ck103 = 0.9 time = 520
.meas tran vdout1_7ck103 FIND v(dout1_7) AT=520.025n

* CHECK dout1_0 Vdout1_0ck108 = 0.9 time = 545
.meas tran vdout1_0ck108 FIND v(dout1_0) AT=545.025n

* CHECK dout1_1 Vdout1_1ck108 = 0 time = 545
.meas tran vdout1_1ck108 FIND v(dout1_1) AT=545.025n

* CHECK dout1_2 Vdout1_2ck108 = 0 time = 545
.meas tran vdout1_2ck108 FIND v(dout1_2) AT=545.025n

* CHECK dout1_3 Vdout1_3ck108 = 0 time = 545
.meas tran vdout1_3ck108 FIND v(dout1_3) AT=545.025n

* CHECK dout1_4 Vdout1_4ck108 = 0.9 time = 545
.meas tran vdout1_4ck108 FIND v(dout1_4) AT=545.025n

* CHECK dout1_5 Vdout1_5ck108 = 0.9 time = 545
.meas tran vdout1_5ck108 FIND v(dout1_5) AT=545.025n

* CHECK dout1_6 Vdout1_6ck108 = 0 time = 545
.meas tran vdout1_6ck108 FIND v(dout1_6) AT=545.025n

* CHECK dout1_7 Vdout1_7ck108 = 0.9 time = 545
.meas tran vdout1_7ck108 FIND v(dout1_7) AT=545.025n

* CHECK dout1_0 Vdout1_0ck110 = 0.9 time = 555
.meas tran vdout1_0ck110 FIND v(dout1_0) AT=555.025n

* CHECK dout1_1 Vdout1_1ck110 = 0.9 time = 555
.meas tran vdout1_1ck110 FIND v(dout1_1) AT=555.025n

* CHECK dout1_2 Vdout1_2ck110 = 0 time = 555
.meas tran vdout1_2ck110 FIND v(dout1_2) AT=555.025n

* CHECK dout1_3 Vdout1_3ck110 = 0 time = 555
.meas tran vdout1_3ck110 FIND v(dout1_3) AT=555.025n

* CHECK dout1_4 Vdout1_4ck110 = 0.9 time = 555
.meas tran vdout1_4ck110 FIND v(dout1_4) AT=555.025n

* CHECK dout1_5 Vdout1_5ck110 = 0 time = 555
.meas tran vdout1_5ck110 FIND v(dout1_5) AT=555.025n

* CHECK dout1_6 Vdout1_6ck110 = 0 time = 555
.meas tran vdout1_6ck110 FIND v(dout1_6) AT=555.025n

* CHECK dout1_7 Vdout1_7ck110 = 0 time = 555
.meas tran vdout1_7ck110 FIND v(dout1_7) AT=555.025n

* CHECK dout1_0 Vdout1_0ck111 = 0 time = 560
.meas tran vdout1_0ck111 FIND v(dout1_0) AT=560.025n

* CHECK dout1_1 Vdout1_1ck111 = 0 time = 560
.meas tran vdout1_1ck111 FIND v(dout1_1) AT=560.025n

* CHECK dout1_2 Vdout1_2ck111 = 0.9 time = 560
.meas tran vdout1_2ck111 FIND v(dout1_2) AT=560.025n

* CHECK dout1_3 Vdout1_3ck111 = 0 time = 560
.meas tran vdout1_3ck111 FIND v(dout1_3) AT=560.025n

* CHECK dout1_4 Vdout1_4ck111 = 0.9 time = 560
.meas tran vdout1_4ck111 FIND v(dout1_4) AT=560.025n

* CHECK dout1_5 Vdout1_5ck111 = 0 time = 560
.meas tran vdout1_5ck111 FIND v(dout1_5) AT=560.025n

* CHECK dout1_6 Vdout1_6ck111 = 0.9 time = 560
.meas tran vdout1_6ck111 FIND v(dout1_6) AT=560.025n

* CHECK dout1_7 Vdout1_7ck111 = 0.9 time = 560
.meas tran vdout1_7ck111 FIND v(dout1_7) AT=560.025n

* CHECK dout1_0 Vdout1_0ck113 = 0 time = 570
.meas tran vdout1_0ck113 FIND v(dout1_0) AT=570.025n

* CHECK dout1_1 Vdout1_1ck113 = 0 time = 570
.meas tran vdout1_1ck113 FIND v(dout1_1) AT=570.025n

* CHECK dout1_2 Vdout1_2ck113 = 0 time = 570
.meas tran vdout1_2ck113 FIND v(dout1_2) AT=570.025n

* CHECK dout1_3 Vdout1_3ck113 = 0 time = 570
.meas tran vdout1_3ck113 FIND v(dout1_3) AT=570.025n

* CHECK dout1_4 Vdout1_4ck113 = 0 time = 570
.meas tran vdout1_4ck113 FIND v(dout1_4) AT=570.025n

* CHECK dout1_5 Vdout1_5ck113 = 0 time = 570
.meas tran vdout1_5ck113 FIND v(dout1_5) AT=570.025n

* CHECK dout1_6 Vdout1_6ck113 = 0.9 time = 570
.meas tran vdout1_6ck113 FIND v(dout1_6) AT=570.025n

* CHECK dout1_7 Vdout1_7ck113 = 0 time = 570
.meas tran vdout1_7ck113 FIND v(dout1_7) AT=570.025n

* CHECK dout1_0 Vdout1_0ck115 = 0 time = 580
.meas tran vdout1_0ck115 FIND v(dout1_0) AT=580.025n

* CHECK dout1_1 Vdout1_1ck115 = 0.9 time = 580
.meas tran vdout1_1ck115 FIND v(dout1_1) AT=580.025n

* CHECK dout1_2 Vdout1_2ck115 = 0.9 time = 580
.meas tran vdout1_2ck115 FIND v(dout1_2) AT=580.025n

* CHECK dout1_3 Vdout1_3ck115 = 0.9 time = 580
.meas tran vdout1_3ck115 FIND v(dout1_3) AT=580.025n

* CHECK dout1_4 Vdout1_4ck115 = 0 time = 580
.meas tran vdout1_4ck115 FIND v(dout1_4) AT=580.025n

* CHECK dout1_5 Vdout1_5ck115 = 0 time = 580
.meas tran vdout1_5ck115 FIND v(dout1_5) AT=580.025n

* CHECK dout1_6 Vdout1_6ck115 = 0 time = 580
.meas tran vdout1_6ck115 FIND v(dout1_6) AT=580.025n

* CHECK dout1_7 Vdout1_7ck115 = 0 time = 580
.meas tran vdout1_7ck115 FIND v(dout1_7) AT=580.025n

* CHECK dout1_0 Vdout1_0ck116 = 0.9 time = 585
.meas tran vdout1_0ck116 FIND v(dout1_0) AT=585.025n

* CHECK dout1_1 Vdout1_1ck116 = 0 time = 585
.meas tran vdout1_1ck116 FIND v(dout1_1) AT=585.025n

* CHECK dout1_2 Vdout1_2ck116 = 0.9 time = 585
.meas tran vdout1_2ck116 FIND v(dout1_2) AT=585.025n

* CHECK dout1_3 Vdout1_3ck116 = 0 time = 585
.meas tran vdout1_3ck116 FIND v(dout1_3) AT=585.025n

* CHECK dout1_4 Vdout1_4ck116 = 0.9 time = 585
.meas tran vdout1_4ck116 FIND v(dout1_4) AT=585.025n

* CHECK dout1_5 Vdout1_5ck116 = 0 time = 585
.meas tran vdout1_5ck116 FIND v(dout1_5) AT=585.025n

* CHECK dout1_6 Vdout1_6ck116 = 0 time = 585
.meas tran vdout1_6ck116 FIND v(dout1_6) AT=585.025n

* CHECK dout1_7 Vdout1_7ck116 = 0 time = 585
.meas tran vdout1_7ck116 FIND v(dout1_7) AT=585.025n

* CHECK dout1_0 Vdout1_0ck118 = 0.9 time = 595
.meas tran vdout1_0ck118 FIND v(dout1_0) AT=595.025n

* CHECK dout1_1 Vdout1_1ck118 = 0 time = 595
.meas tran vdout1_1ck118 FIND v(dout1_1) AT=595.025n

* CHECK dout1_2 Vdout1_2ck118 = 0.9 time = 595
.meas tran vdout1_2ck118 FIND v(dout1_2) AT=595.025n

* CHECK dout1_3 Vdout1_3ck118 = 0 time = 595
.meas tran vdout1_3ck118 FIND v(dout1_3) AT=595.025n

* CHECK dout1_4 Vdout1_4ck118 = 0.9 time = 595
.meas tran vdout1_4ck118 FIND v(dout1_4) AT=595.025n

* CHECK dout1_5 Vdout1_5ck118 = 0 time = 595
.meas tran vdout1_5ck118 FIND v(dout1_5) AT=595.025n

* CHECK dout1_6 Vdout1_6ck118 = 0 time = 595
.meas tran vdout1_6ck118 FIND v(dout1_6) AT=595.025n

* CHECK dout1_7 Vdout1_7ck118 = 0 time = 595
.meas tran vdout1_7ck118 FIND v(dout1_7) AT=595.025n

* CHECK dout1_0 Vdout1_0ck119 = 0.9 time = 600
.meas tran vdout1_0ck119 FIND v(dout1_0) AT=600.025n

* CHECK dout1_1 Vdout1_1ck119 = 0 time = 600
.meas tran vdout1_1ck119 FIND v(dout1_1) AT=600.025n

* CHECK dout1_2 Vdout1_2ck119 = 0 time = 600
.meas tran vdout1_2ck119 FIND v(dout1_2) AT=600.025n

* CHECK dout1_3 Vdout1_3ck119 = 0 time = 600
.meas tran vdout1_3ck119 FIND v(dout1_3) AT=600.025n

* CHECK dout1_4 Vdout1_4ck119 = 0.9 time = 600
.meas tran vdout1_4ck119 FIND v(dout1_4) AT=600.025n

* CHECK dout1_5 Vdout1_5ck119 = 0.9 time = 600
.meas tran vdout1_5ck119 FIND v(dout1_5) AT=600.025n

* CHECK dout1_6 Vdout1_6ck119 = 0 time = 600
.meas tran vdout1_6ck119 FIND v(dout1_6) AT=600.025n

* CHECK dout1_7 Vdout1_7ck119 = 0.9 time = 600
.meas tran vdout1_7ck119 FIND v(dout1_7) AT=600.025n

* CHECK dout1_0 Vdout1_0ck121 = 0.9 time = 610
.meas tran vdout1_0ck121 FIND v(dout1_0) AT=610.025n

* CHECK dout1_1 Vdout1_1ck121 = 0 time = 610
.meas tran vdout1_1ck121 FIND v(dout1_1) AT=610.025n

* CHECK dout1_2 Vdout1_2ck121 = 0 time = 610
.meas tran vdout1_2ck121 FIND v(dout1_2) AT=610.025n

* CHECK dout1_3 Vdout1_3ck121 = 0 time = 610
.meas tran vdout1_3ck121 FIND v(dout1_3) AT=610.025n

* CHECK dout1_4 Vdout1_4ck121 = 0.9 time = 610
.meas tran vdout1_4ck121 FIND v(dout1_4) AT=610.025n

* CHECK dout1_5 Vdout1_5ck121 = 0.9 time = 610
.meas tran vdout1_5ck121 FIND v(dout1_5) AT=610.025n

* CHECK dout1_6 Vdout1_6ck121 = 0 time = 610
.meas tran vdout1_6ck121 FIND v(dout1_6) AT=610.025n

* CHECK dout1_7 Vdout1_7ck121 = 0.9 time = 610
.meas tran vdout1_7ck121 FIND v(dout1_7) AT=610.025n

* CHECK dout1_0 Vdout1_0ck122 = 0 time = 615
.meas tran vdout1_0ck122 FIND v(dout1_0) AT=615.025n

* CHECK dout1_1 Vdout1_1ck122 = 0 time = 615
.meas tran vdout1_1ck122 FIND v(dout1_1) AT=615.025n

* CHECK dout1_2 Vdout1_2ck122 = 0.9 time = 615
.meas tran vdout1_2ck122 FIND v(dout1_2) AT=615.025n

* CHECK dout1_3 Vdout1_3ck122 = 0 time = 615
.meas tran vdout1_3ck122 FIND v(dout1_3) AT=615.025n

* CHECK dout1_4 Vdout1_4ck122 = 0.9 time = 615
.meas tran vdout1_4ck122 FIND v(dout1_4) AT=615.025n

* CHECK dout1_5 Vdout1_5ck122 = 0 time = 615
.meas tran vdout1_5ck122 FIND v(dout1_5) AT=615.025n

* CHECK dout1_6 Vdout1_6ck122 = 0.9 time = 615
.meas tran vdout1_6ck122 FIND v(dout1_6) AT=615.025n

* CHECK dout1_7 Vdout1_7ck122 = 0.9 time = 615
.meas tran vdout1_7ck122 FIND v(dout1_7) AT=615.025n

* CHECK dout1_0 Vdout1_0ck124 = 0 time = 625
.meas tran vdout1_0ck124 FIND v(dout1_0) AT=625.025n

* CHECK dout1_1 Vdout1_1ck124 = 0 time = 625
.meas tran vdout1_1ck124 FIND v(dout1_1) AT=625.025n

* CHECK dout1_2 Vdout1_2ck124 = 0 time = 625
.meas tran vdout1_2ck124 FIND v(dout1_2) AT=625.025n

* CHECK dout1_3 Vdout1_3ck124 = 0 time = 625
.meas tran vdout1_3ck124 FIND v(dout1_3) AT=625.025n

* CHECK dout1_4 Vdout1_4ck124 = 0 time = 625
.meas tran vdout1_4ck124 FIND v(dout1_4) AT=625.025n

* CHECK dout1_5 Vdout1_5ck124 = 0 time = 625
.meas tran vdout1_5ck124 FIND v(dout1_5) AT=625.025n

* CHECK dout1_6 Vdout1_6ck124 = 0.9 time = 625
.meas tran vdout1_6ck124 FIND v(dout1_6) AT=625.025n

* CHECK dout1_7 Vdout1_7ck124 = 0 time = 625
.meas tran vdout1_7ck124 FIND v(dout1_7) AT=625.025n

* CHECK dout1_0 Vdout1_0ck126 = 0 time = 635
.meas tran vdout1_0ck126 FIND v(dout1_0) AT=635.025n

* CHECK dout1_1 Vdout1_1ck126 = 0 time = 635
.meas tran vdout1_1ck126 FIND v(dout1_1) AT=635.025n

* CHECK dout1_2 Vdout1_2ck126 = 0.9 time = 635
.meas tran vdout1_2ck126 FIND v(dout1_2) AT=635.025n

* CHECK dout1_3 Vdout1_3ck126 = 0 time = 635
.meas tran vdout1_3ck126 FIND v(dout1_3) AT=635.025n

* CHECK dout1_4 Vdout1_4ck126 = 0 time = 635
.meas tran vdout1_4ck126 FIND v(dout1_4) AT=635.025n

* CHECK dout1_5 Vdout1_5ck126 = 0.9 time = 635
.meas tran vdout1_5ck126 FIND v(dout1_5) AT=635.025n

* CHECK dout1_6 Vdout1_6ck126 = 0 time = 635
.meas tran vdout1_6ck126 FIND v(dout1_6) AT=635.025n

* CHECK dout1_7 Vdout1_7ck126 = 0 time = 635
.meas tran vdout1_7ck126 FIND v(dout1_7) AT=635.025n

* CHECK dout1_0 Vdout1_0ck127 = 0 time = 640
.meas tran vdout1_0ck127 FIND v(dout1_0) AT=640.025n

* CHECK dout1_1 Vdout1_1ck127 = 0.9 time = 640
.meas tran vdout1_1ck127 FIND v(dout1_1) AT=640.025n

* CHECK dout1_2 Vdout1_2ck127 = 0 time = 640
.meas tran vdout1_2ck127 FIND v(dout1_2) AT=640.025n

* CHECK dout1_3 Vdout1_3ck127 = 0 time = 640
.meas tran vdout1_3ck127 FIND v(dout1_3) AT=640.025n

* CHECK dout1_4 Vdout1_4ck127 = 0 time = 640
.meas tran vdout1_4ck127 FIND v(dout1_4) AT=640.025n

* CHECK dout1_5 Vdout1_5ck127 = 0 time = 640
.meas tran vdout1_5ck127 FIND v(dout1_5) AT=640.025n

* CHECK dout1_6 Vdout1_6ck127 = 0.9 time = 640
.meas tran vdout1_6ck127 FIND v(dout1_6) AT=640.025n

* CHECK dout1_7 Vdout1_7ck127 = 0.9 time = 640
.meas tran vdout1_7ck127 FIND v(dout1_7) AT=640.025n

* CHECK dout1_0 Vdout1_0ck128 = 0.9 time = 645
.meas tran vdout1_0ck128 FIND v(dout1_0) AT=645.025n

* CHECK dout1_1 Vdout1_1ck128 = 0 time = 645
.meas tran vdout1_1ck128 FIND v(dout1_1) AT=645.025n

* CHECK dout1_2 Vdout1_2ck128 = 0 time = 645
.meas tran vdout1_2ck128 FIND v(dout1_2) AT=645.025n

* CHECK dout1_3 Vdout1_3ck128 = 0 time = 645
.meas tran vdout1_3ck128 FIND v(dout1_3) AT=645.025n

* CHECK dout1_4 Vdout1_4ck128 = 0.9 time = 645
.meas tran vdout1_4ck128 FIND v(dout1_4) AT=645.025n

* CHECK dout1_5 Vdout1_5ck128 = 0.9 time = 645
.meas tran vdout1_5ck128 FIND v(dout1_5) AT=645.025n

* CHECK dout1_6 Vdout1_6ck128 = 0 time = 645
.meas tran vdout1_6ck128 FIND v(dout1_6) AT=645.025n

* CHECK dout1_7 Vdout1_7ck128 = 0.9 time = 645
.meas tran vdout1_7ck128 FIND v(dout1_7) AT=645.025n

* CHECK dout1_0 Vdout1_0ck129 = 0 time = 650
.meas tran vdout1_0ck129 FIND v(dout1_0) AT=650.025n

* CHECK dout1_1 Vdout1_1ck129 = 0 time = 650
.meas tran vdout1_1ck129 FIND v(dout1_1) AT=650.025n

* CHECK dout1_2 Vdout1_2ck129 = 0.9 time = 650
.meas tran vdout1_2ck129 FIND v(dout1_2) AT=650.025n

* CHECK dout1_3 Vdout1_3ck129 = 0 time = 650
.meas tran vdout1_3ck129 FIND v(dout1_3) AT=650.025n

* CHECK dout1_4 Vdout1_4ck129 = 0.9 time = 650
.meas tran vdout1_4ck129 FIND v(dout1_4) AT=650.025n

* CHECK dout1_5 Vdout1_5ck129 = 0 time = 650
.meas tran vdout1_5ck129 FIND v(dout1_5) AT=650.025n

* CHECK dout1_6 Vdout1_6ck129 = 0.9 time = 650
.meas tran vdout1_6ck129 FIND v(dout1_6) AT=650.025n

* CHECK dout1_7 Vdout1_7ck129 = 0.9 time = 650
.meas tran vdout1_7ck129 FIND v(dout1_7) AT=650.025n

* CHECK dout1_0 Vdout1_0ck130 = 0 time = 655
.meas tran vdout1_0ck130 FIND v(dout1_0) AT=655.025n

* CHECK dout1_1 Vdout1_1ck130 = 0 time = 655
.meas tran vdout1_1ck130 FIND v(dout1_1) AT=655.025n

* CHECK dout1_2 Vdout1_2ck130 = 0.9 time = 655
.meas tran vdout1_2ck130 FIND v(dout1_2) AT=655.025n

* CHECK dout1_3 Vdout1_3ck130 = 0 time = 655
.meas tran vdout1_3ck130 FIND v(dout1_3) AT=655.025n

* CHECK dout1_4 Vdout1_4ck130 = 0 time = 655
.meas tran vdout1_4ck130 FIND v(dout1_4) AT=655.025n

* CHECK dout1_5 Vdout1_5ck130 = 0.9 time = 655
.meas tran vdout1_5ck130 FIND v(dout1_5) AT=655.025n

* CHECK dout1_6 Vdout1_6ck130 = 0 time = 655
.meas tran vdout1_6ck130 FIND v(dout1_6) AT=655.025n

* CHECK dout1_7 Vdout1_7ck130 = 0 time = 655
.meas tran vdout1_7ck130 FIND v(dout1_7) AT=655.025n

* CHECK dout1_0 Vdout1_0ck131 = 0.9 time = 660
.meas tran vdout1_0ck131 FIND v(dout1_0) AT=660.025n

* CHECK dout1_1 Vdout1_1ck131 = 0 time = 660
.meas tran vdout1_1ck131 FIND v(dout1_1) AT=660.025n

* CHECK dout1_2 Vdout1_2ck131 = 0 time = 660
.meas tran vdout1_2ck131 FIND v(dout1_2) AT=660.025n

* CHECK dout1_3 Vdout1_3ck131 = 0 time = 660
.meas tran vdout1_3ck131 FIND v(dout1_3) AT=660.025n

* CHECK dout1_4 Vdout1_4ck131 = 0.9 time = 660
.meas tran vdout1_4ck131 FIND v(dout1_4) AT=660.025n

* CHECK dout1_5 Vdout1_5ck131 = 0.9 time = 660
.meas tran vdout1_5ck131 FIND v(dout1_5) AT=660.025n

* CHECK dout1_6 Vdout1_6ck131 = 0 time = 660
.meas tran vdout1_6ck131 FIND v(dout1_6) AT=660.025n

* CHECK dout1_7 Vdout1_7ck131 = 0 time = 660
.meas tran vdout1_7ck131 FIND v(dout1_7) AT=660.025n

* CHECK dout1_0 Vdout1_0ck132 = 0.9 time = 665
.meas tran vdout1_0ck132 FIND v(dout1_0) AT=665.025n

* CHECK dout1_1 Vdout1_1ck132 = 0.9 time = 665
.meas tran vdout1_1ck132 FIND v(dout1_1) AT=665.025n

* CHECK dout1_2 Vdout1_2ck132 = 0 time = 665
.meas tran vdout1_2ck132 FIND v(dout1_2) AT=665.025n

* CHECK dout1_3 Vdout1_3ck132 = 0 time = 665
.meas tran vdout1_3ck132 FIND v(dout1_3) AT=665.025n

* CHECK dout1_4 Vdout1_4ck132 = 0.9 time = 665
.meas tran vdout1_4ck132 FIND v(dout1_4) AT=665.025n

* CHECK dout1_5 Vdout1_5ck132 = 0 time = 665
.meas tran vdout1_5ck132 FIND v(dout1_5) AT=665.025n

* CHECK dout1_6 Vdout1_6ck132 = 0 time = 665
.meas tran vdout1_6ck132 FIND v(dout1_6) AT=665.025n

* CHECK dout1_7 Vdout1_7ck132 = 0 time = 665
.meas tran vdout1_7ck132 FIND v(dout1_7) AT=665.025n

* CHECK dout1_0 Vdout1_0ck133 = 0 time = 670
.meas tran vdout1_0ck133 FIND v(dout1_0) AT=670.025n

* CHECK dout1_1 Vdout1_1ck133 = 0 time = 670
.meas tran vdout1_1ck133 FIND v(dout1_1) AT=670.025n

* CHECK dout1_2 Vdout1_2ck133 = 0.9 time = 670
.meas tran vdout1_2ck133 FIND v(dout1_2) AT=670.025n

* CHECK dout1_3 Vdout1_3ck133 = 0 time = 670
.meas tran vdout1_3ck133 FIND v(dout1_3) AT=670.025n

* CHECK dout1_4 Vdout1_4ck133 = 0.9 time = 670
.meas tran vdout1_4ck133 FIND v(dout1_4) AT=670.025n

* CHECK dout1_5 Vdout1_5ck133 = 0 time = 670
.meas tran vdout1_5ck133 FIND v(dout1_5) AT=670.025n

* CHECK dout1_6 Vdout1_6ck133 = 0.9 time = 670
.meas tran vdout1_6ck133 FIND v(dout1_6) AT=670.025n

* CHECK dout1_7 Vdout1_7ck133 = 0 time = 670
.meas tran vdout1_7ck133 FIND v(dout1_7) AT=670.025n

* CHECK dout1_0 Vdout1_0ck137 = 0.9 time = 690
.meas tran vdout1_0ck137 FIND v(dout1_0) AT=690.025n

* CHECK dout1_1 Vdout1_1ck137 = 0.9 time = 690
.meas tran vdout1_1ck137 FIND v(dout1_1) AT=690.025n

* CHECK dout1_2 Vdout1_2ck137 = 0.9 time = 690
.meas tran vdout1_2ck137 FIND v(dout1_2) AT=690.025n

* CHECK dout1_3 Vdout1_3ck137 = 0.9 time = 690
.meas tran vdout1_3ck137 FIND v(dout1_3) AT=690.025n

* CHECK dout1_4 Vdout1_4ck137 = 0 time = 690
.meas tran vdout1_4ck137 FIND v(dout1_4) AT=690.025n

* CHECK dout1_5 Vdout1_5ck137 = 0 time = 690
.meas tran vdout1_5ck137 FIND v(dout1_5) AT=690.025n

* CHECK dout1_6 Vdout1_6ck137 = 0.9 time = 690
.meas tran vdout1_6ck137 FIND v(dout1_6) AT=690.025n

* CHECK dout1_7 Vdout1_7ck137 = 0.9 time = 690
.meas tran vdout1_7ck137 FIND v(dout1_7) AT=690.025n

* CHECK dout1_0 Vdout1_0ck139 = 0 time = 700
.meas tran vdout1_0ck139 FIND v(dout1_0) AT=700.025n

* CHECK dout1_1 Vdout1_1ck139 = 0 time = 700
.meas tran vdout1_1ck139 FIND v(dout1_1) AT=700.025n

* CHECK dout1_2 Vdout1_2ck139 = 0 time = 700
.meas tran vdout1_2ck139 FIND v(dout1_2) AT=700.025n

* CHECK dout1_3 Vdout1_3ck139 = 0.9 time = 700
.meas tran vdout1_3ck139 FIND v(dout1_3) AT=700.025n

* CHECK dout1_4 Vdout1_4ck139 = 0.9 time = 700
.meas tran vdout1_4ck139 FIND v(dout1_4) AT=700.025n

* CHECK dout1_5 Vdout1_5ck139 = 0 time = 700
.meas tran vdout1_5ck139 FIND v(dout1_5) AT=700.025n

* CHECK dout1_6 Vdout1_6ck139 = 0 time = 700
.meas tran vdout1_6ck139 FIND v(dout1_6) AT=700.025n

* CHECK dout1_7 Vdout1_7ck139 = 0.9 time = 700
.meas tran vdout1_7ck139 FIND v(dout1_7) AT=700.025n

* CHECK dout1_0 Vdout1_0ck142 = 0 time = 715
.meas tran vdout1_0ck142 FIND v(dout1_0) AT=715.025n

* CHECK dout1_1 Vdout1_1ck142 = 0 time = 715
.meas tran vdout1_1ck142 FIND v(dout1_1) AT=715.025n

* CHECK dout1_2 Vdout1_2ck142 = 0.9 time = 715
.meas tran vdout1_2ck142 FIND v(dout1_2) AT=715.025n

* CHECK dout1_3 Vdout1_3ck142 = 0.9 time = 715
.meas tran vdout1_3ck142 FIND v(dout1_3) AT=715.025n

* CHECK dout1_4 Vdout1_4ck142 = 0 time = 715
.meas tran vdout1_4ck142 FIND v(dout1_4) AT=715.025n

* CHECK dout1_5 Vdout1_5ck142 = 0.9 time = 715
.meas tran vdout1_5ck142 FIND v(dout1_5) AT=715.025n

* CHECK dout1_6 Vdout1_6ck142 = 0 time = 715
.meas tran vdout1_6ck142 FIND v(dout1_6) AT=715.025n

* CHECK dout1_7 Vdout1_7ck142 = 0 time = 715
.meas tran vdout1_7ck142 FIND v(dout1_7) AT=715.025n

* CHECK dout1_0 Vdout1_0ck145 = 0.9 time = 730
.meas tran vdout1_0ck145 FIND v(dout1_0) AT=730.025n

* CHECK dout1_1 Vdout1_1ck145 = 0.9 time = 730
.meas tran vdout1_1ck145 FIND v(dout1_1) AT=730.025n

* CHECK dout1_2 Vdout1_2ck145 = 0.9 time = 730
.meas tran vdout1_2ck145 FIND v(dout1_2) AT=730.025n

* CHECK dout1_3 Vdout1_3ck145 = 0 time = 730
.meas tran vdout1_3ck145 FIND v(dout1_3) AT=730.025n

* CHECK dout1_4 Vdout1_4ck145 = 0.9 time = 730
.meas tran vdout1_4ck145 FIND v(dout1_4) AT=730.025n

* CHECK dout1_5 Vdout1_5ck145 = 0 time = 730
.meas tran vdout1_5ck145 FIND v(dout1_5) AT=730.025n

* CHECK dout1_6 Vdout1_6ck145 = 0.9 time = 730
.meas tran vdout1_6ck145 FIND v(dout1_6) AT=730.025n

* CHECK dout1_7 Vdout1_7ck145 = 0 time = 730
.meas tran vdout1_7ck145 FIND v(dout1_7) AT=730.025n

* CHECK dout1_0 Vdout1_0ck148 = 0.9 time = 745
.meas tran vdout1_0ck148 FIND v(dout1_0) AT=745.025n

* CHECK dout1_1 Vdout1_1ck148 = 0 time = 745
.meas tran vdout1_1ck148 FIND v(dout1_1) AT=745.025n

* CHECK dout1_2 Vdout1_2ck148 = 0 time = 745
.meas tran vdout1_2ck148 FIND v(dout1_2) AT=745.025n

* CHECK dout1_3 Vdout1_3ck148 = 0 time = 745
.meas tran vdout1_3ck148 FIND v(dout1_3) AT=745.025n

* CHECK dout1_4 Vdout1_4ck148 = 0 time = 745
.meas tran vdout1_4ck148 FIND v(dout1_4) AT=745.025n

* CHECK dout1_5 Vdout1_5ck148 = 0.9 time = 745
.meas tran vdout1_5ck148 FIND v(dout1_5) AT=745.025n

* CHECK dout1_6 Vdout1_6ck148 = 0 time = 745
.meas tran vdout1_6ck148 FIND v(dout1_6) AT=745.025n

* CHECK dout1_7 Vdout1_7ck148 = 0 time = 745
.meas tran vdout1_7ck148 FIND v(dout1_7) AT=745.025n

* CHECK dout1_0 Vdout1_0ck149 = 0.9 time = 750
.meas tran vdout1_0ck149 FIND v(dout1_0) AT=750.025n

* CHECK dout1_1 Vdout1_1ck149 = 0 time = 750
.meas tran vdout1_1ck149 FIND v(dout1_1) AT=750.025n

* CHECK dout1_2 Vdout1_2ck149 = 0.9 time = 750
.meas tran vdout1_2ck149 FIND v(dout1_2) AT=750.025n

* CHECK dout1_3 Vdout1_3ck149 = 0.9 time = 750
.meas tran vdout1_3ck149 FIND v(dout1_3) AT=750.025n

* CHECK dout1_4 Vdout1_4ck149 = 0.9 time = 750
.meas tran vdout1_4ck149 FIND v(dout1_4) AT=750.025n

* CHECK dout1_5 Vdout1_5ck149 = 0.9 time = 750
.meas tran vdout1_5ck149 FIND v(dout1_5) AT=750.025n

* CHECK dout1_6 Vdout1_6ck149 = 0.9 time = 750
.meas tran vdout1_6ck149 FIND v(dout1_6) AT=750.025n

* CHECK dout1_7 Vdout1_7ck149 = 0.9 time = 750
.meas tran vdout1_7ck149 FIND v(dout1_7) AT=750.025n

* CHECK dout1_0 Vdout1_0ck150 = 0.9 time = 755
.meas tran vdout1_0ck150 FIND v(dout1_0) AT=755.025n

* CHECK dout1_1 Vdout1_1ck150 = 0.9 time = 755
.meas tran vdout1_1ck150 FIND v(dout1_1) AT=755.025n

* CHECK dout1_2 Vdout1_2ck150 = 0.9 time = 755
.meas tran vdout1_2ck150 FIND v(dout1_2) AT=755.025n

* CHECK dout1_3 Vdout1_3ck150 = 0 time = 755
.meas tran vdout1_3ck150 FIND v(dout1_3) AT=755.025n

* CHECK dout1_4 Vdout1_4ck150 = 0.9 time = 755
.meas tran vdout1_4ck150 FIND v(dout1_4) AT=755.025n

* CHECK dout1_5 Vdout1_5ck150 = 0 time = 755
.meas tran vdout1_5ck150 FIND v(dout1_5) AT=755.025n

* CHECK dout1_6 Vdout1_6ck150 = 0.9 time = 755
.meas tran vdout1_6ck150 FIND v(dout1_6) AT=755.025n

* CHECK dout1_7 Vdout1_7ck150 = 0 time = 755
.meas tran vdout1_7ck150 FIND v(dout1_7) AT=755.025n

* CHECK dout1_0 Vdout1_0ck151 = 0.9 time = 760
.meas tran vdout1_0ck151 FIND v(dout1_0) AT=760.025n

* CHECK dout1_1 Vdout1_1ck151 = 0 time = 760
.meas tran vdout1_1ck151 FIND v(dout1_1) AT=760.025n

* CHECK dout1_2 Vdout1_2ck151 = 0 time = 760
.meas tran vdout1_2ck151 FIND v(dout1_2) AT=760.025n

* CHECK dout1_3 Vdout1_3ck151 = 0 time = 760
.meas tran vdout1_3ck151 FIND v(dout1_3) AT=760.025n

* CHECK dout1_4 Vdout1_4ck151 = 0 time = 760
.meas tran vdout1_4ck151 FIND v(dout1_4) AT=760.025n

* CHECK dout1_5 Vdout1_5ck151 = 0.9 time = 760
.meas tran vdout1_5ck151 FIND v(dout1_5) AT=760.025n

* CHECK dout1_6 Vdout1_6ck151 = 0 time = 760
.meas tran vdout1_6ck151 FIND v(dout1_6) AT=760.025n

* CHECK dout1_7 Vdout1_7ck151 = 0 time = 760
.meas tran vdout1_7ck151 FIND v(dout1_7) AT=760.025n

* CHECK dout1_0 Vdout1_0ck152 = 0.9 time = 765
.meas tran vdout1_0ck152 FIND v(dout1_0) AT=765.025n

* CHECK dout1_1 Vdout1_1ck152 = 0 time = 765
.meas tran vdout1_1ck152 FIND v(dout1_1) AT=765.025n

* CHECK dout1_2 Vdout1_2ck152 = 0 time = 765
.meas tran vdout1_2ck152 FIND v(dout1_2) AT=765.025n

* CHECK dout1_3 Vdout1_3ck152 = 0 time = 765
.meas tran vdout1_3ck152 FIND v(dout1_3) AT=765.025n

* CHECK dout1_4 Vdout1_4ck152 = 0 time = 765
.meas tran vdout1_4ck152 FIND v(dout1_4) AT=765.025n

* CHECK dout1_5 Vdout1_5ck152 = 0.9 time = 765
.meas tran vdout1_5ck152 FIND v(dout1_5) AT=765.025n

* CHECK dout1_6 Vdout1_6ck152 = 0.9 time = 765
.meas tran vdout1_6ck152 FIND v(dout1_6) AT=765.025n

* CHECK dout1_7 Vdout1_7ck152 = 0 time = 765
.meas tran vdout1_7ck152 FIND v(dout1_7) AT=765.025n

* CHECK dout1_0 Vdout1_0ck153 = 0 time = 770
.meas tran vdout1_0ck153 FIND v(dout1_0) AT=770.025n

* CHECK dout1_1 Vdout1_1ck153 = 0 time = 770
.meas tran vdout1_1ck153 FIND v(dout1_1) AT=770.025n

* CHECK dout1_2 Vdout1_2ck153 = 0.9 time = 770
.meas tran vdout1_2ck153 FIND v(dout1_2) AT=770.025n

* CHECK dout1_3 Vdout1_3ck153 = 0 time = 770
.meas tran vdout1_3ck153 FIND v(dout1_3) AT=770.025n

* CHECK dout1_4 Vdout1_4ck153 = 0.9 time = 770
.meas tran vdout1_4ck153 FIND v(dout1_4) AT=770.025n

* CHECK dout1_5 Vdout1_5ck153 = 0 time = 770
.meas tran vdout1_5ck153 FIND v(dout1_5) AT=770.025n

* CHECK dout1_6 Vdout1_6ck153 = 0.9 time = 770
.meas tran vdout1_6ck153 FIND v(dout1_6) AT=770.025n

* CHECK dout1_7 Vdout1_7ck153 = 0.9 time = 770
.meas tran vdout1_7ck153 FIND v(dout1_7) AT=770.025n

* CHECK dout1_0 Vdout1_0ck154 = 0.9 time = 775
.meas tran vdout1_0ck154 FIND v(dout1_0) AT=775.025n

* CHECK dout1_1 Vdout1_1ck154 = 0 time = 775
.meas tran vdout1_1ck154 FIND v(dout1_1) AT=775.025n

* CHECK dout1_2 Vdout1_2ck154 = 0.9 time = 775
.meas tran vdout1_2ck154 FIND v(dout1_2) AT=775.025n

* CHECK dout1_3 Vdout1_3ck154 = 0 time = 775
.meas tran vdout1_3ck154 FIND v(dout1_3) AT=775.025n

* CHECK dout1_4 Vdout1_4ck154 = 0.9 time = 775
.meas tran vdout1_4ck154 FIND v(dout1_4) AT=775.025n

* CHECK dout1_5 Vdout1_5ck154 = 0 time = 775
.meas tran vdout1_5ck154 FIND v(dout1_5) AT=775.025n

* CHECK dout1_6 Vdout1_6ck154 = 0 time = 775
.meas tran vdout1_6ck154 FIND v(dout1_6) AT=775.025n

* CHECK dout1_7 Vdout1_7ck154 = 0 time = 775
.meas tran vdout1_7ck154 FIND v(dout1_7) AT=775.025n

* CHECK dout1_0 Vdout1_0ck156 = 0 time = 785
.meas tran vdout1_0ck156 FIND v(dout1_0) AT=785.025n

* CHECK dout1_1 Vdout1_1ck156 = 0 time = 785
.meas tran vdout1_1ck156 FIND v(dout1_1) AT=785.025n

* CHECK dout1_2 Vdout1_2ck156 = 0 time = 785
.meas tran vdout1_2ck156 FIND v(dout1_2) AT=785.025n

* CHECK dout1_3 Vdout1_3ck156 = 0 time = 785
.meas tran vdout1_3ck156 FIND v(dout1_3) AT=785.025n

* CHECK dout1_4 Vdout1_4ck156 = 0 time = 785
.meas tran vdout1_4ck156 FIND v(dout1_4) AT=785.025n

* CHECK dout1_5 Vdout1_5ck156 = 0 time = 785
.meas tran vdout1_5ck156 FIND v(dout1_5) AT=785.025n

* CHECK dout1_6 Vdout1_6ck156 = 0.9 time = 785
.meas tran vdout1_6ck156 FIND v(dout1_6) AT=785.025n

* CHECK dout1_7 Vdout1_7ck156 = 0 time = 785
.meas tran vdout1_7ck156 FIND v(dout1_7) AT=785.025n

* CHECK dout1_0 Vdout1_0ck159 = 0.9 time = 800
.meas tran vdout1_0ck159 FIND v(dout1_0) AT=800.025n

* CHECK dout1_1 Vdout1_1ck159 = 0 time = 800
.meas tran vdout1_1ck159 FIND v(dout1_1) AT=800.025n

* CHECK dout1_2 Vdout1_2ck159 = 0 time = 800
.meas tran vdout1_2ck159 FIND v(dout1_2) AT=800.025n

* CHECK dout1_3 Vdout1_3ck159 = 0.9 time = 800
.meas tran vdout1_3ck159 FIND v(dout1_3) AT=800.025n

* CHECK dout1_4 Vdout1_4ck159 = 0.9 time = 800
.meas tran vdout1_4ck159 FIND v(dout1_4) AT=800.025n

* CHECK dout1_5 Vdout1_5ck159 = 0 time = 800
.meas tran vdout1_5ck159 FIND v(dout1_5) AT=800.025n

* CHECK dout1_6 Vdout1_6ck159 = 0 time = 800
.meas tran vdout1_6ck159 FIND v(dout1_6) AT=800.025n

* CHECK dout1_7 Vdout1_7ck159 = 0.9 time = 800
.meas tran vdout1_7ck159 FIND v(dout1_7) AT=800.025n

* CHECK dout1_0 Vdout1_0ck160 = 0.9 time = 805
.meas tran vdout1_0ck160 FIND v(dout1_0) AT=805.025n

* CHECK dout1_1 Vdout1_1ck160 = 0 time = 805
.meas tran vdout1_1ck160 FIND v(dout1_1) AT=805.025n

* CHECK dout1_2 Vdout1_2ck160 = 0.9 time = 805
.meas tran vdout1_2ck160 FIND v(dout1_2) AT=805.025n

* CHECK dout1_3 Vdout1_3ck160 = 0 time = 805
.meas tran vdout1_3ck160 FIND v(dout1_3) AT=805.025n

* CHECK dout1_4 Vdout1_4ck160 = 0.9 time = 805
.meas tran vdout1_4ck160 FIND v(dout1_4) AT=805.025n

* CHECK dout1_5 Vdout1_5ck160 = 0.9 time = 805
.meas tran vdout1_5ck160 FIND v(dout1_5) AT=805.025n

* CHECK dout1_6 Vdout1_6ck160 = 0.9 time = 805
.meas tran vdout1_6ck160 FIND v(dout1_6) AT=805.025n

* CHECK dout1_7 Vdout1_7ck160 = 0 time = 805
.meas tran vdout1_7ck160 FIND v(dout1_7) AT=805.025n

* CHECK dout1_0 Vdout1_0ck161 = 0.9 time = 810
.meas tran vdout1_0ck161 FIND v(dout1_0) AT=810.025n

* CHECK dout1_1 Vdout1_1ck161 = 0 time = 810
.meas tran vdout1_1ck161 FIND v(dout1_1) AT=810.025n

* CHECK dout1_2 Vdout1_2ck161 = 0.9 time = 810
.meas tran vdout1_2ck161 FIND v(dout1_2) AT=810.025n

* CHECK dout1_3 Vdout1_3ck161 = 0.9 time = 810
.meas tran vdout1_3ck161 FIND v(dout1_3) AT=810.025n

* CHECK dout1_4 Vdout1_4ck161 = 0 time = 810
.meas tran vdout1_4ck161 FIND v(dout1_4) AT=810.025n

* CHECK dout1_5 Vdout1_5ck161 = 0 time = 810
.meas tran vdout1_5ck161 FIND v(dout1_5) AT=810.025n

* CHECK dout1_6 Vdout1_6ck161 = 0.9 time = 810
.meas tran vdout1_6ck161 FIND v(dout1_6) AT=810.025n

* CHECK dout1_7 Vdout1_7ck161 = 0 time = 810
.meas tran vdout1_7ck161 FIND v(dout1_7) AT=810.025n

* CHECK dout1_0 Vdout1_0ck164 = 0.9 time = 825
.meas tran vdout1_0ck164 FIND v(dout1_0) AT=825.025n

* CHECK dout1_1 Vdout1_1ck164 = 0 time = 825
.meas tran vdout1_1ck164 FIND v(dout1_1) AT=825.025n

* CHECK dout1_2 Vdout1_2ck164 = 0 time = 825
.meas tran vdout1_2ck164 FIND v(dout1_2) AT=825.025n

* CHECK dout1_3 Vdout1_3ck164 = 0 time = 825
.meas tran vdout1_3ck164 FIND v(dout1_3) AT=825.025n

* CHECK dout1_4 Vdout1_4ck164 = 0 time = 825
.meas tran vdout1_4ck164 FIND v(dout1_4) AT=825.025n

* CHECK dout1_5 Vdout1_5ck164 = 0.9 time = 825
.meas tran vdout1_5ck164 FIND v(dout1_5) AT=825.025n

* CHECK dout1_6 Vdout1_6ck164 = 0 time = 825
.meas tran vdout1_6ck164 FIND v(dout1_6) AT=825.025n

* CHECK dout1_7 Vdout1_7ck164 = 0 time = 825
.meas tran vdout1_7ck164 FIND v(dout1_7) AT=825.025n

* CHECK dout1_0 Vdout1_0ck167 = 0 time = 840
.meas tran vdout1_0ck167 FIND v(dout1_0) AT=840.025n

* CHECK dout1_1 Vdout1_1ck167 = 0 time = 840
.meas tran vdout1_1ck167 FIND v(dout1_1) AT=840.025n

* CHECK dout1_2 Vdout1_2ck167 = 0 time = 840
.meas tran vdout1_2ck167 FIND v(dout1_2) AT=840.025n

* CHECK dout1_3 Vdout1_3ck167 = 0 time = 840
.meas tran vdout1_3ck167 FIND v(dout1_3) AT=840.025n

* CHECK dout1_4 Vdout1_4ck167 = 0 time = 840
.meas tran vdout1_4ck167 FIND v(dout1_4) AT=840.025n

* CHECK dout1_5 Vdout1_5ck167 = 0 time = 840
.meas tran vdout1_5ck167 FIND v(dout1_5) AT=840.025n

* CHECK dout1_6 Vdout1_6ck167 = 0.9 time = 840
.meas tran vdout1_6ck167 FIND v(dout1_6) AT=840.025n

* CHECK dout1_7 Vdout1_7ck167 = 0 time = 840
.meas tran vdout1_7ck167 FIND v(dout1_7) AT=840.025n

* CHECK dout1_0 Vdout1_0ck174 = 0.9 time = 875
.meas tran vdout1_0ck174 FIND v(dout1_0) AT=875.025n

* CHECK dout1_1 Vdout1_1ck174 = 0 time = 875
.meas tran vdout1_1ck174 FIND v(dout1_1) AT=875.025n

* CHECK dout1_2 Vdout1_2ck174 = 0 time = 875
.meas tran vdout1_2ck174 FIND v(dout1_2) AT=875.025n

* CHECK dout1_3 Vdout1_3ck174 = 0 time = 875
.meas tran vdout1_3ck174 FIND v(dout1_3) AT=875.025n

* CHECK dout1_4 Vdout1_4ck174 = 0 time = 875
.meas tran vdout1_4ck174 FIND v(dout1_4) AT=875.025n

* CHECK dout1_5 Vdout1_5ck174 = 0.9 time = 875
.meas tran vdout1_5ck174 FIND v(dout1_5) AT=875.025n

* CHECK dout1_6 Vdout1_6ck174 = 0.9 time = 875
.meas tran vdout1_6ck174 FIND v(dout1_6) AT=875.025n

* CHECK dout1_7 Vdout1_7ck174 = 0.9 time = 875
.meas tran vdout1_7ck174 FIND v(dout1_7) AT=875.025n

* CHECK dout1_0 Vdout1_0ck176 = 0 time = 885
.meas tran vdout1_0ck176 FIND v(dout1_0) AT=885.025n

* CHECK dout1_1 Vdout1_1ck176 = 0.9 time = 885
.meas tran vdout1_1ck176 FIND v(dout1_1) AT=885.025n

* CHECK dout1_2 Vdout1_2ck176 = 0.9 time = 885
.meas tran vdout1_2ck176 FIND v(dout1_2) AT=885.025n

* CHECK dout1_3 Vdout1_3ck176 = 0.9 time = 885
.meas tran vdout1_3ck176 FIND v(dout1_3) AT=885.025n

* CHECK dout1_4 Vdout1_4ck176 = 0.9 time = 885
.meas tran vdout1_4ck176 FIND v(dout1_4) AT=885.025n

* CHECK dout1_5 Vdout1_5ck176 = 0 time = 885
.meas tran vdout1_5ck176 FIND v(dout1_5) AT=885.025n

* CHECK dout1_6 Vdout1_6ck176 = 0.9 time = 885
.meas tran vdout1_6ck176 FIND v(dout1_6) AT=885.025n

* CHECK dout1_7 Vdout1_7ck176 = 0.9 time = 885
.meas tran vdout1_7ck176 FIND v(dout1_7) AT=885.025n

* CHECK dout1_0 Vdout1_0ck177 = 0 time = 890
.meas tran vdout1_0ck177 FIND v(dout1_0) AT=890.025n

* CHECK dout1_1 Vdout1_1ck177 = 0 time = 890
.meas tran vdout1_1ck177 FIND v(dout1_1) AT=890.025n

* CHECK dout1_2 Vdout1_2ck177 = 0 time = 890
.meas tran vdout1_2ck177 FIND v(dout1_2) AT=890.025n

* CHECK dout1_3 Vdout1_3ck177 = 0 time = 890
.meas tran vdout1_3ck177 FIND v(dout1_3) AT=890.025n

* CHECK dout1_4 Vdout1_4ck177 = 0 time = 890
.meas tran vdout1_4ck177 FIND v(dout1_4) AT=890.025n

* CHECK dout1_5 Vdout1_5ck177 = 0 time = 890
.meas tran vdout1_5ck177 FIND v(dout1_5) AT=890.025n

* CHECK dout1_6 Vdout1_6ck177 = 0.9 time = 890
.meas tran vdout1_6ck177 FIND v(dout1_6) AT=890.025n

* CHECK dout1_7 Vdout1_7ck177 = 0 time = 890
.meas tran vdout1_7ck177 FIND v(dout1_7) AT=890.025n

* CHECK dout1_0 Vdout1_0ck181 = 0.9 time = 910
.meas tran vdout1_0ck181 FIND v(dout1_0) AT=910.025n

* CHECK dout1_1 Vdout1_1ck181 = 0 time = 910
.meas tran vdout1_1ck181 FIND v(dout1_1) AT=910.025n

* CHECK dout1_2 Vdout1_2ck181 = 0.9 time = 910
.meas tran vdout1_2ck181 FIND v(dout1_2) AT=910.025n

* CHECK dout1_3 Vdout1_3ck181 = 0.9 time = 910
.meas tran vdout1_3ck181 FIND v(dout1_3) AT=910.025n

* CHECK dout1_4 Vdout1_4ck181 = 0 time = 910
.meas tran vdout1_4ck181 FIND v(dout1_4) AT=910.025n

* CHECK dout1_5 Vdout1_5ck181 = 0 time = 910
.meas tran vdout1_5ck181 FIND v(dout1_5) AT=910.025n

* CHECK dout1_6 Vdout1_6ck181 = 0.9 time = 910
.meas tran vdout1_6ck181 FIND v(dout1_6) AT=910.025n

* CHECK dout1_7 Vdout1_7ck181 = 0 time = 910
.meas tran vdout1_7ck181 FIND v(dout1_7) AT=910.025n

* CHECK dout1_0 Vdout1_0ck183 = 0.9 time = 920
.meas tran vdout1_0ck183 FIND v(dout1_0) AT=920.025n

* CHECK dout1_1 Vdout1_1ck183 = 0 time = 920
.meas tran vdout1_1ck183 FIND v(dout1_1) AT=920.025n

* CHECK dout1_2 Vdout1_2ck183 = 0.9 time = 920
.meas tran vdout1_2ck183 FIND v(dout1_2) AT=920.025n

* CHECK dout1_3 Vdout1_3ck183 = 0.9 time = 920
.meas tran vdout1_3ck183 FIND v(dout1_3) AT=920.025n

* CHECK dout1_4 Vdout1_4ck183 = 0.9 time = 920
.meas tran vdout1_4ck183 FIND v(dout1_4) AT=920.025n

* CHECK dout1_5 Vdout1_5ck183 = 0.9 time = 920
.meas tran vdout1_5ck183 FIND v(dout1_5) AT=920.025n

* CHECK dout1_6 Vdout1_6ck183 = 0.9 time = 920
.meas tran vdout1_6ck183 FIND v(dout1_6) AT=920.025n

* CHECK dout1_7 Vdout1_7ck183 = 0 time = 920
.meas tran vdout1_7ck183 FIND v(dout1_7) AT=920.025n

* CHECK dout1_0 Vdout1_0ck185 = 0.9 time = 930
.meas tran vdout1_0ck185 FIND v(dout1_0) AT=930.025n

* CHECK dout1_1 Vdout1_1ck185 = 0 time = 930
.meas tran vdout1_1ck185 FIND v(dout1_1) AT=930.025n

* CHECK dout1_2 Vdout1_2ck185 = 0.9 time = 930
.meas tran vdout1_2ck185 FIND v(dout1_2) AT=930.025n

* CHECK dout1_3 Vdout1_3ck185 = 0 time = 930
.meas tran vdout1_3ck185 FIND v(dout1_3) AT=930.025n

* CHECK dout1_4 Vdout1_4ck185 = 0.9 time = 930
.meas tran vdout1_4ck185 FIND v(dout1_4) AT=930.025n

* CHECK dout1_5 Vdout1_5ck185 = 0 time = 930
.meas tran vdout1_5ck185 FIND v(dout1_5) AT=930.025n

* CHECK dout1_6 Vdout1_6ck185 = 0 time = 930
.meas tran vdout1_6ck185 FIND v(dout1_6) AT=930.025n

* CHECK dout1_7 Vdout1_7ck185 = 0.9 time = 930
.meas tran vdout1_7ck185 FIND v(dout1_7) AT=930.025n

* CHECK dout1_0 Vdout1_0ck186 = 0 time = 935
.meas tran vdout1_0ck186 FIND v(dout1_0) AT=935.025n

* CHECK dout1_1 Vdout1_1ck186 = 0 time = 935
.meas tran vdout1_1ck186 FIND v(dout1_1) AT=935.025n

* CHECK dout1_2 Vdout1_2ck186 = 0 time = 935
.meas tran vdout1_2ck186 FIND v(dout1_2) AT=935.025n

* CHECK dout1_3 Vdout1_3ck186 = 0.9 time = 935
.meas tran vdout1_3ck186 FIND v(dout1_3) AT=935.025n

* CHECK dout1_4 Vdout1_4ck186 = 0.9 time = 935
.meas tran vdout1_4ck186 FIND v(dout1_4) AT=935.025n

* CHECK dout1_5 Vdout1_5ck186 = 0.9 time = 935
.meas tran vdout1_5ck186 FIND v(dout1_5) AT=935.025n

* CHECK dout1_6 Vdout1_6ck186 = 0.9 time = 935
.meas tran vdout1_6ck186 FIND v(dout1_6) AT=935.025n

* CHECK dout1_7 Vdout1_7ck186 = 0 time = 935
.meas tran vdout1_7ck186 FIND v(dout1_7) AT=935.025n

* CHECK dout1_0 Vdout1_0ck187 = 0 time = 940
.meas tran vdout1_0ck187 FIND v(dout1_0) AT=940.025n

* CHECK dout1_1 Vdout1_1ck187 = 0.9 time = 940
.meas tran vdout1_1ck187 FIND v(dout1_1) AT=940.025n

* CHECK dout1_2 Vdout1_2ck187 = 0 time = 940
.meas tran vdout1_2ck187 FIND v(dout1_2) AT=940.025n

* CHECK dout1_3 Vdout1_3ck187 = 0.9 time = 940
.meas tran vdout1_3ck187 FIND v(dout1_3) AT=940.025n

* CHECK dout1_4 Vdout1_4ck187 = 0 time = 940
.meas tran vdout1_4ck187 FIND v(dout1_4) AT=940.025n

* CHECK dout1_5 Vdout1_5ck187 = 0 time = 940
.meas tran vdout1_5ck187 FIND v(dout1_5) AT=940.025n

* CHECK dout1_6 Vdout1_6ck187 = 0.9 time = 940
.meas tran vdout1_6ck187 FIND v(dout1_6) AT=940.025n

* CHECK dout1_7 Vdout1_7ck187 = 0 time = 940
.meas tran vdout1_7ck187 FIND v(dout1_7) AT=940.025n

* CHECK dout1_0 Vdout1_0ck191 = 0.9 time = 960
.meas tran vdout1_0ck191 FIND v(dout1_0) AT=960.025n

* CHECK dout1_1 Vdout1_1ck191 = 0.9 time = 960
.meas tran vdout1_1ck191 FIND v(dout1_1) AT=960.025n

* CHECK dout1_2 Vdout1_2ck191 = 0 time = 960
.meas tran vdout1_2ck191 FIND v(dout1_2) AT=960.025n

* CHECK dout1_3 Vdout1_3ck191 = 0 time = 960
.meas tran vdout1_3ck191 FIND v(dout1_3) AT=960.025n

* CHECK dout1_4 Vdout1_4ck191 = 0 time = 960
.meas tran vdout1_4ck191 FIND v(dout1_4) AT=960.025n

* CHECK dout1_5 Vdout1_5ck191 = 0 time = 960
.meas tran vdout1_5ck191 FIND v(dout1_5) AT=960.025n

* CHECK dout1_6 Vdout1_6ck191 = 0.9 time = 960
.meas tran vdout1_6ck191 FIND v(dout1_6) AT=960.025n

* CHECK dout1_7 Vdout1_7ck191 = 0.9 time = 960
.meas tran vdout1_7ck191 FIND v(dout1_7) AT=960.025n

* CHECK dout1_0 Vdout1_0ck192 = 0 time = 965
.meas tran vdout1_0ck192 FIND v(dout1_0) AT=965.025n

* CHECK dout1_1 Vdout1_1ck192 = 0.9 time = 965
.meas tran vdout1_1ck192 FIND v(dout1_1) AT=965.025n

* CHECK dout1_2 Vdout1_2ck192 = 0.9 time = 965
.meas tran vdout1_2ck192 FIND v(dout1_2) AT=965.025n

* CHECK dout1_3 Vdout1_3ck192 = 0 time = 965
.meas tran vdout1_3ck192 FIND v(dout1_3) AT=965.025n

* CHECK dout1_4 Vdout1_4ck192 = 0 time = 965
.meas tran vdout1_4ck192 FIND v(dout1_4) AT=965.025n

* CHECK dout1_5 Vdout1_5ck192 = 0 time = 965
.meas tran vdout1_5ck192 FIND v(dout1_5) AT=965.025n

* CHECK dout1_6 Vdout1_6ck192 = 0 time = 965
.meas tran vdout1_6ck192 FIND v(dout1_6) AT=965.025n

* CHECK dout1_7 Vdout1_7ck192 = 0 time = 965
.meas tran vdout1_7ck192 FIND v(dout1_7) AT=965.025n

* CHECK dout1_0 Vdout1_0ck194 = 0.9 time = 975
.meas tran vdout1_0ck194 FIND v(dout1_0) AT=975.025n

* CHECK dout1_1 Vdout1_1ck194 = 0 time = 975
.meas tran vdout1_1ck194 FIND v(dout1_1) AT=975.025n

* CHECK dout1_2 Vdout1_2ck194 = 0 time = 975
.meas tran vdout1_2ck194 FIND v(dout1_2) AT=975.025n

* CHECK dout1_3 Vdout1_3ck194 = 0 time = 975
.meas tran vdout1_3ck194 FIND v(dout1_3) AT=975.025n

* CHECK dout1_4 Vdout1_4ck194 = 0 time = 975
.meas tran vdout1_4ck194 FIND v(dout1_4) AT=975.025n

* CHECK dout1_5 Vdout1_5ck194 = 0.9 time = 975
.meas tran vdout1_5ck194 FIND v(dout1_5) AT=975.025n

* CHECK dout1_6 Vdout1_6ck194 = 0.9 time = 975
.meas tran vdout1_6ck194 FIND v(dout1_6) AT=975.025n

* CHECK dout1_7 Vdout1_7ck194 = 0.9 time = 975
.meas tran vdout1_7ck194 FIND v(dout1_7) AT=975.025n

* CHECK dout1_0 Vdout1_0ck196 = 0 time = 985
.meas tran vdout1_0ck196 FIND v(dout1_0) AT=985.025n

* CHECK dout1_1 Vdout1_1ck196 = 0.9 time = 985
.meas tran vdout1_1ck196 FIND v(dout1_1) AT=985.025n

* CHECK dout1_2 Vdout1_2ck196 = 0.9 time = 985
.meas tran vdout1_2ck196 FIND v(dout1_2) AT=985.025n

* CHECK dout1_3 Vdout1_3ck196 = 0.9 time = 985
.meas tran vdout1_3ck196 FIND v(dout1_3) AT=985.025n

* CHECK dout1_4 Vdout1_4ck196 = 0 time = 985
.meas tran vdout1_4ck196 FIND v(dout1_4) AT=985.025n

* CHECK dout1_5 Vdout1_5ck196 = 0.9 time = 985
.meas tran vdout1_5ck196 FIND v(dout1_5) AT=985.025n

* CHECK dout1_6 Vdout1_6ck196 = 0.9 time = 985
.meas tran vdout1_6ck196 FIND v(dout1_6) AT=985.025n

* CHECK dout1_7 Vdout1_7ck196 = 0.9 time = 985
.meas tran vdout1_7ck196 FIND v(dout1_7) AT=985.025n

* CHECK dout1_0 Vdout1_0ck199 = 0.9 time = 1000
.meas tran vdout1_0ck199 FIND v(dout1_0) AT=1000.025n

* CHECK dout1_1 Vdout1_1ck199 = 0 time = 1000
.meas tran vdout1_1ck199 FIND v(dout1_1) AT=1000.025n

* CHECK dout1_2 Vdout1_2ck199 = 0.9 time = 1000
.meas tran vdout1_2ck199 FIND v(dout1_2) AT=1000.025n

* CHECK dout1_3 Vdout1_3ck199 = 0 time = 1000
.meas tran vdout1_3ck199 FIND v(dout1_3) AT=1000.025n

* CHECK dout1_4 Vdout1_4ck199 = 0.9 time = 1000
.meas tran vdout1_4ck199 FIND v(dout1_4) AT=1000.025n

* CHECK dout1_5 Vdout1_5ck199 = 0 time = 1000
.meas tran vdout1_5ck199 FIND v(dout1_5) AT=1000.025n

* CHECK dout1_6 Vdout1_6ck199 = 0 time = 1000
.meas tran vdout1_6ck199 FIND v(dout1_6) AT=1000.025n

* CHECK dout1_7 Vdout1_7ck199 = 0 time = 1000
.meas tran vdout1_7ck199 FIND v(dout1_7) AT=1000.025n

* CHECK dout1_0 Vdout1_0ck202 = 0.9 time = 1015
.meas tran vdout1_0ck202 FIND v(dout1_0) AT=1015.025n

* CHECK dout1_1 Vdout1_1ck202 = 0 time = 1015
.meas tran vdout1_1ck202 FIND v(dout1_1) AT=1015.025n

* CHECK dout1_2 Vdout1_2ck202 = 0.9 time = 1015
.meas tran vdout1_2ck202 FIND v(dout1_2) AT=1015.025n

* CHECK dout1_3 Vdout1_3ck202 = 0 time = 1015
.meas tran vdout1_3ck202 FIND v(dout1_3) AT=1015.025n

* CHECK dout1_4 Vdout1_4ck202 = 0.9 time = 1015
.meas tran vdout1_4ck202 FIND v(dout1_4) AT=1015.025n

* CHECK dout1_5 Vdout1_5ck202 = 0 time = 1015
.meas tran vdout1_5ck202 FIND v(dout1_5) AT=1015.025n

* CHECK dout1_6 Vdout1_6ck202 = 0 time = 1015
.meas tran vdout1_6ck202 FIND v(dout1_6) AT=1015.025n

* CHECK dout1_7 Vdout1_7ck202 = 0.9 time = 1015
.meas tran vdout1_7ck202 FIND v(dout1_7) AT=1015.025n

* CHECK dout1_0 Vdout1_0ck204 = 0.9 time = 1025
.meas tran vdout1_0ck204 FIND v(dout1_0) AT=1025.025n

* CHECK dout1_1 Vdout1_1ck204 = 0.9 time = 1025
.meas tran vdout1_1ck204 FIND v(dout1_1) AT=1025.025n

* CHECK dout1_2 Vdout1_2ck204 = 0.9 time = 1025
.meas tran vdout1_2ck204 FIND v(dout1_2) AT=1025.025n

* CHECK dout1_3 Vdout1_3ck204 = 0 time = 1025
.meas tran vdout1_3ck204 FIND v(dout1_3) AT=1025.025n

* CHECK dout1_4 Vdout1_4ck204 = 0 time = 1025
.meas tran vdout1_4ck204 FIND v(dout1_4) AT=1025.025n

* CHECK dout1_5 Vdout1_5ck204 = 0 time = 1025
.meas tran vdout1_5ck204 FIND v(dout1_5) AT=1025.025n

* CHECK dout1_6 Vdout1_6ck204 = 0.9 time = 1025
.meas tran vdout1_6ck204 FIND v(dout1_6) AT=1025.025n

* CHECK dout1_7 Vdout1_7ck204 = 0 time = 1025
.meas tran vdout1_7ck204 FIND v(dout1_7) AT=1025.025n

* probe is used for hspice/xa, while plot is used in ngspice
.plot V(*)
.end

