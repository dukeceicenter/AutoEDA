* Functional test stimulus file for 5ns period

* TT process corner
.include "/home/jp502/Projects/system-PPA/OpenRAM/technology/freepdk45/models/tran_models/models_nom/PMOS_VTG.inc"
.include "/home/jp502/Projects/system-PPA/OpenRAM/technology/freepdk45/models/tran_models/models_nom/NMOS_VTG.inc"
.include "freepdk45_sram_1w1r_128x4_1.sp"

* Global Power Supplies
Vvdd vdd 0 0.9

*Nodes gnd and 0 are the same global ground node in ngspice/hspice/xa. Otherwise, this source may be needed.
*Vgnd gnd 0 0.0

* Instantiation of the SRAM
Xfreepdk45_sram_1w1r_128x4_1 din0_0 din0_1 din0_2 din0_3 a0_0 a0_1 a0_2 a0_3 a0_4 a0_5 a0_6 a1_0 a1_1 a1_2 a1_3 a1_4 a1_5 a1_6 CSB0 CSB1 clk0 clk1 WMASK0_0 WMASK0_1 WMASK0_2 WMASK0_3 dout1_0 dout1_1 dout1_2 dout1_3 vdd gnd freepdk45_sram_1w1r_128x4_1

* SRAM output loads
CD10 dout1_0  0 0.8364f
CD11 dout1_1  0 0.8364f
CD12 dout1_2  0 0.8364f
CD13 dout1_3  0 0.8364f


* Important signals for debug
* bl:	xfreepdk45_sram_1w1r_128x4_1.xbank0.bl_1_0
* br:	xfreepdk45_sram_1w1r_128x4_1.xbank0.br_1_0
* s_en:	xfreepdk45_sram_1w1r_128x4_1.s_en
* q:	xfreepdk45_sram_1w1r_128x4_1.xbank0.xbitcell_array.xreplica_bitcell_array.xbitcell_array.xbit_r0_c0.Q
* qbar:	xfreepdk45_sram_1w1r_128x4_1.xbank0.xbitcell_array.xreplica_bitcell_array.xbitcell_array.xbit_r0_c0.Q_bar


* Sequence of operations
*	Idle during cycle 0 (0ns - 5ns)
*	Writing 0111  to  address 0000101 (from port 0) during cycle 1 (5ns - 10ns)
*	Writing 1110  to  address 1111110 (from port 0) during cycle 2 (10ns - 15ns)
*	Writing 0111  to  address 0000001 (from port 0) during cycle 3 (15ns - 20ns)
*	Reading 0111 from address 0000001 (from port 1) during cycle 4 (20ns - 25ns)
*	Writing (partial) 0010  to  address 0000101 with mask bit 1001 (from port 0) during cycle 5 (25ns - 30ns)
*	Reading 1110 from address 1111110 (from port 1) during cycle 5 (25ns - 30ns)
*	Writing (partial) 0001  to  address 1111110 with mask bit 1100 (from port 0) during cycle 6 (30ns - 35ns)
*	Reading 0111 from address 0000001 (from port 1) during cycle 6 (30ns - 35ns)
*	Writing 0100  to  address 1111101 (from port 0) during cycle 7 (35ns - 40ns)
*	Writing (partial) 1010  to  address 0000101 with mask bit 1110 (from port 0) during cycle 8 (40ns - 45ns)
*	Writing 0101  to  address 0000001 (from port 0) during cycle 9 (45ns - 50ns)
*	Reading 0101 from address 0000001 (from port 1) during cycle 10 (50ns - 55ns)
*	Writing 1100  to  address 0000100 (from port 0) during cycle 11 (55ns - 60ns)
*	Writing 0101  to  address 0000011 (from port 0) during cycle 12 (60ns - 65ns)
*	Reading 0101 from address 0000001 (from port 1) during cycle 12 (60ns - 65ns)
*	Reading 0010 from address 1111110 (from port 1) during cycle 13 (65ns - 70ns)
*	Writing 1011  to  address 1110111 (from port 0) during cycle 14 (70ns - 75ns)
*	Writing 1011  to  address 0000001 (from port 0) during cycle 15 (75ns - 80ns)
*	Reading 0101 from address 0000011 (from port 1) during cycle 15 (75ns - 80ns)
*	Writing (partial) 1100  to  address 0000101 with mask bit 0001 (from port 0) during cycle 17 (85ns - 90ns)
*	Reading 1011 from address 1110111 (from port 1) during cycle 17 (85ns - 90ns)
*	Reading 1011 from address 1110111 (from port 1) during cycle 18 (90ns - 95ns)
*	Writing 0010  to  address 0000110 (from port 0) during cycle 19 (95ns - 100ns)
*	Reading 0100 from address 1111101 (from port 1) during cycle 19 (95ns - 100ns)
*	Writing (partial) 1001  to  address 0000011 with mask bit 1110 (from port 0) during cycle 20 (100ns - 105ns)
*	Reading 1001 from address 0000011 (from port 1) during cycle 21 (105ns - 110ns)
*	Writing 1010  to  address 1111101 (from port 0) during cycle 22 (110ns - 115ns)
*	Writing 1101  to  address 1111010 (from port 0) during cycle 23 (115ns - 120ns)
*	Reading 0010 from address 1111110 (from port 1) during cycle 23 (115ns - 120ns)
*	Writing (partial) 1001  to  address 1111101 with mask bit 1011 (from port 0) during cycle 24 (120ns - 125ns)
*	Writing 0011  to  address 1111001 (from port 0) during cycle 25 (125ns - 130ns)
*	Reading 1100 from address 0000100 (from port 1) during cycle 26 (130ns - 135ns)
*	Writing (partial) 1100  to  address 0000100 with mask bit 0101 (from port 0) during cycle 28 (140ns - 145ns)
*	Reading 1001 from address 0000011 (from port 1) during cycle 28 (140ns - 145ns)
*	Reading 1100 from address 0000100 (from port 1) during cycle 29 (145ns - 150ns)
*	Writing (partial) 1010  to  address 1111001 with mask bit 0100 (from port 0) during cycle 30 (150ns - 155ns)
*	Reading 1001 from address 0000011 (from port 1) during cycle 30 (150ns - 155ns)
*	Writing 1100  to  address 0000010 (from port 0) during cycle 31 (155ns - 160ns)
*	Writing 1000  to  address 0000000 (from port 0) during cycle 32 (160ns - 165ns)
*	Reading 1011 from address 0000001 (from port 1) during cycle 32 (160ns - 165ns)
*	Reading 1001 from address 1111101 (from port 1) during cycle 33 (165ns - 170ns)
*	Writing (partial) 1110  to  address 0000100 with mask bit 0010 (from port 0) during cycle 34 (170ns - 175ns)
*	Reading 0010 from address 1111110 (from port 1) during cycle 34 (170ns - 175ns)
*	Writing 1100  to  address 1110111 (from port 0) during cycle 35 (175ns - 180ns)
*	Writing 1101  to  address 1111100 (from port 0) during cycle 36 (180ns - 185ns)
*	Reading 1011 from address 0000001 (from port 1) during cycle 36 (180ns - 185ns)
*	Writing 1001  to  address 1111101 (from port 0) during cycle 37 (185ns - 190ns)
*	Reading 1101 from address 1111010 (from port 1) during cycle 37 (185ns - 190ns)
*	Writing 1011  to  address 1111000 (from port 0) during cycle 38 (190ns - 195ns)
*	Reading 1000 from address 0000000 (from port 1) during cycle 38 (190ns - 195ns)
*	Writing (partial) 0010  to  address 1111100 with mask bit 0100 (from port 0) during cycle 39 (195ns - 200ns)
*	Reading 1001 from address 0000011 (from port 1) during cycle 39 (195ns - 200ns)
*	Reading 1100 from address 1110111 (from port 1) during cycle 40 (200ns - 205ns)
*	Reading 1011 from address 1111000 (from port 1) during cycle 41 (205ns - 210ns)
*	Writing (partial) 1110  to  address 1111101 with mask bit 1110 (from port 0) during cycle 42 (210ns - 215ns)
*	Reading 1000 from address 0000000 (from port 1) during cycle 42 (210ns - 215ns)
*	Writing (partial) 1101  to  address 0000010 with mask bit 0110 (from port 0) during cycle 43 (215ns - 220ns)
*	Reading 1101 from address 1111010 (from port 1) during cycle 43 (215ns - 220ns)
*	Writing (partial) 0110  to  address 1110111 with mask bit 0001 (from port 0) during cycle 44 (220ns - 225ns)
*	Reading 0010 from address 1111110 (from port 1) during cycle 44 (220ns - 225ns)
*	Reading 1011 from address 1111000 (from port 1) during cycle 45 (225ns - 230ns)
*	Writing (partial) 1010  to  address 1111001 with mask bit 0011 (from port 0) during cycle 46 (230ns - 235ns)
*	Reading 1001 from address 0000011 (from port 1) during cycle 46 (230ns - 235ns)
*	Writing (partial) 0001  to  address 1111100 with mask bit 1101 (from port 0) during cycle 47 (235ns - 240ns)
*	Writing (partial) 1110  to  address 1111010 with mask bit 1000 (from port 0) during cycle 48 (240ns - 245ns)
*	Reading 1111 from address 1111101 (from port 1) during cycle 48 (240ns - 245ns)
*	Writing 0100  to  address 0000001 (from port 0) during cycle 49 (245ns - 250ns)
*	Reading 1101 from address 1111010 (from port 1) during cycle 51 (255ns - 260ns)
*	Writing (partial) 1011  to  address 1111000 with mask bit 1000 (from port 0) during cycle 52 (260ns - 265ns)
*	Reading 0010 from address 0000110 (from port 1) during cycle 54 (270ns - 275ns)
*	Writing (partial) 0010  to  address 1111001 with mask bit 0110 (from port 0) during cycle 55 (275ns - 280ns)
*	Writing (partial) 0100  to  address 0000000 with mask bit 1100 (from port 0) during cycle 57 (285ns - 290ns)
*	Reading 1011 from address 1111000 (from port 1) during cycle 57 (285ns - 290ns)
*	Writing (partial) 0001  to  address 0000100 with mask bit 1110 (from port 0) during cycle 58 (290ns - 295ns)
*	Reading 1011 from address 1111000 (from port 1) during cycle 58 (290ns - 295ns)
*	Writing 0101  to  address 0000111 (from port 0) during cycle 59 (295ns - 300ns)
*	Reading 1010 from address 0000101 (from port 1) during cycle 59 (295ns - 300ns)
*	Writing 1000  to  address 0000010 (from port 0) during cycle 60 (300ns - 305ns)
*	Writing 0111  to  address 1111110 (from port 0) during cycle 61 (305ns - 310ns)
*	Reading 1101 from address 1111010 (from port 1) during cycle 61 (305ns - 310ns)
*	Writing (partial) 1001  to  address 1110111 with mask bit 0110 (from port 0) during cycle 63 (315ns - 320ns)
*	Reading 1001 from address 0000011 (from port 1) during cycle 63 (315ns - 320ns)
*	Writing 1011  to  address 1111011 (from port 0) during cycle 64 (320ns - 325ns)
*	Reading 1101 from address 1111010 (from port 1) during cycle 65 (325ns - 330ns)
*	Writing 0110  to  address 0000111 (from port 0) during cycle 66 (330ns - 335ns)
*	Writing 0110  to  address 0000100 (from port 0) during cycle 67 (335ns - 340ns)
*	Writing (partial) 1001  to  address 0000110 with mask bit 1100 (from port 0) during cycle 68 (340ns - 345ns)
*	Writing 0011  to  address 1111000 (from port 0) during cycle 69 (345ns - 350ns)
*	Writing 0110  to  address 1111101 (from port 0) during cycle 70 (350ns - 355ns)
*	Reading 1000 from address 0000010 (from port 1) during cycle 71 (355ns - 360ns)
*	Writing 1101  to  address 1111011 (from port 0) during cycle 73 (365ns - 370ns)
*	Reading 1010 from address 0000101 (from port 1) during cycle 73 (365ns - 370ns)
*	Writing 1010  to  address 1111001 (from port 0) during cycle 74 (370ns - 375ns)
*	Reading 0100 from address 0000001 (from port 1) during cycle 74 (370ns - 375ns)
*	Reading 1010 from address 0000101 (from port 1) during cycle 77 (385ns - 390ns)
*	Writing (partial) 1011  to  address 1111001 with mask bit 0100 (from port 0) during cycle 79 (395ns - 400ns)
*	Writing 1000  to  address 0000010 (from port 0) during cycle 80 (400ns - 405ns)
*	Reading 0110 from address 0000111 (from port 1) during cycle 80 (400ns - 405ns)
*	Writing (partial) 1000  to  address 1111000 with mask bit 0010 (from port 0) during cycle 82 (410ns - 415ns)
*	Writing 1011  to  address 0000001 (from port 0) during cycle 83 (415ns - 420ns)
*	Writing 0010  to  address 0000100 (from port 0) during cycle 84 (420ns - 425ns)
*	Reading 1010 from address 0000110 (from port 1) during cycle 84 (420ns - 425ns)
*	Writing (partial) 0001  to  address 1111101 with mask bit 1011 (from port 0) during cycle 88 (440ns - 445ns)
*	Writing 0011  to  address 1111000 (from port 0) during cycle 89 (445ns - 450ns)
*	Reading 1000 from address 0000010 (from port 1) during cycle 89 (445ns - 450ns)
*	Writing 0101  to  address 0000110 (from port 0) during cycle 90 (450ns - 455ns)
*	Writing (partial) 1110  to  address 1110111 with mask bit 1110 (from port 0) during cycle 91 (455ns - 460ns)
*	Writing 1110  to  address 1111011 (from port 0) during cycle 92 (460ns - 465ns)
*	Reading 1001 from address 0000011 (from port 1) during cycle 92 (460ns - 465ns)
*	Writing 0001  to  address 1111000 (from port 0) during cycle 93 (465ns - 470ns)
*	Writing 0111  to  address 0000100 (from port 0) during cycle 94 (470ns - 475ns)
*	Reading 1110 from address 1110111 (from port 1) during cycle 94 (470ns - 475ns)
*	Writing (partial) 0011  to  address 0000001 with mask bit 0101 (from port 0) during cycle 95 (475ns - 480ns)
*	Writing 0111  to  address 1111011 (from port 0) during cycle 96 (480ns - 485ns)
*	Writing (partial) 1100  to  address 0000000 with mask bit 0101 (from port 0) during cycle 99 (495ns - 500ns)
*	Reading 0110 from address 0000111 (from port 1) during cycle 99 (495ns - 500ns)
*	Reading 1011 from address 0000001 (from port 1) during cycle 101 (505ns - 510ns)
*	Writing (partial) 1100  to  address 1111110 with mask bit 1001 (from port 0) during cycle 102 (510ns - 515ns)
*	Writing 1110  to  address 1111000 (from port 0) during cycle 103 (515ns - 520ns)
*	Reading 1110 from address 1111110 (from port 1) during cycle 103 (515ns - 520ns)
*	Writing (partial) 0011  to  address 1111101 with mask bit 0010 (from port 0) during cycle 104 (520ns - 525ns)
*	Reading 1011 from address 0000001 (from port 1) during cycle 106 (530ns - 535ns)
*	Writing (partial) 0101  to  address 1111110 with mask bit 0110 (from port 0) during cycle 107 (535ns - 540ns)
*	Reading 1010 from address 0000101 (from port 1) during cycle 107 (535ns - 540ns)
*	Writing 0010  to  address 0000111 (from port 0) during cycle 109 (545ns - 550ns)
*	Writing 1011  to  address 1111110 (from port 0) during cycle 110 (550ns - 555ns)
*	Reading 0100 from address 0000000 (from port 1) during cycle 110 (550ns - 555ns)
*	Reading 0100 from address 0000000 (from port 1) during cycle 111 (555ns - 560ns)
*	Writing 1110  to  address 1110111 (from port 0) during cycle 112 (560ns - 565ns)
*	Writing 0101  to  address 1110111 (from port 0) during cycle 113 (565ns - 570ns)
*	Writing (partial) 0110  to  address 0000101 with mask bit 0011 (from port 0) during cycle 114 (570ns - 575ns)
*	Reading 0001 from address 1111100 (from port 1) during cycle 114 (570ns - 575ns)
*	Writing 0100  to  address 0000010 (from port 0) during cycle 115 (575ns - 580ns)
*	Reading 0001 from address 1111100 (from port 1) during cycle 115 (575ns - 580ns)
*	Writing (partial) 0010  to  address 0000111 with mask bit 0111 (from port 0) during cycle 116 (580ns - 585ns)
*	Reading 0111 from address 1111011 (from port 1) during cycle 117 (585ns - 590ns)
*	Writing 1101  to  address 1111010 (from port 0) during cycle 119 (595ns - 600ns)
*	Reading 1010 from address 0000101 (from port 1) during cycle 120 (600ns - 605ns)
*	Writing 1101  to  address 0000000 (from port 0) during cycle 121 (605ns - 610ns)
*	Reading 0111 from address 1111011 (from port 1) during cycle 121 (605ns - 610ns)
*	Reading 0111 from address 0000100 (from port 1) during cycle 122 (610ns - 615ns)
*	Writing 1101  to  address 1111100 (from port 0) during cycle 123 (615ns - 620ns)
*	Writing 1000  to  address 0000011 (from port 0) during cycle 124 (620ns - 625ns)
*	Writing 1110  to  address 1111110 (from port 0) during cycle 125 (625ns - 630ns)
*	Reading 1101 from address 1111010 (from port 1) during cycle 125 (625ns - 630ns)
*	Writing 1010  to  address 1111101 (from port 0) during cycle 126 (630ns - 635ns)
*	Writing (partial) 0101  to  address 0000111 with mask bit 0100 (from port 0) during cycle 127 (635ns - 640ns)
*	Reading 1101 from address 0000000 (from port 1) during cycle 128 (640ns - 645ns)
*	Writing (partial) 1001  to  address 1111101 with mask bit 0010 (from port 0) during cycle 130 (650ns - 655ns)
*	Reading 1010 from address 0000101 (from port 1) during cycle 130 (650ns - 655ns)
*	Writing 0111  to  address 1111011 (from port 0) during cycle 131 (655ns - 660ns)
*	Reading 1110 from address 1111110 (from port 1) during cycle 131 (655ns - 660ns)
*	Writing 0010  to  address 0000010 (from port 0) during cycle 132 (660ns - 665ns)
*	Writing (partial) 1000  to  address 0000010 with mask bit 1010 (from port 0) during cycle 133 (665ns - 670ns)
*	Reading 1110 from address 1111000 (from port 1) during cycle 133 (665ns - 670ns)
*	Writing 1101  to  address 0000001 (from port 0) during cycle 134 (670ns - 675ns)
*	Writing (partial) 1101  to  address 1111101 with mask bit 1110 (from port 0) during cycle 137 (685ns - 690ns)
*	Reading 1010 from address 1111001 (from port 1) during cycle 138 (690ns - 695ns)
*	Writing (partial) 1100  to  address 1111010 with mask bit 1000 (from port 0) during cycle 139 (695ns - 700ns)
*	Writing (partial) 0111  to  address 0000011 with mask bit 0110 (from port 0) during cycle 140 (700ns - 705ns)
*	Writing (partial) 1110  to  address 0000110 with mask bit 1011 (from port 0) during cycle 141 (705ns - 710ns)
*	Reading 0111 from address 1111011 (from port 1) during cycle 142 (710ns - 715ns)
*	Writing (partial) 1100  to  address 0000110 with mask bit 0100 (from port 0) during cycle 144 (720ns - 725ns)
*	Writing (partial) 0011  to  address 1111011 with mask bit 0001 (from port 0) during cycle 146 (730ns - 735ns)
*	Writing 0001  to  address 0000000 (from port 0) during cycle 147 (735ns - 740ns)
*	Reading 1000 from address 0000010 (from port 1) during cycle 148 (740ns - 745ns)
*	Reading 0110 from address 0000111 (from port 1) during cycle 150 (750ns - 755ns)
*	Writing 1000  to  address 0000011 (from port 0) during cycle 151 (755ns - 760ns)
*	Reading 1101 from address 0000001 (from port 1) during cycle 151 (755ns - 760ns)
*	Writing 1010  to  address 1111010 (from port 0) during cycle 152 (760ns - 765ns)
*	Reading 1010 from address 0000101 (from port 1) during cycle 152 (760ns - 765ns)
*	Reading 0001 from address 0000000 (from port 1) during cycle 153 (765ns - 770ns)
*	Reading 1110 from address 1111110 (from port 1) during cycle 154 (770ns - 775ns)
*	Writing 0100  to  address 1110111 (from port 0) during cycle 155 (775ns - 780ns)
*	Reading 1010 from address 1111010 (from port 1) during cycle 155 (775ns - 780ns)
*	Reading 1000 from address 0000010 (from port 1) during cycle 156 (780ns - 785ns)
*	Writing 0111  to  address 1111110 (from port 0) during cycle 157 (785ns - 790ns)
*	Reading 1110 from address 1111000 (from port 1) during cycle 157 (785ns - 790ns)
*	Writing 0001  to  address 1111000 (from port 0) during cycle 158 (790ns - 795ns)
*	Writing 0111  to  address 1111101 (from port 0) during cycle 160 (800ns - 805ns)
*	Writing 1001  to  address 0000101 (from port 0) during cycle 161 (805ns - 810ns)
*	Reading 0001 from address 0000000 (from port 1) during cycle 161 (805ns - 810ns)
*	Reading 0001 from address 1111000 (from port 1) during cycle 162 (810ns - 815ns)
*	Writing 1011  to  address 0000100 (from port 0) during cycle 163 (815ns - 820ns)
*	Writing 1000  to  address 0000111 (from port 0) during cycle 164 (820ns - 825ns)
*	Reading 1010 from address 1111010 (from port 1) during cycle 164 (820ns - 825ns)
*	Reading 0111 from address 1111110 (from port 1) during cycle 165 (825ns - 830ns)
*	Reading 1011 from address 0000100 (from port 1) during cycle 166 (830ns - 835ns)
*	Writing (partial) 0101  to  address 1111011 with mask bit 1110 (from port 0) during cycle 168 (840ns - 845ns)
*	Writing 0111  to  address 0000001 (from port 0) during cycle 170 (850ns - 855ns)
*	Reading 1000 from address 0000111 (from port 1) during cycle 170 (850ns - 855ns)
*	Writing (partial) 0110  to  address 1111010 with mask bit 1011 (from port 0) during cycle 171 (855ns - 860ns)
*	Writing (partial) 0010  to  address 0000011 with mask bit 0110 (from port 0) during cycle 172 (860ns - 865ns)
*	Writing (partial) 0001  to  address 1110111 with mask bit 0111 (from port 0) during cycle 173 (865ns - 870ns)
*	Reading 1000 from address 0000111 (from port 1) during cycle 173 (865ns - 870ns)
*	Writing (partial) 0111  to  address 1111110 with mask bit 0111 (from port 0) during cycle 175 (875ns - 880ns)
*	Writing 0001  to  address 0000010 (from port 0) during cycle 177 (885ns - 890ns)
*	Reading 1010 from address 1111001 (from port 1) during cycle 178 (890ns - 895ns)
*	Writing 0001  to  address 1111110 (from port 0) during cycle 179 (895ns - 900ns)
*	Reading 1011 from address 0000100 (from port 1) during cycle 179 (895ns - 900ns)
*	Writing 1010  to  address 0000100 (from port 0) during cycle 180 (900ns - 905ns)
*	Reading 0010 from address 1111010 (from port 1) during cycle 180 (900ns - 905ns)
*	Writing (partial) 1101  to  address 1111000 with mask bit 1010 (from port 0) during cycle 181 (905ns - 910ns)
*	Reading 0001 from address 0000010 (from port 1) during cycle 181 (905ns - 910ns)
*	Writing (partial) 1100  to  address 0000110 with mask bit 1101 (from port 0) during cycle 182 (910ns - 915ns)
*	Reading 0111 from address 1111101 (from port 1) during cycle 182 (910ns - 915ns)
*	Writing 1011  to  address 1110111 (from port 0) during cycle 183 (915ns - 920ns)
*	Reading 1010 from address 1111001 (from port 1) during cycle 184 (920ns - 925ns)
*	Writing 1110  to  address 1111100 (from port 0) during cycle 186 (930ns - 935ns)
*	Writing 1000  to  address 0000101 (from port 0) during cycle 188 (940ns - 945ns)
*	Reading 1110 from address 0000110 (from port 1) during cycle 188 (940ns - 945ns)
*	Writing (partial) 1011  to  address 0000010 with mask bit 0101 (from port 0) during cycle 189 (945ns - 950ns)
*	Reading 0001 from address 0000000 (from port 1) during cycle 189 (945ns - 950ns)
*	Writing (partial) 0101  to  address 0000101 with mask bit 0010 (from port 0) during cycle 190 (950ns - 955ns)
*	Writing (partial) 1110  to  address 1111110 with mask bit 0011 (from port 0) during cycle 191 (955ns - 960ns)
*	Reading 1001 from address 1111000 (from port 1) during cycle 192 (960ns - 965ns)
*	Writing 1010  to  address 0000110 (from port 0) during cycle 194 (970ns - 975ns)
*	Writing 0110  to  address 0000110 (from port 0) during cycle 196 (980ns - 985ns)
*	Writing 1101  to  address 1111110 (from port 0) during cycle 197 (985ns - 990ns)
*	Reading 1010 from address 0000100 (from port 1) during cycle 197 (985ns - 990ns)
*	Writing (partial) 1101  to  address 1111001 with mask bit 0101 (from port 0) during cycle 199 (995ns - 1000ns)
*	Writing 1011  to  address 1111100 (from port 0) during cycle 200 (1000ns - 1005ns)
*	Reading 0111 from address 1111101 (from port 1) during cycle 200 (1000ns - 1005ns)
*	Writing 1100  to  address 0000001 (from port 0) during cycle 201 (1005ns - 1010ns)
*	Writing 0110  to  address 1111101 (from port 0) during cycle 202 (1010ns - 1015ns)
*	Writing 1000  to  address 1111101 (from port 0) during cycle 203 (1015ns - 1020ns)
*	Reading 1001 from address 1111000 (from port 1) during cycle 203 (1015ns - 1020ns)
*	Reading 0001 from address 0000000 (from port 1) during cycle 204 (1020ns - 1025ns)
*	Idle during cycle 205 (1025ns - 1030ns)

* Generation of data and address signals
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 1), (20, 1), (25, 0), (30, 1), (35, 0), (40, 0), (45, 1), (50, 1), (55, 0), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 0), (90, 0), (95, 0), (100, 1), (105, 1), (110, 0), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 1), (185, 1), (190, 1), (195, 0), (200, 0), (205, 0), (210, 0), (215, 1), (220, 0), (225, 0), (230, 0), (235, 1), (240, 0), (245, 0), (250, 0), (255, 0), (260, 1), (265, 1), (270, 1), (275, 0), (280, 0), (285, 0), (290, 1), (295, 1), (300, 0), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 0), (335, 0), (340, 1), (345, 1), (350, 0), (355, 0), (360, 0), (365, 1), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 1), (400, 0), (405, 0), (410, 0), (415, 1), (420, 0), (425, 0), (430, 0), (435, 0), (440, 1), (445, 1), (450, 1), (455, 0), (460, 0), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 0), (550, 1), (555, 1), (560, 0), (565, 1), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 1), (600, 1), (605, 1), (610, 1), (615, 1), (620, 0), (625, 0), (630, 0), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 0), (665, 0), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 0), (700, 1), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 0), (825, 0), (830, 0), (835, 0), (840, 1), (845, 1), (850, 1), (855, 0), (860, 0), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 0), (905, 1), (910, 0), (915, 1), (920, 1), (925, 1), (930, 0), (935, 0), (940, 0), (945, 1), (950, 1), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_0  din0_0  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.0v 14.745n 0.0v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.0v 29.745n 0.0v 29.755n 0.9v 34.745n 0.9v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.0v 59.745n 0.0v 59.755n 0.9v 64.745n 0.9v 64.755n 0.9v 69.745n 0.9v 69.755n 0.9v 74.745n 0.9v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.0v 114.745n 0.0v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.9v 139.745n 0.9v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.9v 194.745n 0.9v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.9v 219.745n 0.9v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.9v 239.745n 0.9v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.0v 304.745n 0.0v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.9v 369.745n 0.9v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.9v 399.745n 0.9v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.9v 419.745n 0.9v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.9v 469.745n 0.9v 469.755n 0.9v 474.745n 0.9v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.0v 549.745n 0.0v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.0v 564.745n 0.0v 564.755n 0.9v 569.745n 0.9v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.9v 599.745n 0.9v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.9v 619.745n 0.9v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.9v 639.745n 0.9v 639.755n 0.9v 644.745n 0.9v 644.755n 0.9v 649.745n 0.9v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.0v 699.745n 0.0v 699.755n 0.9v 704.745n 0.9v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.9v 734.745n 0.9v 734.755n 0.9v 739.745n 0.9v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.9v 789.745n 0.9v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.9v 854.745n 0.9v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.9v 894.745n 0.9v 894.755n 0.9v 899.745n 0.9v 899.755n 0.0v 904.745n 0.0v 904.755n 0.9v 909.745n 0.9v 909.755n 0.0v 914.745n 0.0v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.9v 989.745n 0.9v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 0), (35, 0), (40, 1), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 1), (75, 1), (80, 1), (85, 0), (90, 0), (95, 1), (100, 0), (105, 0), (110, 1), (115, 0), (120, 0), (125, 1), (130, 1), (135, 1), (140, 0), (145, 0), (150, 1), (155, 0), (160, 0), (165, 0), (170, 1), (175, 0), (180, 0), (185, 0), (190, 1), (195, 1), (200, 1), (205, 1), (210, 1), (215, 0), (220, 1), (225, 1), (230, 1), (235, 0), (240, 1), (245, 0), (250, 0), (255, 0), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 0), (290, 0), (295, 0), (300, 0), (305, 1), (310, 1), (315, 0), (320, 1), (325, 1), (330, 1), (335, 1), (340, 0), (345, 1), (350, 1), (355, 1), (360, 1), (365, 0), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 0), (405, 0), (410, 0), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 0), (445, 1), (450, 0), (455, 1), (460, 1), (465, 0), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 0), (500, 0), (505, 0), (510, 0), (515, 1), (520, 1), (525, 1), (530, 1), (535, 0), (540, 0), (545, 1), (550, 1), (555, 1), (560, 1), (565, 0), (570, 1), (575, 0), (580, 1), (585, 1), (590, 1), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 1), (630, 1), (635, 0), (640, 0), (645, 0), (650, 0), (655, 1), (660, 1), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 1), (705, 1), (710, 1), (715, 1), (720, 0), (725, 0), (730, 1), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 1), (765, 1), (770, 1), (775, 0), (780, 0), (785, 1), (790, 0), (795, 0), (800, 1), (805, 0), (810, 0), (815, 1), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 1), (855, 1), (860, 1), (865, 0), (870, 0), (875, 1), (880, 1), (885, 0), (890, 0), (895, 0), (900, 1), (905, 0), (910, 0), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 0), (945, 1), (950, 0), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 0), (990, 0), (995, 0), (1000, 1), (1005, 0), (1010, 1), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_1  din0_1  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.9v 14.745n 0.9v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.9v 44.745n 0.9v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.9v 74.745n 0.9v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.9v 99.745n 0.9v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.9v 114.745n 0.9v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.9v 139.745n 0.9v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.9v 154.745n 0.9v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.9v 174.745n 0.9v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.9v 194.745n 0.9v 194.755n 0.9v 199.745n 0.9v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.0v 219.745n 0.0v 219.755n 0.9v 224.745n 0.9v 224.755n 0.9v 229.745n 0.9v 229.755n 0.9v 234.745n 0.9v 234.755n 0.0v 239.745n 0.0v 239.755n 0.9v 244.745n 0.9v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.0v 319.745n 0.0v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.0v 344.745n 0.0v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.9v 364.745n 0.9v 364.755n 0.0v 369.745n 0.0v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.9v 419.745n 0.9v 419.755n 0.9v 424.745n 0.9v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.0v 444.745n 0.0v 444.755n 0.9v 449.745n 0.9v 449.755n 0.0v 454.745n 0.0v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.0v 469.745n 0.0v 469.755n 0.9v 474.745n 0.9v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.9v 534.745n 0.9v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.9v 564.745n 0.9v 564.755n 0.0v 569.745n 0.0v 569.755n 0.9v 574.745n 0.9v 574.755n 0.0v 579.745n 0.0v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.9v 734.745n 0.9v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.9v 764.745n 0.9v 764.755n 0.9v 769.745n 0.9v 769.755n 0.9v 774.745n 0.9v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.9v 789.745n 0.9v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.9v 804.745n 0.9v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.9v 819.745n 0.9v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.9v 854.745n 0.9v 854.755n 0.9v 859.745n 0.9v 859.755n 0.9v 864.745n 0.9v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.9v 904.745n 0.9v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.0v 944.745n 0.0v 944.755n 0.9v 949.745n 0.9v 949.755n 0.0v 954.745n 0.0v 954.755n 0.9v 959.745n 0.9v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 0), (30, 0), (35, 1), (40, 0), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 0), (75, 0), (80, 0), (85, 1), (90, 1), (95, 0), (100, 0), (105, 0), (110, 0), (115, 1), (120, 0), (125, 0), (130, 0), (135, 0), (140, 1), (145, 1), (150, 0), (155, 1), (160, 0), (165, 0), (170, 1), (175, 1), (180, 1), (185, 0), (190, 0), (195, 0), (200, 0), (205, 0), (210, 1), (215, 1), (220, 1), (225, 1), (230, 0), (235, 0), (240, 1), (245, 1), (250, 1), (255, 1), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 1), (290, 0), (295, 1), (300, 0), (305, 1), (310, 1), (315, 0), (320, 0), (325, 0), (330, 1), (335, 1), (340, 0), (345, 0), (350, 1), (355, 1), (360, 1), (365, 1), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 1), (455, 1), (460, 1), (465, 0), (470, 1), (475, 0), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 0), (525, 0), (530, 0), (535, 1), (540, 1), (545, 0), (550, 0), (555, 0), (560, 1), (565, 1), (570, 1), (575, 1), (580, 0), (585, 0), (590, 0), (595, 1), (600, 1), (605, 1), (610, 1), (615, 1), (620, 0), (625, 1), (630, 0), (635, 1), (640, 1), (645, 1), (650, 0), (655, 1), (660, 0), (665, 0), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 1), (780, 1), (785, 1), (790, 0), (795, 0), (800, 1), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 1), (845, 1), (850, 1), (855, 1), (860, 0), (865, 0), (870, 0), (875, 1), (880, 1), (885, 0), (890, 0), (895, 0), (900, 0), (905, 1), (910, 1), (915, 0), (920, 0), (925, 0), (930, 1), (935, 1), (940, 0), (945, 0), (950, 1), (955, 1), (960, 1), (965, 1), (970, 0), (975, 0), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 0), (1005, 1), (1010, 1), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_2  din0_2  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.9v 14.745n 0.9v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.9v 39.745n 0.9v 39.755n 0.0v 44.745n 0.0v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.9v 59.745n 0.9v 59.755n 0.9v 64.745n 0.9v 64.755n 0.9v 69.745n 0.9v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.9v 119.745n 0.9v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.9v 144.745n 0.9v 144.755n 0.9v 149.745n 0.9v 149.755n 0.0v 154.745n 0.0v 154.755n 0.9v 159.745n 0.9v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.9v 174.745n 0.9v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.9v 229.745n 0.9v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.9v 289.745n 0.9v 289.755n 0.0v 294.745n 0.0v 294.755n 0.9v 299.745n 0.9v 299.755n 0.0v 304.745n 0.0v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.9v 454.745n 0.9v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.0v 469.745n 0.0v 469.755n 0.9v 474.745n 0.9v 474.755n 0.0v 479.745n 0.0v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.9v 509.745n 0.9v 509.755n 0.9v 514.745n 0.9v 514.755n 0.9v 519.745n 0.9v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.9v 564.745n 0.9v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.9v 599.745n 0.9v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.9v 619.745n 0.9v 619.755n 0.0v 624.745n 0.0v 624.755n 0.9v 629.745n 0.9v 629.755n 0.0v 634.745n 0.0v 634.755n 0.9v 639.745n 0.9v 639.755n 0.9v 644.745n 0.9v 644.755n 0.9v 649.745n 0.9v 649.755n 0.0v 654.745n 0.0v 654.755n 0.9v 659.745n 0.9v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.9v 729.745n 0.9v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.9v 779.745n 0.9v 779.755n 0.9v 784.745n 0.9v 784.755n 0.9v 789.745n 0.9v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.9v 804.745n 0.9v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.9v 854.745n 0.9v 854.755n 0.9v 859.745n 0.9v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.9v 909.745n 0.9v 909.755n 0.9v 914.745n 0.9v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 1), (45, 0), (50, 0), (55, 1), (60, 0), (65, 0), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 0), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 0), (130, 0), (135, 0), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 0), (200, 0), (205, 0), (210, 1), (215, 1), (220, 0), (225, 0), (230, 1), (235, 0), (240, 1), (245, 0), (250, 0), (255, 0), (260, 1), (265, 1), (270, 1), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 1), (305, 0), (310, 0), (315, 1), (320, 1), (325, 1), (330, 0), (335, 0), (340, 1), (345, 0), (350, 0), (355, 0), (360, 0), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 1), (415, 1), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 1), (460, 1), (465, 0), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 1), (555, 1), (560, 1), (565, 0), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 1), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 0), (640, 0), (645, 0), (650, 1), (655, 0), (660, 0), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 0), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 1), (760, 1), (765, 1), (770, 1), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 1), (945, 1), (950, 0), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 0), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 0), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_3  din0_3  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.9v 14.745n 0.9v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.9v 44.745n 0.9v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.9v 59.745n 0.9v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.9v 74.745n 0.9v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.0v 99.745n 0.0v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.9v 144.745n 0.9v 144.755n 0.9v 149.745n 0.9v 149.755n 0.9v 154.745n 0.9v 154.755n 0.9v 159.745n 0.9v 159.755n 0.9v 164.745n 0.9v 164.755n 0.9v 169.745n 0.9v 169.755n 0.9v 174.745n 0.9v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.9v 194.745n 0.9v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.9v 234.745n 0.9v 234.755n 0.0v 239.745n 0.0v 239.755n 0.9v 244.745n 0.9v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.9v 304.745n 0.9v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.9v 344.745n 0.9v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.9v 404.745n 0.9v 404.755n 0.9v 409.745n 0.9v 409.755n 0.9v 414.745n 0.9v 414.755n 0.9v 419.745n 0.9v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.9v 509.745n 0.9v 509.755n 0.9v 514.745n 0.9v 514.755n 0.9v 519.745n 0.9v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.9v 564.745n 0.9v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.9v 599.745n 0.9v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.9v 619.745n 0.9v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.9v 654.745n 0.9v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.0v 704.745n 0.0v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.9v 729.745n 0.9v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.9v 759.745n 0.9v 759.755n 0.9v 764.745n 0.9v 764.755n 0.9v 769.745n 0.9v 769.755n 0.9v 774.745n 0.9v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.9v 904.745n 0.9v 904.755n 0.9v 909.745n 0.9v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.0v 954.745n 0.0v 954.755n 0.9v 959.745n 0.9v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.9v 979.745n 0.9v 979.755n 0.0v 984.745n 0.0v 984.755n 0.9v 989.745n 0.9v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 1), (20, 1), (25, 1), (30, 0), (35, 1), (40, 1), (45, 1), (50, 1), (55, 0), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 0), (100, 1), (105, 1), (110, 1), (115, 0), (120, 1), (125, 1), (130, 1), (135, 1), (140, 0), (145, 0), (150, 1), (155, 0), (160, 0), (165, 0), (170, 0), (175, 1), (180, 0), (185, 1), (190, 0), (195, 0), (200, 0), (205, 0), (210, 1), (215, 0), (220, 1), (225, 1), (230, 1), (235, 0), (240, 0), (245, 1), (250, 1), (255, 1), (260, 0), (265, 0), (270, 0), (275, 1), (280, 1), (285, 0), (290, 0), (295, 1), (300, 0), (305, 0), (310, 0), (315, 1), (320, 1), (325, 1), (330, 1), (335, 0), (340, 0), (345, 0), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 0), (405, 0), (410, 0), (415, 1), (420, 0), (425, 0), (430, 0), (435, 0), (440, 1), (445, 0), (450, 0), (455, 1), (460, 1), (465, 0), (470, 0), (475, 1), (480, 1), (485, 1), (490, 1), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 1), (525, 1), (530, 1), (535, 0), (540, 0), (545, 1), (550, 0), (555, 0), (560, 1), (565, 1), (570, 1), (575, 0), (580, 1), (585, 1), (590, 1), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 1), (625, 0), (630, 1), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 0), (665, 0), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 0), (700, 1), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 1), (735, 0), (740, 0), (745, 0), (750, 0), (755, 1), (760, 0), (765, 0), (770, 0), (775, 1), (780, 1), (785, 0), (790, 0), (795, 0), (800, 1), (805, 1), (810, 1), (815, 0), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 0), (860, 1), (865, 1), (870, 1), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 1), (920, 1), (925, 1), (930, 0), (935, 0), (940, 1), (945, 0), (950, 1), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 1), (1000, 0), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Va0_0  a0_0  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.0v 14.745n 0.0v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.0v 34.745n 0.0v 34.755n 0.9v 39.745n 0.9v 39.755n 0.9v 44.745n 0.9v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.0v 59.745n 0.0v 59.755n 0.9v 64.745n 0.9v 64.755n 0.9v 69.745n 0.9v 69.755n 0.9v 74.745n 0.9v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.0v 99.745n 0.0v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.0v 119.745n 0.0v 119.755n 0.9v 124.745n 0.9v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.9v 139.745n 0.9v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.9v 154.745n 0.9v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.9v 179.745n 0.9v 179.755n 0.0v 184.745n 0.0v 184.755n 0.9v 189.745n 0.9v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.9v 214.745n 0.9v 214.755n 0.0v 219.745n 0.0v 219.755n 0.9v 224.745n 0.9v 224.755n 0.9v 229.745n 0.9v 229.755n 0.9v 234.745n 0.9v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.9v 299.745n 0.9v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.9v 419.745n 0.9v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.9v 444.745n 0.9v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.9v 534.745n 0.9v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.9v 549.745n 0.9v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.9v 564.745n 0.9v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.0v 579.745n 0.0v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.9v 624.745n 0.9v 624.755n 0.0v 629.745n 0.0v 629.755n 0.9v 634.745n 0.9v 634.755n 0.9v 639.745n 0.9v 639.755n 0.9v 644.745n 0.9v 644.755n 0.9v 649.745n 0.9v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.0v 699.745n 0.0v 699.755n 0.9v 704.745n 0.9v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.9v 734.745n 0.9v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.9v 759.745n 0.9v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.9v 779.745n 0.9v 779.755n 0.9v 784.745n 0.9v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.0v 819.745n 0.0v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.9v 854.745n 0.9v 854.755n 0.0v 859.745n 0.0v 859.755n 0.9v 864.745n 0.9v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.9v 944.745n 0.9v 944.755n 0.0v 949.745n 0.0v 949.755n 0.9v 954.745n 0.9v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.9v 999.745n 0.9v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 0), (20, 0), (25, 0), (30, 1), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 1), (65, 1), (70, 1), (75, 0), (80, 0), (85, 0), (90, 0), (95, 1), (100, 1), (105, 1), (110, 0), (115, 1), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 1), (160, 0), (165, 0), (170, 0), (175, 1), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 1), (220, 1), (225, 1), (230, 0), (235, 0), (240, 1), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 0), (340, 1), (345, 0), (350, 0), (355, 0), (360, 0), (365, 1), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 0), (400, 1), (405, 1), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 1), (455, 1), (460, 1), (465, 0), (470, 0), (475, 0), (480, 1), (485, 1), (490, 1), (495, 0), (500, 0), (505, 0), (510, 1), (515, 0), (520, 0), (525, 0), (530, 0), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 0), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 0), (610, 0), (615, 0), (620, 1), (625, 1), (630, 0), (635, 1), (640, 1), (645, 1), (650, 0), (655, 1), (660, 1), (665, 1), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 0), (740, 0), (745, 0), (750, 0), (755, 1), (760, 1), (765, 1), (770, 1), (775, 1), (780, 1), (785, 1), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 0), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 0), (905, 0), (910, 1), (915, 1), (920, 1), (925, 1), (930, 0), (935, 0), (940, 0), (945, 1), (950, 0), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 1), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va0_1  a0_1  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.9v 14.745n 0.9v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.9v 34.745n 0.9v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.9v 64.745n 0.9v 64.755n 0.9v 69.745n 0.9v 69.755n 0.9v 74.745n 0.9v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.0v 114.745n 0.0v 114.755n 0.9v 119.745n 0.9v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.9v 159.745n 0.9v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.9v 179.745n 0.9v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.9v 229.745n 0.9v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.9v 244.745n 0.9v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.0v 339.745n 0.0v 339.755n 0.9v 344.745n 0.9v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.9v 369.745n 0.9v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.9v 404.745n 0.9v 404.755n 0.9v 409.745n 0.9v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.9v 454.745n 0.9v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.9v 514.745n 0.9v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.9v 564.745n 0.9v 564.755n 0.9v 569.745n 0.9v 569.755n 0.0v 574.745n 0.0v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.9v 604.745n 0.9v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.0v 634.745n 0.0v 634.755n 0.9v 639.745n 0.9v 639.755n 0.9v 644.745n 0.9v 644.755n 0.9v 649.745n 0.9v 649.755n 0.0v 654.745n 0.0v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.9v 669.745n 0.9v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.9v 699.745n 0.9v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.9v 759.745n 0.9v 759.755n 0.9v 764.745n 0.9v 764.755n 0.9v 769.745n 0.9v 769.755n 0.9v 774.745n 0.9v 774.755n 0.9v 779.745n 0.9v 779.755n 0.9v 784.745n 0.9v 784.755n 0.9v 789.745n 0.9v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.0v 854.745n 0.0v 854.755n 0.9v 859.745n 0.9v 859.755n 0.9v 864.745n 0.9v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.9v 894.745n 0.9v 894.755n 0.9v 899.745n 0.9v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.9v 949.745n 0.9v 949.755n 0.0v 954.745n 0.0v 954.755n 0.9v 959.745n 0.9v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.9v 994.745n 0.9v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 0), (20, 0), (25, 1), (30, 1), (35, 1), (40, 1), (45, 0), (50, 0), (55, 1), (60, 0), (65, 0), (70, 1), (75, 0), (80, 0), (85, 1), (90, 1), (95, 1), (100, 0), (105, 0), (110, 1), (115, 0), (120, 1), (125, 0), (130, 0), (135, 0), (140, 1), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 1), (175, 1), (180, 1), (185, 1), (190, 0), (195, 1), (200, 1), (205, 1), (210, 1), (215, 0), (220, 1), (225, 1), (230, 0), (235, 1), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 1), (295, 1), (300, 0), (305, 1), (310, 1), (315, 1), (320, 0), (325, 0), (330, 1), (335, 1), (340, 1), (345, 0), (350, 1), (355, 1), (360, 1), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 0), (450, 1), (455, 1), (460, 0), (465, 0), (470, 1), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 1), (515, 0), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 0), (580, 1), (585, 1), (590, 1), (595, 0), (600, 0), (605, 0), (610, 0), (615, 1), (620, 0), (625, 1), (630, 1), (635, 1), (640, 1), (645, 1), (650, 1), (655, 0), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 1), (690, 1), (695, 0), (700, 0), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 1), (780, 1), (785, 1), (790, 0), (795, 0), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 1), (870, 1), (875, 1), (880, 1), (885, 0), (890, 0), (895, 1), (900, 1), (905, 0), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 1), (945, 0), (950, 1), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 1), (995, 0), (1000, 1), (1005, 0), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Va0_2  a0_2  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.9v 14.745n 0.9v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.9v 29.745n 0.9v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.9v 44.745n 0.9v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.9v 59.745n 0.9v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.9v 74.745n 0.9v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.9v 114.745n 0.9v 114.755n 0.0v 119.745n 0.0v 119.755n 0.9v 124.745n 0.9v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.9v 144.745n 0.9v 144.755n 0.9v 149.745n 0.9v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.9v 174.745n 0.9v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.0v 194.745n 0.0v 194.755n 0.9v 199.745n 0.9v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.0v 219.745n 0.0v 219.755n 0.9v 224.745n 0.9v 224.755n 0.9v 229.745n 0.9v 229.755n 0.0v 234.745n 0.0v 234.755n 0.9v 239.745n 0.9v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.0v 304.745n 0.0v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.0v 349.745n 0.0v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.9v 364.745n 0.9v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.9v 424.745n 0.9v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.0v 449.745n 0.0v 449.755n 0.9v 454.745n 0.9v 454.755n 0.9v 459.745n 0.9v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.9v 474.745n 0.9v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.9v 514.745n 0.9v 514.755n 0.0v 519.745n 0.0v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.9v 564.745n 0.9v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.0v 579.745n 0.0v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.9v 619.745n 0.9v 619.755n 0.0v 624.745n 0.0v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.9v 639.745n 0.9v 639.755n 0.9v 644.745n 0.9v 644.755n 0.9v 649.745n 0.9v 649.755n 0.9v 654.745n 0.9v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.9v 729.745n 0.9v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.9v 779.745n 0.9v 779.755n 0.9v 784.745n 0.9v 784.755n 0.9v 789.745n 0.9v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.9v 899.745n 0.9v 899.755n 0.9v 904.745n 0.9v 904.755n 0.0v 909.745n 0.0v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.9v 944.745n 0.9v 944.755n 0.0v 949.745n 0.0v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.9v 994.745n 0.9v 994.755n 0.0v 999.745n 0.0v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 0), (20, 0), (25, 0), (30, 1), (35, 1), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 1), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 0), (145, 0), (150, 1), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 1), (210, 1), (215, 0), (220, 0), (225, 0), (230, 1), (235, 1), (240, 1), (245, 0), (250, 0), (255, 0), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 0), (290, 0), (295, 0), (300, 0), (305, 1), (310, 1), (315, 0), (320, 1), (325, 1), (330, 0), (335, 0), (340, 0), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 0), (405, 0), (410, 1), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 1), (445, 1), (450, 0), (455, 0), (460, 1), (465, 1), (470, 0), (475, 0), (480, 1), (485, 1), (490, 1), (495, 0), (500, 0), (505, 0), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 0), (550, 1), (555, 1), (560, 0), (565, 0), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 1), (600, 1), (605, 0), (610, 0), (615, 1), (620, 0), (625, 1), (630, 1), (635, 0), (640, 0), (645, 0), (650, 1), (655, 1), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 1), (690, 1), (695, 1), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 1), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 1), (765, 1), (770, 1), (775, 0), (780, 0), (785, 1), (790, 1), (795, 1), (800, 1), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 1), (845, 1), (850, 0), (855, 1), (860, 0), (865, 0), (870, 0), (875, 1), (880, 1), (885, 0), (890, 0), (895, 1), (900, 0), (905, 1), (910, 0), (915, 0), (920, 0), (925, 0), (930, 1), (935, 1), (940, 0), (945, 0), (950, 0), (955, 1), (960, 1), (965, 1), (970, 0), (975, 0), (980, 0), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 0), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Va0_3  a0_3  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.9v 14.745n 0.9v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.9v 114.745n 0.9v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.9v 139.745n 0.9v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.9v 154.745n 0.9v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.9v 194.745n 0.9v 194.755n 0.9v 199.745n 0.9v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.0v 319.745n 0.0v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.9v 414.745n 0.9v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.9v 514.745n 0.9v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.0v 549.745n 0.0v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.9v 599.745n 0.9v 599.755n 0.9v 604.745n 0.9v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.9v 619.745n 0.9v 619.755n 0.0v 624.745n 0.0v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.9v 734.745n 0.9v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.9v 764.745n 0.9v 764.755n 0.9v 769.745n 0.9v 769.755n 0.9v 774.745n 0.9v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.9v 789.745n 0.9v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.0v 854.745n 0.0v 854.755n 0.9v 859.745n 0.9v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.9v 899.745n 0.9v 899.755n 0.0v 904.745n 0.0v 904.755n 0.9v 909.745n 0.9v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.9v 959.745n 0.9v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.9v 989.745n 0.9v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 0), (20, 0), (25, 0), (30, 1), (35, 1), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 1), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 1), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 0), (145, 0), (150, 1), (155, 0), (160, 0), (165, 0), (170, 0), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 1), (210, 1), (215, 0), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 0), (250, 0), (255, 0), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 0), (290, 0), (295, 0), (300, 0), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 0), (335, 0), (340, 0), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 0), (405, 0), (410, 1), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 1), (445, 1), (450, 0), (455, 1), (460, 1), (465, 1), (470, 0), (475, 0), (480, 1), (485, 1), (490, 1), (495, 0), (500, 0), (505, 0), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 0), (550, 1), (555, 1), (560, 1), (565, 1), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 1), (600, 1), (605, 0), (610, 0), (615, 1), (620, 0), (625, 1), (630, 1), (635, 0), (640, 0), (645, 0), (650, 1), (655, 1), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 1), (690, 1), (695, 1), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 1), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 1), (765, 1), (770, 1), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 1), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 1), (845, 1), (850, 0), (855, 1), (860, 0), (865, 1), (870, 1), (875, 1), (880, 1), (885, 0), (890, 0), (895, 1), (900, 0), (905, 1), (910, 0), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 0), (945, 0), (950, 0), (955, 1), (960, 1), (965, 1), (970, 0), (975, 0), (980, 0), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 0), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Va0_4  a0_4  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.9v 14.745n 0.9v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.9v 74.745n 0.9v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.9v 114.745n 0.9v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.9v 139.745n 0.9v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.9v 154.745n 0.9v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.9v 194.745n 0.9v 194.755n 0.9v 199.745n 0.9v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.0v 219.745n 0.0v 219.755n 0.9v 224.745n 0.9v 224.755n 0.9v 229.745n 0.9v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.9v 414.745n 0.9v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.0v 454.745n 0.0v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.9v 514.745n 0.9v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.0v 549.745n 0.0v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.9v 564.745n 0.9v 564.755n 0.9v 569.745n 0.9v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.9v 599.745n 0.9v 599.755n 0.9v 604.745n 0.9v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.9v 619.745n 0.9v 619.755n 0.0v 624.745n 0.0v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.9v 734.745n 0.9v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.9v 764.745n 0.9v 764.755n 0.9v 769.745n 0.9v 769.755n 0.9v 774.745n 0.9v 774.755n 0.9v 779.745n 0.9v 779.755n 0.9v 784.745n 0.9v 784.755n 0.9v 789.745n 0.9v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.0v 854.745n 0.0v 854.755n 0.9v 859.745n 0.9v 859.755n 0.0v 864.745n 0.0v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.9v 899.745n 0.9v 899.755n 0.0v 904.745n 0.0v 904.755n 0.9v 909.745n 0.9v 909.755n 0.0v 914.745n 0.0v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.9v 959.745n 0.9v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.9v 989.745n 0.9v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 0), (20, 0), (25, 0), (30, 1), (35, 1), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 1), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 1), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 0), (145, 0), (150, 1), (155, 0), (160, 0), (165, 0), (170, 0), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 1), (210, 1), (215, 0), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 0), (250, 0), (255, 0), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 0), (290, 0), (295, 0), (300, 0), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 0), (335, 0), (340, 0), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 0), (405, 0), (410, 1), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 1), (445, 1), (450, 0), (455, 1), (460, 1), (465, 1), (470, 0), (475, 0), (480, 1), (485, 1), (490, 1), (495, 0), (500, 0), (505, 0), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 0), (550, 1), (555, 1), (560, 1), (565, 1), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 1), (600, 1), (605, 0), (610, 0), (615, 1), (620, 0), (625, 1), (630, 1), (635, 0), (640, 0), (645, 0), (650, 1), (655, 1), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 1), (690, 1), (695, 1), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 1), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 1), (765, 1), (770, 1), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 1), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 1), (845, 1), (850, 0), (855, 1), (860, 0), (865, 1), (870, 1), (875, 1), (880, 1), (885, 0), (890, 0), (895, 1), (900, 0), (905, 1), (910, 0), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 0), (945, 0), (950, 0), (955, 1), (960, 1), (965, 1), (970, 0), (975, 0), (980, 0), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 0), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Va0_5  a0_5  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.9v 14.745n 0.9v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.9v 74.745n 0.9v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.9v 114.745n 0.9v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.9v 139.745n 0.9v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.9v 154.745n 0.9v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.9v 194.745n 0.9v 194.755n 0.9v 199.745n 0.9v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.0v 219.745n 0.0v 219.755n 0.9v 224.745n 0.9v 224.755n 0.9v 229.745n 0.9v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.9v 414.745n 0.9v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.0v 454.745n 0.0v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.9v 514.745n 0.9v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.0v 549.745n 0.0v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.9v 564.745n 0.9v 564.755n 0.9v 569.745n 0.9v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.9v 599.745n 0.9v 599.755n 0.9v 604.745n 0.9v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.9v 619.745n 0.9v 619.755n 0.0v 624.745n 0.0v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.9v 734.745n 0.9v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.9v 764.745n 0.9v 764.755n 0.9v 769.745n 0.9v 769.755n 0.9v 774.745n 0.9v 774.755n 0.9v 779.745n 0.9v 779.755n 0.9v 784.745n 0.9v 784.755n 0.9v 789.745n 0.9v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.0v 854.745n 0.0v 854.755n 0.9v 859.745n 0.9v 859.755n 0.0v 864.745n 0.0v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.9v 899.745n 0.9v 899.755n 0.0v 904.745n 0.0v 904.755n 0.9v 909.745n 0.9v 909.755n 0.0v 914.745n 0.0v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.9v 959.745n 0.9v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.9v 989.745n 0.9v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 0), (20, 0), (25, 0), (30, 1), (35, 1), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 1), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 1), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 0), (145, 0), (150, 1), (155, 0), (160, 0), (165, 0), (170, 0), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 1), (210, 1), (215, 0), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 0), (250, 0), (255, 0), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 0), (290, 0), (295, 0), (300, 0), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 0), (335, 0), (340, 0), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 0), (405, 0), (410, 1), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 1), (445, 1), (450, 0), (455, 1), (460, 1), (465, 1), (470, 0), (475, 0), (480, 1), (485, 1), (490, 1), (495, 0), (500, 0), (505, 0), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 0), (550, 1), (555, 1), (560, 1), (565, 1), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 1), (600, 1), (605, 0), (610, 0), (615, 1), (620, 0), (625, 1), (630, 1), (635, 0), (640, 0), (645, 0), (650, 1), (655, 1), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 1), (690, 1), (695, 1), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 1), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 1), (765, 1), (770, 1), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 1), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 1), (845, 1), (850, 0), (855, 1), (860, 0), (865, 1), (870, 1), (875, 1), (880, 1), (885, 0), (890, 0), (895, 1), (900, 0), (905, 1), (910, 0), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 0), (945, 0), (950, 0), (955, 1), (960, 1), (965, 1), (970, 0), (975, 0), (980, 0), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 0), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Va0_6  a0_6  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.9v 14.745n 0.9v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.9v 74.745n 0.9v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.9v 114.745n 0.9v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.9v 139.745n 0.9v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.9v 154.745n 0.9v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.9v 194.745n 0.9v 194.755n 0.9v 199.745n 0.9v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.0v 219.745n 0.0v 219.755n 0.9v 224.745n 0.9v 224.755n 0.9v 229.745n 0.9v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.9v 414.745n 0.9v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.0v 454.745n 0.0v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.9v 514.745n 0.9v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.0v 549.745n 0.0v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.9v 564.745n 0.9v 564.755n 0.9v 569.745n 0.9v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.9v 599.745n 0.9v 599.755n 0.9v 604.745n 0.9v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.9v 619.745n 0.9v 619.755n 0.0v 624.745n 0.0v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.9v 734.745n 0.9v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.9v 764.745n 0.9v 764.755n 0.9v 769.745n 0.9v 769.755n 0.9v 774.745n 0.9v 774.755n 0.9v 779.745n 0.9v 779.755n 0.9v 784.745n 0.9v 784.755n 0.9v 789.745n 0.9v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.0v 854.745n 0.0v 854.755n 0.9v 859.745n 0.9v 859.755n 0.0v 864.745n 0.0v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.9v 899.745n 0.9v 899.755n 0.0v 904.745n 0.0v 904.755n 0.9v 909.745n 0.9v 909.755n 0.0v 914.745n 0.0v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.9v 959.745n 0.9v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.9v 989.745n 0.9v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 1), (25, 0), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 0), (70, 0), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 1), (145, 0), (150, 1), (155, 1), (160, 1), (165, 1), (170, 0), (175, 0), (180, 1), (185, 0), (190, 0), (195, 1), (200, 1), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 1), (300, 1), (305, 0), (310, 0), (315, 1), (320, 1), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 1), (415, 1), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 1), (515, 0), (520, 0), (525, 0), (530, 1), (535, 1), (540, 1), (545, 1), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 0), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 1), (655, 0), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 1), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 0), (745, 0), (750, 1), (755, 1), (760, 1), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 1), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 0), (900, 0), (905, 0), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 1), (1005, 1), (1010, 1), (1015, 0), (1020, 0), (1025, 0)]
Va1_0  a1_0  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.9v 24.745n 0.9v 24.755n 0.0v 29.745n 0.0v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.9v 44.745n 0.9v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.9v 59.745n 0.9v 59.755n 0.9v 64.745n 0.9v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.9v 144.745n 0.9v 144.755n 0.0v 149.745n 0.0v 149.755n 0.9v 154.745n 0.9v 154.755n 0.9v 159.745n 0.9v 159.755n 0.9v 164.745n 0.9v 164.755n 0.9v 169.745n 0.9v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.9v 184.745n 0.9v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.9v 199.745n 0.9v 199.755n 0.9v 204.745n 0.9v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.9v 404.745n 0.9v 404.755n 0.9v 409.745n 0.9v 409.755n 0.9v 414.745n 0.9v 414.755n 0.9v 419.745n 0.9v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.9v 474.745n 0.9v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.9v 509.745n 0.9v 509.755n 0.9v 514.745n 0.9v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.9v 654.745n 0.9v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.9v 739.745n 0.9v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.9v 754.745n 0.9v 754.755n 0.9v 759.745n 0.9v 759.755n 0.9v 764.745n 0.9v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.9v 854.745n 0.9v 854.755n 0.9v 859.745n 0.9v 859.755n 0.9v 864.745n 0.9v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.9v 894.745n 0.9v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 1), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 0), (100, 0), (105, 1), (110, 1), (115, 1), (120, 1), (125, 1), (130, 0), (135, 0), (140, 1), (145, 0), (150, 1), (155, 1), (160, 0), (165, 0), (170, 1), (175, 1), (180, 0), (185, 1), (190, 0), (195, 1), (200, 1), (205, 0), (210, 0), (215, 1), (220, 1), (225, 0), (230, 1), (235, 1), (240, 0), (245, 0), (250, 0), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 0), (290, 0), (295, 0), (300, 0), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 0), (400, 1), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 0), (510, 0), (515, 1), (520, 1), (525, 1), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 0), (585, 1), (590, 1), (595, 1), (600, 0), (605, 1), (610, 0), (615, 0), (620, 0), (625, 1), (630, 1), (635, 1), (640, 0), (645, 0), (650, 0), (655, 1), (660, 1), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 0), (760, 0), (765, 0), (770, 1), (775, 1), (780, 1), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 1), (825, 1), (830, 0), (835, 0), (840, 0), (845, 0), (850, 1), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 0), (895, 0), (900, 1), (905, 1), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 1), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va1_1  a1_1  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.9v 29.745n 0.9v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.9v 69.745n 0.9v 69.755n 0.9v 74.745n 0.9v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.9v 129.745n 0.9v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.9v 144.745n 0.9v 144.755n 0.0v 149.745n 0.0v 149.755n 0.9v 154.745n 0.9v 154.755n 0.9v 159.745n 0.9v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.9v 174.745n 0.9v 174.755n 0.9v 179.745n 0.9v 179.755n 0.0v 184.745n 0.0v 184.755n 0.9v 189.745n 0.9v 189.755n 0.0v 194.745n 0.0v 194.755n 0.9v 199.745n 0.9v 199.755n 0.9v 204.745n 0.9v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.0v 229.745n 0.0v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.9v 364.745n 0.9v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.9v 404.745n 0.9v 404.755n 0.9v 409.745n 0.9v 409.755n 0.9v 414.745n 0.9v 414.755n 0.9v 419.745n 0.9v 419.755n 0.9v 424.745n 0.9v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.9v 474.745n 0.9v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.0v 604.745n 0.0v 604.755n 0.9v 609.745n 0.9v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.9v 639.745n 0.9v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.9v 739.745n 0.9v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.9v 774.745n 0.9v 774.755n 0.9v 779.745n 0.9v 779.755n 0.9v 784.745n 0.9v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.9v 854.745n 0.9v 854.755n 0.9v 859.745n 0.9v 859.755n 0.9v 864.745n 0.9v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.9v 904.745n 0.9v 904.755n 0.9v 909.745n 0.9v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.9v 944.745n 0.9v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 1), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 1), (70, 1), (75, 0), (80, 0), (85, 1), (90, 1), (95, 1), (100, 1), (105, 0), (110, 0), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 0), (145, 1), (150, 0), (155, 0), (160, 0), (165, 1), (170, 1), (175, 1), (180, 0), (185, 0), (190, 0), (195, 0), (200, 1), (205, 0), (210, 0), (215, 0), (220, 1), (225, 0), (230, 0), (235, 0), (240, 1), (245, 1), (250, 1), (255, 0), (260, 0), (265, 0), (270, 1), (275, 1), (280, 1), (285, 0), (290, 0), (295, 1), (300, 1), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 1), (370, 0), (375, 0), (380, 0), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 0), (510, 0), (515, 1), (520, 1), (525, 1), (530, 0), (535, 1), (540, 1), (545, 1), (550, 0), (555, 0), (560, 0), (565, 0), (570, 1), (575, 1), (580, 1), (585, 0), (590, 0), (595, 0), (600, 1), (605, 0), (610, 1), (615, 1), (620, 1), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 1), (655, 1), (660, 1), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 1), (755, 0), (760, 1), (765, 0), (770, 1), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 0), (895, 1), (900, 0), (905, 0), (910, 1), (915, 1), (920, 0), (925, 0), (930, 0), (935, 0), (940, 1), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 0), (1020, 0), (1025, 0)]
Va1_2  a1_2  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.9v 29.745n 0.9v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.9v 69.745n 0.9v 69.755n 0.9v 74.745n 0.9v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.9v 139.745n 0.9v 139.755n 0.0v 144.745n 0.0v 144.755n 0.9v 149.745n 0.9v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.9v 169.745n 0.9v 169.755n 0.9v 174.745n 0.9v 174.755n 0.9v 179.745n 0.9v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.9v 204.745n 0.9v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.9v 224.745n 0.9v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.9v 369.745n 0.9v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.9v 404.745n 0.9v 404.755n 0.9v 409.745n 0.9v 409.755n 0.9v 414.745n 0.9v 414.755n 0.9v 419.745n 0.9v 419.755n 0.9v 424.745n 0.9v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.9v 474.745n 0.9v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.0v 534.745n 0.0v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.9v 604.745n 0.9v 604.755n 0.0v 609.745n 0.0v 609.755n 0.9v 614.745n 0.9v 614.755n 0.9v 619.745n 0.9v 619.755n 0.9v 624.745n 0.9v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.9v 754.745n 0.9v 754.755n 0.0v 759.745n 0.0v 759.755n 0.9v 764.745n 0.9v 764.755n 0.0v 769.745n 0.0v 769.755n 0.9v 774.745n 0.9v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.9v 854.745n 0.9v 854.755n 0.9v 859.745n 0.9v 859.755n 0.9v 864.745n 0.9v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.0v 894.745n 0.0v 894.755n 0.9v 899.745n 0.9v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.9v 944.745n 0.9v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.9v 989.745n 0.9v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 1), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 1), (70, 1), (75, 0), (80, 0), (85, 0), (90, 0), (95, 1), (100, 1), (105, 0), (110, 0), (115, 1), (120, 1), (125, 1), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 1), (170, 1), (175, 1), (180, 0), (185, 1), (190, 0), (195, 0), (200, 0), (205, 1), (210, 0), (215, 1), (220, 1), (225, 1), (230, 0), (235, 0), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 0), (275, 0), (280, 0), (285, 1), (290, 1), (295, 0), (300, 0), (305, 1), (310, 1), (315, 0), (320, 0), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 1), (520, 1), (525, 1), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 0), (605, 1), (610, 0), (615, 0), (620, 0), (625, 1), (630, 1), (635, 1), (640, 0), (645, 0), (650, 0), (655, 1), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 1), (775, 1), (780, 0), (785, 1), (790, 1), (795, 1), (800, 1), (805, 0), (810, 1), (815, 1), (820, 1), (825, 1), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 1), (895, 0), (900, 1), (905, 0), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 0), (945, 0), (950, 0), (955, 0), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 0), (990, 0), (995, 0), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Va1_3  a1_3  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.9v 29.745n 0.9v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.9v 69.745n 0.9v 69.755n 0.9v 74.745n 0.9v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.9v 129.745n 0.9v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.9v 169.745n 0.9v 169.755n 0.9v 174.745n 0.9v 174.755n 0.9v 179.745n 0.9v 179.755n 0.0v 184.745n 0.0v 184.755n 0.9v 189.745n 0.9v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.9v 209.745n 0.9v 209.755n 0.0v 214.745n 0.0v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.9v 229.745n 0.9v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.0v 604.745n 0.0v 604.755n 0.9v 609.745n 0.9v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.9v 639.745n 0.9v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.9v 739.745n 0.9v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.9v 774.745n 0.9v 774.755n 0.9v 779.745n 0.9v 779.755n 0.0v 784.745n 0.0v 784.755n 0.9v 789.745n 0.9v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.0v 809.745n 0.0v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.9v 894.745n 0.9v 894.755n 0.0v 899.745n 0.0v 899.755n 0.9v 904.745n 0.9v 904.755n 0.0v 909.745n 0.0v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 1), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 1), (70, 1), (75, 0), (80, 0), (85, 1), (90, 1), (95, 1), (100, 1), (105, 0), (110, 0), (115, 1), (120, 1), (125, 1), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 1), (170, 1), (175, 1), (180, 0), (185, 1), (190, 0), (195, 0), (200, 1), (205, 1), (210, 0), (215, 1), (220, 1), (225, 1), (230, 0), (235, 0), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 0), (275, 0), (280, 0), (285, 1), (290, 1), (295, 0), (300, 0), (305, 1), (310, 1), (315, 0), (320, 0), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 0), (500, 0), (505, 0), (510, 0), (515, 1), (520, 1), (525, 1), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 0), (605, 1), (610, 0), (615, 0), (620, 0), (625, 1), (630, 1), (635, 1), (640, 0), (645, 0), (650, 0), (655, 1), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 1), (775, 1), (780, 0), (785, 1), (790, 1), (795, 1), (800, 1), (805, 0), (810, 1), (815, 1), (820, 1), (825, 1), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 1), (895, 0), (900, 1), (905, 0), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 0), (945, 0), (950, 0), (955, 0), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 0), (990, 0), (995, 0), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Va1_4  a1_4  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.9v 29.745n 0.9v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.9v 69.745n 0.9v 69.755n 0.9v 74.745n 0.9v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.9v 129.745n 0.9v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.9v 169.745n 0.9v 169.755n 0.9v 174.745n 0.9v 174.755n 0.9v 179.745n 0.9v 179.755n 0.0v 184.745n 0.0v 184.755n 0.9v 189.745n 0.9v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.0v 214.745n 0.0v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.9v 229.745n 0.9v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.9v 474.745n 0.9v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.0v 604.745n 0.0v 604.755n 0.9v 609.745n 0.9v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.9v 639.745n 0.9v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.9v 739.745n 0.9v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.9v 774.745n 0.9v 774.755n 0.9v 779.745n 0.9v 779.755n 0.0v 784.745n 0.0v 784.755n 0.9v 789.745n 0.9v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.0v 809.745n 0.0v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.9v 894.745n 0.9v 894.755n 0.0v 899.745n 0.0v 899.755n 0.9v 904.745n 0.9v 904.755n 0.0v 909.745n 0.0v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 1), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 1), (70, 1), (75, 0), (80, 0), (85, 1), (90, 1), (95, 1), (100, 1), (105, 0), (110, 0), (115, 1), (120, 1), (125, 1), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 1), (170, 1), (175, 1), (180, 0), (185, 1), (190, 0), (195, 0), (200, 1), (205, 1), (210, 0), (215, 1), (220, 1), (225, 1), (230, 0), (235, 0), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 0), (275, 0), (280, 0), (285, 1), (290, 1), (295, 0), (300, 0), (305, 1), (310, 1), (315, 0), (320, 0), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 0), (500, 0), (505, 0), (510, 0), (515, 1), (520, 1), (525, 1), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 0), (605, 1), (610, 0), (615, 0), (620, 0), (625, 1), (630, 1), (635, 1), (640, 0), (645, 0), (650, 0), (655, 1), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 1), (775, 1), (780, 0), (785, 1), (790, 1), (795, 1), (800, 1), (805, 0), (810, 1), (815, 1), (820, 1), (825, 1), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 1), (895, 0), (900, 1), (905, 0), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 0), (945, 0), (950, 0), (955, 0), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 0), (990, 0), (995, 0), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Va1_5  a1_5  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.9v 29.745n 0.9v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.9v 69.745n 0.9v 69.755n 0.9v 74.745n 0.9v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.9v 129.745n 0.9v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.9v 169.745n 0.9v 169.755n 0.9v 174.745n 0.9v 174.755n 0.9v 179.745n 0.9v 179.755n 0.0v 184.745n 0.0v 184.755n 0.9v 189.745n 0.9v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.0v 214.745n 0.0v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.9v 229.745n 0.9v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.9v 474.745n 0.9v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.0v 604.745n 0.0v 604.755n 0.9v 609.745n 0.9v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.9v 639.745n 0.9v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.9v 739.745n 0.9v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.9v 774.745n 0.9v 774.755n 0.9v 779.745n 0.9v 779.755n 0.0v 784.745n 0.0v 784.755n 0.9v 789.745n 0.9v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.0v 809.745n 0.0v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.9v 894.745n 0.9v 894.755n 0.0v 899.745n 0.0v 899.755n 0.9v 904.745n 0.9v 904.755n 0.0v 909.745n 0.0v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 1), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 1), (70, 1), (75, 0), (80, 0), (85, 1), (90, 1), (95, 1), (100, 1), (105, 0), (110, 0), (115, 1), (120, 1), (125, 1), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 1), (170, 1), (175, 1), (180, 0), (185, 1), (190, 0), (195, 0), (200, 1), (205, 1), (210, 0), (215, 1), (220, 1), (225, 1), (230, 0), (235, 0), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 0), (275, 0), (280, 0), (285, 1), (290, 1), (295, 0), (300, 0), (305, 1), (310, 1), (315, 0), (320, 0), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 0), (500, 0), (505, 0), (510, 0), (515, 1), (520, 1), (525, 1), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 0), (605, 1), (610, 0), (615, 0), (620, 0), (625, 1), (630, 1), (635, 1), (640, 0), (645, 0), (650, 0), (655, 1), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 1), (775, 1), (780, 0), (785, 1), (790, 1), (795, 1), (800, 1), (805, 0), (810, 1), (815, 1), (820, 1), (825, 1), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 1), (895, 0), (900, 1), (905, 0), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 0), (945, 0), (950, 0), (955, 0), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 0), (990, 0), (995, 0), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Va1_6  a1_6  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.9v 29.745n 0.9v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.9v 69.745n 0.9v 69.755n 0.9v 74.745n 0.9v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.9v 129.745n 0.9v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.9v 169.745n 0.9v 169.755n 0.9v 174.745n 0.9v 174.755n 0.9v 179.745n 0.9v 179.755n 0.0v 184.745n 0.0v 184.755n 0.9v 189.745n 0.9v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.0v 214.745n 0.0v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.9v 229.745n 0.9v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.9v 474.745n 0.9v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.0v 604.745n 0.0v 604.755n 0.9v 609.745n 0.9v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.9v 639.745n 0.9v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.9v 739.745n 0.9v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.9v 774.745n 0.9v 774.755n 0.9v 779.745n 0.9v 779.755n 0.0v 784.745n 0.0v 784.755n 0.9v 789.745n 0.9v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.0v 809.745n 0.0v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.9v 894.745n 0.9v 894.755n 0.0v 899.745n 0.0v 899.755n 0.9v 904.745n 0.9v 904.755n 0.0v 909.745n 0.0v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )

 * Generation of control signals
* (time, data): [(0, 1), (5, 0), (10, 0), (15, 0), (20, 1), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 1), (55, 0), (60, 0), (65, 1), (70, 0), (75, 0), (80, 1), (85, 0), (90, 1), (95, 0), (100, 0), (105, 1), (110, 0), (115, 0), (120, 0), (125, 0), (130, 1), (135, 1), (140, 0), (145, 1), (150, 0), (155, 0), (160, 0), (165, 1), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 1), (205, 1), (210, 0), (215, 0), (220, 0), (225, 1), (230, 0), (235, 0), (240, 0), (245, 0), (250, 1), (255, 1), (260, 0), (265, 1), (270, 1), (275, 0), (280, 1), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 1), (315, 0), (320, 0), (325, 1), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 1), (360, 1), (365, 0), (370, 0), (375, 1), (380, 1), (385, 1), (390, 1), (395, 0), (400, 0), (405, 1), (410, 0), (415, 0), (420, 0), (425, 1), (430, 1), (435, 1), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 1), (490, 1), (495, 0), (500, 1), (505, 1), (510, 0), (515, 0), (520, 0), (525, 1), (530, 1), (535, 0), (540, 1), (545, 0), (550, 0), (555, 1), (560, 0), (565, 0), (570, 0), (575, 0), (580, 0), (585, 1), (590, 1), (595, 0), (600, 1), (605, 0), (610, 1), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 1), (645, 1), (650, 0), (655, 0), (660, 0), (665, 0), (670, 0), (675, 1), (680, 1), (685, 0), (690, 1), (695, 0), (700, 0), (705, 0), (710, 1), (715, 1), (720, 0), (725, 1), (730, 0), (735, 0), (740, 1), (745, 1), (750, 1), (755, 0), (760, 0), (765, 1), (770, 1), (775, 0), (780, 1), (785, 0), (790, 0), (795, 1), (800, 0), (805, 0), (810, 1), (815, 0), (820, 0), (825, 1), (830, 1), (835, 1), (840, 0), (845, 1), (850, 0), (855, 0), (860, 0), (865, 0), (870, 1), (875, 0), (880, 1), (885, 0), (890, 1), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 1), (925, 1), (930, 0), (935, 1), (940, 0), (945, 0), (950, 0), (955, 0), (960, 1), (965, 1), (970, 0), (975, 1), (980, 0), (985, 0), (990, 1), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
VCSB0 CSB0 0 PWL (0n 0.9v 4.745n 0.9v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.9v 24.745n 0.9v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.9v 54.745n 0.9v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.9v 69.745n 0.9v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.9v 84.745n 0.9v 84.755n 0.0v 89.745n 0.0v 89.755n 0.9v 94.745n 0.9v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.9v 109.745n 0.9v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.9v 134.745n 0.9v 134.755n 0.9v 139.745n 0.9v 139.755n 0.0v 144.745n 0.0v 144.755n 0.9v 149.745n 0.9v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.9v 169.745n 0.9v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.9v 229.745n 0.9v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.0v 264.745n 0.0v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.0v 279.745n 0.0v 279.755n 0.9v 284.745n 0.9v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.9v 314.745n 0.9v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.9v 329.745n 0.9v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.9v 359.745n 0.9v 359.755n 0.9v 364.745n 0.9v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.9v 409.745n 0.9v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.0v 499.745n 0.0v 499.755n 0.9v 504.745n 0.9v 504.755n 0.9v 509.745n 0.9v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.9v 529.745n 0.9v 529.755n 0.9v 534.745n 0.9v 534.755n 0.0v 539.745n 0.0v 539.755n 0.9v 544.745n 0.9v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.9v 559.745n 0.9v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.0v 599.745n 0.0v 599.755n 0.9v 604.745n 0.9v 604.755n 0.0v 609.745n 0.0v 609.755n 0.9v 614.745n 0.9v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.9v 644.745n 0.9v 644.755n 0.9v 649.745n 0.9v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.0v 689.745n 0.0v 689.755n 0.9v 694.745n 0.9v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.0v 724.745n 0.0v 724.755n 0.9v 729.745n 0.9v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.9v 769.745n 0.9v 769.755n 0.9v 774.745n 0.9v 774.755n 0.0v 779.745n 0.0v 779.755n 0.9v 784.745n 0.9v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.9v 799.745n 0.9v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.9v 814.745n 0.9v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.0v 844.745n 0.0v 844.755n 0.9v 849.745n 0.9v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.9v 874.745n 0.9v 874.755n 0.0v 879.745n 0.0v 879.755n 0.9v 884.745n 0.9v 884.755n 0.0v 889.745n 0.0v 889.755n 0.9v 894.745n 0.9v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.0v 934.745n 0.0v 934.755n 0.9v 939.745n 0.9v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.0v 974.745n 0.0v 974.755n 0.9v 979.745n 0.9v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.9v 994.745n 0.9v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 1), (5, 1), (10, 1), (15, 1), (20, 0), (25, 0), (30, 0), (35, 1), (40, 1), (45, 1), (50, 0), (55, 1), (60, 0), (65, 0), (70, 1), (75, 0), (80, 1), (85, 0), (90, 0), (95, 0), (100, 1), (105, 0), (110, 1), (115, 0), (120, 1), (125, 1), (130, 0), (135, 1), (140, 0), (145, 0), (150, 0), (155, 1), (160, 0), (165, 0), (170, 0), (175, 1), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 1), (240, 0), (245, 1), (250, 1), (255, 0), (260, 1), (265, 1), (270, 0), (275, 1), (280, 1), (285, 0), (290, 0), (295, 0), (300, 1), (305, 0), (310, 1), (315, 0), (320, 1), (325, 0), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 0), (360, 1), (365, 0), (370, 0), (375, 1), (380, 1), (385, 0), (390, 1), (395, 1), (400, 0), (405, 1), (410, 1), (415, 1), (420, 0), (425, 1), (430, 1), (435, 1), (440, 1), (445, 0), (450, 1), (455, 1), (460, 0), (465, 1), (470, 0), (475, 1), (480, 1), (485, 1), (490, 1), (495, 0), (500, 1), (505, 0), (510, 1), (515, 0), (520, 1), (525, 1), (530, 0), (535, 0), (540, 1), (545, 1), (550, 0), (555, 0), (560, 1), (565, 1), (570, 0), (575, 0), (580, 1), (585, 0), (590, 1), (595, 1), (600, 0), (605, 0), (610, 0), (615, 1), (620, 1), (625, 0), (630, 1), (635, 1), (640, 0), (645, 1), (650, 0), (655, 0), (660, 1), (665, 0), (670, 1), (675, 1), (680, 1), (685, 1), (690, 0), (695, 1), (700, 1), (705, 1), (710, 0), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 0), (745, 1), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 1), (795, 1), (800, 1), (805, 0), (810, 0), (815, 1), (820, 0), (825, 0), (830, 0), (835, 1), (840, 1), (845, 1), (850, 0), (855, 1), (860, 1), (865, 0), (870, 1), (875, 1), (880, 1), (885, 1), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 1), (920, 0), (925, 1), (930, 1), (935, 1), (940, 0), (945, 0), (950, 1), (955, 1), (960, 0), (965, 1), (970, 1), (975, 1), (980, 1), (985, 0), (990, 1), (995, 1), (1000, 0), (1005, 1), (1010, 1), (1015, 0), (1020, 0), (1025, 1)]
VCSB1 CSB1 0 PWL (0n 0.9v 4.745n 0.9v 4.755n 0.9v 9.745n 0.9v 9.755n 0.9v 14.745n 0.9v 14.755n 0.9v 19.745n 0.9v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.9v 39.745n 0.9v 39.755n 0.9v 44.745n 0.9v 44.755n 0.9v 49.745n 0.9v 49.755n 0.0v 54.745n 0.0v 54.755n 0.9v 59.745n 0.9v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.9v 74.745n 0.9v 74.755n 0.0v 79.745n 0.0v 79.755n 0.9v 84.745n 0.9v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.9v 104.745n 0.9v 104.755n 0.0v 109.745n 0.0v 109.755n 0.9v 114.745n 0.9v 114.755n 0.0v 119.745n 0.0v 119.755n 0.9v 124.745n 0.9v 124.755n 0.9v 129.745n 0.9v 129.755n 0.0v 134.745n 0.0v 134.755n 0.9v 139.745n 0.9v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.9v 159.745n 0.9v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.9v 179.745n 0.9v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.9v 239.745n 0.9v 239.755n 0.0v 244.745n 0.0v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.0v 259.745n 0.0v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.0v 274.745n 0.0v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.9v 304.745n 0.9v 304.755n 0.0v 309.745n 0.0v 309.755n 0.9v 314.745n 0.9v 314.755n 0.0v 319.745n 0.0v 319.755n 0.9v 324.745n 0.9v 324.755n 0.0v 329.745n 0.0v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.0v 359.745n 0.0v 359.755n 0.9v 364.745n 0.9v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.0v 389.745n 0.0v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.0v 404.745n 0.0v 404.755n 0.9v 409.745n 0.9v 409.755n 0.9v 414.745n 0.9v 414.755n 0.9v 419.745n 0.9v 419.755n 0.0v 424.745n 0.0v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.0v 449.745n 0.0v 449.755n 0.9v 454.745n 0.9v 454.755n 0.9v 459.745n 0.9v 459.755n 0.0v 464.745n 0.0v 464.755n 0.9v 469.745n 0.9v 469.755n 0.0v 474.745n 0.0v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.0v 499.745n 0.0v 499.755n 0.9v 504.745n 0.9v 504.755n 0.0v 509.745n 0.0v 509.755n 0.9v 514.745n 0.9v 514.755n 0.0v 519.745n 0.0v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.9v 564.745n 0.9v 564.755n 0.9v 569.745n 0.9v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.9v 584.745n 0.9v 584.755n 0.0v 589.745n 0.0v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.9v 619.745n 0.9v 619.755n 0.9v 624.745n 0.9v 624.755n 0.0v 629.745n 0.0v 629.755n 0.9v 634.745n 0.9v 634.755n 0.9v 639.745n 0.9v 639.755n 0.0v 644.745n 0.0v 644.755n 0.9v 649.745n 0.9v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.9v 664.745n 0.9v 664.755n 0.0v 669.745n 0.0v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.0v 694.745n 0.0v 694.755n 0.9v 699.745n 0.9v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.0v 714.745n 0.0v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.9v 739.745n 0.9v 739.755n 0.0v 744.745n 0.0v 744.755n 0.9v 749.745n 0.9v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.9v 819.745n 0.9v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.0v 854.745n 0.0v 854.755n 0.9v 859.745n 0.9v 859.755n 0.9v 864.745n 0.9v 864.755n 0.0v 869.745n 0.0v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.9v 919.745n 0.9v 919.755n 0.0v 924.745n 0.0v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.0v 964.745n 0.0v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.0v 989.745n 0.0v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.9v )

* Generation of wmask signals
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 0), (35, 1), (40, 0), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 0), (105, 0), (110, 1), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 0), (155, 1), (160, 1), (165, 1), (170, 0), (175, 1), (180, 1), (185, 1), (190, 1), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 1), (225, 1), (230, 1), (235, 1), (240, 0), (245, 1), (250, 1), (255, 1), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 1), (300, 1), (305, 1), (310, 1), (315, 0), (320, 1), (325, 1), (330, 1), (335, 1), (340, 0), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 0), (400, 1), (405, 1), (410, 0), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 0), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 0), (640, 0), (645, 0), (650, 0), (655, 1), (660, 1), (665, 0), (670, 1), (675, 1), (680, 1), (685, 0), (690, 0), (695, 0), (700, 0), (705, 1), (710, 1), (715, 1), (720, 0), (725, 0), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 1), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 0), (845, 0), (850, 1), (855, 1), (860, 0), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 0), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 1), (945, 1), (950, 0), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
VWMASK0_0  WMASK0_0  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.9v 14.745n 0.9v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.0v 34.745n 0.0v 34.755n 0.9v 39.745n 0.9v 39.755n 0.0v 44.745n 0.0v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.9v 59.745n 0.9v 59.755n 0.9v 64.745n 0.9v 64.755n 0.9v 69.745n 0.9v 69.755n 0.9v 74.745n 0.9v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.9v 114.745n 0.9v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.9v 139.745n 0.9v 139.755n 0.9v 144.745n 0.9v 144.755n 0.9v 149.745n 0.9v 149.755n 0.0v 154.745n 0.0v 154.755n 0.9v 159.745n 0.9v 159.755n 0.9v 164.745n 0.9v 164.755n 0.9v 169.745n 0.9v 169.755n 0.0v 174.745n 0.0v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.9v 194.745n 0.9v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.9v 224.745n 0.9v 224.755n 0.9v 229.745n 0.9v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.0v 244.745n 0.0v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.0v 319.745n 0.0v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.0v 344.745n 0.0v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.0v 399.745n 0.0v 399.755n 0.9v 404.745n 0.9v 404.755n 0.9v 409.745n 0.9v 409.755n 0.0v 414.745n 0.0v 414.755n 0.9v 419.745n 0.9v 419.755n 0.9v 424.745n 0.9v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.0v 459.745n 0.0v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.9v 474.745n 0.9v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.9v 509.745n 0.9v 509.755n 0.9v 514.745n 0.9v 514.755n 0.9v 519.745n 0.9v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.9v 564.745n 0.9v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.9v 619.745n 0.9v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.0v 669.745n 0.0v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.9v 734.745n 0.9v 734.755n 0.9v 739.745n 0.9v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.9v 759.745n 0.9v 759.755n 0.9v 764.745n 0.9v 764.755n 0.9v 769.745n 0.9v 769.755n 0.9v 774.745n 0.9v 774.755n 0.9v 779.745n 0.9v 779.755n 0.9v 784.745n 0.9v 784.755n 0.9v 789.745n 0.9v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.9v 854.745n 0.9v 854.755n 0.9v 859.745n 0.9v 859.755n 0.0v 864.745n 0.0v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.9v 894.745n 0.9v 894.755n 0.9v 899.745n 0.9v 899.755n 0.9v 904.745n 0.9v 904.755n 0.0v 909.745n 0.0v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.0v 954.745n 0.0v 954.755n 0.9v 959.745n 0.9v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 0), (30, 0), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 0), (90, 0), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 0), (145, 0), (150, 0), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 0), (200, 0), (205, 0), (210, 1), (215, 1), (220, 0), (225, 0), (230, 1), (235, 0), (240, 0), (245, 1), (250, 1), (255, 1), (260, 0), (265, 0), (270, 0), (275, 1), (280, 1), (285, 0), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 0), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 0), (400, 1), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 0), (480, 1), (485, 1), (490, 1), (495, 0), (500, 0), (505, 0), (510, 0), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 0), (640, 0), (645, 0), (650, 1), (655, 1), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 0), (700, 1), (705, 1), (710, 1), (715, 1), (720, 0), (725, 0), (730, 0), (735, 1), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 1), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 0), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 1), (945, 0), (950, 1), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 1), (995, 0), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
VWMASK0_1  WMASK0_1  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.9v 14.745n 0.9v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.9v 39.745n 0.9v 39.755n 0.9v 44.745n 0.9v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.9v 59.745n 0.9v 59.755n 0.9v 64.745n 0.9v 64.755n 0.9v 69.745n 0.9v 69.755n 0.9v 74.745n 0.9v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.9v 139.745n 0.9v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.9v 159.745n 0.9v 159.755n 0.9v 164.745n 0.9v 164.755n 0.9v 169.745n 0.9v 169.755n 0.9v 174.745n 0.9v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.9v 194.745n 0.9v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.9v 234.745n 0.9v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.0v 289.745n 0.0v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.0v 344.745n 0.0v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.0v 399.745n 0.0v 399.755n 0.9v 404.745n 0.9v 404.755n 0.9v 409.745n 0.9v 409.755n 0.9v 414.745n 0.9v 414.755n 0.9v 419.745n 0.9v 419.755n 0.9v 424.745n 0.9v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.9v 474.745n 0.9v 474.755n 0.0v 479.745n 0.0v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.9v 564.745n 0.9v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.9v 619.745n 0.9v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.0v 699.745n 0.0v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.9v 739.745n 0.9v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.9v 759.745n 0.9v 759.755n 0.9v 764.745n 0.9v 764.755n 0.9v 769.745n 0.9v 769.755n 0.9v 774.745n 0.9v 774.755n 0.9v 779.745n 0.9v 779.755n 0.9v 784.745n 0.9v 784.755n 0.9v 789.745n 0.9v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.9v 854.745n 0.9v 854.755n 0.9v 859.745n 0.9v 859.755n 0.9v 864.745n 0.9v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.9v 894.745n 0.9v 894.755n 0.9v 899.745n 0.9v 899.755n 0.9v 904.745n 0.9v 904.755n 0.9v 909.745n 0.9v 909.755n 0.0v 914.745n 0.0v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.9v 944.745n 0.9v 944.755n 0.0v 949.745n 0.0v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.9v 994.745n 0.9v 994.755n 0.0v 999.745n 0.0v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 0), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 0), (90, 0), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 0), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 0), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 0), (225, 0), (230, 0), (235, 1), (240, 0), (245, 1), (250, 1), (255, 1), (260, 0), (265, 0), (270, 0), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 0), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 0), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 0), (515, 1), (520, 0), (525, 0), (530, 0), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 0), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 1), (650, 0), (655, 1), (660, 1), (665, 0), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 0), (700, 1), (705, 0), (710, 0), (715, 0), (720, 1), (725, 1), (730, 0), (735, 1), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 1), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 0), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 0), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 1), (945, 1), (950, 0), (955, 0), (960, 0), (965, 0), (970, 1), (975, 1), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
VWMASK0_2  WMASK0_2  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.9v 14.745n 0.9v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.0v 29.745n 0.0v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.9v 44.745n 0.9v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.9v 59.745n 0.9v 59.755n 0.9v 64.745n 0.9v 64.755n 0.9v 69.745n 0.9v 69.755n 0.9v 74.745n 0.9v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.9v 119.745n 0.9v 119.755n 0.0v 124.745n 0.0v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.9v 139.745n 0.9v 139.755n 0.9v 144.745n 0.9v 144.755n 0.9v 149.745n 0.9v 149.755n 0.9v 154.745n 0.9v 154.755n 0.9v 159.745n 0.9v 159.755n 0.9v 164.745n 0.9v 164.755n 0.9v 169.745n 0.9v 169.755n 0.0v 174.745n 0.0v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.9v 194.745n 0.9v 194.755n 0.9v 199.745n 0.9v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.9v 239.745n 0.9v 239.755n 0.0v 244.745n 0.0v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.9v 404.745n 0.9v 404.755n 0.9v 409.745n 0.9v 409.755n 0.0v 414.745n 0.0v 414.755n 0.9v 419.745n 0.9v 419.755n 0.9v 424.745n 0.9v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.0v 444.745n 0.0v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.9v 474.745n 0.9v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.9v 509.745n 0.9v 509.755n 0.0v 514.745n 0.0v 514.755n 0.9v 519.745n 0.9v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.9v 564.745n 0.9v 564.755n 0.9v 569.745n 0.9v 569.755n 0.0v 574.745n 0.0v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.9v 619.745n 0.9v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.9v 639.745n 0.9v 639.755n 0.9v 644.745n 0.9v 644.755n 0.9v 649.745n 0.9v 649.755n 0.0v 654.745n 0.0v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.0v 669.745n 0.0v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.0v 699.745n 0.0v 699.755n 0.9v 704.745n 0.9v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.9v 724.745n 0.9v 724.755n 0.9v 729.745n 0.9v 729.755n 0.0v 734.745n 0.0v 734.755n 0.9v 739.745n 0.9v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.9v 759.745n 0.9v 759.755n 0.9v 764.745n 0.9v 764.755n 0.9v 769.745n 0.9v 769.755n 0.9v 774.745n 0.9v 774.755n 0.9v 779.745n 0.9v 779.755n 0.9v 784.745n 0.9v 784.755n 0.9v 789.745n 0.9v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.9v 854.745n 0.9v 854.755n 0.0v 859.745n 0.0v 859.755n 0.9v 864.745n 0.9v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.9v 894.745n 0.9v 894.755n 0.9v 899.745n 0.9v 899.755n 0.9v 904.745n 0.9v 904.755n 0.0v 909.745n 0.0v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.9v 974.745n 0.9v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 0), (90, 0), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 0), (145, 0), (150, 0), (155, 1), (160, 1), (165, 1), (170, 0), (175, 1), (180, 1), (185, 1), (190, 1), (195, 0), (200, 0), (205, 0), (210, 1), (215, 0), (220, 0), (225, 0), (230, 0), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 0), (280, 0), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 0), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 0), (400, 1), (405, 1), (410, 0), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 0), (480, 1), (485, 1), (490, 1), (495, 0), (500, 0), (505, 0), (510, 1), (515, 1), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 0), (575, 1), (580, 0), (585, 0), (590, 0), (595, 1), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 0), (640, 0), (645, 0), (650, 0), (655, 1), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 0), (705, 1), (710, 1), (715, 1), (720, 0), (725, 0), (730, 0), (735, 1), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 1), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 1), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 1), (975, 1), (980, 1), (985, 1), (990, 1), (995, 0), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
VWMASK0_3  WMASK0_3  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.9v 14.745n 0.9v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.9v 44.745n 0.9v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.9v 59.745n 0.9v 59.755n 0.9v 64.745n 0.9v 64.755n 0.9v 69.745n 0.9v 69.755n 0.9v 74.745n 0.9v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.9v 139.745n 0.9v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.9v 159.745n 0.9v 159.755n 0.9v 164.745n 0.9v 164.755n 0.9v 169.745n 0.9v 169.755n 0.0v 174.745n 0.0v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.9v 194.745n 0.9v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.9v 214.745n 0.9v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.0v 319.745n 0.0v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.0v 399.745n 0.0v 399.755n 0.9v 404.745n 0.9v 404.755n 0.9v 409.745n 0.9v 409.755n 0.0v 414.745n 0.0v 414.755n 0.9v 419.745n 0.9v 419.755n 0.9v 424.745n 0.9v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.9v 474.745n 0.9v 474.755n 0.0v 479.745n 0.0v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.9v 514.745n 0.9v 514.755n 0.9v 519.745n 0.9v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.9v 564.745n 0.9v 564.755n 0.9v 569.745n 0.9v 569.755n 0.0v 574.745n 0.0v 574.755n 0.9v 579.745n 0.9v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.9v 599.745n 0.9v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.9v 619.745n 0.9v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.0v 704.745n 0.0v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.9v 739.745n 0.9v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.9v 759.745n 0.9v 759.755n 0.9v 764.745n 0.9v 764.755n 0.9v 769.745n 0.9v 769.755n 0.9v 774.745n 0.9v 774.755n 0.9v 779.745n 0.9v 779.755n 0.9v 784.745n 0.9v 784.755n 0.9v 789.745n 0.9v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.9v 854.745n 0.9v 854.755n 0.9v 859.745n 0.9v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.9v 889.745n 0.9v 889.755n 0.9v 894.745n 0.9v 894.755n 0.9v 899.745n 0.9v 899.755n 0.9v 904.745n 0.9v 904.755n 0.9v 909.745n 0.9v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.9v 944.745n 0.9v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.9v 974.745n 0.9v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.9v 994.745n 0.9v 994.755n 0.0v 999.745n 0.0v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
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

* CHECK dout1_0 Vdout1_0ck5 = 0 time = 30
.meas tran vdout1_0ck5 FIND v(dout1_0) AT=30.025n

* CHECK dout1_1 Vdout1_1ck5 = 0.9 time = 30
.meas tran vdout1_1ck5 FIND v(dout1_1) AT=30.025n

* CHECK dout1_2 Vdout1_2ck5 = 0.9 time = 30
.meas tran vdout1_2ck5 FIND v(dout1_2) AT=30.025n

* CHECK dout1_3 Vdout1_3ck5 = 0.9 time = 30
.meas tran vdout1_3ck5 FIND v(dout1_3) AT=30.025n

* CHECK dout1_0 Vdout1_0ck6 = 0.9 time = 35
.meas tran vdout1_0ck6 FIND v(dout1_0) AT=35.025n

* CHECK dout1_1 Vdout1_1ck6 = 0.9 time = 35
.meas tran vdout1_1ck6 FIND v(dout1_1) AT=35.025n

* CHECK dout1_2 Vdout1_2ck6 = 0.9 time = 35
.meas tran vdout1_2ck6 FIND v(dout1_2) AT=35.025n

* CHECK dout1_3 Vdout1_3ck6 = 0 time = 35
.meas tran vdout1_3ck6 FIND v(dout1_3) AT=35.025n

* CHECK dout1_0 Vdout1_0ck10 = 0.9 time = 55
.meas tran vdout1_0ck10 FIND v(dout1_0) AT=55.025n

* CHECK dout1_1 Vdout1_1ck10 = 0 time = 55
.meas tran vdout1_1ck10 FIND v(dout1_1) AT=55.025n

* CHECK dout1_2 Vdout1_2ck10 = 0.9 time = 55
.meas tran vdout1_2ck10 FIND v(dout1_2) AT=55.025n

* CHECK dout1_3 Vdout1_3ck10 = 0 time = 55
.meas tran vdout1_3ck10 FIND v(dout1_3) AT=55.025n

* CHECK dout1_0 Vdout1_0ck12 = 0.9 time = 65
.meas tran vdout1_0ck12 FIND v(dout1_0) AT=65.025n

* CHECK dout1_1 Vdout1_1ck12 = 0 time = 65
.meas tran vdout1_1ck12 FIND v(dout1_1) AT=65.025n

* CHECK dout1_2 Vdout1_2ck12 = 0.9 time = 65
.meas tran vdout1_2ck12 FIND v(dout1_2) AT=65.025n

* CHECK dout1_3 Vdout1_3ck12 = 0 time = 65
.meas tran vdout1_3ck12 FIND v(dout1_3) AT=65.025n

* CHECK dout1_0 Vdout1_0ck13 = 0 time = 70
.meas tran vdout1_0ck13 FIND v(dout1_0) AT=70.025n

* CHECK dout1_1 Vdout1_1ck13 = 0.9 time = 70
.meas tran vdout1_1ck13 FIND v(dout1_1) AT=70.025n

* CHECK dout1_2 Vdout1_2ck13 = 0 time = 70
.meas tran vdout1_2ck13 FIND v(dout1_2) AT=70.025n

* CHECK dout1_3 Vdout1_3ck13 = 0 time = 70
.meas tran vdout1_3ck13 FIND v(dout1_3) AT=70.025n

* CHECK dout1_0 Vdout1_0ck15 = 0.9 time = 80
.meas tran vdout1_0ck15 FIND v(dout1_0) AT=80.025n

* CHECK dout1_1 Vdout1_1ck15 = 0 time = 80
.meas tran vdout1_1ck15 FIND v(dout1_1) AT=80.025n

* CHECK dout1_2 Vdout1_2ck15 = 0.9 time = 80
.meas tran vdout1_2ck15 FIND v(dout1_2) AT=80.025n

* CHECK dout1_3 Vdout1_3ck15 = 0 time = 80
.meas tran vdout1_3ck15 FIND v(dout1_3) AT=80.025n

* CHECK dout1_0 Vdout1_0ck17 = 0.9 time = 90
.meas tran vdout1_0ck17 FIND v(dout1_0) AT=90.025n

* CHECK dout1_1 Vdout1_1ck17 = 0.9 time = 90
.meas tran vdout1_1ck17 FIND v(dout1_1) AT=90.025n

* CHECK dout1_2 Vdout1_2ck17 = 0 time = 90
.meas tran vdout1_2ck17 FIND v(dout1_2) AT=90.025n

* CHECK dout1_3 Vdout1_3ck17 = 0.9 time = 90
.meas tran vdout1_3ck17 FIND v(dout1_3) AT=90.025n

* CHECK dout1_0 Vdout1_0ck18 = 0.9 time = 95
.meas tran vdout1_0ck18 FIND v(dout1_0) AT=95.025n

* CHECK dout1_1 Vdout1_1ck18 = 0.9 time = 95
.meas tran vdout1_1ck18 FIND v(dout1_1) AT=95.025n

* CHECK dout1_2 Vdout1_2ck18 = 0 time = 95
.meas tran vdout1_2ck18 FIND v(dout1_2) AT=95.025n

* CHECK dout1_3 Vdout1_3ck18 = 0.9 time = 95
.meas tran vdout1_3ck18 FIND v(dout1_3) AT=95.025n

* CHECK dout1_0 Vdout1_0ck19 = 0 time = 100
.meas tran vdout1_0ck19 FIND v(dout1_0) AT=100.025n

* CHECK dout1_1 Vdout1_1ck19 = 0 time = 100
.meas tran vdout1_1ck19 FIND v(dout1_1) AT=100.025n

* CHECK dout1_2 Vdout1_2ck19 = 0.9 time = 100
.meas tran vdout1_2ck19 FIND v(dout1_2) AT=100.025n

* CHECK dout1_3 Vdout1_3ck19 = 0 time = 100
.meas tran vdout1_3ck19 FIND v(dout1_3) AT=100.025n

* CHECK dout1_0 Vdout1_0ck21 = 0.9 time = 110
.meas tran vdout1_0ck21 FIND v(dout1_0) AT=110.025n

* CHECK dout1_1 Vdout1_1ck21 = 0 time = 110
.meas tran vdout1_1ck21 FIND v(dout1_1) AT=110.025n

* CHECK dout1_2 Vdout1_2ck21 = 0 time = 110
.meas tran vdout1_2ck21 FIND v(dout1_2) AT=110.025n

* CHECK dout1_3 Vdout1_3ck21 = 0.9 time = 110
.meas tran vdout1_3ck21 FIND v(dout1_3) AT=110.025n

* CHECK dout1_0 Vdout1_0ck23 = 0 time = 120
.meas tran vdout1_0ck23 FIND v(dout1_0) AT=120.025n

* CHECK dout1_1 Vdout1_1ck23 = 0.9 time = 120
.meas tran vdout1_1ck23 FIND v(dout1_1) AT=120.025n

* CHECK dout1_2 Vdout1_2ck23 = 0 time = 120
.meas tran vdout1_2ck23 FIND v(dout1_2) AT=120.025n

* CHECK dout1_3 Vdout1_3ck23 = 0 time = 120
.meas tran vdout1_3ck23 FIND v(dout1_3) AT=120.025n

* CHECK dout1_0 Vdout1_0ck26 = 0 time = 135
.meas tran vdout1_0ck26 FIND v(dout1_0) AT=135.025n

* CHECK dout1_1 Vdout1_1ck26 = 0 time = 135
.meas tran vdout1_1ck26 FIND v(dout1_1) AT=135.025n

* CHECK dout1_2 Vdout1_2ck26 = 0.9 time = 135
.meas tran vdout1_2ck26 FIND v(dout1_2) AT=135.025n

* CHECK dout1_3 Vdout1_3ck26 = 0.9 time = 135
.meas tran vdout1_3ck26 FIND v(dout1_3) AT=135.025n

* CHECK dout1_0 Vdout1_0ck28 = 0.9 time = 145
.meas tran vdout1_0ck28 FIND v(dout1_0) AT=145.025n

* CHECK dout1_1 Vdout1_1ck28 = 0 time = 145
.meas tran vdout1_1ck28 FIND v(dout1_1) AT=145.025n

* CHECK dout1_2 Vdout1_2ck28 = 0 time = 145
.meas tran vdout1_2ck28 FIND v(dout1_2) AT=145.025n

* CHECK dout1_3 Vdout1_3ck28 = 0.9 time = 145
.meas tran vdout1_3ck28 FIND v(dout1_3) AT=145.025n

* CHECK dout1_0 Vdout1_0ck29 = 0 time = 150
.meas tran vdout1_0ck29 FIND v(dout1_0) AT=150.025n

* CHECK dout1_1 Vdout1_1ck29 = 0 time = 150
.meas tran vdout1_1ck29 FIND v(dout1_1) AT=150.025n

* CHECK dout1_2 Vdout1_2ck29 = 0.9 time = 150
.meas tran vdout1_2ck29 FIND v(dout1_2) AT=150.025n

* CHECK dout1_3 Vdout1_3ck29 = 0.9 time = 150
.meas tran vdout1_3ck29 FIND v(dout1_3) AT=150.025n

* CHECK dout1_0 Vdout1_0ck30 = 0.9 time = 155
.meas tran vdout1_0ck30 FIND v(dout1_0) AT=155.025n

* CHECK dout1_1 Vdout1_1ck30 = 0 time = 155
.meas tran vdout1_1ck30 FIND v(dout1_1) AT=155.025n

* CHECK dout1_2 Vdout1_2ck30 = 0 time = 155
.meas tran vdout1_2ck30 FIND v(dout1_2) AT=155.025n

* CHECK dout1_3 Vdout1_3ck30 = 0.9 time = 155
.meas tran vdout1_3ck30 FIND v(dout1_3) AT=155.025n

* CHECK dout1_0 Vdout1_0ck32 = 0.9 time = 165
.meas tran vdout1_0ck32 FIND v(dout1_0) AT=165.025n

* CHECK dout1_1 Vdout1_1ck32 = 0.9 time = 165
.meas tran vdout1_1ck32 FIND v(dout1_1) AT=165.025n

* CHECK dout1_2 Vdout1_2ck32 = 0 time = 165
.meas tran vdout1_2ck32 FIND v(dout1_2) AT=165.025n

* CHECK dout1_3 Vdout1_3ck32 = 0.9 time = 165
.meas tran vdout1_3ck32 FIND v(dout1_3) AT=165.025n

* CHECK dout1_0 Vdout1_0ck33 = 0.9 time = 170
.meas tran vdout1_0ck33 FIND v(dout1_0) AT=170.025n

* CHECK dout1_1 Vdout1_1ck33 = 0 time = 170
.meas tran vdout1_1ck33 FIND v(dout1_1) AT=170.025n

* CHECK dout1_2 Vdout1_2ck33 = 0 time = 170
.meas tran vdout1_2ck33 FIND v(dout1_2) AT=170.025n

* CHECK dout1_3 Vdout1_3ck33 = 0.9 time = 170
.meas tran vdout1_3ck33 FIND v(dout1_3) AT=170.025n

* CHECK dout1_0 Vdout1_0ck34 = 0 time = 175
.meas tran vdout1_0ck34 FIND v(dout1_0) AT=175.025n

* CHECK dout1_1 Vdout1_1ck34 = 0.9 time = 175
.meas tran vdout1_1ck34 FIND v(dout1_1) AT=175.025n

* CHECK dout1_2 Vdout1_2ck34 = 0 time = 175
.meas tran vdout1_2ck34 FIND v(dout1_2) AT=175.025n

* CHECK dout1_3 Vdout1_3ck34 = 0 time = 175
.meas tran vdout1_3ck34 FIND v(dout1_3) AT=175.025n

* CHECK dout1_0 Vdout1_0ck36 = 0.9 time = 185
.meas tran vdout1_0ck36 FIND v(dout1_0) AT=185.025n

* CHECK dout1_1 Vdout1_1ck36 = 0.9 time = 185
.meas tran vdout1_1ck36 FIND v(dout1_1) AT=185.025n

* CHECK dout1_2 Vdout1_2ck36 = 0 time = 185
.meas tran vdout1_2ck36 FIND v(dout1_2) AT=185.025n

* CHECK dout1_3 Vdout1_3ck36 = 0.9 time = 185
.meas tran vdout1_3ck36 FIND v(dout1_3) AT=185.025n

* CHECK dout1_0 Vdout1_0ck37 = 0.9 time = 190
.meas tran vdout1_0ck37 FIND v(dout1_0) AT=190.025n

* CHECK dout1_1 Vdout1_1ck37 = 0 time = 190
.meas tran vdout1_1ck37 FIND v(dout1_1) AT=190.025n

* CHECK dout1_2 Vdout1_2ck37 = 0.9 time = 190
.meas tran vdout1_2ck37 FIND v(dout1_2) AT=190.025n

* CHECK dout1_3 Vdout1_3ck37 = 0.9 time = 190
.meas tran vdout1_3ck37 FIND v(dout1_3) AT=190.025n

* CHECK dout1_0 Vdout1_0ck38 = 0 time = 195
.meas tran vdout1_0ck38 FIND v(dout1_0) AT=195.025n

* CHECK dout1_1 Vdout1_1ck38 = 0 time = 195
.meas tran vdout1_1ck38 FIND v(dout1_1) AT=195.025n

* CHECK dout1_2 Vdout1_2ck38 = 0 time = 195
.meas tran vdout1_2ck38 FIND v(dout1_2) AT=195.025n

* CHECK dout1_3 Vdout1_3ck38 = 0.9 time = 195
.meas tran vdout1_3ck38 FIND v(dout1_3) AT=195.025n

* CHECK dout1_0 Vdout1_0ck39 = 0.9 time = 200
.meas tran vdout1_0ck39 FIND v(dout1_0) AT=200.025n

* CHECK dout1_1 Vdout1_1ck39 = 0 time = 200
.meas tran vdout1_1ck39 FIND v(dout1_1) AT=200.025n

* CHECK dout1_2 Vdout1_2ck39 = 0 time = 200
.meas tran vdout1_2ck39 FIND v(dout1_2) AT=200.025n

* CHECK dout1_3 Vdout1_3ck39 = 0.9 time = 200
.meas tran vdout1_3ck39 FIND v(dout1_3) AT=200.025n

* CHECK dout1_0 Vdout1_0ck40 = 0 time = 205
.meas tran vdout1_0ck40 FIND v(dout1_0) AT=205.025n

* CHECK dout1_1 Vdout1_1ck40 = 0 time = 205
.meas tran vdout1_1ck40 FIND v(dout1_1) AT=205.025n

* CHECK dout1_2 Vdout1_2ck40 = 0.9 time = 205
.meas tran vdout1_2ck40 FIND v(dout1_2) AT=205.025n

* CHECK dout1_3 Vdout1_3ck40 = 0.9 time = 205
.meas tran vdout1_3ck40 FIND v(dout1_3) AT=205.025n

* CHECK dout1_0 Vdout1_0ck41 = 0.9 time = 210
.meas tran vdout1_0ck41 FIND v(dout1_0) AT=210.025n

* CHECK dout1_1 Vdout1_1ck41 = 0.9 time = 210
.meas tran vdout1_1ck41 FIND v(dout1_1) AT=210.025n

* CHECK dout1_2 Vdout1_2ck41 = 0 time = 210
.meas tran vdout1_2ck41 FIND v(dout1_2) AT=210.025n

* CHECK dout1_3 Vdout1_3ck41 = 0.9 time = 210
.meas tran vdout1_3ck41 FIND v(dout1_3) AT=210.025n

* CHECK dout1_0 Vdout1_0ck42 = 0 time = 215
.meas tran vdout1_0ck42 FIND v(dout1_0) AT=215.025n

* CHECK dout1_1 Vdout1_1ck42 = 0 time = 215
.meas tran vdout1_1ck42 FIND v(dout1_1) AT=215.025n

* CHECK dout1_2 Vdout1_2ck42 = 0 time = 215
.meas tran vdout1_2ck42 FIND v(dout1_2) AT=215.025n

* CHECK dout1_3 Vdout1_3ck42 = 0.9 time = 215
.meas tran vdout1_3ck42 FIND v(dout1_3) AT=215.025n

* CHECK dout1_0 Vdout1_0ck43 = 0.9 time = 220
.meas tran vdout1_0ck43 FIND v(dout1_0) AT=220.025n

* CHECK dout1_1 Vdout1_1ck43 = 0 time = 220
.meas tran vdout1_1ck43 FIND v(dout1_1) AT=220.025n

* CHECK dout1_2 Vdout1_2ck43 = 0.9 time = 220
.meas tran vdout1_2ck43 FIND v(dout1_2) AT=220.025n

* CHECK dout1_3 Vdout1_3ck43 = 0.9 time = 220
.meas tran vdout1_3ck43 FIND v(dout1_3) AT=220.025n

* CHECK dout1_0 Vdout1_0ck44 = 0 time = 225
.meas tran vdout1_0ck44 FIND v(dout1_0) AT=225.025n

* CHECK dout1_1 Vdout1_1ck44 = 0.9 time = 225
.meas tran vdout1_1ck44 FIND v(dout1_1) AT=225.025n

* CHECK dout1_2 Vdout1_2ck44 = 0 time = 225
.meas tran vdout1_2ck44 FIND v(dout1_2) AT=225.025n

* CHECK dout1_3 Vdout1_3ck44 = 0 time = 225
.meas tran vdout1_3ck44 FIND v(dout1_3) AT=225.025n

* CHECK dout1_0 Vdout1_0ck45 = 0.9 time = 230
.meas tran vdout1_0ck45 FIND v(dout1_0) AT=230.025n

* CHECK dout1_1 Vdout1_1ck45 = 0.9 time = 230
.meas tran vdout1_1ck45 FIND v(dout1_1) AT=230.025n

* CHECK dout1_2 Vdout1_2ck45 = 0 time = 230
.meas tran vdout1_2ck45 FIND v(dout1_2) AT=230.025n

* CHECK dout1_3 Vdout1_3ck45 = 0.9 time = 230
.meas tran vdout1_3ck45 FIND v(dout1_3) AT=230.025n

* CHECK dout1_0 Vdout1_0ck46 = 0.9 time = 235
.meas tran vdout1_0ck46 FIND v(dout1_0) AT=235.025n

* CHECK dout1_1 Vdout1_1ck46 = 0 time = 235
.meas tran vdout1_1ck46 FIND v(dout1_1) AT=235.025n

* CHECK dout1_2 Vdout1_2ck46 = 0 time = 235
.meas tran vdout1_2ck46 FIND v(dout1_2) AT=235.025n

* CHECK dout1_3 Vdout1_3ck46 = 0.9 time = 235
.meas tran vdout1_3ck46 FIND v(dout1_3) AT=235.025n

* CHECK dout1_0 Vdout1_0ck48 = 0.9 time = 245
.meas tran vdout1_0ck48 FIND v(dout1_0) AT=245.025n

* CHECK dout1_1 Vdout1_1ck48 = 0.9 time = 245
.meas tran vdout1_1ck48 FIND v(dout1_1) AT=245.025n

* CHECK dout1_2 Vdout1_2ck48 = 0.9 time = 245
.meas tran vdout1_2ck48 FIND v(dout1_2) AT=245.025n

* CHECK dout1_3 Vdout1_3ck48 = 0.9 time = 245
.meas tran vdout1_3ck48 FIND v(dout1_3) AT=245.025n

* CHECK dout1_0 Vdout1_0ck51 = 0.9 time = 260
.meas tran vdout1_0ck51 FIND v(dout1_0) AT=260.025n

* CHECK dout1_1 Vdout1_1ck51 = 0 time = 260
.meas tran vdout1_1ck51 FIND v(dout1_1) AT=260.025n

* CHECK dout1_2 Vdout1_2ck51 = 0.9 time = 260
.meas tran vdout1_2ck51 FIND v(dout1_2) AT=260.025n

* CHECK dout1_3 Vdout1_3ck51 = 0.9 time = 260
.meas tran vdout1_3ck51 FIND v(dout1_3) AT=260.025n

* CHECK dout1_0 Vdout1_0ck54 = 0 time = 275
.meas tran vdout1_0ck54 FIND v(dout1_0) AT=275.025n

* CHECK dout1_1 Vdout1_1ck54 = 0.9 time = 275
.meas tran vdout1_1ck54 FIND v(dout1_1) AT=275.025n

* CHECK dout1_2 Vdout1_2ck54 = 0 time = 275
.meas tran vdout1_2ck54 FIND v(dout1_2) AT=275.025n

* CHECK dout1_3 Vdout1_3ck54 = 0 time = 275
.meas tran vdout1_3ck54 FIND v(dout1_3) AT=275.025n

* CHECK dout1_0 Vdout1_0ck57 = 0.9 time = 290
.meas tran vdout1_0ck57 FIND v(dout1_0) AT=290.025n

* CHECK dout1_1 Vdout1_1ck57 = 0.9 time = 290
.meas tran vdout1_1ck57 FIND v(dout1_1) AT=290.025n

* CHECK dout1_2 Vdout1_2ck57 = 0 time = 290
.meas tran vdout1_2ck57 FIND v(dout1_2) AT=290.025n

* CHECK dout1_3 Vdout1_3ck57 = 0.9 time = 290
.meas tran vdout1_3ck57 FIND v(dout1_3) AT=290.025n

* CHECK dout1_0 Vdout1_0ck58 = 0.9 time = 295
.meas tran vdout1_0ck58 FIND v(dout1_0) AT=295.025n

* CHECK dout1_1 Vdout1_1ck58 = 0.9 time = 295
.meas tran vdout1_1ck58 FIND v(dout1_1) AT=295.025n

* CHECK dout1_2 Vdout1_2ck58 = 0 time = 295
.meas tran vdout1_2ck58 FIND v(dout1_2) AT=295.025n

* CHECK dout1_3 Vdout1_3ck58 = 0.9 time = 295
.meas tran vdout1_3ck58 FIND v(dout1_3) AT=295.025n

* CHECK dout1_0 Vdout1_0ck59 = 0 time = 300
.meas tran vdout1_0ck59 FIND v(dout1_0) AT=300.025n

* CHECK dout1_1 Vdout1_1ck59 = 0.9 time = 300
.meas tran vdout1_1ck59 FIND v(dout1_1) AT=300.025n

* CHECK dout1_2 Vdout1_2ck59 = 0 time = 300
.meas tran vdout1_2ck59 FIND v(dout1_2) AT=300.025n

* CHECK dout1_3 Vdout1_3ck59 = 0.9 time = 300
.meas tran vdout1_3ck59 FIND v(dout1_3) AT=300.025n

* CHECK dout1_0 Vdout1_0ck61 = 0.9 time = 310
.meas tran vdout1_0ck61 FIND v(dout1_0) AT=310.025n

* CHECK dout1_1 Vdout1_1ck61 = 0 time = 310
.meas tran vdout1_1ck61 FIND v(dout1_1) AT=310.025n

* CHECK dout1_2 Vdout1_2ck61 = 0.9 time = 310
.meas tran vdout1_2ck61 FIND v(dout1_2) AT=310.025n

* CHECK dout1_3 Vdout1_3ck61 = 0.9 time = 310
.meas tran vdout1_3ck61 FIND v(dout1_3) AT=310.025n

* CHECK dout1_0 Vdout1_0ck63 = 0.9 time = 320
.meas tran vdout1_0ck63 FIND v(dout1_0) AT=320.025n

* CHECK dout1_1 Vdout1_1ck63 = 0 time = 320
.meas tran vdout1_1ck63 FIND v(dout1_1) AT=320.025n

* CHECK dout1_2 Vdout1_2ck63 = 0 time = 320
.meas tran vdout1_2ck63 FIND v(dout1_2) AT=320.025n

* CHECK dout1_3 Vdout1_3ck63 = 0.9 time = 320
.meas tran vdout1_3ck63 FIND v(dout1_3) AT=320.025n

* CHECK dout1_0 Vdout1_0ck65 = 0.9 time = 330
.meas tran vdout1_0ck65 FIND v(dout1_0) AT=330.025n

* CHECK dout1_1 Vdout1_1ck65 = 0 time = 330
.meas tran vdout1_1ck65 FIND v(dout1_1) AT=330.025n

* CHECK dout1_2 Vdout1_2ck65 = 0.9 time = 330
.meas tran vdout1_2ck65 FIND v(dout1_2) AT=330.025n

* CHECK dout1_3 Vdout1_3ck65 = 0.9 time = 330
.meas tran vdout1_3ck65 FIND v(dout1_3) AT=330.025n

* CHECK dout1_0 Vdout1_0ck71 = 0 time = 360
.meas tran vdout1_0ck71 FIND v(dout1_0) AT=360.025n

* CHECK dout1_1 Vdout1_1ck71 = 0 time = 360
.meas tran vdout1_1ck71 FIND v(dout1_1) AT=360.025n

* CHECK dout1_2 Vdout1_2ck71 = 0 time = 360
.meas tran vdout1_2ck71 FIND v(dout1_2) AT=360.025n

* CHECK dout1_3 Vdout1_3ck71 = 0.9 time = 360
.meas tran vdout1_3ck71 FIND v(dout1_3) AT=360.025n

* CHECK dout1_0 Vdout1_0ck73 = 0 time = 370
.meas tran vdout1_0ck73 FIND v(dout1_0) AT=370.025n

* CHECK dout1_1 Vdout1_1ck73 = 0.9 time = 370
.meas tran vdout1_1ck73 FIND v(dout1_1) AT=370.025n

* CHECK dout1_2 Vdout1_2ck73 = 0 time = 370
.meas tran vdout1_2ck73 FIND v(dout1_2) AT=370.025n

* CHECK dout1_3 Vdout1_3ck73 = 0.9 time = 370
.meas tran vdout1_3ck73 FIND v(dout1_3) AT=370.025n

* CHECK dout1_0 Vdout1_0ck74 = 0 time = 375
.meas tran vdout1_0ck74 FIND v(dout1_0) AT=375.025n

* CHECK dout1_1 Vdout1_1ck74 = 0 time = 375
.meas tran vdout1_1ck74 FIND v(dout1_1) AT=375.025n

* CHECK dout1_2 Vdout1_2ck74 = 0.9 time = 375
.meas tran vdout1_2ck74 FIND v(dout1_2) AT=375.025n

* CHECK dout1_3 Vdout1_3ck74 = 0 time = 375
.meas tran vdout1_3ck74 FIND v(dout1_3) AT=375.025n

* CHECK dout1_0 Vdout1_0ck77 = 0 time = 390
.meas tran vdout1_0ck77 FIND v(dout1_0) AT=390.025n

* CHECK dout1_1 Vdout1_1ck77 = 0.9 time = 390
.meas tran vdout1_1ck77 FIND v(dout1_1) AT=390.025n

* CHECK dout1_2 Vdout1_2ck77 = 0 time = 390
.meas tran vdout1_2ck77 FIND v(dout1_2) AT=390.025n

* CHECK dout1_3 Vdout1_3ck77 = 0.9 time = 390
.meas tran vdout1_3ck77 FIND v(dout1_3) AT=390.025n

* CHECK dout1_0 Vdout1_0ck80 = 0 time = 405
.meas tran vdout1_0ck80 FIND v(dout1_0) AT=405.025n

* CHECK dout1_1 Vdout1_1ck80 = 0.9 time = 405
.meas tran vdout1_1ck80 FIND v(dout1_1) AT=405.025n

* CHECK dout1_2 Vdout1_2ck80 = 0.9 time = 405
.meas tran vdout1_2ck80 FIND v(dout1_2) AT=405.025n

* CHECK dout1_3 Vdout1_3ck80 = 0 time = 405
.meas tran vdout1_3ck80 FIND v(dout1_3) AT=405.025n

* CHECK dout1_0 Vdout1_0ck84 = 0 time = 425
.meas tran vdout1_0ck84 FIND v(dout1_0) AT=425.025n

* CHECK dout1_1 Vdout1_1ck84 = 0.9 time = 425
.meas tran vdout1_1ck84 FIND v(dout1_1) AT=425.025n

* CHECK dout1_2 Vdout1_2ck84 = 0 time = 425
.meas tran vdout1_2ck84 FIND v(dout1_2) AT=425.025n

* CHECK dout1_3 Vdout1_3ck84 = 0.9 time = 425
.meas tran vdout1_3ck84 FIND v(dout1_3) AT=425.025n

* CHECK dout1_0 Vdout1_0ck89 = 0 time = 450
.meas tran vdout1_0ck89 FIND v(dout1_0) AT=450.025n

* CHECK dout1_1 Vdout1_1ck89 = 0 time = 450
.meas tran vdout1_1ck89 FIND v(dout1_1) AT=450.025n

* CHECK dout1_2 Vdout1_2ck89 = 0 time = 450
.meas tran vdout1_2ck89 FIND v(dout1_2) AT=450.025n

* CHECK dout1_3 Vdout1_3ck89 = 0.9 time = 450
.meas tran vdout1_3ck89 FIND v(dout1_3) AT=450.025n

* CHECK dout1_0 Vdout1_0ck92 = 0.9 time = 465
.meas tran vdout1_0ck92 FIND v(dout1_0) AT=465.025n

* CHECK dout1_1 Vdout1_1ck92 = 0 time = 465
.meas tran vdout1_1ck92 FIND v(dout1_1) AT=465.025n

* CHECK dout1_2 Vdout1_2ck92 = 0 time = 465
.meas tran vdout1_2ck92 FIND v(dout1_2) AT=465.025n

* CHECK dout1_3 Vdout1_3ck92 = 0.9 time = 465
.meas tran vdout1_3ck92 FIND v(dout1_3) AT=465.025n

* CHECK dout1_0 Vdout1_0ck94 = 0 time = 475
.meas tran vdout1_0ck94 FIND v(dout1_0) AT=475.025n

* CHECK dout1_1 Vdout1_1ck94 = 0.9 time = 475
.meas tran vdout1_1ck94 FIND v(dout1_1) AT=475.025n

* CHECK dout1_2 Vdout1_2ck94 = 0.9 time = 475
.meas tran vdout1_2ck94 FIND v(dout1_2) AT=475.025n

* CHECK dout1_3 Vdout1_3ck94 = 0.9 time = 475
.meas tran vdout1_3ck94 FIND v(dout1_3) AT=475.025n

* CHECK dout1_0 Vdout1_0ck99 = 0 time = 500
.meas tran vdout1_0ck99 FIND v(dout1_0) AT=500.025n

* CHECK dout1_1 Vdout1_1ck99 = 0.9 time = 500
.meas tran vdout1_1ck99 FIND v(dout1_1) AT=500.025n

* CHECK dout1_2 Vdout1_2ck99 = 0.9 time = 500
.meas tran vdout1_2ck99 FIND v(dout1_2) AT=500.025n

* CHECK dout1_3 Vdout1_3ck99 = 0 time = 500
.meas tran vdout1_3ck99 FIND v(dout1_3) AT=500.025n

* CHECK dout1_0 Vdout1_0ck101 = 0.9 time = 510
.meas tran vdout1_0ck101 FIND v(dout1_0) AT=510.025n

* CHECK dout1_1 Vdout1_1ck101 = 0.9 time = 510
.meas tran vdout1_1ck101 FIND v(dout1_1) AT=510.025n

* CHECK dout1_2 Vdout1_2ck101 = 0 time = 510
.meas tran vdout1_2ck101 FIND v(dout1_2) AT=510.025n

* CHECK dout1_3 Vdout1_3ck101 = 0.9 time = 510
.meas tran vdout1_3ck101 FIND v(dout1_3) AT=510.025n

* CHECK dout1_0 Vdout1_0ck103 = 0 time = 520
.meas tran vdout1_0ck103 FIND v(dout1_0) AT=520.025n

* CHECK dout1_1 Vdout1_1ck103 = 0.9 time = 520
.meas tran vdout1_1ck103 FIND v(dout1_1) AT=520.025n

* CHECK dout1_2 Vdout1_2ck103 = 0.9 time = 520
.meas tran vdout1_2ck103 FIND v(dout1_2) AT=520.025n

* CHECK dout1_3 Vdout1_3ck103 = 0.9 time = 520
.meas tran vdout1_3ck103 FIND v(dout1_3) AT=520.025n

* CHECK dout1_0 Vdout1_0ck106 = 0.9 time = 535
.meas tran vdout1_0ck106 FIND v(dout1_0) AT=535.025n

* CHECK dout1_1 Vdout1_1ck106 = 0.9 time = 535
.meas tran vdout1_1ck106 FIND v(dout1_1) AT=535.025n

* CHECK dout1_2 Vdout1_2ck106 = 0 time = 535
.meas tran vdout1_2ck106 FIND v(dout1_2) AT=535.025n

* CHECK dout1_3 Vdout1_3ck106 = 0.9 time = 535
.meas tran vdout1_3ck106 FIND v(dout1_3) AT=535.025n

* CHECK dout1_0 Vdout1_0ck107 = 0 time = 540
.meas tran vdout1_0ck107 FIND v(dout1_0) AT=540.025n

* CHECK dout1_1 Vdout1_1ck107 = 0.9 time = 540
.meas tran vdout1_1ck107 FIND v(dout1_1) AT=540.025n

* CHECK dout1_2 Vdout1_2ck107 = 0 time = 540
.meas tran vdout1_2ck107 FIND v(dout1_2) AT=540.025n

* CHECK dout1_3 Vdout1_3ck107 = 0.9 time = 540
.meas tran vdout1_3ck107 FIND v(dout1_3) AT=540.025n

* CHECK dout1_0 Vdout1_0ck110 = 0 time = 555
.meas tran vdout1_0ck110 FIND v(dout1_0) AT=555.025n

* CHECK dout1_1 Vdout1_1ck110 = 0 time = 555
.meas tran vdout1_1ck110 FIND v(dout1_1) AT=555.025n

* CHECK dout1_2 Vdout1_2ck110 = 0.9 time = 555
.meas tran vdout1_2ck110 FIND v(dout1_2) AT=555.025n

* CHECK dout1_3 Vdout1_3ck110 = 0 time = 555
.meas tran vdout1_3ck110 FIND v(dout1_3) AT=555.025n

* CHECK dout1_0 Vdout1_0ck111 = 0 time = 560
.meas tran vdout1_0ck111 FIND v(dout1_0) AT=560.025n

* CHECK dout1_1 Vdout1_1ck111 = 0 time = 560
.meas tran vdout1_1ck111 FIND v(dout1_1) AT=560.025n

* CHECK dout1_2 Vdout1_2ck111 = 0.9 time = 560
.meas tran vdout1_2ck111 FIND v(dout1_2) AT=560.025n

* CHECK dout1_3 Vdout1_3ck111 = 0 time = 560
.meas tran vdout1_3ck111 FIND v(dout1_3) AT=560.025n

* CHECK dout1_0 Vdout1_0ck114 = 0.9 time = 575
.meas tran vdout1_0ck114 FIND v(dout1_0) AT=575.025n

* CHECK dout1_1 Vdout1_1ck114 = 0 time = 575
.meas tran vdout1_1ck114 FIND v(dout1_1) AT=575.025n

* CHECK dout1_2 Vdout1_2ck114 = 0 time = 575
.meas tran vdout1_2ck114 FIND v(dout1_2) AT=575.025n

* CHECK dout1_3 Vdout1_3ck114 = 0 time = 575
.meas tran vdout1_3ck114 FIND v(dout1_3) AT=575.025n

* CHECK dout1_0 Vdout1_0ck115 = 0.9 time = 580
.meas tran vdout1_0ck115 FIND v(dout1_0) AT=580.025n

* CHECK dout1_1 Vdout1_1ck115 = 0 time = 580
.meas tran vdout1_1ck115 FIND v(dout1_1) AT=580.025n

* CHECK dout1_2 Vdout1_2ck115 = 0 time = 580
.meas tran vdout1_2ck115 FIND v(dout1_2) AT=580.025n

* CHECK dout1_3 Vdout1_3ck115 = 0 time = 580
.meas tran vdout1_3ck115 FIND v(dout1_3) AT=580.025n

* CHECK dout1_0 Vdout1_0ck117 = 0.9 time = 590
.meas tran vdout1_0ck117 FIND v(dout1_0) AT=590.025n

* CHECK dout1_1 Vdout1_1ck117 = 0.9 time = 590
.meas tran vdout1_1ck117 FIND v(dout1_1) AT=590.025n

* CHECK dout1_2 Vdout1_2ck117 = 0.9 time = 590
.meas tran vdout1_2ck117 FIND v(dout1_2) AT=590.025n

* CHECK dout1_3 Vdout1_3ck117 = 0 time = 590
.meas tran vdout1_3ck117 FIND v(dout1_3) AT=590.025n

* CHECK dout1_0 Vdout1_0ck120 = 0 time = 605
.meas tran vdout1_0ck120 FIND v(dout1_0) AT=605.025n

* CHECK dout1_1 Vdout1_1ck120 = 0.9 time = 605
.meas tran vdout1_1ck120 FIND v(dout1_1) AT=605.025n

* CHECK dout1_2 Vdout1_2ck120 = 0 time = 605
.meas tran vdout1_2ck120 FIND v(dout1_2) AT=605.025n

* CHECK dout1_3 Vdout1_3ck120 = 0.9 time = 605
.meas tran vdout1_3ck120 FIND v(dout1_3) AT=605.025n

* CHECK dout1_0 Vdout1_0ck121 = 0.9 time = 610
.meas tran vdout1_0ck121 FIND v(dout1_0) AT=610.025n

* CHECK dout1_1 Vdout1_1ck121 = 0.9 time = 610
.meas tran vdout1_1ck121 FIND v(dout1_1) AT=610.025n

* CHECK dout1_2 Vdout1_2ck121 = 0.9 time = 610
.meas tran vdout1_2ck121 FIND v(dout1_2) AT=610.025n

* CHECK dout1_3 Vdout1_3ck121 = 0 time = 610
.meas tran vdout1_3ck121 FIND v(dout1_3) AT=610.025n

* CHECK dout1_0 Vdout1_0ck122 = 0.9 time = 615
.meas tran vdout1_0ck122 FIND v(dout1_0) AT=615.025n

* CHECK dout1_1 Vdout1_1ck122 = 0.9 time = 615
.meas tran vdout1_1ck122 FIND v(dout1_1) AT=615.025n

* CHECK dout1_2 Vdout1_2ck122 = 0.9 time = 615
.meas tran vdout1_2ck122 FIND v(dout1_2) AT=615.025n

* CHECK dout1_3 Vdout1_3ck122 = 0 time = 615
.meas tran vdout1_3ck122 FIND v(dout1_3) AT=615.025n

* CHECK dout1_0 Vdout1_0ck125 = 0.9 time = 630
.meas tran vdout1_0ck125 FIND v(dout1_0) AT=630.025n

* CHECK dout1_1 Vdout1_1ck125 = 0 time = 630
.meas tran vdout1_1ck125 FIND v(dout1_1) AT=630.025n

* CHECK dout1_2 Vdout1_2ck125 = 0.9 time = 630
.meas tran vdout1_2ck125 FIND v(dout1_2) AT=630.025n

* CHECK dout1_3 Vdout1_3ck125 = 0.9 time = 630
.meas tran vdout1_3ck125 FIND v(dout1_3) AT=630.025n

* CHECK dout1_0 Vdout1_0ck128 = 0.9 time = 645
.meas tran vdout1_0ck128 FIND v(dout1_0) AT=645.025n

* CHECK dout1_1 Vdout1_1ck128 = 0 time = 645
.meas tran vdout1_1ck128 FIND v(dout1_1) AT=645.025n

* CHECK dout1_2 Vdout1_2ck128 = 0.9 time = 645
.meas tran vdout1_2ck128 FIND v(dout1_2) AT=645.025n

* CHECK dout1_3 Vdout1_3ck128 = 0.9 time = 645
.meas tran vdout1_3ck128 FIND v(dout1_3) AT=645.025n

* CHECK dout1_0 Vdout1_0ck130 = 0 time = 655
.meas tran vdout1_0ck130 FIND v(dout1_0) AT=655.025n

* CHECK dout1_1 Vdout1_1ck130 = 0.9 time = 655
.meas tran vdout1_1ck130 FIND v(dout1_1) AT=655.025n

* CHECK dout1_2 Vdout1_2ck130 = 0 time = 655
.meas tran vdout1_2ck130 FIND v(dout1_2) AT=655.025n

* CHECK dout1_3 Vdout1_3ck130 = 0.9 time = 655
.meas tran vdout1_3ck130 FIND v(dout1_3) AT=655.025n

* CHECK dout1_0 Vdout1_0ck131 = 0 time = 660
.meas tran vdout1_0ck131 FIND v(dout1_0) AT=660.025n

* CHECK dout1_1 Vdout1_1ck131 = 0.9 time = 660
.meas tran vdout1_1ck131 FIND v(dout1_1) AT=660.025n

* CHECK dout1_2 Vdout1_2ck131 = 0.9 time = 660
.meas tran vdout1_2ck131 FIND v(dout1_2) AT=660.025n

* CHECK dout1_3 Vdout1_3ck131 = 0.9 time = 660
.meas tran vdout1_3ck131 FIND v(dout1_3) AT=660.025n

* CHECK dout1_0 Vdout1_0ck133 = 0 time = 670
.meas tran vdout1_0ck133 FIND v(dout1_0) AT=670.025n

* CHECK dout1_1 Vdout1_1ck133 = 0.9 time = 670
.meas tran vdout1_1ck133 FIND v(dout1_1) AT=670.025n

* CHECK dout1_2 Vdout1_2ck133 = 0.9 time = 670
.meas tran vdout1_2ck133 FIND v(dout1_2) AT=670.025n

* CHECK dout1_3 Vdout1_3ck133 = 0.9 time = 670
.meas tran vdout1_3ck133 FIND v(dout1_3) AT=670.025n

* CHECK dout1_0 Vdout1_0ck138 = 0 time = 695
.meas tran vdout1_0ck138 FIND v(dout1_0) AT=695.025n

* CHECK dout1_1 Vdout1_1ck138 = 0.9 time = 695
.meas tran vdout1_1ck138 FIND v(dout1_1) AT=695.025n

* CHECK dout1_2 Vdout1_2ck138 = 0 time = 695
.meas tran vdout1_2ck138 FIND v(dout1_2) AT=695.025n

* CHECK dout1_3 Vdout1_3ck138 = 0.9 time = 695
.meas tran vdout1_3ck138 FIND v(dout1_3) AT=695.025n

* CHECK dout1_0 Vdout1_0ck142 = 0.9 time = 715
.meas tran vdout1_0ck142 FIND v(dout1_0) AT=715.025n

* CHECK dout1_1 Vdout1_1ck142 = 0.9 time = 715
.meas tran vdout1_1ck142 FIND v(dout1_1) AT=715.025n

* CHECK dout1_2 Vdout1_2ck142 = 0.9 time = 715
.meas tran vdout1_2ck142 FIND v(dout1_2) AT=715.025n

* CHECK dout1_3 Vdout1_3ck142 = 0 time = 715
.meas tran vdout1_3ck142 FIND v(dout1_3) AT=715.025n

* CHECK dout1_0 Vdout1_0ck148 = 0 time = 745
.meas tran vdout1_0ck148 FIND v(dout1_0) AT=745.025n

* CHECK dout1_1 Vdout1_1ck148 = 0 time = 745
.meas tran vdout1_1ck148 FIND v(dout1_1) AT=745.025n

* CHECK dout1_2 Vdout1_2ck148 = 0 time = 745
.meas tran vdout1_2ck148 FIND v(dout1_2) AT=745.025n

* CHECK dout1_3 Vdout1_3ck148 = 0.9 time = 745
.meas tran vdout1_3ck148 FIND v(dout1_3) AT=745.025n

* CHECK dout1_0 Vdout1_0ck150 = 0 time = 755
.meas tran vdout1_0ck150 FIND v(dout1_0) AT=755.025n

* CHECK dout1_1 Vdout1_1ck150 = 0.9 time = 755
.meas tran vdout1_1ck150 FIND v(dout1_1) AT=755.025n

* CHECK dout1_2 Vdout1_2ck150 = 0.9 time = 755
.meas tran vdout1_2ck150 FIND v(dout1_2) AT=755.025n

* CHECK dout1_3 Vdout1_3ck150 = 0 time = 755
.meas tran vdout1_3ck150 FIND v(dout1_3) AT=755.025n

* CHECK dout1_0 Vdout1_0ck151 = 0.9 time = 760
.meas tran vdout1_0ck151 FIND v(dout1_0) AT=760.025n

* CHECK dout1_1 Vdout1_1ck151 = 0 time = 760
.meas tran vdout1_1ck151 FIND v(dout1_1) AT=760.025n

* CHECK dout1_2 Vdout1_2ck151 = 0.9 time = 760
.meas tran vdout1_2ck151 FIND v(dout1_2) AT=760.025n

* CHECK dout1_3 Vdout1_3ck151 = 0.9 time = 760
.meas tran vdout1_3ck151 FIND v(dout1_3) AT=760.025n

* CHECK dout1_0 Vdout1_0ck152 = 0 time = 765
.meas tran vdout1_0ck152 FIND v(dout1_0) AT=765.025n

* CHECK dout1_1 Vdout1_1ck152 = 0.9 time = 765
.meas tran vdout1_1ck152 FIND v(dout1_1) AT=765.025n

* CHECK dout1_2 Vdout1_2ck152 = 0 time = 765
.meas tran vdout1_2ck152 FIND v(dout1_2) AT=765.025n

* CHECK dout1_3 Vdout1_3ck152 = 0.9 time = 765
.meas tran vdout1_3ck152 FIND v(dout1_3) AT=765.025n

* CHECK dout1_0 Vdout1_0ck153 = 0.9 time = 770
.meas tran vdout1_0ck153 FIND v(dout1_0) AT=770.025n

* CHECK dout1_1 Vdout1_1ck153 = 0 time = 770
.meas tran vdout1_1ck153 FIND v(dout1_1) AT=770.025n

* CHECK dout1_2 Vdout1_2ck153 = 0 time = 770
.meas tran vdout1_2ck153 FIND v(dout1_2) AT=770.025n

* CHECK dout1_3 Vdout1_3ck153 = 0 time = 770
.meas tran vdout1_3ck153 FIND v(dout1_3) AT=770.025n

* CHECK dout1_0 Vdout1_0ck154 = 0 time = 775
.meas tran vdout1_0ck154 FIND v(dout1_0) AT=775.025n

* CHECK dout1_1 Vdout1_1ck154 = 0.9 time = 775
.meas tran vdout1_1ck154 FIND v(dout1_1) AT=775.025n

* CHECK dout1_2 Vdout1_2ck154 = 0.9 time = 775
.meas tran vdout1_2ck154 FIND v(dout1_2) AT=775.025n

* CHECK dout1_3 Vdout1_3ck154 = 0.9 time = 775
.meas tran vdout1_3ck154 FIND v(dout1_3) AT=775.025n

* CHECK dout1_0 Vdout1_0ck155 = 0 time = 780
.meas tran vdout1_0ck155 FIND v(dout1_0) AT=780.025n

* CHECK dout1_1 Vdout1_1ck155 = 0.9 time = 780
.meas tran vdout1_1ck155 FIND v(dout1_1) AT=780.025n

* CHECK dout1_2 Vdout1_2ck155 = 0 time = 780
.meas tran vdout1_2ck155 FIND v(dout1_2) AT=780.025n

* CHECK dout1_3 Vdout1_3ck155 = 0.9 time = 780
.meas tran vdout1_3ck155 FIND v(dout1_3) AT=780.025n

* CHECK dout1_0 Vdout1_0ck156 = 0 time = 785
.meas tran vdout1_0ck156 FIND v(dout1_0) AT=785.025n

* CHECK dout1_1 Vdout1_1ck156 = 0 time = 785
.meas tran vdout1_1ck156 FIND v(dout1_1) AT=785.025n

* CHECK dout1_2 Vdout1_2ck156 = 0 time = 785
.meas tran vdout1_2ck156 FIND v(dout1_2) AT=785.025n

* CHECK dout1_3 Vdout1_3ck156 = 0.9 time = 785
.meas tran vdout1_3ck156 FIND v(dout1_3) AT=785.025n

* CHECK dout1_0 Vdout1_0ck157 = 0 time = 790
.meas tran vdout1_0ck157 FIND v(dout1_0) AT=790.025n

* CHECK dout1_1 Vdout1_1ck157 = 0.9 time = 790
.meas tran vdout1_1ck157 FIND v(dout1_1) AT=790.025n

* CHECK dout1_2 Vdout1_2ck157 = 0.9 time = 790
.meas tran vdout1_2ck157 FIND v(dout1_2) AT=790.025n

* CHECK dout1_3 Vdout1_3ck157 = 0.9 time = 790
.meas tran vdout1_3ck157 FIND v(dout1_3) AT=790.025n

* CHECK dout1_0 Vdout1_0ck161 = 0.9 time = 810
.meas tran vdout1_0ck161 FIND v(dout1_0) AT=810.025n

* CHECK dout1_1 Vdout1_1ck161 = 0 time = 810
.meas tran vdout1_1ck161 FIND v(dout1_1) AT=810.025n

* CHECK dout1_2 Vdout1_2ck161 = 0 time = 810
.meas tran vdout1_2ck161 FIND v(dout1_2) AT=810.025n

* CHECK dout1_3 Vdout1_3ck161 = 0 time = 810
.meas tran vdout1_3ck161 FIND v(dout1_3) AT=810.025n

* CHECK dout1_0 Vdout1_0ck162 = 0.9 time = 815
.meas tran vdout1_0ck162 FIND v(dout1_0) AT=815.025n

* CHECK dout1_1 Vdout1_1ck162 = 0 time = 815
.meas tran vdout1_1ck162 FIND v(dout1_1) AT=815.025n

* CHECK dout1_2 Vdout1_2ck162 = 0 time = 815
.meas tran vdout1_2ck162 FIND v(dout1_2) AT=815.025n

* CHECK dout1_3 Vdout1_3ck162 = 0 time = 815
.meas tran vdout1_3ck162 FIND v(dout1_3) AT=815.025n

* CHECK dout1_0 Vdout1_0ck164 = 0 time = 825
.meas tran vdout1_0ck164 FIND v(dout1_0) AT=825.025n

* CHECK dout1_1 Vdout1_1ck164 = 0.9 time = 825
.meas tran vdout1_1ck164 FIND v(dout1_1) AT=825.025n

* CHECK dout1_2 Vdout1_2ck164 = 0 time = 825
.meas tran vdout1_2ck164 FIND v(dout1_2) AT=825.025n

* CHECK dout1_3 Vdout1_3ck164 = 0.9 time = 825
.meas tran vdout1_3ck164 FIND v(dout1_3) AT=825.025n

* CHECK dout1_0 Vdout1_0ck165 = 0.9 time = 830
.meas tran vdout1_0ck165 FIND v(dout1_0) AT=830.025n

* CHECK dout1_1 Vdout1_1ck165 = 0.9 time = 830
.meas tran vdout1_1ck165 FIND v(dout1_1) AT=830.025n

* CHECK dout1_2 Vdout1_2ck165 = 0.9 time = 830
.meas tran vdout1_2ck165 FIND v(dout1_2) AT=830.025n

* CHECK dout1_3 Vdout1_3ck165 = 0 time = 830
.meas tran vdout1_3ck165 FIND v(dout1_3) AT=830.025n

* CHECK dout1_0 Vdout1_0ck166 = 0.9 time = 835
.meas tran vdout1_0ck166 FIND v(dout1_0) AT=835.025n

* CHECK dout1_1 Vdout1_1ck166 = 0.9 time = 835
.meas tran vdout1_1ck166 FIND v(dout1_1) AT=835.025n

* CHECK dout1_2 Vdout1_2ck166 = 0 time = 835
.meas tran vdout1_2ck166 FIND v(dout1_2) AT=835.025n

* CHECK dout1_3 Vdout1_3ck166 = 0.9 time = 835
.meas tran vdout1_3ck166 FIND v(dout1_3) AT=835.025n

* CHECK dout1_0 Vdout1_0ck170 = 0 time = 855
.meas tran vdout1_0ck170 FIND v(dout1_0) AT=855.025n

* CHECK dout1_1 Vdout1_1ck170 = 0 time = 855
.meas tran vdout1_1ck170 FIND v(dout1_1) AT=855.025n

* CHECK dout1_2 Vdout1_2ck170 = 0 time = 855
.meas tran vdout1_2ck170 FIND v(dout1_2) AT=855.025n

* CHECK dout1_3 Vdout1_3ck170 = 0.9 time = 855
.meas tran vdout1_3ck170 FIND v(dout1_3) AT=855.025n

* CHECK dout1_0 Vdout1_0ck173 = 0 time = 870
.meas tran vdout1_0ck173 FIND v(dout1_0) AT=870.025n

* CHECK dout1_1 Vdout1_1ck173 = 0 time = 870
.meas tran vdout1_1ck173 FIND v(dout1_1) AT=870.025n

* CHECK dout1_2 Vdout1_2ck173 = 0 time = 870
.meas tran vdout1_2ck173 FIND v(dout1_2) AT=870.025n

* CHECK dout1_3 Vdout1_3ck173 = 0.9 time = 870
.meas tran vdout1_3ck173 FIND v(dout1_3) AT=870.025n

* CHECK dout1_0 Vdout1_0ck178 = 0 time = 895
.meas tran vdout1_0ck178 FIND v(dout1_0) AT=895.025n

* CHECK dout1_1 Vdout1_1ck178 = 0.9 time = 895
.meas tran vdout1_1ck178 FIND v(dout1_1) AT=895.025n

* CHECK dout1_2 Vdout1_2ck178 = 0 time = 895
.meas tran vdout1_2ck178 FIND v(dout1_2) AT=895.025n

* CHECK dout1_3 Vdout1_3ck178 = 0.9 time = 895
.meas tran vdout1_3ck178 FIND v(dout1_3) AT=895.025n

* CHECK dout1_0 Vdout1_0ck179 = 0.9 time = 900
.meas tran vdout1_0ck179 FIND v(dout1_0) AT=900.025n

* CHECK dout1_1 Vdout1_1ck179 = 0.9 time = 900
.meas tran vdout1_1ck179 FIND v(dout1_1) AT=900.025n

* CHECK dout1_2 Vdout1_2ck179 = 0 time = 900
.meas tran vdout1_2ck179 FIND v(dout1_2) AT=900.025n

* CHECK dout1_3 Vdout1_3ck179 = 0.9 time = 900
.meas tran vdout1_3ck179 FIND v(dout1_3) AT=900.025n

* CHECK dout1_0 Vdout1_0ck180 = 0 time = 905
.meas tran vdout1_0ck180 FIND v(dout1_0) AT=905.025n

* CHECK dout1_1 Vdout1_1ck180 = 0.9 time = 905
.meas tran vdout1_1ck180 FIND v(dout1_1) AT=905.025n

* CHECK dout1_2 Vdout1_2ck180 = 0 time = 905
.meas tran vdout1_2ck180 FIND v(dout1_2) AT=905.025n

* CHECK dout1_3 Vdout1_3ck180 = 0 time = 905
.meas tran vdout1_3ck180 FIND v(dout1_3) AT=905.025n

* CHECK dout1_0 Vdout1_0ck181 = 0.9 time = 910
.meas tran vdout1_0ck181 FIND v(dout1_0) AT=910.025n

* CHECK dout1_1 Vdout1_1ck181 = 0 time = 910
.meas tran vdout1_1ck181 FIND v(dout1_1) AT=910.025n

* CHECK dout1_2 Vdout1_2ck181 = 0 time = 910
.meas tran vdout1_2ck181 FIND v(dout1_2) AT=910.025n

* CHECK dout1_3 Vdout1_3ck181 = 0 time = 910
.meas tran vdout1_3ck181 FIND v(dout1_3) AT=910.025n

* CHECK dout1_0 Vdout1_0ck182 = 0.9 time = 915
.meas tran vdout1_0ck182 FIND v(dout1_0) AT=915.025n

* CHECK dout1_1 Vdout1_1ck182 = 0.9 time = 915
.meas tran vdout1_1ck182 FIND v(dout1_1) AT=915.025n

* CHECK dout1_2 Vdout1_2ck182 = 0.9 time = 915
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

* CHECK dout1_0 Vdout1_0ck188 = 0 time = 945
.meas tran vdout1_0ck188 FIND v(dout1_0) AT=945.025n

* CHECK dout1_1 Vdout1_1ck188 = 0.9 time = 945
.meas tran vdout1_1ck188 FIND v(dout1_1) AT=945.025n

* CHECK dout1_2 Vdout1_2ck188 = 0.9 time = 945
.meas tran vdout1_2ck188 FIND v(dout1_2) AT=945.025n

* CHECK dout1_3 Vdout1_3ck188 = 0.9 time = 945
.meas tran vdout1_3ck188 FIND v(dout1_3) AT=945.025n

* CHECK dout1_0 Vdout1_0ck189 = 0.9 time = 950
.meas tran vdout1_0ck189 FIND v(dout1_0) AT=950.025n

* CHECK dout1_1 Vdout1_1ck189 = 0 time = 950
.meas tran vdout1_1ck189 FIND v(dout1_1) AT=950.025n

* CHECK dout1_2 Vdout1_2ck189 = 0 time = 950
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

* CHECK dout1_0 Vdout1_0ck197 = 0 time = 990
.meas tran vdout1_0ck197 FIND v(dout1_0) AT=990.025n

* CHECK dout1_1 Vdout1_1ck197 = 0.9 time = 990
.meas tran vdout1_1ck197 FIND v(dout1_1) AT=990.025n

* CHECK dout1_2 Vdout1_2ck197 = 0 time = 990
.meas tran vdout1_2ck197 FIND v(dout1_2) AT=990.025n

* CHECK dout1_3 Vdout1_3ck197 = 0.9 time = 990
.meas tran vdout1_3ck197 FIND v(dout1_3) AT=990.025n

* CHECK dout1_0 Vdout1_0ck200 = 0.9 time = 1005
.meas tran vdout1_0ck200 FIND v(dout1_0) AT=1005.025n

* CHECK dout1_1 Vdout1_1ck200 = 0.9 time = 1005
.meas tran vdout1_1ck200 FIND v(dout1_1) AT=1005.025n

* CHECK dout1_2 Vdout1_2ck200 = 0.9 time = 1005
.meas tran vdout1_2ck200 FIND v(dout1_2) AT=1005.025n

* CHECK dout1_3 Vdout1_3ck200 = 0 time = 1005
.meas tran vdout1_3ck200 FIND v(dout1_3) AT=1005.025n

* CHECK dout1_0 Vdout1_0ck203 = 0.9 time = 1020
.meas tran vdout1_0ck203 FIND v(dout1_0) AT=1020.025n

* CHECK dout1_1 Vdout1_1ck203 = 0 time = 1020
.meas tran vdout1_1ck203 FIND v(dout1_1) AT=1020.025n

* CHECK dout1_2 Vdout1_2ck203 = 0 time = 1020
.meas tran vdout1_2ck203 FIND v(dout1_2) AT=1020.025n

* CHECK dout1_3 Vdout1_3ck203 = 0.9 time = 1020
.meas tran vdout1_3ck203 FIND v(dout1_3) AT=1020.025n

* CHECK dout1_0 Vdout1_0ck204 = 0.9 time = 1025
.meas tran vdout1_0ck204 FIND v(dout1_0) AT=1025.025n

* CHECK dout1_1 Vdout1_1ck204 = 0 time = 1025
.meas tran vdout1_1ck204 FIND v(dout1_1) AT=1025.025n

* CHECK dout1_2 Vdout1_2ck204 = 0 time = 1025
.meas tran vdout1_2ck204 FIND v(dout1_2) AT=1025.025n

* CHECK dout1_3 Vdout1_3ck204 = 0 time = 1025
.meas tran vdout1_3ck204 FIND v(dout1_3) AT=1025.025n

* probe is used for hspice/xa, while plot is used in ngspice
.plot V(*)
.end

