* Functional test stimulus file for 5ns period

* TT process corner
.include "/home/jp502/Projects/system-PPA/OpenRAM/technology/freepdk45/models/tran_models/models_nom/PMOS_VTG.inc"
.include "/home/jp502/Projects/system-PPA/OpenRAM/technology/freepdk45/models/tran_models/models_nom/NMOS_VTG.inc"
.include "freepdk45_sram_1w1r_256x4_1.sp"

* Global Power Supplies
Vvdd vdd 0 0.9

*Nodes gnd and 0 are the same global ground node in ngspice/hspice/xa. Otherwise, this source may be needed.
*Vgnd gnd 0 0.0

* Instantiation of the SRAM
Xfreepdk45_sram_1w1r_256x4_1 din0_0 din0_1 din0_2 din0_3 a0_0 a0_1 a0_2 a0_3 a0_4 a0_5 a0_6 a0_7 a1_0 a1_1 a1_2 a1_3 a1_4 a1_5 a1_6 a1_7 CSB0 CSB1 clk0 clk1 WMASK0_0 WMASK0_1 WMASK0_2 WMASK0_3 dout1_0 dout1_1 dout1_2 dout1_3 vdd gnd freepdk45_sram_1w1r_256x4_1

* SRAM output loads
CD10 dout1_0  0 0.8364f
CD11 dout1_1  0 0.8364f
CD12 dout1_2  0 0.8364f
CD13 dout1_3  0 0.8364f


* Important signals for debug
* bl:	xfreepdk45_sram_1w1r_256x4_1.xbank0.bl_1_0
* br:	xfreepdk45_sram_1w1r_256x4_1.xbank0.br_1_0
* s_en:	xfreepdk45_sram_1w1r_256x4_1.s_en
* q:	xfreepdk45_sram_1w1r_256x4_1.xbank0.xbitcell_array.xreplica_bitcell_array.xbitcell_array.xbit_r0_c0.Q
* qbar:	xfreepdk45_sram_1w1r_256x4_1.xbank0.xbitcell_array.xreplica_bitcell_array.xbitcell_array.xbit_r0_c0.Q_bar


* Sequence of operations
*	Idle during cycle 0 (0ns - 5ns)
*	Writing 0101  to  address 11111000 (from port 0) during cycle 1 (5ns - 10ns)
*	Writing 0111  to  address 00000001 (from port 0) during cycle 2 (10ns - 15ns)
*	Writing 1001  to  address 00000110 (from port 0) during cycle 3 (15ns - 20ns)
*	Reading 0111 from address 00000001 (from port 1) during cycle 4 (20ns - 25ns)
*	Writing (partial) 0101  to  address 00000110 with mask bit 0101 (from port 0) during cycle 5 (25ns - 30ns)
*	Writing 0110  to  address 00000010 (from port 0) during cycle 6 (30ns - 35ns)
*	Writing 0011  to  address 00000011 (from port 0) during cycle 8 (40ns - 45ns)
*	Writing 0101  to  address 00000000 (from port 0) during cycle 9 (45ns - 50ns)
*	Reading 1101 from address 00000110 (from port 1) during cycle 9 (45ns - 50ns)
*	Writing (partial) 1001  to  address 00000000 with mask bit 0100 (from port 0) during cycle 10 (50ns - 55ns)
*	Reading 0011 from address 00000011 (from port 1) during cycle 11 (55ns - 60ns)
*	Writing 1101  to  address 00000101 (from port 0) during cycle 12 (60ns - 65ns)
*	Writing (partial) 0100  to  address 00000101 with mask bit 0110 (from port 0) during cycle 13 (65ns - 70ns)
*	Reading 0110 from address 00000010 (from port 1) during cycle 15 (75ns - 80ns)
*	Writing 0001  to  address 11111100 (from port 0) during cycle 16 (80ns - 85ns)
*	Writing 0011  to  address 00000000 (from port 0) during cycle 17 (85ns - 90ns)
*	Writing (partial) 1001  to  address 00000101 with mask bit 1011 (from port 0) during cycle 18 (90ns - 95ns)
*	Reading 0011 from address 00000011 (from port 1) during cycle 19 (95ns - 100ns)
*	Writing 1001  to  address 11110111 (from port 0) during cycle 20 (100ns - 105ns)
*	Writing (partial) 0111  to  address 11110111 with mask bit 0001 (from port 0) during cycle 21 (105ns - 110ns)
*	Writing 0100  to  address 00000010 (from port 0) during cycle 22 (110ns - 115ns)
*	Reading 1101 from address 00000110 (from port 1) during cycle 22 (110ns - 115ns)
*	Writing 0100  to  address 00000111 (from port 0) during cycle 24 (120ns - 125ns)
*	Reading 0001 from address 11111100 (from port 1) during cycle 24 (120ns - 125ns)
*	Writing (partial) 0111  to  address 00000111 with mask bit 1100 (from port 0) during cycle 26 (130ns - 135ns)
*	Writing 0110  to  address 11111100 (from port 0) during cycle 27 (135ns - 140ns)
*	Reading 0101 from address 11111000 (from port 1) during cycle 27 (135ns - 140ns)
*	Writing 1010  to  address 00000001 (from port 0) during cycle 28 (140ns - 145ns)
*	Reading 0101 from address 11111000 (from port 1) during cycle 29 (145ns - 150ns)
*	Reading 0100 from address 00000010 (from port 1) during cycle 30 (150ns - 155ns)
*	Writing 0001  to  address 11110111 (from port 0) during cycle 32 (160ns - 165ns)
*	Reading 1101 from address 00000110 (from port 1) during cycle 32 (160ns - 165ns)
*	Writing 0111  to  address 00000000 (from port 0) during cycle 33 (165ns - 170ns)
*	Reading 1010 from address 00000001 (from port 1) during cycle 33 (165ns - 170ns)
*	Writing (partial) 0011  to  address 00000110 with mask bit 0111 (from port 0) during cycle 34 (170ns - 175ns)
*	Reading 0110 from address 11111100 (from port 1) during cycle 34 (170ns - 175ns)
*	Reading 1101 from address 00000101 (from port 1) during cycle 35 (175ns - 180ns)
*	Writing 1101  to  address 11111110 (from port 0) during cycle 36 (180ns - 185ns)
*	Writing (partial) 1011  to  address 00000111 with mask bit 0011 (from port 0) during cycle 37 (185ns - 190ns)
*	Reading 0101 from address 11111000 (from port 1) during cycle 37 (185ns - 190ns)
*	Writing 0111  to  address 11111011 (from port 0) during cycle 38 (190ns - 195ns)
*	Reading 1010 from address 00000001 (from port 1) during cycle 38 (190ns - 195ns)
*	Writing 1100  to  address 00000010 (from port 0) during cycle 40 (200ns - 205ns)
*	Reading 0001 from address 11110111 (from port 1) during cycle 40 (200ns - 205ns)
*	Writing 1100  to  address 11111100 (from port 0) during cycle 43 (215ns - 220ns)
*	Reading 0111 from address 00000111 (from port 1) during cycle 43 (215ns - 220ns)
*	Writing (partial) 1011  to  address 11111110 with mask bit 0111 (from port 0) during cycle 44 (220ns - 225ns)
*	Reading 0111 from address 11111011 (from port 1) during cycle 44 (220ns - 225ns)
*	Writing (partial) 0111  to  address 00000000 with mask bit 1100 (from port 0) during cycle 45 (225ns - 230ns)
*	Reading 1101 from address 00000101 (from port 1) during cycle 46 (230ns - 235ns)
*	Reading 1010 from address 00000001 (from port 1) during cycle 47 (235ns - 240ns)
*	Writing (partial) 0110  to  address 11111100 with mask bit 1001 (from port 0) during cycle 48 (240ns - 245ns)
*	Reading 1101 from address 00000101 (from port 1) during cycle 48 (240ns - 245ns)
*	Writing 1010  to  address 11111110 (from port 0) during cycle 49 (245ns - 250ns)
*	Reading 0100 from address 11111100 (from port 1) during cycle 49 (245ns - 250ns)
*	Writing 0001  to  address 11111011 (from port 0) during cycle 50 (250ns - 255ns)
*	Reading 0100 from address 11111100 (from port 1) during cycle 51 (255ns - 260ns)
*	Writing 1101  to  address 11111101 (from port 0) during cycle 52 (260ns - 265ns)
*	Writing (partial) 1100  to  address 11110111 with mask bit 0011 (from port 0) during cycle 55 (275ns - 280ns)
*	Writing (partial) 1100  to  address 00000010 with mask bit 1110 (from port 0) during cycle 56 (280ns - 285ns)
*	Writing 1101  to  address 11111110 (from port 0) during cycle 57 (285ns - 290ns)
*	Reading 1101 from address 11111110 (from port 1) during cycle 58 (290ns - 295ns)
*	Writing (partial) 1010  to  address 00000101 with mask bit 1001 (from port 0) during cycle 59 (295ns - 300ns)
*	Reading 0101 from address 11111000 (from port 1) during cycle 59 (295ns - 300ns)
*	Writing 1000  to  address 11111010 (from port 0) during cycle 60 (300ns - 305ns)
*	Reading 1101 from address 11111110 (from port 1) during cycle 61 (305ns - 310ns)
*	Reading 0000 from address 11110111 (from port 1) during cycle 62 (310ns - 315ns)
*	Writing 0010  to  address 00000110 (from port 0) during cycle 63 (315ns - 320ns)
*	Reading 0000 from address 11110111 (from port 1) during cycle 63 (315ns - 320ns)
*	Writing 1000  to  address 00000010 (from port 0) during cycle 65 (325ns - 330ns)
*	Writing 0011  to  address 11111110 (from port 0) during cycle 66 (330ns - 335ns)
*	Reading 0010 from address 00000110 (from port 1) during cycle 66 (330ns - 335ns)
*	Reading 0001 from address 11111011 (from port 1) during cycle 67 (335ns - 340ns)
*	Writing 0101  to  address 11111011 (from port 0) during cycle 68 (340ns - 345ns)
*	Writing 0001  to  address 00000110 (from port 0) during cycle 69 (345ns - 350ns)
*	Writing 1010  to  address 00000011 (from port 0) during cycle 72 (360ns - 365ns)
*	Reading 0111 from address 00000111 (from port 1) during cycle 73 (365ns - 370ns)
*	Reading 0100 from address 11111100 (from port 1) during cycle 74 (370ns - 375ns)
*	Writing (partial) 0101  to  address 00000110 with mask bit 1000 (from port 0) during cycle 75 (375ns - 380ns)
*	Writing (partial) 0011  to  address 11111010 with mask bit 1011 (from port 0) during cycle 76 (380ns - 385ns)
*	Writing 0110  to  address 11111000 (from port 0) during cycle 78 (390ns - 395ns)
*	Reading 0011 from address 11111010 (from port 1) during cycle 78 (390ns - 395ns)
*	Writing 1000  to  address 11111001 (from port 0) during cycle 79 (395ns - 400ns)
*	Reading 0001 from address 00000110 (from port 1) during cycle 79 (395ns - 400ns)
*	Reading 0110 from address 11111000 (from port 1) during cycle 81 (405ns - 410ns)
*	Writing (partial) 0101  to  address 00000000 with mask bit 0110 (from port 0) during cycle 82 (410ns - 415ns)
*	Reading 1100 from address 00000101 (from port 1) during cycle 82 (410ns - 415ns)
*	Writing 0001  to  address 11111110 (from port 0) during cycle 85 (425ns - 430ns)
*	Reading 0000 from address 11110111 (from port 1) during cycle 86 (430ns - 435ns)
*	Reading 1000 from address 11111001 (from port 1) during cycle 87 (435ns - 440ns)
*	Writing (partial) 0110  to  address 00000111 with mask bit 1110 (from port 0) during cycle 88 (440ns - 445ns)
*	Reading 0110 from address 11111000 (from port 1) during cycle 88 (440ns - 445ns)
*	Writing (partial) 0010  to  address 11111110 with mask bit 0111 (from port 0) during cycle 89 (445ns - 450ns)
*	Reading 0000 from address 11110111 (from port 1) during cycle 89 (445ns - 450ns)
*	Writing 1110  to  address 00000010 (from port 0) during cycle 91 (455ns - 460ns)
*	Writing 1100  to  address 11111001 (from port 0) during cycle 92 (460ns - 465ns)
*	Writing (partial) 1001  to  address 11111100 with mask bit 1001 (from port 0) during cycle 93 (465ns - 470ns)
*	Reading 1100 from address 11111001 (from port 1) during cycle 93 (465ns - 470ns)
*	Writing (partial) 0101  to  address 00000011 with mask bit 1010 (from port 0) during cycle 94 (470ns - 475ns)
*	Reading 0001 from address 00000110 (from port 1) during cycle 94 (470ns - 475ns)
*	Writing 0100  to  address 11110111 (from port 0) during cycle 95 (475ns - 480ns)
*	Writing (partial) 0111  to  address 00000011 with mask bit 1000 (from port 0) during cycle 96 (480ns - 485ns)
*	Reading 0101 from address 00000000 (from port 1) during cycle 96 (480ns - 485ns)
*	Writing (partial) 0100  to  address 11110111 with mask bit 0110 (from port 0) during cycle 97 (485ns - 490ns)
*	Writing (partial) 1011  to  address 11111001 with mask bit 1110 (from port 0) during cycle 98 (490ns - 495ns)
*	Reading 0111 from address 00000111 (from port 1) during cycle 98 (490ns - 495ns)
*	Writing 0100  to  address 00000010 (from port 0) during cycle 99 (495ns - 500ns)
*	Reading 0100 from address 11110111 (from port 1) during cycle 99 (495ns - 500ns)
*	Writing 0100  to  address 00000000 (from port 0) during cycle 100 (500ns - 505ns)
*	Reading 0010 from address 11111110 (from port 1) during cycle 100 (500ns - 505ns)
*	Writing 0110  to  address 00000111 (from port 0) during cycle 102 (510ns - 515ns)
*	Reading 0101 from address 11111011 (from port 1) during cycle 102 (510ns - 515ns)
*	Writing 1010  to  address 11111000 (from port 0) during cycle 103 (515ns - 520ns)
*	Reading 0110 from address 00000111 (from port 1) during cycle 103 (515ns - 520ns)
*	Writing (partial) 0011  to  address 00000101 with mask bit 0010 (from port 0) during cycle 104 (520ns - 525ns)
*	Writing 1100  to  address 00000001 (from port 0) during cycle 105 (525ns - 530ns)
*	Reading 0100 from address 11110111 (from port 1) during cycle 105 (525ns - 530ns)
*	Reading 1101 from address 11111101 (from port 1) during cycle 106 (530ns - 535ns)
*	Writing 1010  to  address 11111010 (from port 0) during cycle 107 (535ns - 540ns)
*	Reading 0010 from address 11111110 (from port 1) during cycle 108 (540ns - 545ns)
*	Writing 0101  to  address 11111100 (from port 0) during cycle 109 (545ns - 550ns)
*	Writing (partial) 0111  to  address 00000110 with mask bit 1000 (from port 0) during cycle 110 (550ns - 555ns)
*	Writing 0110  to  address 00000010 (from port 0) during cycle 111 (555ns - 560ns)
*	Writing (partial) 0111  to  address 00000010 with mask bit 1010 (from port 0) during cycle 112 (560ns - 565ns)
*	Reading 0001 from address 00000110 (from port 1) during cycle 112 (560ns - 565ns)
*	Writing (partial) 0010  to  address 00000111 with mask bit 1100 (from port 0) during cycle 113 (565ns - 570ns)
*	Reading 0010 from address 11111110 (from port 1) during cycle 113 (565ns - 570ns)
*	Writing (partial) 0111  to  address 00000011 with mask bit 0110 (from port 0) during cycle 114 (570ns - 575ns)
*	Reading 0101 from address 11111011 (from port 1) during cycle 115 (575ns - 580ns)
*	Writing (partial) 1011  to  address 00000110 with mask bit 1110 (from port 0) during cycle 116 (580ns - 585ns)
*	Writing 1101  to  address 11111110 (from port 0) during cycle 117 (585ns - 590ns)
*	Reading 1100 from address 00000001 (from port 1) during cycle 117 (585ns - 590ns)
*	Writing (partial) 1100  to  address 00000110 with mask bit 0110 (from port 0) during cycle 118 (590ns - 595ns)
*	Writing (partial) 1001  to  address 00000001 with mask bit 1101 (from port 0) during cycle 119 (595ns - 600ns)
*	Reading 0010 from address 00000111 (from port 1) during cycle 120 (600ns - 605ns)
*	Reading 0101 from address 11111011 (from port 1) during cycle 121 (605ns - 610ns)
*	Writing (partial) 1001  to  address 00000101 with mask bit 0001 (from port 0) during cycle 122 (610ns - 615ns)
*	Writing 1100  to  address 11111101 (from port 0) during cycle 123 (615ns - 620ns)
*	Reading 0110 from address 00000011 (from port 1) during cycle 123 (615ns - 620ns)
*	Writing (partial) 1010  to  address 11110111 with mask bit 1010 (from port 0) during cycle 124 (620ns - 625ns)
*	Writing 0111  to  address 11111010 (from port 0) during cycle 125 (625ns - 630ns)
*	Reading 0100 from address 00000000 (from port 1) during cycle 125 (625ns - 630ns)
*	Writing 1100  to  address 11111100 (from port 0) during cycle 126 (630ns - 635ns)
*	Reading 1010 from address 11111001 (from port 1) during cycle 126 (630ns - 635ns)
*	Reading 1101 from address 11111110 (from port 1) during cycle 127 (635ns - 640ns)
*	Writing (partial) 0010  to  address 11111011 with mask bit 1101 (from port 0) during cycle 128 (640ns - 645ns)
*	Writing (partial) 0101  to  address 11111110 with mask bit 1011 (from port 0) during cycle 129 (645ns - 650ns)
*	Reading 1010 from address 11111001 (from port 1) during cycle 129 (645ns - 650ns)
*	Reading 0111 from address 11111010 (from port 1) during cycle 130 (650ns - 655ns)
*	Reading 1101 from address 00000110 (from port 1) during cycle 131 (655ns - 660ns)
*	Writing (partial) 1101  to  address 11111110 with mask bit 0010 (from port 0) during cycle 132 (660ns - 665ns)
*	Writing (partial) 1110  to  address 00000111 with mask bit 1011 (from port 0) during cycle 133 (665ns - 670ns)
*	Reading 1010 from address 11111000 (from port 1) during cycle 135 (675ns - 680ns)
*	Writing 0001  to  address 00000001 (from port 0) during cycle 136 (680ns - 685ns)
*	Writing (partial) 0101  to  address 11110111 with mask bit 1001 (from port 0) during cycle 138 (690ns - 695ns)
*	Writing (partial) 0010  to  address 00000101 with mask bit 0101 (from port 0) during cycle 139 (695ns - 700ns)
*	Reading 0110 from address 00000010 (from port 1) during cycle 139 (695ns - 700ns)
*	Writing (partial) 0100  to  address 00000010 with mask bit 1110 (from port 0) during cycle 140 (700ns - 705ns)
*	Writing 0110  to  address 11111000 (from port 0) during cycle 141 (705ns - 710ns)
*	Writing (partial) 1001  to  address 11111100 with mask bit 0100 (from port 0) during cycle 145 (725ns - 730ns)
*	Reading 0110 from address 00000011 (from port 1) during cycle 145 (725ns - 730ns)
*	Writing (partial) 1011  to  address 11111100 with mask bit 0101 (from port 0) during cycle 146 (730ns - 735ns)
*	Writing 1011  to  address 00000000 (from port 0) during cycle 148 (740ns - 745ns)
*	Reading 0000 from address 11111011 (from port 1) during cycle 148 (740ns - 745ns)
*	Writing 1010  to  address 00000111 (from port 0) during cycle 149 (745ns - 750ns)
*	Reading 1100 from address 11111101 (from port 1) during cycle 149 (745ns - 750ns)
*	Writing (partial) 0010  to  address 11111001 with mask bit 1100 (from port 0) during cycle 150 (750ns - 755ns)
*	Reading 1001 from address 11111100 (from port 1) during cycle 150 (750ns - 755ns)
*	Writing 1101  to  address 00000000 (from port 0) during cycle 151 (755ns - 760ns)
*	Writing (partial) 0100  to  address 00000110 with mask bit 0101 (from port 0) during cycle 152 (760ns - 765ns)
*	Writing 0001  to  address 00000111 (from port 0) during cycle 153 (765ns - 770ns)
*	Reading 0001 from address 00000001 (from port 1) during cycle 153 (765ns - 770ns)
*	Writing 0001  to  address 00000011 (from port 0) during cycle 155 (775ns - 780ns)
*	Writing 1000  to  address 11111001 (from port 0) during cycle 156 (780ns - 785ns)
*	Reading 1100 from address 00000110 (from port 1) during cycle 156 (780ns - 785ns)
*	Writing (partial) 1010  to  address 00000110 with mask bit 1101 (from port 0) during cycle 157 (785ns - 790ns)
*	Writing 0111  to  address 11111001 (from port 0) during cycle 158 (790ns - 795ns)
*	Reading 0001 from address 00000011 (from port 1) during cycle 158 (790ns - 795ns)
*	Writing 1010  to  address 00000011 (from port 0) during cycle 164 (820ns - 825ns)
*	Reading 0111 from address 11111010 (from port 1) during cycle 164 (820ns - 825ns)
*	Writing 0110  to  address 11111001 (from port 0) during cycle 165 (825ns - 830ns)
*	Reading 0100 from address 00000010 (from port 1) during cycle 165 (825ns - 830ns)
*	Reading 1000 from address 00000110 (from port 1) during cycle 167 (835ns - 840ns)
*	Writing 0110  to  address 00000010 (from port 0) during cycle 170 (850ns - 855ns)
*	Reading 0110 from address 11111001 (from port 1) during cycle 170 (850ns - 855ns)
*	Writing 0100  to  address 11111001 (from port 0) during cycle 171 (855ns - 860ns)
*	Writing (partial) 0111  to  address 11111110 with mask bit 0010 (from port 0) during cycle 172 (860ns - 865ns)
*	Writing 1000  to  address 00000101 (from port 0) during cycle 173 (865ns - 870ns)
*	Writing 0011  to  address 00000011 (from port 0) during cycle 174 (870ns - 875ns)
*	Writing (partial) 0100  to  address 00000000 with mask bit 1001 (from port 0) during cycle 176 (880ns - 885ns)
*	Writing (partial) 1010  to  address 00000011 with mask bit 0011 (from port 0) during cycle 177 (885ns - 890ns)
*	Reading 0110 from address 11111000 (from port 1) during cycle 177 (885ns - 890ns)
*	Writing (partial) 1010  to  address 00000111 with mask bit 0001 (from port 0) during cycle 178 (890ns - 895ns)
*	Reading 0111 from address 11111010 (from port 1) during cycle 178 (890ns - 895ns)
*	Writing 0111  to  address 00000000 (from port 0) during cycle 179 (895ns - 900ns)
*	Reading 1001 from address 11111100 (from port 1) during cycle 179 (895ns - 900ns)
*	Writing 0110  to  address 00000010 (from port 0) during cycle 181 (905ns - 910ns)
*	Writing 1010  to  address 00000101 (from port 0) during cycle 182 (910ns - 915ns)
*	Reading 0001 from address 00000001 (from port 1) during cycle 182 (910ns - 915ns)
*	Writing 0101  to  address 00000110 (from port 0) during cycle 184 (920ns - 925ns)
*	Reading 1010 from address 00000101 (from port 1) during cycle 184 (920ns - 925ns)
*	Writing (partial) 1000  to  address 00000001 with mask bit 0111 (from port 0) during cycle 185 (925ns - 930ns)
*	Reading 1100 from address 11111101 (from port 1) during cycle 185 (925ns - 930ns)
*	Writing (partial) 1000  to  address 11111000 with mask bit 0111 (from port 0) during cycle 187 (935ns - 940ns)
*	Reading 0010 from address 00000011 (from port 1) during cycle 187 (935ns - 940ns)
*	Writing 0101  to  address 00000011 (from port 0) during cycle 188 (940ns - 945ns)
*	Reading 0111 from address 11111010 (from port 1) during cycle 188 (940ns - 945ns)
*	Writing 0100  to  address 11111000 (from port 0) during cycle 189 (945ns - 950ns)
*	Reading 0100 from address 11111001 (from port 1) during cycle 189 (945ns - 950ns)
*	Writing 0010  to  address 00000110 (from port 0) during cycle 191 (955ns - 960ns)
*	Reading 1001 from address 11111100 (from port 1) during cycle 192 (960ns - 965ns)
*	Reading 0010 from address 00000110 (from port 1) during cycle 193 (965ns - 970ns)
*	Writing 0010  to  address 11111100 (from port 0) during cycle 195 (975ns - 980ns)
*	Reading 0101 from address 00000011 (from port 1) during cycle 195 (975ns - 980ns)
*	Writing 0110  to  address 11111011 (from port 0) during cycle 197 (985ns - 990ns)
*	Writing (partial) 0001  to  address 00000110 with mask bit 0010 (from port 0) during cycle 198 (990ns - 995ns)
*	Reading 1010 from address 00000101 (from port 1) during cycle 198 (990ns - 995ns)
*	Reading 0110 from address 11111011 (from port 1) during cycle 200 (1000ns - 1005ns)
*	Writing 0010  to  address 00000011 (from port 0) during cycle 202 (1010ns - 1015ns)
*	Reading 0010 from address 11111100 (from port 1) during cycle 202 (1010ns - 1015ns)
*	Writing 0101  to  address 11111101 (from port 0) during cycle 203 (1015ns - 1020ns)
*	Writing 1000  to  address 11111100 (from port 0) during cycle 204 (1020ns - 1025ns)
*	Idle during cycle 205 (1025ns - 1030ns)

* Generation of data and address signals
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 0), (35, 0), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 0), (70, 0), (75, 0), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 0), (115, 0), (120, 0), (125, 0), (130, 1), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 0), (205, 0), (210, 0), (215, 0), (220, 1), (225, 1), (230, 1), (235, 1), (240, 0), (245, 0), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 0), (280, 0), (285, 1), (290, 1), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 0), (365, 0), (370, 0), (375, 1), (380, 1), (385, 1), (390, 0), (395, 0), (400, 0), (405, 0), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 1), (470, 1), (475, 0), (480, 1), (485, 0), (490, 1), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 1), (525, 0), (530, 0), (535, 0), (540, 0), (545, 1), (550, 1), (555, 0), (560, 1), (565, 0), (570, 1), (575, 1), (580, 1), (585, 1), (590, 0), (595, 1), (600, 1), (605, 1), (610, 1), (615, 0), (620, 0), (625, 1), (630, 0), (635, 0), (640, 0), (645, 1), (650, 1), (655, 1), (660, 1), (665, 0), (670, 0), (675, 0), (680, 1), (685, 1), (690, 1), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 1), (735, 1), (740, 1), (745, 0), (750, 0), (755, 1), (760, 0), (765, 1), (770, 1), (775, 1), (780, 0), (785, 0), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 1), (865, 0), (870, 1), (875, 1), (880, 0), (885, 0), (890, 0), (895, 1), (900, 1), (905, 0), (910, 0), (915, 0), (920, 1), (925, 0), (930, 0), (935, 0), (940, 1), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 0), (1015, 1), (1020, 0), (1025, 0)]
Vdin0_0  din0_0  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.9v 14.745n 0.9v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.9v 44.745n 0.9v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.9v 59.745n 0.9v 59.755n 0.9v 64.745n 0.9v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.9v 84.745n 0.9v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.9v 134.745n 0.9v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.9v 164.745n 0.9v 164.755n 0.9v 169.745n 0.9v 169.755n 0.9v 174.745n 0.9v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.9v 194.745n 0.9v 194.755n 0.9v 199.745n 0.9v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.9v 224.745n 0.9v 224.755n 0.9v 229.745n 0.9v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.9v 414.745n 0.9v 414.755n 0.9v 419.745n 0.9v 419.755n 0.9v 424.745n 0.9v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.9v 469.745n 0.9v 469.755n 0.9v 474.745n 0.9v 474.755n 0.0v 479.745n 0.0v 479.755n 0.9v 484.745n 0.9v 484.755n 0.0v 489.745n 0.0v 489.755n 0.9v 494.745n 0.9v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.9v 524.745n 0.9v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.0v 559.745n 0.0v 559.755n 0.9v 564.745n 0.9v 564.755n 0.0v 569.745n 0.0v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.0v 594.745n 0.0v 594.755n 0.9v 599.745n 0.9v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.9v 629.745n 0.9v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.9v 649.745n 0.9v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.9v 739.745n 0.9v 739.755n 0.9v 744.745n 0.9v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.9v 759.745n 0.9v 759.755n 0.0v 764.745n 0.0v 764.755n 0.9v 769.745n 0.9v 769.755n 0.9v 774.745n 0.9v 774.755n 0.9v 779.745n 0.9v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.9v 864.745n 0.9v 864.755n 0.0v 869.745n 0.0v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.9v 899.745n 0.9v 899.755n 0.9v 904.745n 0.9v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.9v 924.745n 0.9v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.9v 944.745n 0.9v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 0), (20, 0), (25, 0), (30, 1), (35, 1), (40, 1), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 1), (90, 0), (95, 0), (100, 0), (105, 1), (110, 0), (115, 0), (120, 0), (125, 0), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 0), (165, 1), (170, 1), (175, 1), (180, 0), (185, 1), (190, 1), (195, 1), (200, 0), (205, 0), (210, 0), (215, 0), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 1), (300, 0), (305, 0), (310, 0), (315, 1), (320, 1), (325, 0), (330, 1), (335, 1), (340, 0), (345, 0), (350, 0), (355, 0), (360, 1), (365, 1), (370, 1), (375, 0), (380, 1), (385, 1), (390, 1), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 1), (445, 1), (450, 1), (455, 1), (460, 0), (465, 0), (470, 0), (475, 0), (480, 1), (485, 0), (490, 1), (495, 0), (500, 0), (505, 0), (510, 1), (515, 1), (520, 1), (525, 0), (530, 0), (535, 1), (540, 1), (545, 0), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 1), (585, 0), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 1), (625, 1), (630, 0), (635, 0), (640, 1), (645, 0), (650, 0), (655, 0), (660, 0), (665, 1), (670, 1), (675, 1), (680, 0), (685, 0), (690, 0), (695, 1), (700, 0), (705, 1), (710, 1), (715, 1), (720, 1), (725, 0), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 0), (860, 1), (865, 0), (870, 1), (875, 1), (880, 0), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 1), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_1  din0_1  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.9v 14.745n 0.9v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.9v 44.745n 0.9v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.9v 89.745n 0.9v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.9v 109.745n 0.9v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.9v 134.745n 0.9v 134.755n 0.9v 139.745n 0.9v 139.755n 0.9v 144.745n 0.9v 144.755n 0.9v 149.745n 0.9v 149.755n 0.9v 154.745n 0.9v 154.755n 0.9v 159.745n 0.9v 159.755n 0.0v 164.745n 0.0v 164.755n 0.9v 169.745n 0.9v 169.755n 0.9v 174.745n 0.9v 174.755n 0.9v 179.745n 0.9v 179.755n 0.0v 184.745n 0.0v 184.755n 0.9v 189.745n 0.9v 189.755n 0.9v 194.745n 0.9v 194.755n 0.9v 199.745n 0.9v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.9v 224.745n 0.9v 224.755n 0.9v 229.745n 0.9v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.9v 299.745n 0.9v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.0v 329.745n 0.0v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.0v 379.745n 0.0v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.9v 459.745n 0.9v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.9v 484.745n 0.9v 484.755n 0.0v 489.745n 0.0v 489.755n 0.9v 494.745n 0.9v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.9v 514.745n 0.9v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.0v 549.745n 0.0v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.9v 564.745n 0.9v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.9v 644.745n 0.9v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.9v 699.745n 0.9v 699.755n 0.0v 704.745n 0.0v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.0v 729.745n 0.0v 729.755n 0.9v 734.745n 0.9v 734.755n 0.9v 739.745n 0.9v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.9v 789.745n 0.9v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.9v 854.745n 0.9v 854.755n 0.0v 859.745n 0.0v 859.755n 0.9v 864.745n 0.9v 864.755n 0.0v 869.745n 0.0v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.0v 884.745n 0.0v 884.755n 0.9v 889.745n 0.9v 889.755n 0.9v 894.745n 0.9v 894.755n 0.9v 899.745n 0.9v 899.755n 0.9v 904.745n 0.9v 904.755n 0.9v 909.745n 0.9v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.9v 959.745n 0.9v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 0), (20, 0), (25, 1), (30, 1), (35, 1), (40, 0), (45, 1), (50, 0), (55, 0), (60, 1), (65, 1), (70, 1), (75, 1), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 1), (110, 1), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 1), (170, 0), (175, 0), (180, 1), (185, 0), (190, 1), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 0), (225, 1), (230, 1), (235, 1), (240, 1), (245, 0), (250, 0), (255, 0), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 1), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 1), (380, 0), (385, 0), (390, 1), (395, 0), (400, 0), (405, 0), (410, 1), (415, 1), (420, 1), (425, 0), (430, 0), (435, 0), (440, 1), (445, 0), (450, 0), (455, 1), (460, 1), (465, 0), (470, 1), (475, 1), (480, 1), (485, 1), (490, 0), (495, 1), (500, 1), (505, 1), (510, 1), (515, 0), (520, 0), (525, 1), (530, 1), (535, 0), (540, 0), (545, 1), (550, 1), (555, 1), (560, 1), (565, 0), (570, 1), (575, 1), (580, 0), (585, 1), (590, 1), (595, 0), (600, 0), (605, 0), (610, 0), (615, 1), (620, 0), (625, 1), (630, 1), (635, 1), (640, 0), (645, 1), (650, 1), (655, 1), (660, 1), (665, 1), (670, 1), (675, 1), (680, 0), (685, 0), (690, 1), (695, 0), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 1), (760, 1), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 0), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 0), (870, 0), (875, 0), (880, 1), (885, 0), (890, 0), (895, 1), (900, 1), (905, 1), (910, 0), (915, 0), (920, 1), (925, 0), (930, 0), (935, 0), (940, 1), (945, 1), (950, 1), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 1), (1020, 0), (1025, 0)]
Vdin0_2  din0_2  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.9v 14.745n 0.9v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.9v 29.745n 0.9v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.0v 44.745n 0.0v 44.755n 0.9v 49.745n 0.9v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.9v 64.745n 0.9v 64.755n 0.9v 69.745n 0.9v 69.755n 0.9v 74.745n 0.9v 74.755n 0.9v 79.745n 0.9v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.9v 139.745n 0.9v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.9v 169.745n 0.9v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.9v 184.745n 0.9v 184.755n 0.0v 189.745n 0.0v 189.755n 0.9v 194.745n 0.9v 194.755n 0.9v 199.745n 0.9v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.0v 224.745n 0.0v 224.755n 0.9v 229.745n 0.9v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.9v 344.745n 0.9v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.9v 379.745n 0.9v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.9v 394.745n 0.9v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.9v 414.745n 0.9v 414.755n 0.9v 419.745n 0.9v 419.755n 0.9v 424.745n 0.9v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.9v 444.745n 0.9v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.0v 469.745n 0.0v 469.755n 0.9v 474.745n 0.9v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.0v 494.745n 0.0v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.9v 509.745n 0.9v 509.755n 0.9v 514.745n 0.9v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.9v 529.745n 0.9v 529.755n 0.9v 534.745n 0.9v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.9v 564.745n 0.9v 564.755n 0.0v 569.745n 0.0v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.0v 584.745n 0.0v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.9v 619.745n 0.9v 619.755n 0.0v 624.745n 0.0v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.9v 639.745n 0.9v 639.755n 0.0v 644.745n 0.0v 644.755n 0.9v 649.745n 0.9v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.9v 694.745n 0.9v 694.755n 0.0v 699.745n 0.0v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.9v 759.745n 0.9v 759.755n 0.9v 764.745n 0.9v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.0v 824.745n 0.0v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.9v 854.745n 0.9v 854.755n 0.9v 859.745n 0.9v 859.755n 0.9v 864.745n 0.9v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.9v 884.745n 0.9v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.9v 899.745n 0.9v 899.755n 0.9v 904.745n 0.9v 904.755n 0.9v 909.745n 0.9v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.9v 924.745n 0.9v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.9v 989.745n 0.9v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 1), (20, 1), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 1), (55, 1), (60, 1), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 1), (95, 1), (100, 1), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 1), (145, 1), (150, 1), (155, 1), (160, 0), (165, 0), (170, 0), (175, 0), (180, 1), (185, 1), (190, 0), (195, 0), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 0), (230, 0), (235, 0), (240, 0), (245, 1), (250, 0), (255, 0), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 0), (320, 0), (325, 1), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 1), (365, 1), (370, 1), (375, 0), (380, 0), (385, 0), (390, 0), (395, 1), (400, 1), (405, 1), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 1), (460, 1), (465, 1), (470, 0), (475, 0), (480, 0), (485, 0), (490, 1), (495, 0), (500, 0), (505, 0), (510, 0), (515, 1), (520, 0), (525, 1), (530, 1), (535, 1), (540, 1), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 0), (630, 1), (635, 1), (640, 0), (645, 0), (650, 0), (655, 0), (660, 1), (665, 1), (670, 1), (675, 1), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 0), (755, 1), (760, 0), (765, 0), (770, 0), (775, 0), (780, 1), (785, 1), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 1), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 1), (870, 0), (875, 0), (880, 0), (885, 1), (890, 1), (895, 0), (900, 0), (905, 0), (910, 1), (915, 1), (920, 0), (925, 1), (930, 1), (935, 1), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Vdin0_3  din0_3  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.9v 54.745n 0.9v 54.755n 0.9v 59.745n 0.9v 59.755n 0.9v 64.745n 0.9v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.9v 144.745n 0.9v 144.755n 0.9v 149.745n 0.9v 149.755n 0.9v 154.745n 0.9v 154.755n 0.9v 159.745n 0.9v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.9v 249.745n 0.9v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.9v 329.745n 0.9v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.9v 399.745n 0.9v 399.755n 0.9v 404.745n 0.9v 404.755n 0.9v 409.745n 0.9v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.9v 494.745n 0.9v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.9v 519.745n 0.9v 519.755n 0.0v 524.745n 0.0v 524.755n 0.9v 529.745n 0.9v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.9v 619.745n 0.9v 619.755n 0.9v 624.745n 0.9v 624.755n 0.0v 629.745n 0.0v 629.755n 0.9v 634.745n 0.9v 634.755n 0.9v 639.745n 0.9v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.9v 664.745n 0.9v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.9v 739.745n 0.9v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.0v 754.745n 0.0v 754.755n 0.9v 759.745n 0.9v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.9v 784.745n 0.9v 784.755n 0.9v 789.745n 0.9v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.9v 824.745n 0.9v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.9v 869.745n 0.9v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.9v 889.745n 0.9v 889.755n 0.9v 894.745n 0.9v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.0v 924.745n 0.0v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 1), (45, 0), (50, 0), (55, 0), (60, 1), (65, 1), (70, 1), (75, 1), (80, 0), (85, 0), (90, 1), (95, 1), (100, 1), (105, 1), (110, 0), (115, 0), (120, 1), (125, 1), (130, 1), (135, 0), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 0), (170, 0), (175, 0), (180, 0), (185, 1), (190, 1), (195, 1), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 0), (285, 0), (290, 0), (295, 1), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 1), (345, 0), (350, 0), (355, 0), (360, 1), (365, 1), (370, 1), (375, 0), (380, 0), (385, 0), (390, 0), (395, 1), (400, 1), (405, 1), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 1), (445, 0), (450, 0), (455, 0), (460, 1), (465, 0), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 0), (500, 0), (505, 0), (510, 1), (515, 0), (520, 1), (525, 1), (530, 1), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 1), (570, 1), (575, 1), (580, 0), (585, 0), (590, 0), (595, 1), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 0), (630, 0), (635, 0), (640, 1), (645, 0), (650, 0), (655, 0), (660, 0), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 1), (750, 1), (755, 0), (760, 0), (765, 1), (770, 1), (775, 1), (780, 1), (785, 0), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 0), (855, 1), (860, 0), (865, 1), (870, 1), (875, 1), (880, 0), (885, 1), (890, 1), (895, 0), (900, 0), (905, 0), (910, 1), (915, 1), (920, 0), (925, 1), (930, 1), (935, 0), (940, 1), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Va0_0  a0_0  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.9v 14.745n 0.9v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.9v 44.745n 0.9v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.9v 64.745n 0.9v 64.755n 0.9v 69.745n 0.9v 69.755n 0.9v 74.745n 0.9v 74.755n 0.9v 79.745n 0.9v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.9v 124.745n 0.9v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.0v 139.745n 0.0v 139.755n 0.9v 144.745n 0.9v 144.755n 0.9v 149.745n 0.9v 149.755n 0.9v 154.745n 0.9v 154.755n 0.9v 159.745n 0.9v 159.755n 0.9v 164.745n 0.9v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.9v 189.745n 0.9v 189.755n 0.9v 194.745n 0.9v 194.755n 0.9v 199.745n 0.9v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.9v 299.745n 0.9v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.9v 344.745n 0.9v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.9v 399.745n 0.9v 399.755n 0.9v 404.745n 0.9v 404.755n 0.9v 409.745n 0.9v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.9v 444.745n 0.9v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.9v 464.745n 0.9v 464.755n 0.0v 469.745n 0.0v 469.755n 0.9v 474.745n 0.9v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.9v 514.745n 0.9v 514.755n 0.0v 519.745n 0.0v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.9v 534.745n 0.9v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.9v 599.745n 0.9v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.9v 619.745n 0.9v 619.755n 0.9v 624.745n 0.9v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.9v 644.745n 0.9v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.9v 769.745n 0.9v 769.755n 0.9v 774.745n 0.9v 774.755n 0.9v 779.745n 0.9v 779.755n 0.9v 784.745n 0.9v 784.755n 0.0v 789.745n 0.0v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.0v 854.745n 0.0v 854.755n 0.9v 859.745n 0.9v 859.755n 0.0v 864.745n 0.0v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.0v 884.745n 0.0v 884.755n 0.9v 889.745n 0.9v 889.755n 0.9v 894.745n 0.9v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.0v 924.745n 0.0v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.0v 939.745n 0.0v 939.755n 0.9v 944.745n 0.9v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.9v 989.745n 0.9v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 1), (130, 1), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 1), (165, 0), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 1), (210, 1), (215, 0), (220, 1), (225, 0), (230, 0), (235, 0), (240, 0), (245, 1), (250, 1), (255, 1), (260, 0), (265, 0), (270, 0), (275, 1), (280, 1), (285, 1), (290, 1), (295, 0), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 0), (465, 0), (470, 1), (475, 1), (480, 1), (485, 1), (490, 0), (495, 1), (500, 0), (505, 0), (510, 1), (515, 0), (520, 0), (525, 0), (530, 0), (535, 1), (540, 1), (545, 0), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 1), (625, 1), (630, 0), (635, 0), (640, 1), (645, 1), (650, 1), (655, 1), (660, 1), (665, 1), (670, 1), (675, 1), (680, 0), (685, 0), (690, 1), (695, 0), (700, 1), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 1), (750, 0), (755, 0), (760, 1), (765, 1), (770, 1), (775, 1), (780, 0), (785, 1), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 1), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 1), (855, 0), (860, 1), (865, 0), (870, 1), (875, 1), (880, 0), (885, 1), (890, 1), (895, 0), (900, 0), (905, 1), (910, 0), (915, 0), (920, 1), (925, 0), (930, 0), (935, 0), (940, 1), (945, 0), (950, 0), (955, 1), (960, 1), (965, 1), (970, 1), (975, 0), (980, 0), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 0), (1020, 0), (1025, 0)]
Va0_1  a0_1  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.9v 44.745n 0.9v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.9v 164.745n 0.9v 164.755n 0.0v 169.745n 0.0v 169.755n 0.9v 174.745n 0.9v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.9v 194.745n 0.9v 194.755n 0.9v 199.745n 0.9v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.0v 219.745n 0.0v 219.755n 0.9v 224.745n 0.9v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.0v 299.745n 0.0v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.9v 459.745n 0.9v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.9v 474.745n 0.9v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.0v 494.745n 0.0v 494.755n 0.9v 499.745n 0.9v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.9v 514.745n 0.9v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.0v 549.745n 0.0v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.9v 564.745n 0.9v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.9v 644.745n 0.9v 644.755n 0.9v 649.745n 0.9v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.9v 694.745n 0.9v 694.755n 0.0v 699.745n 0.0v 699.755n 0.9v 704.745n 0.9v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.9v 749.745n 0.9v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.9v 764.745n 0.9v 764.755n 0.9v 769.745n 0.9v 769.755n 0.9v 774.745n 0.9v 774.755n 0.9v 779.745n 0.9v 779.755n 0.0v 784.745n 0.0v 784.755n 0.9v 789.745n 0.9v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.9v 824.745n 0.9v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.9v 854.745n 0.9v 854.755n 0.0v 859.745n 0.0v 859.755n 0.9v 864.745n 0.9v 864.755n 0.0v 869.745n 0.0v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.0v 884.745n 0.0v 884.755n 0.9v 889.745n 0.9v 889.755n 0.9v 894.745n 0.9v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.9v 909.745n 0.9v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.9v 924.745n 0.9v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.9v 944.745n 0.9v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.9v 959.745n 0.9v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.9v 989.745n 0.9v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 1), (20, 1), (25, 1), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 0), (90, 1), (95, 1), (100, 1), (105, 1), (110, 0), (115, 0), (120, 1), (125, 1), (130, 1), (135, 1), (140, 0), (145, 0), (150, 0), (155, 0), (160, 1), (165, 0), (170, 1), (175, 1), (180, 1), (185, 1), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 1), (220, 1), (225, 0), (230, 0), (235, 0), (240, 1), (245, 1), (250, 0), (255, 0), (260, 1), (265, 1), (270, 1), (275, 1), (280, 0), (285, 1), (290, 1), (295, 1), (300, 0), (305, 0), (310, 0), (315, 1), (320, 1), (325, 0), (330, 1), (335, 1), (340, 0), (345, 1), (350, 1), (355, 1), (360, 0), (365, 0), (370, 0), (375, 1), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 0), (460, 0), (465, 1), (470, 0), (475, 1), (480, 0), (485, 1), (490, 0), (495, 0), (500, 0), (505, 0), (510, 1), (515, 0), (520, 1), (525, 0), (530, 0), (535, 0), (540, 0), (545, 1), (550, 1), (555, 0), (560, 0), (565, 1), (570, 0), (575, 0), (580, 1), (585, 1), (590, 1), (595, 0), (600, 0), (605, 0), (610, 1), (615, 1), (620, 1), (625, 0), (630, 1), (635, 1), (640, 0), (645, 1), (650, 1), (655, 1), (660, 1), (665, 1), (670, 1), (675, 1), (680, 0), (685, 0), (690, 1), (695, 1), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 1), (735, 1), (740, 0), (745, 1), (750, 0), (755, 0), (760, 1), (765, 1), (770, 1), (775, 0), (780, 0), (785, 1), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 1), (865, 1), (870, 0), (875, 0), (880, 0), (885, 0), (890, 1), (895, 0), (900, 0), (905, 0), (910, 1), (915, 1), (920, 1), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 0), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 0), (1015, 1), (1020, 1), (1025, 1)]
Va0_2  a0_2  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.9v 64.745n 0.9v 64.755n 0.9v 69.745n 0.9v 69.755n 0.9v 74.745n 0.9v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.0v 89.745n 0.0v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.9v 124.745n 0.9v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.9v 139.745n 0.9v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.9v 164.745n 0.9v 164.755n 0.0v 169.745n 0.0v 169.755n 0.9v 174.745n 0.9v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.0v 284.745n 0.0v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.0v 329.745n 0.0v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.0v 344.745n 0.0v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.9v 379.745n 0.9v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.9v 469.745n 0.9v 469.755n 0.0v 474.745n 0.0v 474.755n 0.9v 479.745n 0.9v 479.755n 0.0v 484.745n 0.0v 484.755n 0.9v 489.745n 0.9v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.9v 514.745n 0.9v 514.755n 0.0v 519.745n 0.0v 519.755n 0.9v 524.745n 0.9v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.9v 569.745n 0.9v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.9v 614.745n 0.9v 614.755n 0.9v 619.745n 0.9v 619.755n 0.9v 624.745n 0.9v 624.755n 0.0v 629.745n 0.0v 629.755n 0.9v 634.745n 0.9v 634.755n 0.9v 639.745n 0.9v 639.755n 0.0v 644.745n 0.0v 644.755n 0.9v 649.745n 0.9v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.9v 739.745n 0.9v 739.755n 0.0v 744.745n 0.0v 744.755n 0.9v 749.745n 0.9v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.9v 764.745n 0.9v 764.755n 0.9v 769.745n 0.9v 769.755n 0.9v 774.745n 0.9v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.9v 789.745n 0.9v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.9v 864.745n 0.9v 864.755n 0.9v 869.745n 0.9v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.9v 894.745n 0.9v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.9v 959.745n 0.9v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.0v 989.745n 0.0v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 1), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 1), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 1), (185, 0), (190, 1), (195, 1), (200, 0), (205, 0), (210, 0), (215, 1), (220, 1), (225, 0), (230, 0), (235, 0), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 0), (280, 0), (285, 1), (290, 1), (295, 0), (300, 1), (305, 1), (310, 1), (315, 0), (320, 0), (325, 0), (330, 1), (335, 1), (340, 1), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 0), (415, 0), (420, 0), (425, 1), (430, 1), (435, 1), (440, 0), (445, 1), (450, 1), (455, 0), (460, 1), (465, 1), (470, 0), (475, 0), (480, 0), (485, 0), (490, 1), (495, 0), (500, 0), (505, 0), (510, 0), (515, 1), (520, 0), (525, 0), (530, 0), (535, 1), (540, 1), (545, 1), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 0), (585, 1), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 1), (620, 0), (625, 1), (630, 1), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 1), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 0), (745, 0), (750, 1), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 1), (785, 0), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 0), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 0), (855, 1), (860, 1), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 1), (940, 0), (945, 1), (950, 1), (955, 0), (960, 0), (965, 0), (970, 0), (975, 1), (980, 1), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 1), (1020, 1), (1025, 1)]
Va0_3  a0_3  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.9v 84.745n 0.9v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.9v 139.745n 0.9v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.9v 184.745n 0.9v 184.755n 0.0v 189.745n 0.0v 189.755n 0.9v 194.745n 0.9v 194.755n 0.9v 199.745n 0.9v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.0v 299.745n 0.0v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.9v 404.745n 0.9v 404.755n 0.9v 409.745n 0.9v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.0v 444.745n 0.0v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.0v 459.745n 0.0v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.9v 494.745n 0.9v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.9v 519.745n 0.9v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.9v 589.745n 0.9v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.9v 619.745n 0.9v 619.755n 0.0v 624.745n 0.0v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.9v 639.745n 0.9v 639.755n 0.9v 644.745n 0.9v 644.755n 0.9v 649.745n 0.9v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.9v 739.745n 0.9v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.9v 754.745n 0.9v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.9v 784.745n 0.9v 784.755n 0.0v 789.745n 0.0v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.0v 824.745n 0.0v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.0v 854.745n 0.0v 854.755n 0.9v 859.745n 0.9v 859.755n 0.9v 864.745n 0.9v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.9v 939.745n 0.9v 939.755n 0.0v 944.745n 0.0v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 1), (85, 0), (90, 0), (95, 0), (100, 1), (105, 1), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 1), (140, 0), (145, 0), (150, 0), (155, 0), (160, 1), (165, 0), (170, 0), (175, 0), (180, 1), (185, 0), (190, 1), (195, 1), (200, 0), (205, 0), (210, 0), (215, 1), (220, 1), (225, 0), (230, 0), (235, 0), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 0), (285, 1), (290, 1), (295, 0), (300, 1), (305, 1), (310, 1), (315, 0), (320, 0), (325, 0), (330, 1), (335, 1), (340, 1), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 0), (415, 0), (420, 0), (425, 1), (430, 1), (435, 1), (440, 0), (445, 1), (450, 1), (455, 0), (460, 1), (465, 1), (470, 0), (475, 1), (480, 0), (485, 1), (490, 1), (495, 0), (500, 0), (505, 0), (510, 0), (515, 1), (520, 0), (525, 0), (530, 0), (535, 1), (540, 1), (545, 1), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 0), (585, 1), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 1), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 1), (695, 0), (700, 0), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 0), (745, 0), (750, 1), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 1), (785, 0), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 0), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 0), (855, 1), (860, 1), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 1), (940, 0), (945, 1), (950, 1), (955, 0), (960, 0), (965, 0), (970, 0), (975, 1), (980, 1), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 1), (1020, 1), (1025, 1)]
Va0_4  a0_4  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.9v 84.745n 0.9v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.9v 139.745n 0.9v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.9v 164.745n 0.9v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.9v 184.745n 0.9v 184.755n 0.0v 189.745n 0.0v 189.755n 0.9v 194.745n 0.9v 194.755n 0.9v 199.745n 0.9v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.0v 284.745n 0.0v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.0v 299.745n 0.0v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.9v 404.745n 0.9v 404.755n 0.9v 409.745n 0.9v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.0v 444.745n 0.0v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.0v 459.745n 0.0v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.0v 474.745n 0.0v 474.755n 0.9v 479.745n 0.9v 479.755n 0.0v 484.745n 0.0v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.9v 519.745n 0.9v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.9v 589.745n 0.9v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.9v 619.745n 0.9v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.9v 639.745n 0.9v 639.755n 0.9v 644.745n 0.9v 644.755n 0.9v 649.745n 0.9v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.9v 694.745n 0.9v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.9v 739.745n 0.9v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.9v 754.745n 0.9v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.9v 784.745n 0.9v 784.755n 0.0v 789.745n 0.0v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.0v 824.745n 0.0v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.0v 854.745n 0.0v 854.755n 0.9v 859.745n 0.9v 859.755n 0.9v 864.745n 0.9v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.9v 939.745n 0.9v 939.755n 0.0v 944.745n 0.0v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 1), (85, 0), (90, 0), (95, 0), (100, 1), (105, 1), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 1), (140, 0), (145, 0), (150, 0), (155, 0), (160, 1), (165, 0), (170, 0), (175, 0), (180, 1), (185, 0), (190, 1), (195, 1), (200, 0), (205, 0), (210, 0), (215, 1), (220, 1), (225, 0), (230, 0), (235, 0), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 0), (285, 1), (290, 1), (295, 0), (300, 1), (305, 1), (310, 1), (315, 0), (320, 0), (325, 0), (330, 1), (335, 1), (340, 1), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 0), (415, 0), (420, 0), (425, 1), (430, 1), (435, 1), (440, 0), (445, 1), (450, 1), (455, 0), (460, 1), (465, 1), (470, 0), (475, 1), (480, 0), (485, 1), (490, 1), (495, 0), (500, 0), (505, 0), (510, 0), (515, 1), (520, 0), (525, 0), (530, 0), (535, 1), (540, 1), (545, 1), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 0), (585, 1), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 1), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 1), (695, 0), (700, 0), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 0), (745, 0), (750, 1), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 1), (785, 0), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 0), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 0), (855, 1), (860, 1), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 1), (940, 0), (945, 1), (950, 1), (955, 0), (960, 0), (965, 0), (970, 0), (975, 1), (980, 1), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 1), (1020, 1), (1025, 1)]
Va0_5  a0_5  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.9v 84.745n 0.9v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.9v 139.745n 0.9v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.9v 164.745n 0.9v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.9v 184.745n 0.9v 184.755n 0.0v 189.745n 0.0v 189.755n 0.9v 194.745n 0.9v 194.755n 0.9v 199.745n 0.9v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.0v 284.745n 0.0v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.0v 299.745n 0.0v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.9v 404.745n 0.9v 404.755n 0.9v 409.745n 0.9v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.0v 444.745n 0.0v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.0v 459.745n 0.0v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.0v 474.745n 0.0v 474.755n 0.9v 479.745n 0.9v 479.755n 0.0v 484.745n 0.0v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.9v 519.745n 0.9v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.9v 589.745n 0.9v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.9v 619.745n 0.9v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.9v 639.745n 0.9v 639.755n 0.9v 644.745n 0.9v 644.755n 0.9v 649.745n 0.9v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.9v 694.745n 0.9v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.9v 739.745n 0.9v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.9v 754.745n 0.9v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.9v 784.745n 0.9v 784.755n 0.0v 789.745n 0.0v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.0v 824.745n 0.0v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.0v 854.745n 0.0v 854.755n 0.9v 859.745n 0.9v 859.755n 0.9v 864.745n 0.9v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.9v 939.745n 0.9v 939.755n 0.0v 944.745n 0.0v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 1), (85, 0), (90, 0), (95, 0), (100, 1), (105, 1), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 1), (140, 0), (145, 0), (150, 0), (155, 0), (160, 1), (165, 0), (170, 0), (175, 0), (180, 1), (185, 0), (190, 1), (195, 1), (200, 0), (205, 0), (210, 0), (215, 1), (220, 1), (225, 0), (230, 0), (235, 0), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 0), (285, 1), (290, 1), (295, 0), (300, 1), (305, 1), (310, 1), (315, 0), (320, 0), (325, 0), (330, 1), (335, 1), (340, 1), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 0), (415, 0), (420, 0), (425, 1), (430, 1), (435, 1), (440, 0), (445, 1), (450, 1), (455, 0), (460, 1), (465, 1), (470, 0), (475, 1), (480, 0), (485, 1), (490, 1), (495, 0), (500, 0), (505, 0), (510, 0), (515, 1), (520, 0), (525, 0), (530, 0), (535, 1), (540, 1), (545, 1), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 0), (585, 1), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 1), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 1), (695, 0), (700, 0), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 0), (745, 0), (750, 1), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 1), (785, 0), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 0), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 0), (855, 1), (860, 1), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 1), (940, 0), (945, 1), (950, 1), (955, 0), (960, 0), (965, 0), (970, 0), (975, 1), (980, 1), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 1), (1020, 1), (1025, 1)]
Va0_6  a0_6  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.9v 84.745n 0.9v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.9v 139.745n 0.9v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.9v 164.745n 0.9v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.9v 184.745n 0.9v 184.755n 0.0v 189.745n 0.0v 189.755n 0.9v 194.745n 0.9v 194.755n 0.9v 199.745n 0.9v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.0v 284.745n 0.0v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.0v 299.745n 0.0v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.9v 404.745n 0.9v 404.755n 0.9v 409.745n 0.9v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.0v 444.745n 0.0v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.0v 459.745n 0.0v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.0v 474.745n 0.0v 474.755n 0.9v 479.745n 0.9v 479.755n 0.0v 484.745n 0.0v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.9v 519.745n 0.9v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.9v 589.745n 0.9v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.9v 619.745n 0.9v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.9v 639.745n 0.9v 639.755n 0.9v 644.745n 0.9v 644.755n 0.9v 649.745n 0.9v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.9v 694.745n 0.9v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.9v 739.745n 0.9v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.9v 754.745n 0.9v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.9v 784.745n 0.9v 784.755n 0.0v 789.745n 0.0v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.0v 824.745n 0.0v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.0v 854.745n 0.0v 854.755n 0.9v 859.745n 0.9v 859.755n 0.9v 864.745n 0.9v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.9v 939.745n 0.9v 939.755n 0.0v 944.745n 0.0v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 1), (85, 0), (90, 0), (95, 0), (100, 1), (105, 1), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 1), (140, 0), (145, 0), (150, 0), (155, 0), (160, 1), (165, 0), (170, 0), (175, 0), (180, 1), (185, 0), (190, 1), (195, 1), (200, 0), (205, 0), (210, 0), (215, 1), (220, 1), (225, 0), (230, 0), (235, 0), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 0), (285, 1), (290, 1), (295, 0), (300, 1), (305, 1), (310, 1), (315, 0), (320, 0), (325, 0), (330, 1), (335, 1), (340, 1), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 0), (415, 0), (420, 0), (425, 1), (430, 1), (435, 1), (440, 0), (445, 1), (450, 1), (455, 0), (460, 1), (465, 1), (470, 0), (475, 1), (480, 0), (485, 1), (490, 1), (495, 0), (500, 0), (505, 0), (510, 0), (515, 1), (520, 0), (525, 0), (530, 0), (535, 1), (540, 1), (545, 1), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 0), (585, 1), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 1), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 1), (695, 0), (700, 0), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 0), (745, 0), (750, 1), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 1), (785, 0), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 0), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 0), (855, 1), (860, 1), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 1), (940, 0), (945, 1), (950, 1), (955, 0), (960, 0), (965, 0), (970, 0), (975, 1), (980, 1), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 1), (1020, 1), (1025, 1)]
Va0_7  a0_7  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.9v 84.745n 0.9v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.9v 139.745n 0.9v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.9v 164.745n 0.9v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.9v 184.745n 0.9v 184.755n 0.0v 189.745n 0.0v 189.755n 0.9v 194.745n 0.9v 194.755n 0.9v 199.745n 0.9v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.0v 284.745n 0.0v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.0v 299.745n 0.0v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.9v 404.745n 0.9v 404.755n 0.9v 409.745n 0.9v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.0v 444.745n 0.0v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.0v 459.745n 0.0v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.0v 474.745n 0.0v 474.755n 0.9v 479.745n 0.9v 479.755n 0.0v 484.745n 0.0v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.9v 519.745n 0.9v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.9v 589.745n 0.9v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.9v 619.745n 0.9v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.9v 639.745n 0.9v 639.755n 0.9v 644.745n 0.9v 644.755n 0.9v 649.745n 0.9v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.9v 694.745n 0.9v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.9v 739.745n 0.9v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.9v 754.745n 0.9v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.9v 784.745n 0.9v 784.755n 0.0v 789.745n 0.0v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.0v 824.745n 0.0v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.0v 854.745n 0.0v 854.755n 0.9v 859.745n 0.9v 859.755n 0.9v 864.745n 0.9v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.9v 939.745n 0.9v 939.755n 0.0v 944.745n 0.0v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 0), (50, 0), (55, 1), (60, 1), (65, 1), (70, 1), (75, 0), (80, 0), (85, 0), (90, 0), (95, 1), (100, 1), (105, 1), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 1), (170, 0), (175, 1), (180, 1), (185, 0), (190, 1), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 1), (315, 1), (320, 1), (325, 1), (330, 0), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 0), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 0), (475, 0), (480, 0), (485, 0), (490, 1), (495, 1), (500, 0), (505, 0), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 0), (630, 1), (635, 0), (640, 0), (645, 1), (650, 0), (655, 0), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 0), (755, 0), (760, 0), (765, 1), (770, 1), (775, 1), (780, 0), (785, 0), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 1), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 0), (945, 1), (950, 1), (955, 1), (960, 0), (965, 0), (970, 0), (975, 1), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va1_0  a1_0  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.9v 44.745n 0.9v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.9v 59.745n 0.9v 59.755n 0.9v 64.745n 0.9v 64.755n 0.9v 69.745n 0.9v 69.755n 0.9v 74.745n 0.9v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.9v 169.745n 0.9v 169.755n 0.0v 174.745n 0.0v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.0v 189.745n 0.0v 189.755n 0.9v 194.745n 0.9v 194.755n 0.9v 199.745n 0.9v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.9v 229.745n 0.9v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.0v 334.745n 0.0v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.9v 414.745n 0.9v 414.755n 0.9v 419.745n 0.9v 419.755n 0.9v 424.745n 0.9v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.0v 444.745n 0.0v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.9v 494.745n 0.9v 494.755n 0.9v 499.745n 0.9v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.9v 514.745n 0.9v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.9v 619.745n 0.9v 619.755n 0.9v 624.745n 0.9v 624.755n 0.0v 629.745n 0.0v 629.755n 0.9v 634.745n 0.9v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.9v 649.745n 0.9v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.9v 739.745n 0.9v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.9v 769.745n 0.9v 769.755n 0.9v 774.745n 0.9v 774.755n 0.9v 779.745n 0.9v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.9v 854.745n 0.9v 854.755n 0.9v 859.745n 0.9v 859.755n 0.9v 864.745n 0.9v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.0v 944.745n 0.0v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 1), (155, 1), (160, 1), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 1), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 1), (295, 0), (300, 0), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 0), (375, 0), (380, 0), (385, 0), (390, 1), (395, 1), (400, 1), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 1), (435, 0), (440, 0), (445, 1), (450, 1), (455, 1), (460, 1), (465, 0), (470, 1), (475, 1), (480, 0), (485, 0), (490, 1), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 0), (535, 0), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 1), (585, 0), (590, 0), (595, 0), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 0), (630, 0), (635, 1), (640, 1), (645, 0), (650, 1), (655, 1), (660, 1), (665, 1), (670, 1), (675, 0), (680, 0), (685, 0), (690, 0), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 1), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 1), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 1), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 1), (940, 1), (945, 0), (950, 0), (955, 0), (960, 0), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 0), (995, 0), (1000, 1), (1005, 1), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va1_1  a1_1  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.9v 59.745n 0.9v 59.755n 0.9v 64.745n 0.9v 64.755n 0.9v 69.745n 0.9v 69.755n 0.9v 74.745n 0.9v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.9v 119.745n 0.9v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.9v 154.745n 0.9v 154.755n 0.9v 159.745n 0.9v 159.755n 0.9v 164.745n 0.9v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.9v 229.745n 0.9v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.9v 294.745n 0.9v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.9v 404.745n 0.9v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.9v 434.745n 0.9v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.0v 469.745n 0.0v 469.755n 0.9v 474.745n 0.9v 474.755n 0.9v 479.745n 0.9v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.9v 494.745n 0.9v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.9v 509.745n 0.9v 509.755n 0.9v 514.745n 0.9v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.9v 564.745n 0.9v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.9v 619.745n 0.9v 619.755n 0.9v 624.745n 0.9v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.9v 639.745n 0.9v 639.755n 0.9v 644.745n 0.9v 644.755n 0.0v 649.745n 0.0v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.9v 699.745n 0.9v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.9v 739.745n 0.9v 739.755n 0.9v 744.745n 0.9v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.9v 784.745n 0.9v 784.755n 0.9v 789.745n 0.9v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.9v 894.745n 0.9v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.9v 939.745n 0.9v 939.755n 0.9v 944.745n 0.9v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 1), (50, 1), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 1), (115, 1), (120, 1), (125, 1), (130, 1), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 1), (165, 0), (170, 1), (175, 1), (180, 1), (185, 0), (190, 0), (195, 0), (200, 1), (205, 1), (210, 1), (215, 1), (220, 0), (225, 0), (230, 1), (235, 0), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 0), (300, 0), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 0), (395, 1), (400, 1), (405, 0), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 0), (440, 0), (445, 1), (450, 1), (455, 1), (460, 1), (465, 0), (470, 1), (475, 1), (480, 0), (485, 0), (490, 1), (495, 1), (500, 1), (505, 1), (510, 0), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 1), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 1), (640, 1), (645, 0), (650, 0), (655, 1), (660, 1), (665, 1), (670, 1), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 1), (750, 1), (755, 1), (760, 1), (765, 0), (770, 0), (775, 0), (780, 1), (785, 1), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 1), (840, 1), (845, 1), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 1), (900, 1), (905, 1), (910, 0), (915, 0), (920, 1), (925, 1), (930, 1), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 1), (965, 1), (970, 1), (975, 0), (980, 0), (985, 0), (990, 1), (995, 1), (1000, 0), (1005, 0), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Va1_2  a1_2  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.9v 114.745n 0.9v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.9v 164.745n 0.9v 164.755n 0.0v 169.745n 0.0v 169.755n 0.9v 174.745n 0.9v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.9v 234.745n 0.9v 234.755n 0.0v 239.745n 0.0v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.0v 394.745n 0.0v 394.755n 0.9v 399.745n 0.9v 399.755n 0.9v 404.745n 0.9v 404.755n 0.0v 409.745n 0.0v 409.755n 0.9v 414.745n 0.9v 414.755n 0.9v 419.745n 0.9v 419.755n 0.9v 424.745n 0.9v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.0v 469.745n 0.0v 469.755n 0.9v 474.745n 0.9v 474.755n 0.9v 479.745n 0.9v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.9v 494.745n 0.9v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.9v 509.745n 0.9v 509.755n 0.0v 514.745n 0.0v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.9v 564.745n 0.9v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.9v 604.745n 0.9v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.9v 639.745n 0.9v 639.755n 0.9v 644.745n 0.9v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.9v 759.745n 0.9v 759.755n 0.9v 764.745n 0.9v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.9v 784.745n 0.9v 784.755n 0.9v 789.745n 0.9v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.9v 899.745n 0.9v 899.755n 0.9v 904.745n 0.9v 904.755n 0.9v 909.745n 0.9v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 1), (175, 0), (180, 0), (185, 1), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 1), (225, 1), (230, 0), (235, 0), (240, 0), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 0), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 0), (400, 0), (405, 1), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 1), (440, 1), (445, 0), (450, 0), (455, 0), (460, 0), (465, 1), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 1), (505, 1), (510, 1), (515, 0), (520, 0), (525, 0), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 0), (565, 1), (570, 1), (575, 1), (580, 1), (585, 0), (590, 0), (595, 0), (600, 0), (605, 1), (610, 1), (615, 0), (620, 0), (625, 0), (630, 1), (635, 1), (640, 1), (645, 1), (650, 1), (655, 0), (660, 0), (665, 0), (670, 0), (675, 1), (680, 1), (685, 1), (690, 1), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 1), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 1), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 0), (915, 0), (920, 0), (925, 1), (930, 1), (935, 0), (940, 1), (945, 1), (950, 1), (955, 1), (960, 1), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Va1_3  a1_3  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.9v 124.745n 0.9v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.9v 139.745n 0.9v 139.755n 0.9v 144.745n 0.9v 144.755n 0.9v 149.745n 0.9v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.9v 174.745n 0.9v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.9v 189.745n 0.9v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.9v 224.745n 0.9v 224.755n 0.9v 229.745n 0.9v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.9v 364.745n 0.9v 364.755n 0.0v 369.745n 0.0v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.9v 409.745n 0.9v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.9v 469.745n 0.9v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.9v 504.745n 0.9v 504.755n 0.9v 509.745n 0.9v 509.755n 0.9v 514.745n 0.9v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.0v 564.745n 0.0v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.9v 634.745n 0.9v 634.755n 0.9v 639.745n 0.9v 639.755n 0.9v 644.745n 0.9v 644.755n 0.9v 649.745n 0.9v 649.755n 0.9v 654.745n 0.9v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.9v 759.745n 0.9v 759.755n 0.9v 764.745n 0.9v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.9v 824.745n 0.9v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.9v 854.745n 0.9v 854.755n 0.9v 859.745n 0.9v 859.755n 0.9v 864.745n 0.9v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.9v 894.745n 0.9v 894.755n 0.9v 899.745n 0.9v 899.755n 0.9v 904.745n 0.9v 904.755n 0.9v 909.745n 0.9v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.0v 939.745n 0.0v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.9v 964.745n 0.9v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 1), (175, 0), (180, 0), (185, 1), (190, 0), (195, 0), (200, 1), (205, 1), (210, 1), (215, 0), (220, 1), (225, 1), (230, 0), (235, 0), (240, 0), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 0), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 0), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 0), (400, 0), (405, 1), (410, 0), (415, 0), (420, 0), (425, 0), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 1), (500, 1), (505, 1), (510, 1), (515, 0), (520, 0), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 0), (565, 1), (570, 1), (575, 1), (580, 1), (585, 0), (590, 0), (595, 0), (600, 0), (605, 1), (610, 1), (615, 0), (620, 0), (625, 0), (630, 1), (635, 1), (640, 1), (645, 1), (650, 1), (655, 0), (660, 0), (665, 0), (670, 0), (675, 1), (680, 1), (685, 1), (690, 1), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 1), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 1), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 0), (915, 0), (920, 0), (925, 1), (930, 1), (935, 0), (940, 1), (945, 1), (950, 1), (955, 1), (960, 1), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Va1_4  a1_4  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.9v 124.745n 0.9v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.9v 139.745n 0.9v 139.755n 0.9v 144.745n 0.9v 144.755n 0.9v 149.745n 0.9v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.9v 174.745n 0.9v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.9v 189.745n 0.9v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.0v 219.745n 0.0v 219.755n 0.9v 224.745n 0.9v 224.755n 0.9v 229.745n 0.9v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.0v 334.745n 0.0v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.9v 364.745n 0.9v 364.755n 0.0v 369.745n 0.0v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.9v 409.745n 0.9v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.9v 509.745n 0.9v 509.755n 0.9v 514.745n 0.9v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.9v 529.745n 0.9v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.0v 564.745n 0.0v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.9v 634.745n 0.9v 634.755n 0.9v 639.745n 0.9v 639.755n 0.9v 644.745n 0.9v 644.755n 0.9v 649.745n 0.9v 649.755n 0.9v 654.745n 0.9v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.9v 759.745n 0.9v 759.755n 0.9v 764.745n 0.9v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.9v 824.745n 0.9v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.9v 854.745n 0.9v 854.755n 0.9v 859.745n 0.9v 859.755n 0.9v 864.745n 0.9v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.9v 894.745n 0.9v 894.755n 0.9v 899.745n 0.9v 899.755n 0.9v 904.745n 0.9v 904.755n 0.9v 909.745n 0.9v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.0v 939.745n 0.0v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.9v 964.745n 0.9v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 1), (175, 0), (180, 0), (185, 1), (190, 0), (195, 0), (200, 1), (205, 1), (210, 1), (215, 0), (220, 1), (225, 1), (230, 0), (235, 0), (240, 0), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 0), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 0), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 0), (400, 0), (405, 1), (410, 0), (415, 0), (420, 0), (425, 0), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 1), (500, 1), (505, 1), (510, 1), (515, 0), (520, 0), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 0), (565, 1), (570, 1), (575, 1), (580, 1), (585, 0), (590, 0), (595, 0), (600, 0), (605, 1), (610, 1), (615, 0), (620, 0), (625, 0), (630, 1), (635, 1), (640, 1), (645, 1), (650, 1), (655, 0), (660, 0), (665, 0), (670, 0), (675, 1), (680, 1), (685, 1), (690, 1), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 1), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 1), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 0), (915, 0), (920, 0), (925, 1), (930, 1), (935, 0), (940, 1), (945, 1), (950, 1), (955, 1), (960, 1), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Va1_5  a1_5  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.9v 124.745n 0.9v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.9v 139.745n 0.9v 139.755n 0.9v 144.745n 0.9v 144.755n 0.9v 149.745n 0.9v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.9v 174.745n 0.9v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.9v 189.745n 0.9v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.0v 219.745n 0.0v 219.755n 0.9v 224.745n 0.9v 224.755n 0.9v 229.745n 0.9v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.0v 334.745n 0.0v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.9v 364.745n 0.9v 364.755n 0.0v 369.745n 0.0v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.9v 409.745n 0.9v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.9v 509.745n 0.9v 509.755n 0.9v 514.745n 0.9v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.9v 529.745n 0.9v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.0v 564.745n 0.0v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.9v 634.745n 0.9v 634.755n 0.9v 639.745n 0.9v 639.755n 0.9v 644.745n 0.9v 644.755n 0.9v 649.745n 0.9v 649.755n 0.9v 654.745n 0.9v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.9v 759.745n 0.9v 759.755n 0.9v 764.745n 0.9v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.9v 824.745n 0.9v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.9v 854.745n 0.9v 854.755n 0.9v 859.745n 0.9v 859.755n 0.9v 864.745n 0.9v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.9v 894.745n 0.9v 894.755n 0.9v 899.745n 0.9v 899.755n 0.9v 904.745n 0.9v 904.755n 0.9v 909.745n 0.9v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.0v 939.745n 0.0v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.9v 964.745n 0.9v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 1), (175, 0), (180, 0), (185, 1), (190, 0), (195, 0), (200, 1), (205, 1), (210, 1), (215, 0), (220, 1), (225, 1), (230, 0), (235, 0), (240, 0), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 0), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 0), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 0), (400, 0), (405, 1), (410, 0), (415, 0), (420, 0), (425, 0), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 1), (500, 1), (505, 1), (510, 1), (515, 0), (520, 0), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 0), (565, 1), (570, 1), (575, 1), (580, 1), (585, 0), (590, 0), (595, 0), (600, 0), (605, 1), (610, 1), (615, 0), (620, 0), (625, 0), (630, 1), (635, 1), (640, 1), (645, 1), (650, 1), (655, 0), (660, 0), (665, 0), (670, 0), (675, 1), (680, 1), (685, 1), (690, 1), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 1), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 1), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 0), (915, 0), (920, 0), (925, 1), (930, 1), (935, 0), (940, 1), (945, 1), (950, 1), (955, 1), (960, 1), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Va1_6  a1_6  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.9v 124.745n 0.9v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.9v 139.745n 0.9v 139.755n 0.9v 144.745n 0.9v 144.755n 0.9v 149.745n 0.9v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.9v 174.745n 0.9v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.9v 189.745n 0.9v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.0v 219.745n 0.0v 219.755n 0.9v 224.745n 0.9v 224.755n 0.9v 229.745n 0.9v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.0v 334.745n 0.0v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.9v 364.745n 0.9v 364.755n 0.0v 369.745n 0.0v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.9v 409.745n 0.9v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.9v 509.745n 0.9v 509.755n 0.9v 514.745n 0.9v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.9v 529.745n 0.9v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.0v 564.745n 0.0v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.9v 634.745n 0.9v 634.755n 0.9v 639.745n 0.9v 639.755n 0.9v 644.745n 0.9v 644.755n 0.9v 649.745n 0.9v 649.755n 0.9v 654.745n 0.9v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.9v 759.745n 0.9v 759.755n 0.9v 764.745n 0.9v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.9v 824.745n 0.9v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.9v 854.745n 0.9v 854.755n 0.9v 859.745n 0.9v 859.755n 0.9v 864.745n 0.9v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.9v 894.745n 0.9v 894.755n 0.9v 899.745n 0.9v 899.755n 0.9v 904.745n 0.9v 904.755n 0.9v 909.745n 0.9v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.0v 939.745n 0.0v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.9v 964.745n 0.9v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 1), (175, 0), (180, 0), (185, 1), (190, 0), (195, 0), (200, 1), (205, 1), (210, 1), (215, 0), (220, 1), (225, 1), (230, 0), (235, 0), (240, 0), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 0), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 0), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 0), (400, 0), (405, 1), (410, 0), (415, 0), (420, 0), (425, 0), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 1), (500, 1), (505, 1), (510, 1), (515, 0), (520, 0), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 0), (565, 1), (570, 1), (575, 1), (580, 1), (585, 0), (590, 0), (595, 0), (600, 0), (605, 1), (610, 1), (615, 0), (620, 0), (625, 0), (630, 1), (635, 1), (640, 1), (645, 1), (650, 1), (655, 0), (660, 0), (665, 0), (670, 0), (675, 1), (680, 1), (685, 1), (690, 1), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 1), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 1), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 0), (915, 0), (920, 0), (925, 1), (930, 1), (935, 0), (940, 1), (945, 1), (950, 1), (955, 1), (960, 1), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Va1_7  a1_7  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.9v 124.745n 0.9v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.9v 139.745n 0.9v 139.755n 0.9v 144.745n 0.9v 144.755n 0.9v 149.745n 0.9v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.9v 174.745n 0.9v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.9v 189.745n 0.9v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.0v 219.745n 0.0v 219.755n 0.9v 224.745n 0.9v 224.755n 0.9v 229.745n 0.9v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.0v 334.745n 0.0v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.9v 364.745n 0.9v 364.755n 0.0v 369.745n 0.0v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.9v 409.745n 0.9v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.9v 509.745n 0.9v 509.755n 0.9v 514.745n 0.9v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.9v 529.745n 0.9v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.0v 564.745n 0.0v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.9v 634.745n 0.9v 634.755n 0.9v 639.745n 0.9v 639.755n 0.9v 644.745n 0.9v 644.755n 0.9v 649.745n 0.9v 649.755n 0.9v 654.745n 0.9v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.9v 759.745n 0.9v 759.755n 0.9v 764.745n 0.9v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.9v 824.745n 0.9v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.9v 854.745n 0.9v 854.755n 0.9v 859.745n 0.9v 859.755n 0.9v 864.745n 0.9v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.9v 894.745n 0.9v 894.755n 0.9v 899.745n 0.9v 899.755n 0.9v 904.745n 0.9v 904.755n 0.9v 909.745n 0.9v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.0v 939.745n 0.0v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.9v 964.745n 0.9v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )

 * Generation of control signals
* (time, data): [(0, 1), (5, 0), (10, 0), (15, 0), (20, 1), (25, 0), (30, 0), (35, 1), (40, 0), (45, 0), (50, 0), (55, 1), (60, 0), (65, 0), (70, 1), (75, 1), (80, 0), (85, 0), (90, 0), (95, 1), (100, 0), (105, 0), (110, 0), (115, 1), (120, 0), (125, 1), (130, 0), (135, 0), (140, 0), (145, 1), (150, 1), (155, 1), (160, 0), (165, 0), (170, 0), (175, 1), (180, 0), (185, 0), (190, 0), (195, 1), (200, 0), (205, 1), (210, 1), (215, 0), (220, 0), (225, 0), (230, 1), (235, 1), (240, 0), (245, 0), (250, 0), (255, 1), (260, 0), (265, 1), (270, 1), (275, 0), (280, 0), (285, 0), (290, 1), (295, 0), (300, 0), (305, 1), (310, 1), (315, 0), (320, 1), (325, 0), (330, 0), (335, 1), (340, 0), (345, 0), (350, 1), (355, 1), (360, 0), (365, 1), (370, 1), (375, 0), (380, 0), (385, 1), (390, 0), (395, 0), (400, 1), (405, 1), (410, 0), (415, 1), (420, 1), (425, 0), (430, 1), (435, 1), (440, 0), (445, 0), (450, 1), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 1), (510, 0), (515, 0), (520, 0), (525, 0), (530, 1), (535, 0), (540, 1), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 1), (580, 0), (585, 0), (590, 0), (595, 0), (600, 1), (605, 1), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 1), (640, 0), (645, 0), (650, 1), (655, 1), (660, 0), (665, 0), (670, 1), (675, 1), (680, 0), (685, 1), (690, 0), (695, 0), (700, 0), (705, 0), (710, 1), (715, 1), (720, 1), (725, 0), (730, 0), (735, 1), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 1), (775, 0), (780, 0), (785, 0), (790, 0), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 0), (825, 0), (830, 1), (835, 1), (840, 1), (845, 1), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 1), (880, 0), (885, 0), (890, 0), (895, 0), (900, 1), (905, 0), (910, 0), (915, 1), (920, 0), (925, 0), (930, 1), (935, 0), (940, 0), (945, 0), (950, 1), (955, 0), (960, 1), (965, 1), (970, 1), (975, 0), (980, 1), (985, 0), (990, 0), (995, 1), (1000, 1), (1005, 1), (1010, 0), (1015, 0), (1020, 0), (1025, 1)]
VCSB0 CSB0 0 PWL (0n 0.9v 4.745n 0.9v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.9v 24.745n 0.9v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.9v 39.745n 0.9v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.9v 59.745n 0.9v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.9v 74.745n 0.9v 74.755n 0.9v 79.745n 0.9v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.9v 99.745n 0.9v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.9v 119.745n 0.9v 119.755n 0.0v 124.745n 0.0v 124.755n 0.9v 129.745n 0.9v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.9v 149.745n 0.9v 149.755n 0.9v 154.745n 0.9v 154.755n 0.9v 159.745n 0.9v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.9v 179.745n 0.9v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.9v 199.745n 0.9v 199.755n 0.0v 204.745n 0.0v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.9v 259.745n 0.9v 259.755n 0.0v 264.745n 0.0v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.9v 294.745n 0.9v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.0v 319.745n 0.0v 319.755n 0.9v 324.745n 0.9v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.9v 339.745n 0.9v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.0v 364.745n 0.0v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.9v 389.745n 0.9v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.9v 404.745n 0.9v 404.755n 0.9v 409.745n 0.9v 409.755n 0.0v 414.745n 0.0v 414.755n 0.9v 419.745n 0.9v 419.755n 0.9v 424.745n 0.9v 424.755n 0.0v 429.745n 0.0v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.9v 454.745n 0.9v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.9v 509.745n 0.9v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.9v 534.745n 0.9v 534.755n 0.0v 539.745n 0.0v 539.755n 0.9v 544.745n 0.9v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.9v 579.745n 0.9v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.9v 639.745n 0.9v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.0v 684.745n 0.0v 684.755n 0.9v 689.745n 0.9v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.9v 739.745n 0.9v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.9v 774.745n 0.9v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.9v 879.745n 0.9v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.9v 904.745n 0.9v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.9v 919.745n 0.9v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.9v 934.745n 0.9v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.9v 954.745n 0.9v 954.755n 0.0v 959.745n 0.0v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.0v 979.745n 0.0v 979.755n 0.9v 984.745n 0.9v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.9v )
* (time, data): [(0, 1), (5, 1), (10, 1), (15, 1), (20, 0), (25, 1), (30, 1), (35, 1), (40, 1), (45, 0), (50, 1), (55, 0), (60, 1), (65, 1), (70, 1), (75, 0), (80, 1), (85, 1), (90, 1), (95, 0), (100, 1), (105, 1), (110, 0), (115, 1), (120, 0), (125, 1), (130, 1), (135, 0), (140, 1), (145, 0), (150, 0), (155, 1), (160, 0), (165, 0), (170, 0), (175, 0), (180, 1), (185, 0), (190, 0), (195, 1), (200, 0), (205, 1), (210, 1), (215, 0), (220, 0), (225, 1), (230, 0), (235, 0), (240, 0), (245, 0), (250, 1), (255, 0), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 0), (295, 0), (300, 1), (305, 0), (310, 0), (315, 0), (320, 1), (325, 1), (330, 0), (335, 0), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 0), (370, 0), (375, 1), (380, 1), (385, 1), (390, 0), (395, 0), (400, 1), (405, 0), (410, 0), (415, 1), (420, 1), (425, 1), (430, 0), (435, 0), (440, 0), (445, 0), (450, 1), (455, 1), (460, 1), (465, 0), (470, 0), (475, 1), (480, 0), (485, 1), (490, 0), (495, 0), (500, 0), (505, 1), (510, 0), (515, 0), (520, 1), (525, 0), (530, 0), (535, 1), (540, 0), (545, 1), (550, 1), (555, 1), (560, 0), (565, 0), (570, 1), (575, 0), (580, 1), (585, 0), (590, 1), (595, 1), (600, 0), (605, 0), (610, 1), (615, 0), (620, 1), (625, 0), (630, 0), (635, 0), (640, 1), (645, 0), (650, 0), (655, 0), (660, 1), (665, 1), (670, 1), (675, 0), (680, 1), (685, 1), (690, 1), (695, 0), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 0), (730, 1), (735, 1), (740, 0), (745, 0), (750, 0), (755, 1), (760, 1), (765, 0), (770, 1), (775, 1), (780, 0), (785, 1), (790, 0), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 0), (825, 0), (830, 1), (835, 0), (840, 1), (845, 1), (850, 0), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 0), (890, 0), (895, 0), (900, 1), (905, 1), (910, 0), (915, 1), (920, 0), (925, 0), (930, 1), (935, 0), (940, 0), (945, 0), (950, 1), (955, 1), (960, 0), (965, 0), (970, 1), (975, 0), (980, 1), (985, 1), (990, 0), (995, 1), (1000, 0), (1005, 1), (1010, 0), (1015, 1), (1020, 1), (1025, 1)]
VCSB1 CSB1 0 PWL (0n 0.9v 4.745n 0.9v 4.755n 0.9v 9.745n 0.9v 9.755n 0.9v 14.745n 0.9v 14.755n 0.9v 19.745n 0.9v 19.755n 0.0v 24.745n 0.0v 24.755n 0.9v 29.745n 0.9v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.9v 44.745n 0.9v 44.755n 0.0v 49.745n 0.0v 49.755n 0.9v 54.745n 0.9v 54.755n 0.0v 59.745n 0.0v 59.755n 0.9v 64.745n 0.9v 64.755n 0.9v 69.745n 0.9v 69.755n 0.9v 74.745n 0.9v 74.755n 0.0v 79.745n 0.0v 79.755n 0.9v 84.745n 0.9v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.0v 99.745n 0.0v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.0v 114.745n 0.0v 114.755n 0.9v 119.745n 0.9v 119.755n 0.0v 124.745n 0.0v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.0v 139.745n 0.0v 139.755n 0.9v 144.745n 0.9v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.9v 159.745n 0.9v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.9v 184.745n 0.9v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.9v 199.745n 0.9v 199.755n 0.0v 204.745n 0.0v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.9v 229.745n 0.9v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.9v 254.745n 0.9v 254.755n 0.0v 259.745n 0.0v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.9v 289.745n 0.9v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.9v 304.745n 0.9v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.9v 364.745n 0.9v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.9v 404.745n 0.9v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.9v 419.745n 0.9v 419.755n 0.9v 424.745n 0.9v 424.755n 0.9v 429.745n 0.9v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.9v 454.745n 0.9v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.9v 479.745n 0.9v 479.755n 0.0v 484.745n 0.0v 484.755n 0.9v 489.745n 0.9v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.9v 509.745n 0.9v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.9v 524.745n 0.9v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.9v 539.745n 0.9v 539.755n 0.0v 544.745n 0.0v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.9v 574.745n 0.9v 574.755n 0.0v 579.745n 0.0v 579.755n 0.9v 584.745n 0.9v 584.755n 0.0v 589.745n 0.0v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.9v 614.745n 0.9v 614.755n 0.0v 619.745n 0.0v 619.755n 0.9v 624.745n 0.9v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.9v 644.745n 0.9v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.9v 664.745n 0.9v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.0v 679.745n 0.0v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.0v 699.745n 0.0v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.0v 729.745n 0.0v 729.755n 0.9v 734.745n 0.9v 734.755n 0.9v 739.745n 0.9v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.9v 759.745n 0.9v 759.755n 0.9v 764.745n 0.9v 764.755n 0.0v 769.745n 0.0v 769.755n 0.9v 774.745n 0.9v 774.755n 0.9v 779.745n 0.9v 779.755n 0.0v 784.745n 0.0v 784.755n 0.9v 789.745n 0.9v 789.755n 0.0v 794.745n 0.0v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.9v 834.745n 0.9v 834.755n 0.0v 839.745n 0.0v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.0v 854.745n 0.0v 854.755n 0.9v 859.745n 0.9v 859.755n 0.9v 864.745n 0.9v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.9v 904.745n 0.9v 904.755n 0.9v 909.745n 0.9v 909.755n 0.0v 914.745n 0.0v 914.755n 0.9v 919.745n 0.9v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.9v 934.745n 0.9v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.9v 974.745n 0.9v 974.755n 0.0v 979.745n 0.0v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.0v 994.745n 0.0v 994.755n 0.9v 999.745n 0.9v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )

* Generation of wmask signals
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 0), (55, 0), (60, 1), (65, 0), (70, 0), (75, 0), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 1), (130, 0), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 0), (230, 0), (235, 0), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 0), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 0), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 0), (415, 0), (420, 0), (425, 1), (430, 1), (435, 1), (440, 0), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 0), (475, 1), (480, 0), (485, 0), (490, 0), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 0), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 0), (555, 1), (560, 0), (565, 0), (570, 0), (575, 0), (580, 0), (585, 1), (590, 0), (595, 1), (600, 1), (605, 1), (610, 1), (615, 1), (620, 0), (625, 1), (630, 1), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 0), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 0), (705, 1), (710, 1), (715, 1), (720, 1), (725, 0), (730, 1), (735, 1), (740, 1), (745, 1), (750, 0), (755, 1), (760, 1), (765, 1), (770, 1), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 0), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 1), (945, 1), (950, 1), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
VWMASK0_0  WMASK0_0  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.9v 14.745n 0.9v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.9v 44.745n 0.9v 44.755n 0.9v 49.745n 0.9v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.9v 64.745n 0.9v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.9v 84.745n 0.9v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.9v 129.745n 0.9v 129.755n 0.0v 134.745n 0.0v 134.755n 0.9v 139.745n 0.9v 139.755n 0.9v 144.745n 0.9v 144.755n 0.9v 149.745n 0.9v 149.755n 0.9v 154.745n 0.9v 154.755n 0.9v 159.745n 0.9v 159.755n 0.9v 164.745n 0.9v 164.755n 0.9v 169.745n 0.9v 169.755n 0.9v 174.745n 0.9v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.9v 194.745n 0.9v 194.755n 0.9v 199.745n 0.9v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.0v 284.745n 0.0v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.0v 379.745n 0.0v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.9v 404.745n 0.9v 404.755n 0.9v 409.745n 0.9v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.0v 444.745n 0.0v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.0v 474.745n 0.0v 474.755n 0.9v 479.745n 0.9v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.9v 509.745n 0.9v 509.755n 0.9v 514.745n 0.9v 514.755n 0.9v 519.745n 0.9v 519.755n 0.0v 524.745n 0.0v 524.755n 0.9v 529.745n 0.9v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.0v 554.745n 0.0v 554.755n 0.9v 559.745n 0.9v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.9v 589.745n 0.9v 589.755n 0.0v 594.745n 0.0v 594.755n 0.9v 599.745n 0.9v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.9v 619.745n 0.9v 619.755n 0.0v 624.745n 0.0v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.9v 639.745n 0.9v 639.755n 0.9v 644.745n 0.9v 644.755n 0.9v 649.745n 0.9v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.0v 664.745n 0.0v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.0v 704.745n 0.0v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.0v 729.745n 0.0v 729.755n 0.9v 734.745n 0.9v 734.755n 0.9v 739.745n 0.9v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.0v 754.745n 0.0v 754.755n 0.9v 759.745n 0.9v 759.755n 0.9v 764.745n 0.9v 764.755n 0.9v 769.745n 0.9v 769.755n 0.9v 774.745n 0.9v 774.755n 0.9v 779.745n 0.9v 779.755n 0.9v 784.745n 0.9v 784.755n 0.9v 789.745n 0.9v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.9v 854.745n 0.9v 854.755n 0.9v 859.745n 0.9v 859.755n 0.0v 864.745n 0.0v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.9v 894.745n 0.9v 894.755n 0.9v 899.745n 0.9v 899.755n 0.9v 904.745n 0.9v 904.755n 0.9v 909.745n 0.9v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 0), (30, 1), (35, 1), (40, 1), (45, 1), (50, 0), (55, 0), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 0), (110, 1), (115, 1), (120, 1), (125, 1), (130, 0), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 0), (230, 0), (235, 0), (240, 0), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 0), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 0), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 0), (470, 1), (475, 1), (480, 0), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 0), (555, 1), (560, 1), (565, 0), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 0), (600, 0), (605, 0), (610, 0), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 0), (645, 1), (650, 1), (655, 1), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 0), (695, 0), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 0), (730, 0), (735, 0), (740, 1), (745, 1), (750, 0), (755, 1), (760, 0), (765, 1), (770, 1), (775, 1), (780, 1), (785, 0), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 0), (885, 1), (890, 0), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 1), (945, 1), (950, 1), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
VWMASK0_1  WMASK0_1  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.9v 14.745n 0.9v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.0v 29.745n 0.0v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.9v 44.745n 0.9v 44.755n 0.9v 49.745n 0.9v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.9v 64.745n 0.9v 64.755n 0.9v 69.745n 0.9v 69.755n 0.9v 74.745n 0.9v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.0v 109.745n 0.0v 109.755n 0.9v 114.745n 0.9v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.9v 129.745n 0.9v 129.755n 0.0v 134.745n 0.0v 134.755n 0.9v 139.745n 0.9v 139.755n 0.9v 144.745n 0.9v 144.755n 0.9v 149.745n 0.9v 149.755n 0.9v 154.745n 0.9v 154.755n 0.9v 159.745n 0.9v 159.755n 0.9v 164.745n 0.9v 164.755n 0.9v 169.745n 0.9v 169.755n 0.9v 174.745n 0.9v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.9v 194.745n 0.9v 194.755n 0.9v 199.745n 0.9v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.0v 299.745n 0.0v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.0v 379.745n 0.0v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.9v 404.745n 0.9v 404.755n 0.9v 409.745n 0.9v 409.755n 0.9v 414.745n 0.9v 414.755n 0.9v 419.745n 0.9v 419.755n 0.9v 424.745n 0.9v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.0v 469.745n 0.0v 469.755n 0.9v 474.745n 0.9v 474.755n 0.9v 479.745n 0.9v 479.755n 0.0v 484.745n 0.0v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.9v 509.745n 0.9v 509.755n 0.9v 514.745n 0.9v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.0v 554.745n 0.0v 554.755n 0.9v 559.745n 0.9v 559.755n 0.9v 564.745n 0.9v 564.755n 0.0v 569.745n 0.0v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.9v 619.745n 0.9v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.9v 639.745n 0.9v 639.755n 0.0v 644.745n 0.0v 644.755n 0.9v 649.745n 0.9v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.0v 754.745n 0.0v 754.755n 0.9v 759.745n 0.9v 759.755n 0.0v 764.745n 0.0v 764.755n 0.9v 769.745n 0.9v 769.755n 0.9v 774.745n 0.9v 774.755n 0.9v 779.745n 0.9v 779.755n 0.9v 784.745n 0.9v 784.755n 0.0v 789.745n 0.0v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.9v 854.745n 0.9v 854.755n 0.9v 859.745n 0.9v 859.755n 0.9v 864.745n 0.9v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.0v 884.745n 0.0v 884.755n 0.9v 889.745n 0.9v 889.755n 0.0v 894.745n 0.0v 894.755n 0.9v 899.745n 0.9v 899.755n 0.9v 904.745n 0.9v 904.755n 0.9v 909.745n 0.9v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 0), (95, 0), (100, 1), (105, 0), (110, 1), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 0), (190, 1), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 1), (230, 1), (235, 1), (240, 0), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 0), (280, 1), (285, 1), (290, 1), (295, 0), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 0), (380, 0), (385, 0), (390, 1), (395, 1), (400, 1), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 0), (470, 0), (475, 1), (480, 0), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 0), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 0), (555, 1), (560, 0), (565, 1), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 0), (615, 1), (620, 0), (625, 1), (630, 1), (635, 1), (640, 1), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 0), (675, 0), (680, 1), (685, 1), (690, 0), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 1), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 0), (865, 1), (870, 1), (875, 1), (880, 0), (885, 0), (890, 0), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 1), (945, 1), (950, 1), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
VWMASK0_2  WMASK0_2  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.9v 14.745n 0.9v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.9v 44.745n 0.9v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.9v 59.745n 0.9v 59.755n 0.9v 64.745n 0.9v 64.755n 0.9v 69.745n 0.9v 69.755n 0.9v 74.745n 0.9v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.9v 89.745n 0.9v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.9v 104.745n 0.9v 104.755n 0.0v 109.745n 0.0v 109.755n 0.9v 114.745n 0.9v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.9v 139.745n 0.9v 139.755n 0.9v 144.745n 0.9v 144.755n 0.9v 149.745n 0.9v 149.755n 0.9v 154.745n 0.9v 154.755n 0.9v 159.745n 0.9v 159.755n 0.9v 164.745n 0.9v 164.755n 0.9v 169.745n 0.9v 169.755n 0.9v 174.745n 0.9v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.0v 189.745n 0.0v 189.755n 0.9v 194.745n 0.9v 194.755n 0.9v 199.745n 0.9v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.9v 229.745n 0.9v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.0v 244.745n 0.0v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.0v 279.745n 0.0v 279.755n 0.9v 284.745n 0.9v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.0v 299.745n 0.0v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.9v 404.745n 0.9v 404.755n 0.9v 409.745n 0.9v 409.755n 0.9v 414.745n 0.9v 414.755n 0.9v 419.745n 0.9v 419.755n 0.9v 424.745n 0.9v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.9v 479.745n 0.9v 479.755n 0.0v 484.745n 0.0v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.9v 509.745n 0.9v 509.755n 0.9v 514.745n 0.9v 514.755n 0.9v 519.745n 0.9v 519.755n 0.0v 524.745n 0.0v 524.755n 0.9v 529.745n 0.9v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.0v 554.745n 0.0v 554.755n 0.9v 559.745n 0.9v 559.755n 0.0v 564.745n 0.0v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.0v 614.745n 0.0v 614.755n 0.9v 619.745n 0.9v 619.755n 0.0v 624.745n 0.0v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.9v 639.745n 0.9v 639.755n 0.9v 644.745n 0.9v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.0v 694.745n 0.0v 694.755n 0.9v 699.745n 0.9v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.9v 739.745n 0.9v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.9v 759.745n 0.9v 759.755n 0.9v 764.745n 0.9v 764.755n 0.9v 769.745n 0.9v 769.755n 0.9v 774.745n 0.9v 774.755n 0.9v 779.745n 0.9v 779.755n 0.9v 784.745n 0.9v 784.755n 0.9v 789.745n 0.9v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.9v 854.745n 0.9v 854.755n 0.9v 859.745n 0.9v 859.755n 0.0v 864.745n 0.0v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.9v 899.745n 0.9v 899.755n 0.9v 904.745n 0.9v 904.755n 0.9v 909.745n 0.9v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 0), (30, 1), (35, 1), (40, 1), (45, 1), (50, 0), (55, 0), (60, 1), (65, 0), (70, 0), (75, 0), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 0), (110, 1), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 0), (175, 0), (180, 1), (185, 0), (190, 1), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 0), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 0), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 0), (415, 0), (420, 0), (425, 1), (430, 1), (435, 1), (440, 1), (445, 0), (450, 0), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 0), (490, 1), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 0), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 0), (575, 0), (580, 1), (585, 1), (590, 0), (595, 1), (600, 1), (605, 1), (610, 0), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 0), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 0), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 0), (730, 0), (735, 0), (740, 1), (745, 1), (750, 1), (755, 1), (760, 0), (765, 1), (770, 1), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 0), (865, 1), (870, 1), (875, 1), (880, 1), (885, 0), (890, 0), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 0), (930, 0), (935, 0), (940, 1), (945, 1), (950, 1), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
VWMASK0_3  WMASK0_3  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.9v 14.745n 0.9v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.0v 29.745n 0.0v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.9v 44.745n 0.9v 44.755n 0.9v 49.745n 0.9v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.9v 64.745n 0.9v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.9v 84.745n 0.9v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.0v 109.745n 0.0v 109.755n 0.9v 114.745n 0.9v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.9v 139.745n 0.9v 139.755n 0.9v 144.745n 0.9v 144.755n 0.9v 149.745n 0.9v 149.755n 0.9v 154.745n 0.9v 154.755n 0.9v 159.745n 0.9v 159.755n 0.9v 164.745n 0.9v 164.755n 0.9v 169.745n 0.9v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.9v 184.745n 0.9v 184.755n 0.0v 189.745n 0.0v 189.755n 0.9v 194.745n 0.9v 194.755n 0.9v 199.745n 0.9v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.0v 224.745n 0.0v 224.755n 0.9v 229.745n 0.9v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.0v 279.745n 0.0v 279.755n 0.9v 284.745n 0.9v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.9v 404.745n 0.9v 404.755n 0.9v 409.745n 0.9v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.9v 474.745n 0.9v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.0v 489.745n 0.0v 489.755n 0.9v 494.745n 0.9v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.9v 509.745n 0.9v 509.755n 0.9v 514.745n 0.9v 514.755n 0.9v 519.745n 0.9v 519.755n 0.0v 524.745n 0.0v 524.755n 0.9v 529.745n 0.9v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.9v 564.745n 0.9v 564.755n 0.9v 569.745n 0.9v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.0v 594.745n 0.0v 594.755n 0.9v 599.745n 0.9v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.0v 614.745n 0.0v 614.755n 0.9v 619.745n 0.9v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.9v 639.745n 0.9v 639.755n 0.9v 644.745n 0.9v 644.755n 0.9v 649.745n 0.9v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.0v 664.745n 0.0v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.0v 699.745n 0.0v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.9v 759.745n 0.9v 759.755n 0.0v 764.745n 0.0v 764.755n 0.9v 769.745n 0.9v 769.755n 0.9v 774.745n 0.9v 774.755n 0.9v 779.745n 0.9v 779.755n 0.9v 784.745n 0.9v 784.755n 0.9v 789.745n 0.9v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.9v 854.745n 0.9v 854.755n 0.9v 859.745n 0.9v 859.755n 0.0v 864.745n 0.0v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.9v 899.745n 0.9v 899.755n 0.9v 904.745n 0.9v 904.755n 0.9v 909.745n 0.9v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* PULSE: period=5
Vclk0 clk0 0 PULSE (0 0.9 4.995n 0.01n 0.01n 2.49n 5n)
* PULSE: period=5
Vclk1 clk1 0 PULSE (0 0.9 4.995n 0.01n 0.01n 2.49n 5n)

 * Generation of dout measurements
* CHECK dout1_0 Vdout1_0ck4 = 0.9 time = 25
.meas tran vdout1_0ck4 FIND v(dout1_0) AT=25.025n

* CHECK dout1_1 Vdout1_1ck4 = 0.9 time = 25
.meas tran vdout1_1ck4 FIND v(dout1_1) AT=25.025n

* CHECK dout1_2 Vdout1_2ck4 = 0.9 time = 25
.meas tran vdout1_2ck4 FIND v(dout1_2) AT=25.025n

* CHECK dout1_3 Vdout1_3ck4 = 0 time = 25
.meas tran vdout1_3ck4 FIND v(dout1_3) AT=25.025n

* CHECK dout1_0 Vdout1_0ck9 = 0.9 time = 50
.meas tran vdout1_0ck9 FIND v(dout1_0) AT=50.025n

* CHECK dout1_1 Vdout1_1ck9 = 0 time = 50
.meas tran vdout1_1ck9 FIND v(dout1_1) AT=50.025n

* CHECK dout1_2 Vdout1_2ck9 = 0.9 time = 50
.meas tran vdout1_2ck9 FIND v(dout1_2) AT=50.025n

* CHECK dout1_3 Vdout1_3ck9 = 0.9 time = 50
.meas tran vdout1_3ck9 FIND v(dout1_3) AT=50.025n

* CHECK dout1_0 Vdout1_0ck11 = 0.9 time = 60
.meas tran vdout1_0ck11 FIND v(dout1_0) AT=60.025n

* CHECK dout1_1 Vdout1_1ck11 = 0.9 time = 60
.meas tran vdout1_1ck11 FIND v(dout1_1) AT=60.025n

* CHECK dout1_2 Vdout1_2ck11 = 0 time = 60
.meas tran vdout1_2ck11 FIND v(dout1_2) AT=60.025n

* CHECK dout1_3 Vdout1_3ck11 = 0 time = 60
.meas tran vdout1_3ck11 FIND v(dout1_3) AT=60.025n

* CHECK dout1_0 Vdout1_0ck15 = 0 time = 80
.meas tran vdout1_0ck15 FIND v(dout1_0) AT=80.025n

* CHECK dout1_1 Vdout1_1ck15 = 0.9 time = 80
.meas tran vdout1_1ck15 FIND v(dout1_1) AT=80.025n

* CHECK dout1_2 Vdout1_2ck15 = 0.9 time = 80
.meas tran vdout1_2ck15 FIND v(dout1_2) AT=80.025n

* CHECK dout1_3 Vdout1_3ck15 = 0 time = 80
.meas tran vdout1_3ck15 FIND v(dout1_3) AT=80.025n

* CHECK dout1_0 Vdout1_0ck19 = 0.9 time = 100
.meas tran vdout1_0ck19 FIND v(dout1_0) AT=100.025n

* CHECK dout1_1 Vdout1_1ck19 = 0.9 time = 100
.meas tran vdout1_1ck19 FIND v(dout1_1) AT=100.025n

* CHECK dout1_2 Vdout1_2ck19 = 0 time = 100
.meas tran vdout1_2ck19 FIND v(dout1_2) AT=100.025n

* CHECK dout1_3 Vdout1_3ck19 = 0 time = 100
.meas tran vdout1_3ck19 FIND v(dout1_3) AT=100.025n

* CHECK dout1_0 Vdout1_0ck22 = 0.9 time = 115
.meas tran vdout1_0ck22 FIND v(dout1_0) AT=115.025n

* CHECK dout1_1 Vdout1_1ck22 = 0 time = 115
.meas tran vdout1_1ck22 FIND v(dout1_1) AT=115.025n

* CHECK dout1_2 Vdout1_2ck22 = 0.9 time = 115
.meas tran vdout1_2ck22 FIND v(dout1_2) AT=115.025n

* CHECK dout1_3 Vdout1_3ck22 = 0.9 time = 115
.meas tran vdout1_3ck22 FIND v(dout1_3) AT=115.025n

* CHECK dout1_0 Vdout1_0ck24 = 0.9 time = 125
.meas tran vdout1_0ck24 FIND v(dout1_0) AT=125.025n

* CHECK dout1_1 Vdout1_1ck24 = 0 time = 125
.meas tran vdout1_1ck24 FIND v(dout1_1) AT=125.025n

* CHECK dout1_2 Vdout1_2ck24 = 0 time = 125
.meas tran vdout1_2ck24 FIND v(dout1_2) AT=125.025n

* CHECK dout1_3 Vdout1_3ck24 = 0 time = 125
.meas tran vdout1_3ck24 FIND v(dout1_3) AT=125.025n

* CHECK dout1_0 Vdout1_0ck27 = 0.9 time = 140
.meas tran vdout1_0ck27 FIND v(dout1_0) AT=140.025n

* CHECK dout1_1 Vdout1_1ck27 = 0 time = 140
.meas tran vdout1_1ck27 FIND v(dout1_1) AT=140.025n

* CHECK dout1_2 Vdout1_2ck27 = 0.9 time = 140
.meas tran vdout1_2ck27 FIND v(dout1_2) AT=140.025n

* CHECK dout1_3 Vdout1_3ck27 = 0 time = 140
.meas tran vdout1_3ck27 FIND v(dout1_3) AT=140.025n

* CHECK dout1_0 Vdout1_0ck29 = 0.9 time = 150
.meas tran vdout1_0ck29 FIND v(dout1_0) AT=150.025n

* CHECK dout1_1 Vdout1_1ck29 = 0 time = 150
.meas tran vdout1_1ck29 FIND v(dout1_1) AT=150.025n

* CHECK dout1_2 Vdout1_2ck29 = 0.9 time = 150
.meas tran vdout1_2ck29 FIND v(dout1_2) AT=150.025n

* CHECK dout1_3 Vdout1_3ck29 = 0 time = 150
.meas tran vdout1_3ck29 FIND v(dout1_3) AT=150.025n

* CHECK dout1_0 Vdout1_0ck30 = 0 time = 155
.meas tran vdout1_0ck30 FIND v(dout1_0) AT=155.025n

* CHECK dout1_1 Vdout1_1ck30 = 0 time = 155
.meas tran vdout1_1ck30 FIND v(dout1_1) AT=155.025n

* CHECK dout1_2 Vdout1_2ck30 = 0.9 time = 155
.meas tran vdout1_2ck30 FIND v(dout1_2) AT=155.025n

* CHECK dout1_3 Vdout1_3ck30 = 0 time = 155
.meas tran vdout1_3ck30 FIND v(dout1_3) AT=155.025n

* CHECK dout1_0 Vdout1_0ck32 = 0.9 time = 165
.meas tran vdout1_0ck32 FIND v(dout1_0) AT=165.025n

* CHECK dout1_1 Vdout1_1ck32 = 0 time = 165
.meas tran vdout1_1ck32 FIND v(dout1_1) AT=165.025n

* CHECK dout1_2 Vdout1_2ck32 = 0.9 time = 165
.meas tran vdout1_2ck32 FIND v(dout1_2) AT=165.025n

* CHECK dout1_3 Vdout1_3ck32 = 0.9 time = 165
.meas tran vdout1_3ck32 FIND v(dout1_3) AT=165.025n

* CHECK dout1_0 Vdout1_0ck33 = 0 time = 170
.meas tran vdout1_0ck33 FIND v(dout1_0) AT=170.025n

* CHECK dout1_1 Vdout1_1ck33 = 0.9 time = 170
.meas tran vdout1_1ck33 FIND v(dout1_1) AT=170.025n

* CHECK dout1_2 Vdout1_2ck33 = 0 time = 170
.meas tran vdout1_2ck33 FIND v(dout1_2) AT=170.025n

* CHECK dout1_3 Vdout1_3ck33 = 0.9 time = 170
.meas tran vdout1_3ck33 FIND v(dout1_3) AT=170.025n

* CHECK dout1_0 Vdout1_0ck34 = 0 time = 175
.meas tran vdout1_0ck34 FIND v(dout1_0) AT=175.025n

* CHECK dout1_1 Vdout1_1ck34 = 0.9 time = 175
.meas tran vdout1_1ck34 FIND v(dout1_1) AT=175.025n

* CHECK dout1_2 Vdout1_2ck34 = 0.9 time = 175
.meas tran vdout1_2ck34 FIND v(dout1_2) AT=175.025n

* CHECK dout1_3 Vdout1_3ck34 = 0 time = 175
.meas tran vdout1_3ck34 FIND v(dout1_3) AT=175.025n

* CHECK dout1_0 Vdout1_0ck35 = 0.9 time = 180
.meas tran vdout1_0ck35 FIND v(dout1_0) AT=180.025n

* CHECK dout1_1 Vdout1_1ck35 = 0 time = 180
.meas tran vdout1_1ck35 FIND v(dout1_1) AT=180.025n

* CHECK dout1_2 Vdout1_2ck35 = 0.9 time = 180
.meas tran vdout1_2ck35 FIND v(dout1_2) AT=180.025n

* CHECK dout1_3 Vdout1_3ck35 = 0.9 time = 180
.meas tran vdout1_3ck35 FIND v(dout1_3) AT=180.025n

* CHECK dout1_0 Vdout1_0ck37 = 0.9 time = 190
.meas tran vdout1_0ck37 FIND v(dout1_0) AT=190.025n

* CHECK dout1_1 Vdout1_1ck37 = 0 time = 190
.meas tran vdout1_1ck37 FIND v(dout1_1) AT=190.025n

* CHECK dout1_2 Vdout1_2ck37 = 0.9 time = 190
.meas tran vdout1_2ck37 FIND v(dout1_2) AT=190.025n

* CHECK dout1_3 Vdout1_3ck37 = 0 time = 190
.meas tran vdout1_3ck37 FIND v(dout1_3) AT=190.025n

* CHECK dout1_0 Vdout1_0ck38 = 0 time = 195
.meas tran vdout1_0ck38 FIND v(dout1_0) AT=195.025n

* CHECK dout1_1 Vdout1_1ck38 = 0.9 time = 195
.meas tran vdout1_1ck38 FIND v(dout1_1) AT=195.025n

* CHECK dout1_2 Vdout1_2ck38 = 0 time = 195
.meas tran vdout1_2ck38 FIND v(dout1_2) AT=195.025n

* CHECK dout1_3 Vdout1_3ck38 = 0.9 time = 195
.meas tran vdout1_3ck38 FIND v(dout1_3) AT=195.025n

* CHECK dout1_0 Vdout1_0ck40 = 0.9 time = 205
.meas tran vdout1_0ck40 FIND v(dout1_0) AT=205.025n

* CHECK dout1_1 Vdout1_1ck40 = 0 time = 205
.meas tran vdout1_1ck40 FIND v(dout1_1) AT=205.025n

* CHECK dout1_2 Vdout1_2ck40 = 0 time = 205
.meas tran vdout1_2ck40 FIND v(dout1_2) AT=205.025n

* CHECK dout1_3 Vdout1_3ck40 = 0 time = 205
.meas tran vdout1_3ck40 FIND v(dout1_3) AT=205.025n

* CHECK dout1_0 Vdout1_0ck43 = 0.9 time = 220
.meas tran vdout1_0ck43 FIND v(dout1_0) AT=220.025n

* CHECK dout1_1 Vdout1_1ck43 = 0.9 time = 220
.meas tran vdout1_1ck43 FIND v(dout1_1) AT=220.025n

* CHECK dout1_2 Vdout1_2ck43 = 0.9 time = 220
.meas tran vdout1_2ck43 FIND v(dout1_2) AT=220.025n

* CHECK dout1_3 Vdout1_3ck43 = 0 time = 220
.meas tran vdout1_3ck43 FIND v(dout1_3) AT=220.025n

* CHECK dout1_0 Vdout1_0ck44 = 0.9 time = 225
.meas tran vdout1_0ck44 FIND v(dout1_0) AT=225.025n

* CHECK dout1_1 Vdout1_1ck44 = 0.9 time = 225
.meas tran vdout1_1ck44 FIND v(dout1_1) AT=225.025n

* CHECK dout1_2 Vdout1_2ck44 = 0.9 time = 225
.meas tran vdout1_2ck44 FIND v(dout1_2) AT=225.025n

* CHECK dout1_3 Vdout1_3ck44 = 0 time = 225
.meas tran vdout1_3ck44 FIND v(dout1_3) AT=225.025n

* CHECK dout1_0 Vdout1_0ck46 = 0.9 time = 235
.meas tran vdout1_0ck46 FIND v(dout1_0) AT=235.025n

* CHECK dout1_1 Vdout1_1ck46 = 0 time = 235
.meas tran vdout1_1ck46 FIND v(dout1_1) AT=235.025n

* CHECK dout1_2 Vdout1_2ck46 = 0.9 time = 235
.meas tran vdout1_2ck46 FIND v(dout1_2) AT=235.025n

* CHECK dout1_3 Vdout1_3ck46 = 0.9 time = 235
.meas tran vdout1_3ck46 FIND v(dout1_3) AT=235.025n

* CHECK dout1_0 Vdout1_0ck47 = 0 time = 240
.meas tran vdout1_0ck47 FIND v(dout1_0) AT=240.025n

* CHECK dout1_1 Vdout1_1ck47 = 0.9 time = 240
.meas tran vdout1_1ck47 FIND v(dout1_1) AT=240.025n

* CHECK dout1_2 Vdout1_2ck47 = 0 time = 240
.meas tran vdout1_2ck47 FIND v(dout1_2) AT=240.025n

* CHECK dout1_3 Vdout1_3ck47 = 0.9 time = 240
.meas tran vdout1_3ck47 FIND v(dout1_3) AT=240.025n

* CHECK dout1_0 Vdout1_0ck48 = 0.9 time = 245
.meas tran vdout1_0ck48 FIND v(dout1_0) AT=245.025n

* CHECK dout1_1 Vdout1_1ck48 = 0 time = 245
.meas tran vdout1_1ck48 FIND v(dout1_1) AT=245.025n

* CHECK dout1_2 Vdout1_2ck48 = 0.9 time = 245
.meas tran vdout1_2ck48 FIND v(dout1_2) AT=245.025n

* CHECK dout1_3 Vdout1_3ck48 = 0.9 time = 245
.meas tran vdout1_3ck48 FIND v(dout1_3) AT=245.025n

* CHECK dout1_0 Vdout1_0ck49 = 0 time = 250
.meas tran vdout1_0ck49 FIND v(dout1_0) AT=250.025n

* CHECK dout1_1 Vdout1_1ck49 = 0 time = 250
.meas tran vdout1_1ck49 FIND v(dout1_1) AT=250.025n

* CHECK dout1_2 Vdout1_2ck49 = 0.9 time = 250
.meas tran vdout1_2ck49 FIND v(dout1_2) AT=250.025n

* CHECK dout1_3 Vdout1_3ck49 = 0 time = 250
.meas tran vdout1_3ck49 FIND v(dout1_3) AT=250.025n

* CHECK dout1_0 Vdout1_0ck51 = 0 time = 260
.meas tran vdout1_0ck51 FIND v(dout1_0) AT=260.025n

* CHECK dout1_1 Vdout1_1ck51 = 0 time = 260
.meas tran vdout1_1ck51 FIND v(dout1_1) AT=260.025n

* CHECK dout1_2 Vdout1_2ck51 = 0.9 time = 260
.meas tran vdout1_2ck51 FIND v(dout1_2) AT=260.025n

* CHECK dout1_3 Vdout1_3ck51 = 0 time = 260
.meas tran vdout1_3ck51 FIND v(dout1_3) AT=260.025n

* CHECK dout1_0 Vdout1_0ck58 = 0.9 time = 295
.meas tran vdout1_0ck58 FIND v(dout1_0) AT=295.025n

* CHECK dout1_1 Vdout1_1ck58 = 0 time = 295
.meas tran vdout1_1ck58 FIND v(dout1_1) AT=295.025n

* CHECK dout1_2 Vdout1_2ck58 = 0.9 time = 295
.meas tran vdout1_2ck58 FIND v(dout1_2) AT=295.025n

* CHECK dout1_3 Vdout1_3ck58 = 0.9 time = 295
.meas tran vdout1_3ck58 FIND v(dout1_3) AT=295.025n

* CHECK dout1_0 Vdout1_0ck59 = 0.9 time = 300
.meas tran vdout1_0ck59 FIND v(dout1_0) AT=300.025n

* CHECK dout1_1 Vdout1_1ck59 = 0 time = 300
.meas tran vdout1_1ck59 FIND v(dout1_1) AT=300.025n

* CHECK dout1_2 Vdout1_2ck59 = 0.9 time = 300
.meas tran vdout1_2ck59 FIND v(dout1_2) AT=300.025n

* CHECK dout1_3 Vdout1_3ck59 = 0 time = 300
.meas tran vdout1_3ck59 FIND v(dout1_3) AT=300.025n

* CHECK dout1_0 Vdout1_0ck61 = 0.9 time = 310
.meas tran vdout1_0ck61 FIND v(dout1_0) AT=310.025n

* CHECK dout1_1 Vdout1_1ck61 = 0 time = 310
.meas tran vdout1_1ck61 FIND v(dout1_1) AT=310.025n

* CHECK dout1_2 Vdout1_2ck61 = 0.9 time = 310
.meas tran vdout1_2ck61 FIND v(dout1_2) AT=310.025n

* CHECK dout1_3 Vdout1_3ck61 = 0.9 time = 310
.meas tran vdout1_3ck61 FIND v(dout1_3) AT=310.025n

* CHECK dout1_0 Vdout1_0ck62 = 0 time = 315
.meas tran vdout1_0ck62 FIND v(dout1_0) AT=315.025n

* CHECK dout1_1 Vdout1_1ck62 = 0 time = 315
.meas tran vdout1_1ck62 FIND v(dout1_1) AT=315.025n

* CHECK dout1_2 Vdout1_2ck62 = 0 time = 315
.meas tran vdout1_2ck62 FIND v(dout1_2) AT=315.025n

* CHECK dout1_3 Vdout1_3ck62 = 0 time = 315
.meas tran vdout1_3ck62 FIND v(dout1_3) AT=315.025n

* CHECK dout1_0 Vdout1_0ck63 = 0 time = 320
.meas tran vdout1_0ck63 FIND v(dout1_0) AT=320.025n

* CHECK dout1_1 Vdout1_1ck63 = 0 time = 320
.meas tran vdout1_1ck63 FIND v(dout1_1) AT=320.025n

* CHECK dout1_2 Vdout1_2ck63 = 0 time = 320
.meas tran vdout1_2ck63 FIND v(dout1_2) AT=320.025n

* CHECK dout1_3 Vdout1_3ck63 = 0 time = 320
.meas tran vdout1_3ck63 FIND v(dout1_3) AT=320.025n

* CHECK dout1_0 Vdout1_0ck66 = 0 time = 335
.meas tran vdout1_0ck66 FIND v(dout1_0) AT=335.025n

* CHECK dout1_1 Vdout1_1ck66 = 0.9 time = 335
.meas tran vdout1_1ck66 FIND v(dout1_1) AT=335.025n

* CHECK dout1_2 Vdout1_2ck66 = 0 time = 335
.meas tran vdout1_2ck66 FIND v(dout1_2) AT=335.025n

* CHECK dout1_3 Vdout1_3ck66 = 0 time = 335
.meas tran vdout1_3ck66 FIND v(dout1_3) AT=335.025n

* CHECK dout1_0 Vdout1_0ck67 = 0.9 time = 340
.meas tran vdout1_0ck67 FIND v(dout1_0) AT=340.025n

* CHECK dout1_1 Vdout1_1ck67 = 0 time = 340
.meas tran vdout1_1ck67 FIND v(dout1_1) AT=340.025n

* CHECK dout1_2 Vdout1_2ck67 = 0 time = 340
.meas tran vdout1_2ck67 FIND v(dout1_2) AT=340.025n

* CHECK dout1_3 Vdout1_3ck67 = 0 time = 340
.meas tran vdout1_3ck67 FIND v(dout1_3) AT=340.025n

* CHECK dout1_0 Vdout1_0ck73 = 0.9 time = 370
.meas tran vdout1_0ck73 FIND v(dout1_0) AT=370.025n

* CHECK dout1_1 Vdout1_1ck73 = 0.9 time = 370
.meas tran vdout1_1ck73 FIND v(dout1_1) AT=370.025n

* CHECK dout1_2 Vdout1_2ck73 = 0.9 time = 370
.meas tran vdout1_2ck73 FIND v(dout1_2) AT=370.025n

* CHECK dout1_3 Vdout1_3ck73 = 0 time = 370
.meas tran vdout1_3ck73 FIND v(dout1_3) AT=370.025n

* CHECK dout1_0 Vdout1_0ck74 = 0 time = 375
.meas tran vdout1_0ck74 FIND v(dout1_0) AT=375.025n

* CHECK dout1_1 Vdout1_1ck74 = 0 time = 375
.meas tran vdout1_1ck74 FIND v(dout1_1) AT=375.025n

* CHECK dout1_2 Vdout1_2ck74 = 0.9 time = 375
.meas tran vdout1_2ck74 FIND v(dout1_2) AT=375.025n

* CHECK dout1_3 Vdout1_3ck74 = 0 time = 375
.meas tran vdout1_3ck74 FIND v(dout1_3) AT=375.025n

* CHECK dout1_0 Vdout1_0ck78 = 0.9 time = 395
.meas tran vdout1_0ck78 FIND v(dout1_0) AT=395.025n

* CHECK dout1_1 Vdout1_1ck78 = 0.9 time = 395
.meas tran vdout1_1ck78 FIND v(dout1_1) AT=395.025n

* CHECK dout1_2 Vdout1_2ck78 = 0 time = 395
.meas tran vdout1_2ck78 FIND v(dout1_2) AT=395.025n

* CHECK dout1_3 Vdout1_3ck78 = 0 time = 395
.meas tran vdout1_3ck78 FIND v(dout1_3) AT=395.025n

* CHECK dout1_0 Vdout1_0ck79 = 0.9 time = 400
.meas tran vdout1_0ck79 FIND v(dout1_0) AT=400.025n

* CHECK dout1_1 Vdout1_1ck79 = 0 time = 400
.meas tran vdout1_1ck79 FIND v(dout1_1) AT=400.025n

* CHECK dout1_2 Vdout1_2ck79 = 0 time = 400
.meas tran vdout1_2ck79 FIND v(dout1_2) AT=400.025n

* CHECK dout1_3 Vdout1_3ck79 = 0 time = 400
.meas tran vdout1_3ck79 FIND v(dout1_3) AT=400.025n

* CHECK dout1_0 Vdout1_0ck81 = 0 time = 410
.meas tran vdout1_0ck81 FIND v(dout1_0) AT=410.025n

* CHECK dout1_1 Vdout1_1ck81 = 0.9 time = 410
.meas tran vdout1_1ck81 FIND v(dout1_1) AT=410.025n

* CHECK dout1_2 Vdout1_2ck81 = 0.9 time = 410
.meas tran vdout1_2ck81 FIND v(dout1_2) AT=410.025n

* CHECK dout1_3 Vdout1_3ck81 = 0 time = 410
.meas tran vdout1_3ck81 FIND v(dout1_3) AT=410.025n

* CHECK dout1_0 Vdout1_0ck82 = 0 time = 415
.meas tran vdout1_0ck82 FIND v(dout1_0) AT=415.025n

* CHECK dout1_1 Vdout1_1ck82 = 0 time = 415
.meas tran vdout1_1ck82 FIND v(dout1_1) AT=415.025n

* CHECK dout1_2 Vdout1_2ck82 = 0.9 time = 415
.meas tran vdout1_2ck82 FIND v(dout1_2) AT=415.025n

* CHECK dout1_3 Vdout1_3ck82 = 0.9 time = 415
.meas tran vdout1_3ck82 FIND v(dout1_3) AT=415.025n

* CHECK dout1_0 Vdout1_0ck86 = 0 time = 435
.meas tran vdout1_0ck86 FIND v(dout1_0) AT=435.025n

* CHECK dout1_1 Vdout1_1ck86 = 0 time = 435
.meas tran vdout1_1ck86 FIND v(dout1_1) AT=435.025n

* CHECK dout1_2 Vdout1_2ck86 = 0 time = 435
.meas tran vdout1_2ck86 FIND v(dout1_2) AT=435.025n

* CHECK dout1_3 Vdout1_3ck86 = 0 time = 435
.meas tran vdout1_3ck86 FIND v(dout1_3) AT=435.025n

* CHECK dout1_0 Vdout1_0ck87 = 0 time = 440
.meas tran vdout1_0ck87 FIND v(dout1_0) AT=440.025n

* CHECK dout1_1 Vdout1_1ck87 = 0 time = 440
.meas tran vdout1_1ck87 FIND v(dout1_1) AT=440.025n

* CHECK dout1_2 Vdout1_2ck87 = 0 time = 440
.meas tran vdout1_2ck87 FIND v(dout1_2) AT=440.025n

* CHECK dout1_3 Vdout1_3ck87 = 0.9 time = 440
.meas tran vdout1_3ck87 FIND v(dout1_3) AT=440.025n

* CHECK dout1_0 Vdout1_0ck88 = 0 time = 445
.meas tran vdout1_0ck88 FIND v(dout1_0) AT=445.025n

* CHECK dout1_1 Vdout1_1ck88 = 0.9 time = 445
.meas tran vdout1_1ck88 FIND v(dout1_1) AT=445.025n

* CHECK dout1_2 Vdout1_2ck88 = 0.9 time = 445
.meas tran vdout1_2ck88 FIND v(dout1_2) AT=445.025n

* CHECK dout1_3 Vdout1_3ck88 = 0 time = 445
.meas tran vdout1_3ck88 FIND v(dout1_3) AT=445.025n

* CHECK dout1_0 Vdout1_0ck89 = 0 time = 450
.meas tran vdout1_0ck89 FIND v(dout1_0) AT=450.025n

* CHECK dout1_1 Vdout1_1ck89 = 0 time = 450
.meas tran vdout1_1ck89 FIND v(dout1_1) AT=450.025n

* CHECK dout1_2 Vdout1_2ck89 = 0 time = 450
.meas tran vdout1_2ck89 FIND v(dout1_2) AT=450.025n

* CHECK dout1_3 Vdout1_3ck89 = 0 time = 450
.meas tran vdout1_3ck89 FIND v(dout1_3) AT=450.025n

* CHECK dout1_0 Vdout1_0ck93 = 0 time = 470
.meas tran vdout1_0ck93 FIND v(dout1_0) AT=470.025n

* CHECK dout1_1 Vdout1_1ck93 = 0 time = 470
.meas tran vdout1_1ck93 FIND v(dout1_1) AT=470.025n

* CHECK dout1_2 Vdout1_2ck93 = 0.9 time = 470
.meas tran vdout1_2ck93 FIND v(dout1_2) AT=470.025n

* CHECK dout1_3 Vdout1_3ck93 = 0.9 time = 470
.meas tran vdout1_3ck93 FIND v(dout1_3) AT=470.025n

* CHECK dout1_0 Vdout1_0ck94 = 0.9 time = 475
.meas tran vdout1_0ck94 FIND v(dout1_0) AT=475.025n

* CHECK dout1_1 Vdout1_1ck94 = 0 time = 475
.meas tran vdout1_1ck94 FIND v(dout1_1) AT=475.025n

* CHECK dout1_2 Vdout1_2ck94 = 0 time = 475
.meas tran vdout1_2ck94 FIND v(dout1_2) AT=475.025n

* CHECK dout1_3 Vdout1_3ck94 = 0 time = 475
.meas tran vdout1_3ck94 FIND v(dout1_3) AT=475.025n

* CHECK dout1_0 Vdout1_0ck96 = 0.9 time = 485
.meas tran vdout1_0ck96 FIND v(dout1_0) AT=485.025n

* CHECK dout1_1 Vdout1_1ck96 = 0 time = 485
.meas tran vdout1_1ck96 FIND v(dout1_1) AT=485.025n

* CHECK dout1_2 Vdout1_2ck96 = 0.9 time = 485
.meas tran vdout1_2ck96 FIND v(dout1_2) AT=485.025n

* CHECK dout1_3 Vdout1_3ck96 = 0 time = 485
.meas tran vdout1_3ck96 FIND v(dout1_3) AT=485.025n

* CHECK dout1_0 Vdout1_0ck98 = 0.9 time = 495
.meas tran vdout1_0ck98 FIND v(dout1_0) AT=495.025n

* CHECK dout1_1 Vdout1_1ck98 = 0.9 time = 495
.meas tran vdout1_1ck98 FIND v(dout1_1) AT=495.025n

* CHECK dout1_2 Vdout1_2ck98 = 0.9 time = 495
.meas tran vdout1_2ck98 FIND v(dout1_2) AT=495.025n

* CHECK dout1_3 Vdout1_3ck98 = 0 time = 495
.meas tran vdout1_3ck98 FIND v(dout1_3) AT=495.025n

* CHECK dout1_0 Vdout1_0ck99 = 0 time = 500
.meas tran vdout1_0ck99 FIND v(dout1_0) AT=500.025n

* CHECK dout1_1 Vdout1_1ck99 = 0 time = 500
.meas tran vdout1_1ck99 FIND v(dout1_1) AT=500.025n

* CHECK dout1_2 Vdout1_2ck99 = 0.9 time = 500
.meas tran vdout1_2ck99 FIND v(dout1_2) AT=500.025n

* CHECK dout1_3 Vdout1_3ck99 = 0 time = 500
.meas tran vdout1_3ck99 FIND v(dout1_3) AT=500.025n

* CHECK dout1_0 Vdout1_0ck100 = 0 time = 505
.meas tran vdout1_0ck100 FIND v(dout1_0) AT=505.025n

* CHECK dout1_1 Vdout1_1ck100 = 0.9 time = 505
.meas tran vdout1_1ck100 FIND v(dout1_1) AT=505.025n

* CHECK dout1_2 Vdout1_2ck100 = 0 time = 505
.meas tran vdout1_2ck100 FIND v(dout1_2) AT=505.025n

* CHECK dout1_3 Vdout1_3ck100 = 0 time = 505
.meas tran vdout1_3ck100 FIND v(dout1_3) AT=505.025n

* CHECK dout1_0 Vdout1_0ck102 = 0.9 time = 515
.meas tran vdout1_0ck102 FIND v(dout1_0) AT=515.025n

* CHECK dout1_1 Vdout1_1ck102 = 0 time = 515
.meas tran vdout1_1ck102 FIND v(dout1_1) AT=515.025n

* CHECK dout1_2 Vdout1_2ck102 = 0.9 time = 515
.meas tran vdout1_2ck102 FIND v(dout1_2) AT=515.025n

* CHECK dout1_3 Vdout1_3ck102 = 0 time = 515
.meas tran vdout1_3ck102 FIND v(dout1_3) AT=515.025n

* CHECK dout1_0 Vdout1_0ck103 = 0 time = 520
.meas tran vdout1_0ck103 FIND v(dout1_0) AT=520.025n

* CHECK dout1_1 Vdout1_1ck103 = 0.9 time = 520
.meas tran vdout1_1ck103 FIND v(dout1_1) AT=520.025n

* CHECK dout1_2 Vdout1_2ck103 = 0.9 time = 520
.meas tran vdout1_2ck103 FIND v(dout1_2) AT=520.025n

* CHECK dout1_3 Vdout1_3ck103 = 0 time = 520
.meas tran vdout1_3ck103 FIND v(dout1_3) AT=520.025n

* CHECK dout1_0 Vdout1_0ck105 = 0 time = 530
.meas tran vdout1_0ck105 FIND v(dout1_0) AT=530.025n

* CHECK dout1_1 Vdout1_1ck105 = 0 time = 530
.meas tran vdout1_1ck105 FIND v(dout1_1) AT=530.025n

* CHECK dout1_2 Vdout1_2ck105 = 0.9 time = 530
.meas tran vdout1_2ck105 FIND v(dout1_2) AT=530.025n

* CHECK dout1_3 Vdout1_3ck105 = 0 time = 530
.meas tran vdout1_3ck105 FIND v(dout1_3) AT=530.025n

* CHECK dout1_0 Vdout1_0ck106 = 0.9 time = 535
.meas tran vdout1_0ck106 FIND v(dout1_0) AT=535.025n

* CHECK dout1_1 Vdout1_1ck106 = 0 time = 535
.meas tran vdout1_1ck106 FIND v(dout1_1) AT=535.025n

* CHECK dout1_2 Vdout1_2ck106 = 0.9 time = 535
.meas tran vdout1_2ck106 FIND v(dout1_2) AT=535.025n

* CHECK dout1_3 Vdout1_3ck106 = 0.9 time = 535
.meas tran vdout1_3ck106 FIND v(dout1_3) AT=535.025n

* CHECK dout1_0 Vdout1_0ck108 = 0 time = 545
.meas tran vdout1_0ck108 FIND v(dout1_0) AT=545.025n

* CHECK dout1_1 Vdout1_1ck108 = 0.9 time = 545
.meas tran vdout1_1ck108 FIND v(dout1_1) AT=545.025n

* CHECK dout1_2 Vdout1_2ck108 = 0 time = 545
.meas tran vdout1_2ck108 FIND v(dout1_2) AT=545.025n

* CHECK dout1_3 Vdout1_3ck108 = 0 time = 545
.meas tran vdout1_3ck108 FIND v(dout1_3) AT=545.025n

* CHECK dout1_0 Vdout1_0ck112 = 0.9 time = 565
.meas tran vdout1_0ck112 FIND v(dout1_0) AT=565.025n

* CHECK dout1_1 Vdout1_1ck112 = 0 time = 565
.meas tran vdout1_1ck112 FIND v(dout1_1) AT=565.025n

* CHECK dout1_2 Vdout1_2ck112 = 0 time = 565
.meas tran vdout1_2ck112 FIND v(dout1_2) AT=565.025n

* CHECK dout1_3 Vdout1_3ck112 = 0 time = 565
.meas tran vdout1_3ck112 FIND v(dout1_3) AT=565.025n

* CHECK dout1_0 Vdout1_0ck113 = 0 time = 570
.meas tran vdout1_0ck113 FIND v(dout1_0) AT=570.025n

* CHECK dout1_1 Vdout1_1ck113 = 0.9 time = 570
.meas tran vdout1_1ck113 FIND v(dout1_1) AT=570.025n

* CHECK dout1_2 Vdout1_2ck113 = 0 time = 570
.meas tran vdout1_2ck113 FIND v(dout1_2) AT=570.025n

* CHECK dout1_3 Vdout1_3ck113 = 0 time = 570
.meas tran vdout1_3ck113 FIND v(dout1_3) AT=570.025n

* CHECK dout1_0 Vdout1_0ck115 = 0.9 time = 580
.meas tran vdout1_0ck115 FIND v(dout1_0) AT=580.025n

* CHECK dout1_1 Vdout1_1ck115 = 0 time = 580
.meas tran vdout1_1ck115 FIND v(dout1_1) AT=580.025n

* CHECK dout1_2 Vdout1_2ck115 = 0.9 time = 580
.meas tran vdout1_2ck115 FIND v(dout1_2) AT=580.025n

* CHECK dout1_3 Vdout1_3ck115 = 0 time = 580
.meas tran vdout1_3ck115 FIND v(dout1_3) AT=580.025n

* CHECK dout1_0 Vdout1_0ck117 = 0 time = 590
.meas tran vdout1_0ck117 FIND v(dout1_0) AT=590.025n

* CHECK dout1_1 Vdout1_1ck117 = 0 time = 590
.meas tran vdout1_1ck117 FIND v(dout1_1) AT=590.025n

* CHECK dout1_2 Vdout1_2ck117 = 0.9 time = 590
.meas tran vdout1_2ck117 FIND v(dout1_2) AT=590.025n

* CHECK dout1_3 Vdout1_3ck117 = 0.9 time = 590
.meas tran vdout1_3ck117 FIND v(dout1_3) AT=590.025n

* CHECK dout1_0 Vdout1_0ck120 = 0 time = 605
.meas tran vdout1_0ck120 FIND v(dout1_0) AT=605.025n

* CHECK dout1_1 Vdout1_1ck120 = 0.9 time = 605
.meas tran vdout1_1ck120 FIND v(dout1_1) AT=605.025n

* CHECK dout1_2 Vdout1_2ck120 = 0 time = 605
.meas tran vdout1_2ck120 FIND v(dout1_2) AT=605.025n

* CHECK dout1_3 Vdout1_3ck120 = 0 time = 605
.meas tran vdout1_3ck120 FIND v(dout1_3) AT=605.025n

* CHECK dout1_0 Vdout1_0ck121 = 0.9 time = 610
.meas tran vdout1_0ck121 FIND v(dout1_0) AT=610.025n

* CHECK dout1_1 Vdout1_1ck121 = 0 time = 610
.meas tran vdout1_1ck121 FIND v(dout1_1) AT=610.025n

* CHECK dout1_2 Vdout1_2ck121 = 0.9 time = 610
.meas tran vdout1_2ck121 FIND v(dout1_2) AT=610.025n

* CHECK dout1_3 Vdout1_3ck121 = 0 time = 610
.meas tran vdout1_3ck121 FIND v(dout1_3) AT=610.025n

* CHECK dout1_0 Vdout1_0ck123 = 0 time = 620
.meas tran vdout1_0ck123 FIND v(dout1_0) AT=620.025n

* CHECK dout1_1 Vdout1_1ck123 = 0.9 time = 620
.meas tran vdout1_1ck123 FIND v(dout1_1) AT=620.025n

* CHECK dout1_2 Vdout1_2ck123 = 0.9 time = 620
.meas tran vdout1_2ck123 FIND v(dout1_2) AT=620.025n

* CHECK dout1_3 Vdout1_3ck123 = 0 time = 620
.meas tran vdout1_3ck123 FIND v(dout1_3) AT=620.025n

* CHECK dout1_0 Vdout1_0ck125 = 0 time = 630
.meas tran vdout1_0ck125 FIND v(dout1_0) AT=630.025n

* CHECK dout1_1 Vdout1_1ck125 = 0 time = 630
.meas tran vdout1_1ck125 FIND v(dout1_1) AT=630.025n

* CHECK dout1_2 Vdout1_2ck125 = 0.9 time = 630
.meas tran vdout1_2ck125 FIND v(dout1_2) AT=630.025n

* CHECK dout1_3 Vdout1_3ck125 = 0 time = 630
.meas tran vdout1_3ck125 FIND v(dout1_3) AT=630.025n

* CHECK dout1_0 Vdout1_0ck126 = 0 time = 635
.meas tran vdout1_0ck126 FIND v(dout1_0) AT=635.025n

* CHECK dout1_1 Vdout1_1ck126 = 0.9 time = 635
.meas tran vdout1_1ck126 FIND v(dout1_1) AT=635.025n

* CHECK dout1_2 Vdout1_2ck126 = 0 time = 635
.meas tran vdout1_2ck126 FIND v(dout1_2) AT=635.025n

* CHECK dout1_3 Vdout1_3ck126 = 0.9 time = 635
.meas tran vdout1_3ck126 FIND v(dout1_3) AT=635.025n

* CHECK dout1_0 Vdout1_0ck127 = 0.9 time = 640
.meas tran vdout1_0ck127 FIND v(dout1_0) AT=640.025n

* CHECK dout1_1 Vdout1_1ck127 = 0 time = 640
.meas tran vdout1_1ck127 FIND v(dout1_1) AT=640.025n

* CHECK dout1_2 Vdout1_2ck127 = 0.9 time = 640
.meas tran vdout1_2ck127 FIND v(dout1_2) AT=640.025n

* CHECK dout1_3 Vdout1_3ck127 = 0.9 time = 640
.meas tran vdout1_3ck127 FIND v(dout1_3) AT=640.025n

* CHECK dout1_0 Vdout1_0ck129 = 0 time = 650
.meas tran vdout1_0ck129 FIND v(dout1_0) AT=650.025n

* CHECK dout1_1 Vdout1_1ck129 = 0.9 time = 650
.meas tran vdout1_1ck129 FIND v(dout1_1) AT=650.025n

* CHECK dout1_2 Vdout1_2ck129 = 0 time = 650
.meas tran vdout1_2ck129 FIND v(dout1_2) AT=650.025n

* CHECK dout1_3 Vdout1_3ck129 = 0.9 time = 650
.meas tran vdout1_3ck129 FIND v(dout1_3) AT=650.025n

* CHECK dout1_0 Vdout1_0ck130 = 0.9 time = 655
.meas tran vdout1_0ck130 FIND v(dout1_0) AT=655.025n

* CHECK dout1_1 Vdout1_1ck130 = 0.9 time = 655
.meas tran vdout1_1ck130 FIND v(dout1_1) AT=655.025n

* CHECK dout1_2 Vdout1_2ck130 = 0.9 time = 655
.meas tran vdout1_2ck130 FIND v(dout1_2) AT=655.025n

* CHECK dout1_3 Vdout1_3ck130 = 0 time = 655
.meas tran vdout1_3ck130 FIND v(dout1_3) AT=655.025n

* CHECK dout1_0 Vdout1_0ck131 = 0.9 time = 660
.meas tran vdout1_0ck131 FIND v(dout1_0) AT=660.025n

* CHECK dout1_1 Vdout1_1ck131 = 0 time = 660
.meas tran vdout1_1ck131 FIND v(dout1_1) AT=660.025n

* CHECK dout1_2 Vdout1_2ck131 = 0.9 time = 660
.meas tran vdout1_2ck131 FIND v(dout1_2) AT=660.025n

* CHECK dout1_3 Vdout1_3ck131 = 0.9 time = 660
.meas tran vdout1_3ck131 FIND v(dout1_3) AT=660.025n

* CHECK dout1_0 Vdout1_0ck135 = 0 time = 680
.meas tran vdout1_0ck135 FIND v(dout1_0) AT=680.025n

* CHECK dout1_1 Vdout1_1ck135 = 0.9 time = 680
.meas tran vdout1_1ck135 FIND v(dout1_1) AT=680.025n

* CHECK dout1_2 Vdout1_2ck135 = 0 time = 680
.meas tran vdout1_2ck135 FIND v(dout1_2) AT=680.025n

* CHECK dout1_3 Vdout1_3ck135 = 0.9 time = 680
.meas tran vdout1_3ck135 FIND v(dout1_3) AT=680.025n

* CHECK dout1_0 Vdout1_0ck139 = 0 time = 700
.meas tran vdout1_0ck139 FIND v(dout1_0) AT=700.025n

* CHECK dout1_1 Vdout1_1ck139 = 0.9 time = 700
.meas tran vdout1_1ck139 FIND v(dout1_1) AT=700.025n

* CHECK dout1_2 Vdout1_2ck139 = 0.9 time = 700
.meas tran vdout1_2ck139 FIND v(dout1_2) AT=700.025n

* CHECK dout1_3 Vdout1_3ck139 = 0 time = 700
.meas tran vdout1_3ck139 FIND v(dout1_3) AT=700.025n

* CHECK dout1_0 Vdout1_0ck145 = 0 time = 730
.meas tran vdout1_0ck145 FIND v(dout1_0) AT=730.025n

* CHECK dout1_1 Vdout1_1ck145 = 0.9 time = 730
.meas tran vdout1_1ck145 FIND v(dout1_1) AT=730.025n

* CHECK dout1_2 Vdout1_2ck145 = 0.9 time = 730
.meas tran vdout1_2ck145 FIND v(dout1_2) AT=730.025n

* CHECK dout1_3 Vdout1_3ck145 = 0 time = 730
.meas tran vdout1_3ck145 FIND v(dout1_3) AT=730.025n

* CHECK dout1_0 Vdout1_0ck148 = 0 time = 745
.meas tran vdout1_0ck148 FIND v(dout1_0) AT=745.025n

* CHECK dout1_1 Vdout1_1ck148 = 0 time = 745
.meas tran vdout1_1ck148 FIND v(dout1_1) AT=745.025n

* CHECK dout1_2 Vdout1_2ck148 = 0 time = 745
.meas tran vdout1_2ck148 FIND v(dout1_2) AT=745.025n

* CHECK dout1_3 Vdout1_3ck148 = 0 time = 745
.meas tran vdout1_3ck148 FIND v(dout1_3) AT=745.025n

* CHECK dout1_0 Vdout1_0ck149 = 0 time = 750
.meas tran vdout1_0ck149 FIND v(dout1_0) AT=750.025n

* CHECK dout1_1 Vdout1_1ck149 = 0 time = 750
.meas tran vdout1_1ck149 FIND v(dout1_1) AT=750.025n

* CHECK dout1_2 Vdout1_2ck149 = 0.9 time = 750
.meas tran vdout1_2ck149 FIND v(dout1_2) AT=750.025n

* CHECK dout1_3 Vdout1_3ck149 = 0.9 time = 750
.meas tran vdout1_3ck149 FIND v(dout1_3) AT=750.025n

* CHECK dout1_0 Vdout1_0ck150 = 0.9 time = 755
.meas tran vdout1_0ck150 FIND v(dout1_0) AT=755.025n

* CHECK dout1_1 Vdout1_1ck150 = 0 time = 755
.meas tran vdout1_1ck150 FIND v(dout1_1) AT=755.025n

* CHECK dout1_2 Vdout1_2ck150 = 0 time = 755
.meas tran vdout1_2ck150 FIND v(dout1_2) AT=755.025n

* CHECK dout1_3 Vdout1_3ck150 = 0.9 time = 755
.meas tran vdout1_3ck150 FIND v(dout1_3) AT=755.025n

* CHECK dout1_0 Vdout1_0ck153 = 0.9 time = 770
.meas tran vdout1_0ck153 FIND v(dout1_0) AT=770.025n

* CHECK dout1_1 Vdout1_1ck153 = 0 time = 770
.meas tran vdout1_1ck153 FIND v(dout1_1) AT=770.025n

* CHECK dout1_2 Vdout1_2ck153 = 0 time = 770
.meas tran vdout1_2ck153 FIND v(dout1_2) AT=770.025n

* CHECK dout1_3 Vdout1_3ck153 = 0 time = 770
.meas tran vdout1_3ck153 FIND v(dout1_3) AT=770.025n

* CHECK dout1_0 Vdout1_0ck156 = 0 time = 785
.meas tran vdout1_0ck156 FIND v(dout1_0) AT=785.025n

* CHECK dout1_1 Vdout1_1ck156 = 0 time = 785
.meas tran vdout1_1ck156 FIND v(dout1_1) AT=785.025n

* CHECK dout1_2 Vdout1_2ck156 = 0.9 time = 785
.meas tran vdout1_2ck156 FIND v(dout1_2) AT=785.025n

* CHECK dout1_3 Vdout1_3ck156 = 0.9 time = 785
.meas tran vdout1_3ck156 FIND v(dout1_3) AT=785.025n

* CHECK dout1_0 Vdout1_0ck158 = 0.9 time = 795
.meas tran vdout1_0ck158 FIND v(dout1_0) AT=795.025n

* CHECK dout1_1 Vdout1_1ck158 = 0 time = 795
.meas tran vdout1_1ck158 FIND v(dout1_1) AT=795.025n

* CHECK dout1_2 Vdout1_2ck158 = 0 time = 795
.meas tran vdout1_2ck158 FIND v(dout1_2) AT=795.025n

* CHECK dout1_3 Vdout1_3ck158 = 0 time = 795
.meas tran vdout1_3ck158 FIND v(dout1_3) AT=795.025n

* CHECK dout1_0 Vdout1_0ck164 = 0.9 time = 825
.meas tran vdout1_0ck164 FIND v(dout1_0) AT=825.025n

* CHECK dout1_1 Vdout1_1ck164 = 0.9 time = 825
.meas tran vdout1_1ck164 FIND v(dout1_1) AT=825.025n

* CHECK dout1_2 Vdout1_2ck164 = 0.9 time = 825
.meas tran vdout1_2ck164 FIND v(dout1_2) AT=825.025n

* CHECK dout1_3 Vdout1_3ck164 = 0 time = 825
.meas tran vdout1_3ck164 FIND v(dout1_3) AT=825.025n

* CHECK dout1_0 Vdout1_0ck165 = 0 time = 830
.meas tran vdout1_0ck165 FIND v(dout1_0) AT=830.025n

* CHECK dout1_1 Vdout1_1ck165 = 0 time = 830
.meas tran vdout1_1ck165 FIND v(dout1_1) AT=830.025n

* CHECK dout1_2 Vdout1_2ck165 = 0.9 time = 830
.meas tran vdout1_2ck165 FIND v(dout1_2) AT=830.025n

* CHECK dout1_3 Vdout1_3ck165 = 0 time = 830
.meas tran vdout1_3ck165 FIND v(dout1_3) AT=830.025n

* CHECK dout1_0 Vdout1_0ck167 = 0 time = 840
.meas tran vdout1_0ck167 FIND v(dout1_0) AT=840.025n

* CHECK dout1_1 Vdout1_1ck167 = 0 time = 840
.meas tran vdout1_1ck167 FIND v(dout1_1) AT=840.025n

* CHECK dout1_2 Vdout1_2ck167 = 0 time = 840
.meas tran vdout1_2ck167 FIND v(dout1_2) AT=840.025n

* CHECK dout1_3 Vdout1_3ck167 = 0.9 time = 840
.meas tran vdout1_3ck167 FIND v(dout1_3) AT=840.025n

* CHECK dout1_0 Vdout1_0ck170 = 0 time = 855
.meas tran vdout1_0ck170 FIND v(dout1_0) AT=855.025n

* CHECK dout1_1 Vdout1_1ck170 = 0.9 time = 855
.meas tran vdout1_1ck170 FIND v(dout1_1) AT=855.025n

* CHECK dout1_2 Vdout1_2ck170 = 0.9 time = 855
.meas tran vdout1_2ck170 FIND v(dout1_2) AT=855.025n

* CHECK dout1_3 Vdout1_3ck170 = 0 time = 855
.meas tran vdout1_3ck170 FIND v(dout1_3) AT=855.025n

* CHECK dout1_0 Vdout1_0ck177 = 0 time = 890
.meas tran vdout1_0ck177 FIND v(dout1_0) AT=890.025n

* CHECK dout1_1 Vdout1_1ck177 = 0.9 time = 890
.meas tran vdout1_1ck177 FIND v(dout1_1) AT=890.025n

* CHECK dout1_2 Vdout1_2ck177 = 0.9 time = 890
.meas tran vdout1_2ck177 FIND v(dout1_2) AT=890.025n

* CHECK dout1_3 Vdout1_3ck177 = 0 time = 890
.meas tran vdout1_3ck177 FIND v(dout1_3) AT=890.025n

* CHECK dout1_0 Vdout1_0ck178 = 0.9 time = 895
.meas tran vdout1_0ck178 FIND v(dout1_0) AT=895.025n

* CHECK dout1_1 Vdout1_1ck178 = 0.9 time = 895
.meas tran vdout1_1ck178 FIND v(dout1_1) AT=895.025n

* CHECK dout1_2 Vdout1_2ck178 = 0.9 time = 895
.meas tran vdout1_2ck178 FIND v(dout1_2) AT=895.025n

* CHECK dout1_3 Vdout1_3ck178 = 0 time = 895
.meas tran vdout1_3ck178 FIND v(dout1_3) AT=895.025n

* CHECK dout1_0 Vdout1_0ck179 = 0.9 time = 900
.meas tran vdout1_0ck179 FIND v(dout1_0) AT=900.025n

* CHECK dout1_1 Vdout1_1ck179 = 0 time = 900
.meas tran vdout1_1ck179 FIND v(dout1_1) AT=900.025n

* CHECK dout1_2 Vdout1_2ck179 = 0 time = 900
.meas tran vdout1_2ck179 FIND v(dout1_2) AT=900.025n

* CHECK dout1_3 Vdout1_3ck179 = 0.9 time = 900
.meas tran vdout1_3ck179 FIND v(dout1_3) AT=900.025n

* CHECK dout1_0 Vdout1_0ck182 = 0.9 time = 915
.meas tran vdout1_0ck182 FIND v(dout1_0) AT=915.025n

* CHECK dout1_1 Vdout1_1ck182 = 0 time = 915
.meas tran vdout1_1ck182 FIND v(dout1_1) AT=915.025n

* CHECK dout1_2 Vdout1_2ck182 = 0 time = 915
.meas tran vdout1_2ck182 FIND v(dout1_2) AT=915.025n

* CHECK dout1_3 Vdout1_3ck182 = 0 time = 915
.meas tran vdout1_3ck182 FIND v(dout1_3) AT=915.025n

* CHECK dout1_0 Vdout1_0ck184 = 0 time = 925
.meas tran vdout1_0ck184 FIND v(dout1_0) AT=925.025n

* CHECK dout1_1 Vdout1_1ck184 = 0.9 time = 925
.meas tran vdout1_1ck184 FIND v(dout1_1) AT=925.025n

* CHECK dout1_2 Vdout1_2ck184 = 0 time = 925
.meas tran vdout1_2ck184 FIND v(dout1_2) AT=925.025n

* CHECK dout1_3 Vdout1_3ck184 = 0.9 time = 925
.meas tran vdout1_3ck184 FIND v(dout1_3) AT=925.025n

* CHECK dout1_0 Vdout1_0ck185 = 0 time = 930
.meas tran vdout1_0ck185 FIND v(dout1_0) AT=930.025n

* CHECK dout1_1 Vdout1_1ck185 = 0 time = 930
.meas tran vdout1_1ck185 FIND v(dout1_1) AT=930.025n

* CHECK dout1_2 Vdout1_2ck185 = 0.9 time = 930
.meas tran vdout1_2ck185 FIND v(dout1_2) AT=930.025n

* CHECK dout1_3 Vdout1_3ck185 = 0.9 time = 930
.meas tran vdout1_3ck185 FIND v(dout1_3) AT=930.025n

* CHECK dout1_0 Vdout1_0ck187 = 0 time = 940
.meas tran vdout1_0ck187 FIND v(dout1_0) AT=940.025n

* CHECK dout1_1 Vdout1_1ck187 = 0.9 time = 940
.meas tran vdout1_1ck187 FIND v(dout1_1) AT=940.025n

* CHECK dout1_2 Vdout1_2ck187 = 0 time = 940
.meas tran vdout1_2ck187 FIND v(dout1_2) AT=940.025n

* CHECK dout1_3 Vdout1_3ck187 = 0 time = 940
.meas tran vdout1_3ck187 FIND v(dout1_3) AT=940.025n

* CHECK dout1_0 Vdout1_0ck188 = 0.9 time = 945
.meas tran vdout1_0ck188 FIND v(dout1_0) AT=945.025n

* CHECK dout1_1 Vdout1_1ck188 = 0.9 time = 945
.meas tran vdout1_1ck188 FIND v(dout1_1) AT=945.025n

* CHECK dout1_2 Vdout1_2ck188 = 0.9 time = 945
.meas tran vdout1_2ck188 FIND v(dout1_2) AT=945.025n

* CHECK dout1_3 Vdout1_3ck188 = 0 time = 945
.meas tran vdout1_3ck188 FIND v(dout1_3) AT=945.025n

* CHECK dout1_0 Vdout1_0ck189 = 0 time = 950
.meas tran vdout1_0ck189 FIND v(dout1_0) AT=950.025n

* CHECK dout1_1 Vdout1_1ck189 = 0 time = 950
.meas tran vdout1_1ck189 FIND v(dout1_1) AT=950.025n

* CHECK dout1_2 Vdout1_2ck189 = 0.9 time = 950
.meas tran vdout1_2ck189 FIND v(dout1_2) AT=950.025n

* CHECK dout1_3 Vdout1_3ck189 = 0 time = 950
.meas tran vdout1_3ck189 FIND v(dout1_3) AT=950.025n

* CHECK dout1_0 Vdout1_0ck192 = 0.9 time = 965
.meas tran vdout1_0ck192 FIND v(dout1_0) AT=965.025n

* CHECK dout1_1 Vdout1_1ck192 = 0 time = 965
.meas tran vdout1_1ck192 FIND v(dout1_1) AT=965.025n

* CHECK dout1_2 Vdout1_2ck192 = 0 time = 965
.meas tran vdout1_2ck192 FIND v(dout1_2) AT=965.025n

* CHECK dout1_3 Vdout1_3ck192 = 0.9 time = 965
.meas tran vdout1_3ck192 FIND v(dout1_3) AT=965.025n

* CHECK dout1_0 Vdout1_0ck193 = 0 time = 970
.meas tran vdout1_0ck193 FIND v(dout1_0) AT=970.025n

* CHECK dout1_1 Vdout1_1ck193 = 0.9 time = 970
.meas tran vdout1_1ck193 FIND v(dout1_1) AT=970.025n

* CHECK dout1_2 Vdout1_2ck193 = 0 time = 970
.meas tran vdout1_2ck193 FIND v(dout1_2) AT=970.025n

* CHECK dout1_3 Vdout1_3ck193 = 0 time = 970
.meas tran vdout1_3ck193 FIND v(dout1_3) AT=970.025n

* CHECK dout1_0 Vdout1_0ck195 = 0.9 time = 980
.meas tran vdout1_0ck195 FIND v(dout1_0) AT=980.025n

* CHECK dout1_1 Vdout1_1ck195 = 0 time = 980
.meas tran vdout1_1ck195 FIND v(dout1_1) AT=980.025n

* CHECK dout1_2 Vdout1_2ck195 = 0.9 time = 980
.meas tran vdout1_2ck195 FIND v(dout1_2) AT=980.025n

* CHECK dout1_3 Vdout1_3ck195 = 0 time = 980
.meas tran vdout1_3ck195 FIND v(dout1_3) AT=980.025n

* CHECK dout1_0 Vdout1_0ck198 = 0 time = 995
.meas tran vdout1_0ck198 FIND v(dout1_0) AT=995.025n

* CHECK dout1_1 Vdout1_1ck198 = 0.9 time = 995
.meas tran vdout1_1ck198 FIND v(dout1_1) AT=995.025n

* CHECK dout1_2 Vdout1_2ck198 = 0 time = 995
.meas tran vdout1_2ck198 FIND v(dout1_2) AT=995.025n

* CHECK dout1_3 Vdout1_3ck198 = 0.9 time = 995
.meas tran vdout1_3ck198 FIND v(dout1_3) AT=995.025n

* CHECK dout1_0 Vdout1_0ck200 = 0 time = 1005
.meas tran vdout1_0ck200 FIND v(dout1_0) AT=1005.025n

* CHECK dout1_1 Vdout1_1ck200 = 0.9 time = 1005
.meas tran vdout1_1ck200 FIND v(dout1_1) AT=1005.025n

* CHECK dout1_2 Vdout1_2ck200 = 0.9 time = 1005
.meas tran vdout1_2ck200 FIND v(dout1_2) AT=1005.025n

* CHECK dout1_3 Vdout1_3ck200 = 0 time = 1005
.meas tran vdout1_3ck200 FIND v(dout1_3) AT=1005.025n

* CHECK dout1_0 Vdout1_0ck202 = 0 time = 1015
.meas tran vdout1_0ck202 FIND v(dout1_0) AT=1015.025n

* CHECK dout1_1 Vdout1_1ck202 = 0.9 time = 1015
.meas tran vdout1_1ck202 FIND v(dout1_1) AT=1015.025n

* CHECK dout1_2 Vdout1_2ck202 = 0 time = 1015
.meas tran vdout1_2ck202 FIND v(dout1_2) AT=1015.025n

* CHECK dout1_3 Vdout1_3ck202 = 0 time = 1015
.meas tran vdout1_3ck202 FIND v(dout1_3) AT=1015.025n

* probe is used for hspice/xa, while plot is used in ngspice
.plot V(*)
.end

