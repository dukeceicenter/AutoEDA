* Functional test stimulus file for 5ns period

* TT process corner
.include "/freepdk45/ncsu_basekit/models/hspice/tran_models/models_nom/PMOS_VTG.inc"
.include "/freepdk45/ncsu_basekit/models/hspice/tran_models/models_nom/NMOS_VTG.inc"
.include "freepdk45_sram_1w1r_13x128.sp"

* Global Power Supplies
Vvdd vdd 0 1.0

*Nodes gnd and 0 are the same global ground node in ngspice/hspice/xa. Otherwise, this source may be needed.
*Vgnd gnd 0 0.0

* Instantiation of the SRAM
Xfreepdk45_sram_1w1r_13x128 din0_0 din0_1 din0_2 din0_3 din0_4 din0_5 din0_6 din0_7 din0_8 din0_9 din0_10 din0_11 din0_12 a0_0 a0_1 a0_2 a0_3 a0_4 a0_5 a0_6 a1_0 a1_1 a1_2 a1_3 a1_4 a1_5 a1_6 CSB0 CSB1 clk0 clk1 dout1_0 dout1_1 dout1_2 dout1_3 dout1_4 dout1_5 dout1_6 dout1_7 dout1_8 dout1_9 dout1_10 dout1_11 dout1_12 vdd gnd freepdk45_sram_1w1r_13x128

* SRAM output loads
CD10 dout1_0  0 0.8364f
CD11 dout1_1  0 0.8364f
CD12 dout1_2  0 0.8364f
CD13 dout1_3  0 0.8364f
CD14 dout1_4  0 0.8364f
CD15 dout1_5  0 0.8364f
CD16 dout1_6  0 0.8364f
CD17 dout1_7  0 0.8364f
CD18 dout1_8  0 0.8364f
CD19 dout1_9  0 0.8364f
CD110 dout1_10  0 0.8364f
CD111 dout1_11  0 0.8364f
CD112 dout1_12  0 0.8364f


* Important signals for debug
* bl:	xfreepdk45_sram_1w1r_13x128.xbank0.bl_1_0
* br:	xfreepdk45_sram_1w1r_13x128.xbank0.br_1_0
* s_en:	xfreepdk45_sram_1w1r_13x128.s_en
* q:	xfreepdk45_sram_1w1r_13x128.xbank0.xbitcell_array.xbitcell_array.xbit_r0_c0.Q
* qbar:	xfreepdk45_sram_1w1r_13x128.xbank0.xbitcell_array.xbitcell_array.xbit_r0_c0.Q_bar


* Sequence of operations
*	Idle during cycle 0 (0ns - 5ns)
*	Writing 0000111001110  to  address 0000001 (from port 0) during cycle 1 (5ns - 10ns)
*	Writing 1111000010100  to  address 1111100 (from port 0) during cycle 2 (10ns - 15ns)
*	Writing 1110100100011  to  address 1111011 (from port 0) during cycle 3 (15ns - 20ns)
*	Reading 1110100100011 from address 1111011 (from port 1) during cycle 4 (20ns - 25ns)
*	Writing 1111110010110  to  address 1111110 (from port 0) during cycle 5 (25ns - 30ns)
*	Reading 1110100100011 from address 1111011 (from port 1) during cycle 5 (25ns - 30ns)
*	Reading 1111000010100 from address 1111100 (from port 1) during cycle 6 (30ns - 35ns)
*	Writing 0111010110011  to  address 0000010 (from port 0) during cycle 7 (35ns - 40ns)
*	Writing 0011111101111  to  address 0000011 (from port 0) during cycle 8 (40ns - 45ns)
*	Reading 0000111001110 from address 0000001 (from port 1) during cycle 8 (40ns - 45ns)
*	Writing 0100101111000  to  address 1111101 (from port 0) during cycle 9 (45ns - 50ns)
*	Reading 0000111001110 from address 0000001 (from port 1) during cycle 9 (45ns - 50ns)
*	Reading 1110100100011 from address 1111011 (from port 1) during cycle 12 (60ns - 65ns)
*	Reading 0000111001110 from address 0000001 (from port 1) during cycle 13 (65ns - 70ns)
*	Writing 1010101101000  to  address 0000001 (from port 0) during cycle 14 (70ns - 75ns)
*	Writing 0100000101011  to  address 1111011 (from port 0) during cycle 15 (75ns - 80ns)
*	Reading 1010101101000 from address 0000001 (from port 1) during cycle 15 (75ns - 80ns)
*	Writing 0000010101000  to  address 0000000 (from port 0) during cycle 16 (80ns - 85ns)
*	Writing 1001101011010  to  address 0000000 (from port 0) during cycle 17 (85ns - 90ns)
*	Writing 0101101010111  to  address 0000010 (from port 0) during cycle 19 (95ns - 100ns)
*	Reading 0101101010111 from address 0000010 (from port 1) during cycle 21 (105ns - 110ns)
*	Reading 0100101111000 from address 1111101 (from port 1) during cycle 22 (110ns - 115ns)
*	Writing 0001100010100  to  address 0000011 (from port 0) during cycle 25 (125ns - 130ns)
*	Reading 1010101101000 from address 0000001 (from port 1) during cycle 25 (125ns - 130ns)
*	Writing 1010100000111  to  address 0000000 (from port 0) during cycle 27 (135ns - 140ns)
*	Writing 0110001001001  to  address 1111011 (from port 0) during cycle 28 (140ns - 145ns)
*	Reading 1111000010100 from address 1111100 (from port 1) during cycle 29 (145ns - 150ns)
*	Writing 0100000110100  to  address 0000011 (from port 0) during cycle 30 (150ns - 155ns)
*	Reading 0100101111000 from address 1111101 (from port 1) during cycle 31 (155ns - 160ns)
*	Reading 1010100000111 from address 0000000 (from port 1) during cycle 32 (160ns - 165ns)
*	Reading 1111000010100 from address 1111100 (from port 1) during cycle 34 (170ns - 175ns)
*	Writing 1100100010111  to  address 0000011 (from port 0) during cycle 35 (175ns - 180ns)
*	Writing 1101001010001  to  address 0000001 (from port 0) during cycle 37 (185ns - 190ns)
*	Reading 0101101010111 from address 0000010 (from port 1) during cycle 37 (185ns - 190ns)
*	Writing 0100110100110  to  address 1111110 (from port 0) during cycle 38 (190ns - 195ns)
*	Reading 0100101111000 from address 1111101 (from port 1) during cycle 38 (190ns - 195ns)
*	Reading 1010100000111 from address 0000000 (from port 1) during cycle 39 (195ns - 200ns)
*	Writing 0110101111000  to  address 0000001 (from port 0) during cycle 40 (200ns - 205ns)
*	Reading 0101101010111 from address 0000010 (from port 1) during cycle 41 (205ns - 210ns)
*	Writing 1111001110101  to  address 1111100 (from port 0) during cycle 42 (210ns - 215ns)
*	Reading 0110101111000 from address 0000001 (from port 1) during cycle 43 (215ns - 220ns)
*	Writing 0001010110000  to  address 0000011 (from port 0) during cycle 44 (220ns - 225ns)
*	Reading 0001010110000 from address 0000011 (from port 1) during cycle 45 (225ns - 230ns)
*	Reading 1111001110101 from address 1111100 (from port 1) during cycle 46 (230ns - 235ns)
*	Writing 1111001111100  to  address 0000010 (from port 0) during cycle 48 (240ns - 245ns)
*	Reading 1010100000111 from address 0000000 (from port 1) during cycle 48 (240ns - 245ns)
*	Writing 0100000010010  to  address 1111101 (from port 0) during cycle 49 (245ns - 250ns)
*	Reading 0110001001001 from address 1111011 (from port 1) during cycle 49 (245ns - 250ns)
*	Writing 0100110011010  to  address 1111100 (from port 0) during cycle 50 (250ns - 255ns)
*	Reading 1111001111100 from address 0000010 (from port 1) during cycle 50 (250ns - 255ns)
*	Writing 0001110011011  to  address 1111110 (from port 0) during cycle 52 (260ns - 265ns)
*	Writing 1011100111000  to  address 0000000 (from port 0) during cycle 53 (265ns - 270ns)
*	Reading 0001010110000 from address 0000011 (from port 1) during cycle 53 (265ns - 270ns)
*	Reading 1011100111000 from address 0000000 (from port 1) during cycle 54 (270ns - 275ns)
*	Writing 1001110001110  to  address 0000011 (from port 0) during cycle 55 (275ns - 280ns)
*	Reading 0110001001001 from address 1111011 (from port 1) during cycle 56 (280ns - 285ns)
*	Reading 0110101111000 from address 0000001 (from port 1) during cycle 58 (290ns - 295ns)
*	Reading 0110101111000 from address 0000001 (from port 1) during cycle 59 (295ns - 300ns)
*	Reading 1011100111000 from address 0000000 (from port 1) during cycle 60 (300ns - 305ns)
*	Reading 0001110011011 from address 1111110 (from port 1) during cycle 61 (305ns - 310ns)
*	Writing 0011000010110  to  address 0000011 (from port 0) during cycle 62 (310ns - 315ns)
*	Writing 1100101001110  to  address 1111110 (from port 0) during cycle 63 (315ns - 320ns)
*	Writing 1100001011110  to  address 1111101 (from port 0) during cycle 64 (320ns - 325ns)
*	Reading 1111001111100 from address 0000010 (from port 1) during cycle 64 (320ns - 325ns)
*	Reading 0110001001001 from address 1111011 (from port 1) during cycle 65 (325ns - 330ns)
*	Writing 0000000111101  to  address 1111101 (from port 0) during cycle 66 (330ns - 335ns)
*	Writing 0011010010001  to  address 0000001 (from port 0) during cycle 67 (335ns - 340ns)
*	Reading 0011000010110 from address 0000011 (from port 1) during cycle 67 (335ns - 340ns)
*	Reading 0110001001001 from address 1111011 (from port 1) during cycle 69 (345ns - 350ns)
*	Writing 0001110001001  to  address 0000001 (from port 0) during cycle 71 (355ns - 360ns)
*	Writing 1011110110111  to  address 0000011 (from port 0) during cycle 73 (365ns - 370ns)
*	Writing 0000110111101  to  address 0000001 (from port 0) during cycle 74 (370ns - 375ns)
*	Reading 1111001111100 from address 0000010 (from port 1) during cycle 75 (375ns - 380ns)
*	Writing 0001101111111  to  address 1111100 (from port 0) during cycle 76 (380ns - 385ns)
*	Writing 1001001110001  to  address 1111100 (from port 0) during cycle 77 (385ns - 390ns)
*	Writing 0100011101011  to  address 1111011 (from port 0) during cycle 78 (390ns - 395ns)
*	Reading 1100101001110 from address 1111110 (from port 1) during cycle 78 (390ns - 395ns)
*	Writing 1110010011011  to  address 0000010 (from port 0) during cycle 80 (400ns - 405ns)
*	Reading 0000110111101 from address 0000001 (from port 1) during cycle 80 (400ns - 405ns)
*	Writing 1010000110111  to  address 1111011 (from port 0) during cycle 82 (410ns - 415ns)
*	Reading 1100101001110 from address 1111110 (from port 1) during cycle 82 (410ns - 415ns)
*	Writing 0101001011000  to  address 0000000 (from port 0) during cycle 83 (415ns - 420ns)
*	Reading 1011110110111 from address 0000011 (from port 1) during cycle 83 (415ns - 420ns)
*	Writing 0100011000100  to  address 0000000 (from port 0) during cycle 84 (420ns - 425ns)
*	Writing 0110111101100  to  address 1111100 (from port 0) during cycle 85 (425ns - 430ns)
*	Writing 0000001000101  to  address 0000010 (from port 0) during cycle 86 (430ns - 435ns)
*	Writing 1010111000011  to  address 1111100 (from port 0) during cycle 88 (440ns - 445ns)
*	Writing 1111111111011  to  address 1111101 (from port 0) during cycle 90 (450ns - 455ns)
*	Reading 1010000110111 from address 1111011 (from port 1) during cycle 91 (455ns - 460ns)
*	Reading 1100101001110 from address 1111110 (from port 1) during cycle 92 (460ns - 465ns)
*	Writing 0010110100011  to  address 0000001 (from port 0) during cycle 93 (465ns - 470ns)
*	Reading 1010000110111 from address 1111011 (from port 1) during cycle 93 (465ns - 470ns)
*	Writing 0100101111000  to  address 1111110 (from port 0) during cycle 94 (470ns - 475ns)
*	Writing 0010011010100  to  address 1111110 (from port 0) during cycle 95 (475ns - 480ns)
*	Reading 1111111111011 from address 1111101 (from port 1) during cycle 95 (475ns - 480ns)
*	Writing 1010010100110  to  address 1111011 (from port 0) during cycle 96 (480ns - 485ns)
*	Writing 0110011110101  to  address 0000001 (from port 0) during cycle 97 (485ns - 490ns)
*	Reading 0100011000100 from address 0000000 (from port 1) during cycle 97 (485ns - 490ns)
*	Writing 1001101010101  to  address 1111011 (from port 0) during cycle 98 (490ns - 495ns)
*	Reading 1010111000011 from address 1111100 (from port 1) during cycle 98 (490ns - 495ns)
*	Writing 0110000000001  to  address 0000010 (from port 0) during cycle 99 (495ns - 500ns)
*	Reading 1011110110111 from address 0000011 (from port 1) during cycle 100 (500ns - 505ns)
*	Reading 1111111111011 from address 1111101 (from port 1) during cycle 101 (505ns - 510ns)
*	Reading 0100011000100 from address 0000000 (from port 1) during cycle 102 (510ns - 515ns)
*	Writing 0111000000110  to  address 0000011 (from port 0) during cycle 103 (515ns - 520ns)
*	Writing 1110001011010  to  address 0000010 (from port 0) during cycle 105 (525ns - 530ns)
*	Reading 0010011010100 from address 1111110 (from port 1) during cycle 105 (525ns - 530ns)
*	Reading 1111111111011 from address 1111101 (from port 1) during cycle 106 (530ns - 535ns)
*	Reading 0100011000100 from address 0000000 (from port 1) during cycle 108 (540ns - 545ns)
*	Reading 0111000000110 from address 0000011 (from port 1) during cycle 111 (555ns - 560ns)
*	Writing 0111111010101  to  address 1111101 (from port 0) during cycle 112 (560ns - 565ns)
*	Reading 0100011000100 from address 0000000 (from port 1) during cycle 112 (560ns - 565ns)
*	Writing 1110000011111  to  address 0000000 (from port 0) during cycle 113 (565ns - 570ns)
*	Reading 0010011010100 from address 1111110 (from port 1) during cycle 113 (565ns - 570ns)
*	Writing 1010000011000  to  address 1111100 (from port 0) during cycle 114 (570ns - 575ns)
*	Writing 0100110111011  to  address 0000010 (from port 0) during cycle 115 (575ns - 580ns)
*	Writing 1011000001000  to  address 1111110 (from port 0) during cycle 116 (580ns - 585ns)
*	Writing 1101000011000  to  address 0000010 (from port 0) during cycle 118 (590ns - 595ns)
*	Reading 1110000011111 from address 0000000 (from port 1) during cycle 119 (595ns - 600ns)
*	Reading 0111111010101 from address 1111101 (from port 1) during cycle 121 (605ns - 610ns)
*	Reading 0110011110101 from address 0000001 (from port 1) during cycle 123 (615ns - 620ns)
*	Reading 1011000001000 from address 1111110 (from port 1) during cycle 124 (620ns - 625ns)
*	Writing 1101001110110  to  address 0000001 (from port 0) during cycle 126 (630ns - 635ns)
*	Reading 1110000011111 from address 0000000 (from port 1) during cycle 128 (640ns - 645ns)
*	Writing 0011011001111  to  address 0000011 (from port 0) during cycle 129 (645ns - 650ns)
*	Writing 0011111111011  to  address 0000010 (from port 0) during cycle 132 (660ns - 665ns)
*	Writing 1000010001001  to  address 0000011 (from port 0) during cycle 133 (665ns - 670ns)
*	Reading 1011000001000 from address 1111110 (from port 1) during cycle 134 (670ns - 675ns)
*	Writing 0000000000011  to  address 0000000 (from port 0) during cycle 137 (685ns - 690ns)
*	Reading 0000000000011 from address 0000000 (from port 1) during cycle 138 (690ns - 695ns)
*	Writing 1100011111001  to  address 1111100 (from port 0) during cycle 139 (695ns - 700ns)
*	Reading 1101001110110 from address 0000001 (from port 1) during cycle 139 (695ns - 700ns)
*	Writing 1000100001010  to  address 1111100 (from port 0) during cycle 140 (700ns - 705ns)
*	Reading 0111111010101 from address 1111101 (from port 1) during cycle 140 (700ns - 705ns)
*	Reading 1011000001000 from address 1111110 (from port 1) during cycle 141 (705ns - 710ns)
*	Writing 0100111111111  to  address 1111100 (from port 0) during cycle 142 (710ns - 715ns)
*	Reading 0011111111011 from address 0000010 (from port 1) during cycle 144 (720ns - 725ns)
*	Writing 0100010001001  to  address 1111101 (from port 0) during cycle 145 (725ns - 730ns)
*	Reading 1101001110110 from address 0000001 (from port 1) during cycle 145 (725ns - 730ns)
*	Writing 0001100001100  to  address 0000011 (from port 0) during cycle 146 (730ns - 735ns)
*	Reading 1011000001000 from address 1111110 (from port 1) during cycle 146 (730ns - 735ns)
*	Writing 0000011100011  to  address 1111011 (from port 0) during cycle 147 (735ns - 740ns)
*	Writing 0111101111101  to  address 1111101 (from port 0) during cycle 148 (740ns - 745ns)
*	Reading 0100111111111 from address 1111100 (from port 1) during cycle 148 (740ns - 745ns)
*	Writing 0101110110111  to  address 1111101 (from port 0) during cycle 150 (750ns - 755ns)
*	Writing 1101110101100  to  address 0000000 (from port 0) during cycle 151 (755ns - 760ns)
*	Reading 0001100001100 from address 0000011 (from port 1) during cycle 151 (755ns - 760ns)
*	Writing 1011001010001  to  address 1111101 (from port 0) during cycle 153 (765ns - 770ns)
*	Writing 1001000000110  to  address 1111101 (from port 0) during cycle 156 (780ns - 785ns)
*	Writing 0110000000001  to  address 0000011 (from port 0) during cycle 157 (785ns - 790ns)
*	Reading 0011111111011 from address 0000010 (from port 1) during cycle 159 (795ns - 800ns)
*	Reading 0000011100011 from address 1111011 (from port 1) during cycle 160 (800ns - 805ns)
*	Writing 1110100101110  to  address 1111110 (from port 0) during cycle 163 (815ns - 820ns)
*	Writing 0011011010010  to  address 1111110 (from port 0) during cycle 164 (820ns - 825ns)
*	Writing 1110000111011  to  address 0000010 (from port 0) during cycle 165 (825ns - 830ns)
*	Reading 0100111111111 from address 1111100 (from port 1) during cycle 165 (825ns - 830ns)
*	Reading 0011011010010 from address 1111110 (from port 1) during cycle 166 (830ns - 835ns)
*	Writing 1010110110011  to  address 1111101 (from port 0) during cycle 167 (835ns - 840ns)
*	Reading 1110000111011 from address 0000010 (from port 1) during cycle 168 (840ns - 845ns)
*	Writing 0111000001111  to  address 0000011 (from port 0) during cycle 170 (850ns - 855ns)
*	Reading 0000011100011 from address 1111011 (from port 1) during cycle 170 (850ns - 855ns)
*	Reading 0111000001111 from address 0000011 (from port 1) during cycle 171 (855ns - 860ns)
*	Writing 0111110100001  to  address 0000010 (from port 0) during cycle 173 (865ns - 870ns)
*	Reading 0000011100011 from address 1111011 (from port 1) during cycle 173 (865ns - 870ns)
*	Reading 0111000001111 from address 0000011 (from port 1) during cycle 174 (870ns - 875ns)
*	Writing 0101101000011  to  address 0000001 (from port 0) during cycle 175 (875ns - 880ns)
*	Reading 1010110110011 from address 1111101 (from port 1) during cycle 177 (885ns - 890ns)
*	Writing 0011001001111  to  address 1111101 (from port 0) during cycle 178 (890ns - 895ns)
*	Writing 1111100110111  to  address 1111110 (from port 0) during cycle 180 (900ns - 905ns)
*	Reading 0101101000011 from address 0000001 (from port 1) during cycle 180 (900ns - 905ns)
*	Writing 1001011111101  to  address 0000000 (from port 0) during cycle 182 (910ns - 915ns)
*	Reading 0111000001111 from address 0000011 (from port 1) during cycle 182 (910ns - 915ns)
*	Writing 0101010000101  to  address 0000011 (from port 0) during cycle 183 (915ns - 920ns)
*	Writing 1100011011011  to  address 1111101 (from port 0) during cycle 184 (920ns - 925ns)
*	Reading 0100111111111 from address 1111100 (from port 1) during cycle 184 (920ns - 925ns)
*	Reading 0111110100001 from address 0000010 (from port 1) during cycle 185 (925ns - 930ns)
*	Writing 1101110100001  to  address 0000000 (from port 0) during cycle 186 (930ns - 935ns)
*	Reading 1111100110111 from address 1111110 (from port 1) during cycle 186 (930ns - 935ns)
*	Reading 1111100110111 from address 1111110 (from port 1) during cycle 187 (935ns - 940ns)
*	Reading 0111110100001 from address 0000010 (from port 1) during cycle 188 (940ns - 945ns)
*	Writing 0011011010000  to  address 1111100 (from port 0) during cycle 189 (945ns - 950ns)
*	Writing 0100100110111  to  address 0000000 (from port 0) during cycle 190 (950ns - 955ns)
*	Writing 0011010001001  to  address 1111011 (from port 0) during cycle 193 (965ns - 970ns)
*	Writing 0100011110110  to  address 0000010 (from port 0) during cycle 194 (970ns - 975ns)
*	Reading 0100100110111 from address 0000000 (from port 1) during cycle 194 (970ns - 975ns)
*	Writing 1000100011101  to  address 0000000 (from port 0) during cycle 196 (980ns - 985ns)
*	Writing 0000101111001  to  address 0000011 (from port 0) during cycle 197 (985ns - 990ns)
*	Reading 0011010001001 from address 1111011 (from port 1) during cycle 199 (995ns - 1000ns)
*	Writing 1100101111101  to  address 0000010 (from port 0) during cycle 200 (1000ns - 1005ns)
*	Reading 1111100110111 from address 1111110 (from port 1) during cycle 200 (1000ns - 1005ns)
*	Reading 1000100011101 from address 0000000 (from port 1) during cycle 201 (1005ns - 1010ns)
*	Reading 1000100011101 from address 0000000 (from port 1) during cycle 202 (1010ns - 1015ns)
*	Writing 0001111000000  to  address 0000011 (from port 0) during cycle 203 (1015ns - 1020ns)
*	Writing 0001010000011  to  address 1111100 (from port 0) during cycle 204 (1020ns - 1025ns)
*	Reading 0001111000000 from address 0000011 (from port 1) during cycle 204 (1020ns - 1025ns)
*	Idle during cycle 205 (1025ns - 1030ns)

* Generation of data and address signals
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 1), (20, 1), (25, 0), (30, 0), (35, 1), (40, 1), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 1), (80, 0), (85, 0), (90, 0), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 0), (130, 0), (135, 1), (140, 1), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 1), (180, 1), (185, 1), (190, 0), (195, 0), (200, 0), (205, 0), (210, 1), (215, 1), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 1), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 1), (415, 0), (420, 0), (425, 0), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 0), (475, 0), (480, 0), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 1), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 1), (565, 1), (570, 0), (575, 1), (580, 0), (585, 0), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 1), (650, 1), (655, 1), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 0), (705, 0), (710, 1), (715, 1), (720, 1), (725, 1), (730, 0), (735, 1), (740, 1), (745, 1), (750, 1), (755, 0), (760, 0), (765, 1), (770, 1), (775, 1), (780, 0), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 0), (820, 0), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 1), (945, 0), (950, 1), (955, 1), (960, 1), (965, 1), (970, 0), (975, 0), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 0), (1020, 1), (1025, 1)]
Vdin0_0  din0_0  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 1.0v 264.745n 1.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 0.0v 574.745n 0.0v 574.755n 1.0v 579.745n 1.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 0.0v 734.745n 0.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 0.0v 784.745n 0.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 0.0v 949.745n 0.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 1), (80, 0), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 0), (130, 0), (135, 1), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 1), (180, 1), (185, 0), (190, 1), (195, 1), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 1), (250, 1), (255, 1), (260, 1), (265, 0), (270, 0), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 1), (370, 0), (375, 0), (380, 1), (385, 0), (390, 1), (395, 1), (400, 1), (405, 1), (410, 1), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 0), (475, 0), (480, 1), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 0), (565, 1), (570, 0), (575, 1), (580, 0), (585, 0), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 1), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 1), (665, 0), (670, 0), (675, 0), (680, 0), (685, 1), (690, 1), (695, 0), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 0), (730, 0), (735, 1), (740, 0), (745, 0), (750, 1), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 1), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 0), (870, 0), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 0), (915, 0), (920, 1), (925, 1), (930, 0), (935, 0), (940, 0), (945, 0), (950, 1), (955, 1), (960, 1), (965, 0), (970, 1), (975, 1), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Vdin0_1  din0_1  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 0.0v 14.745n 0.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.0v 139.745n 1.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 0.0v 189.745n 0.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 1.0v 369.745n 1.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 1.0v 384.745n 1.0v 384.755n 0.0v 389.745n 0.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 1.0v 484.745n 1.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.0v 569.745n 1.0v 569.755n 0.0v 574.745n 0.0v 574.755n 1.0v 579.745n 1.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 1.0v 739.745n 1.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 1.0v 754.745n 1.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 1.0v 784.745n 1.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 0.0v 969.745n 0.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 0), (20, 0), (25, 1), (30, 1), (35, 0), (40, 1), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 0), (145, 0), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 0), (190, 1), (195, 1), (200, 0), (205, 0), (210, 1), (215, 1), (220, 0), (225, 0), (230, 0), (235, 0), (240, 1), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 1), (370, 1), (375, 1), (380, 1), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 1), (415, 0), (420, 1), (425, 1), (430, 1), (435, 1), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 0), (475, 1), (480, 1), (485, 1), (490, 1), (495, 0), (500, 0), (505, 0), (510, 0), (515, 1), (520, 1), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 1), (565, 1), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 1), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 1), (715, 1), (720, 1), (725, 0), (730, 1), (735, 0), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 0), (770, 0), (775, 0), (780, 1), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 1), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 1), (855, 1), (860, 1), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 1), (955, 1), (960, 1), (965, 0), (970, 1), (975, 1), (980, 1), (985, 0), (990, 0), (995, 0), (1000, 1), (1005, 1), (1010, 1), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_2  din0_2  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 0.0v 39.745n 0.0v 39.755n 1.0v 44.745n 1.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 0.0v 189.745n 0.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 1.0v 244.745n 1.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.0v 414.745n 1.0v 414.755n 0.0v 419.745n 0.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 0.0v 729.745n 0.0v 729.755n 1.0v 734.745n 1.0v 734.755n 0.0v 739.745n 0.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 1.0v 784.745n 1.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 1.0v 819.745n 1.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 0.0v 969.745n 0.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 1), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 1), (205, 1), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 1), (245, 0), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 0), (315, 1), (320, 1), (325, 1), (330, 1), (335, 0), (340, 0), (345, 0), (350, 0), (355, 1), (360, 1), (365, 0), (370, 1), (375, 1), (380, 1), (385, 0), (390, 1), (395, 1), (400, 1), (405, 1), (410, 0), (415, 1), (420, 0), (425, 1), (430, 0), (435, 0), (440, 0), (445, 0), (450, 1), (455, 1), (460, 1), (465, 0), (470, 1), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 0), (565, 1), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 0), (635, 0), (640, 0), (645, 1), (650, 1), (655, 1), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 0), (690, 0), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 0), (740, 1), (745, 1), (750, 0), (755, 1), (760, 1), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 1), (820, 0), (825, 1), (830, 1), (835, 0), (840, 0), (845, 0), (850, 1), (855, 1), (860, 1), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 1), (895, 1), (900, 0), (905, 0), (910, 1), (915, 0), (920, 1), (925, 1), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 1), (970, 0), (975, 0), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_3  din0_3  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 1.0v 244.745n 1.0v 244.755n 0.0v 249.745n 0.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 0.0v 314.745n 0.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 0.0v 369.745n 0.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 0.0v 389.745n 0.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 0.0v 414.745n 0.0v 414.755n 1.0v 419.745n 1.0v 419.755n 0.0v 424.745n 0.0v 424.755n 1.0v 429.745n 1.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 0.0v 469.745n 0.0v 469.755n 1.0v 474.745n 1.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 0.0v 739.745n 0.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 0.0v 754.745n 0.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 1.0v 819.745n 1.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 1.0v 914.745n 1.0v 914.755n 0.0v 919.745n 0.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 1.0v 969.745n 1.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 0), (20, 0), (25, 1), (30, 1), (35, 1), (40, 0), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 0), (75, 0), (80, 0), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 1), (130, 1), (135, 0), (140, 0), (145, 0), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 0), (195, 0), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 1), (315, 0), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 0), (360, 0), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 0), (395, 0), (400, 1), (405, 1), (410, 1), (415, 1), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 1), (455, 1), (460, 1), (465, 0), (470, 1), (475, 1), (480, 0), (485, 1), (490, 1), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 0), (585, 0), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 0), (650, 0), (655, 0), (660, 1), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 1), (700, 0), (705, 0), (710, 1), (715, 1), (720, 1), (725, 0), (730, 0), (735, 0), (740, 1), (745, 1), (750, 1), (755, 0), (760, 0), (765, 1), (770, 1), (775, 1), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 1), (905, 1), (910, 1), (915, 0), (920, 1), (925, 1), (930, 0), (935, 0), (940, 0), (945, 1), (950, 1), (955, 1), (960, 1), (965, 0), (970, 1), (975, 1), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_4  din0_4  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.0v 14.745n 1.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 0.0v 44.745n 0.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 1.0v 314.745n 1.0v 314.755n 0.0v 319.745n 0.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 0.0v 469.745n 0.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 0.0v 484.745n 0.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.0v 664.745n 1.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 0.0v 919.745n 0.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 0.0v 969.745n 0.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 1), (20, 1), (25, 0), (30, 0), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 0), (180, 0), (185, 0), (190, 1), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 0), (250, 0), (255, 0), (260, 0), (265, 1), (270, 1), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 1), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 0), (405, 0), (410, 1), (415, 0), (420, 0), (425, 1), (430, 0), (435, 0), (440, 0), (445, 0), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 0), (480, 1), (485, 1), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 1), (580, 0), (585, 0), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 1), (635, 1), (640, 1), (645, 0), (650, 0), (655, 0), (660, 1), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 1), (700, 0), (705, 0), (710, 1), (715, 1), (720, 1), (725, 0), (730, 0), (735, 1), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 1), (820, 0), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 0), (855, 0), (860, 0), (865, 1), (870, 1), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 1), (905, 1), (910, 1), (915, 0), (920, 0), (925, 0), (930, 1), (935, 1), (940, 1), (945, 0), (950, 1), (955, 1), (960, 1), (965, 0), (970, 1), (975, 1), (980, 0), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_5  din0_5  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 1.0v 334.745n 1.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.0v 414.745n 1.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 1.0v 429.745n 1.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 0.0v 479.745n 0.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 1.0v 579.745n 1.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.0v 664.745n 1.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 1.0v 819.745n 1.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 0.0v 949.745n 0.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 0.0v 969.745n 0.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 0.0v 984.745n 0.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 0), (80, 0), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 0), (130, 0), (135, 0), (140, 1), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 1), (190, 0), (195, 0), (200, 1), (205, 1), (210, 1), (215, 1), (220, 0), (225, 0), (230, 0), (235, 0), (240, 1), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 1), (320, 1), (325, 1), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 1), (385, 1), (390, 1), (395, 1), (400, 0), (405, 0), (410, 0), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 0), (470, 1), (475, 1), (480, 0), (485, 1), (490, 1), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 0), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 1), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 1), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 1), (700, 0), (705, 0), (710, 1), (715, 1), (720, 1), (725, 0), (730, 0), (735, 1), (740, 1), (745, 1), (750, 0), (755, 0), (760, 0), (765, 1), (770, 1), (775, 1), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 1), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 0), (905, 0), (910, 1), (915, 0), (920, 1), (925, 1), (930, 0), (935, 0), (940, 0), (945, 1), (950, 0), (955, 0), (960, 0), (965, 0), (970, 1), (975, 1), (980, 0), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Vdin0_6  din0_6  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 1.0v 189.745n 1.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 1.0v 244.745n 1.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 0.0v 469.745n 0.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 0.0v 484.745n 0.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 1.0v 824.745n 1.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 1.0v 914.745n 1.0v 914.755n 0.0v 919.745n 0.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 0.0v 984.745n 0.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 0), (20, 0), (25, 1), (30, 1), (35, 1), (40, 1), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 1), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 1), (195, 1), (200, 0), (205, 0), (210, 0), (215, 0), (220, 1), (225, 1), (230, 1), (235, 1), (240, 0), (245, 0), (250, 1), (255, 1), (260, 1), (265, 0), (270, 0), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 0), (385, 0), (390, 1), (395, 1), (400, 1), (405, 1), (410, 0), (415, 0), (420, 1), (425, 1), (430, 0), (435, 0), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 0), (475, 1), (480, 1), (485, 1), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 1), (565, 0), (570, 0), (575, 1), (580, 0), (585, 0), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 1), (650, 1), (655, 1), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 0), (690, 0), (695, 1), (700, 0), (705, 0), (710, 1), (715, 1), (720, 1), (725, 1), (730, 0), (735, 1), (740, 0), (745, 0), (750, 1), (755, 1), (760, 1), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 1), (825, 0), (830, 0), (835, 1), (840, 1), (845, 1), (850, 0), (855, 0), (860, 0), (865, 1), (870, 1), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 1), (945, 1), (950, 0), (955, 0), (960, 0), (965, 1), (970, 1), (975, 1), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_7  din0_7  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 1.0v 84.745n 1.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 0.0v 474.745n 0.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 1.0v 579.745n 1.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 0.0v 734.745n 0.0v 734.755n 1.0v 739.745n 1.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 1.0v 824.745n 1.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 1), (20, 1), (25, 1), (30, 1), (35, 0), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 0), (80, 0), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 1), (180, 1), (185, 0), (190, 1), (195, 1), (200, 1), (205, 1), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 0), (315, 1), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 1), (430, 0), (435, 0), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 0), (480, 0), (485, 0), (490, 1), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 1), (565, 0), (570, 0), (575, 1), (580, 0), (585, 0), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 1), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 0), (730, 1), (735, 0), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 1), (820, 0), (825, 0), (830, 0), (835, 1), (840, 1), (845, 1), (850, 0), (855, 0), (860, 0), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 0), (895, 0), (900, 1), (905, 1), (910, 0), (915, 0), (920, 0), (925, 0), (930, 1), (935, 1), (940, 1), (945, 0), (950, 1), (955, 1), (960, 1), (965, 0), (970, 0), (975, 0), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Vdin0_8  din0_8  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 0.0v 14.745n 0.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 0.0v 39.745n 0.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 0.0v 189.745n 0.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 0.0v 314.745n 0.0v 314.755n 1.0v 319.745n 1.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 1.0v 429.745n 1.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.0v 494.745n 1.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 1.0v 579.745n 1.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.0v 664.745n 1.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 0.0v 729.745n 0.0v 729.755n 1.0v 734.745n 1.0v 734.755n 0.0v 739.745n 0.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 1.0v 819.745n 1.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 0.0v 949.745n 0.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 0), (20, 0), (25, 1), (30, 1), (35, 1), (40, 1), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 1), (130, 1), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 1), (190, 0), (195, 0), (200, 0), (205, 0), (210, 1), (215, 1), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 0), (250, 0), (255, 0), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 0), (320, 0), (325, 0), (330, 0), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 0), (375, 0), (380, 1), (385, 1), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 1), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 1), (455, 1), (460, 1), (465, 0), (470, 0), (475, 0), (480, 0), (485, 0), (490, 1), (495, 0), (500, 0), (505, 0), (510, 0), (515, 1), (520, 1), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 1), (565, 0), (570, 0), (575, 0), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 1), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 1), (735, 0), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 1), (775, 1), (780, 1), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 1), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 1), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 0), (925, 0), (930, 1), (935, 1), (940, 1), (945, 1), (950, 0), (955, 0), (960, 0), (965, 1), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_9  din0_9  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.0v 14.745n 1.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 1.0v 189.745n 1.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 1.0v 419.745n 1.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.0v 494.745n 1.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 1.0v 734.745n 1.0v 734.755n 0.0v 739.745n 0.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 1.0v 824.745n 1.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 1.0v 969.745n 1.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 1), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 1), (140, 1), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 1), (205, 1), (210, 1), (215, 1), (220, 0), (225, 0), (230, 0), (235, 0), (240, 1), (245, 0), (250, 0), (255, 0), (260, 0), (265, 1), (270, 1), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 1), (315, 0), (320, 0), (325, 0), (330, 0), (335, 1), (340, 1), (345, 1), (350, 1), (355, 0), (360, 0), (365, 1), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 0), (400, 1), (405, 1), (410, 1), (415, 0), (420, 0), (425, 1), (430, 0), (435, 0), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 0), (475, 1), (480, 1), (485, 1), (490, 0), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 0), (580, 1), (585, 1), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 1), (650, 1), (655, 1), (660, 1), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 1), (745, 1), (750, 0), (755, 0), (760, 0), (765, 1), (770, 1), (775, 1), (780, 0), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 1), (875, 0), (880, 0), (885, 0), (890, 1), (895, 1), (900, 1), (905, 1), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 1), (950, 0), (955, 0), (960, 0), (965, 1), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_10  din0_10  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 1.0v 74.745n 1.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 1.0v 244.745n 1.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 1.0v 314.745n 1.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 1.0v 369.745n 1.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 1.0v 429.745n 1.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 0.0v 474.745n 0.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 0.0v 494.745n 0.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 0.0v 784.745n 0.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 1.0v 969.745n 1.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 0), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 0), (75, 1), (80, 0), (85, 0), (90, 0), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 0), (130, 0), (135, 0), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 0), (225, 0), (230, 0), (235, 0), (240, 1), (245, 1), (250, 1), (255, 1), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 1), (320, 1), (325, 1), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 1), (395, 1), (400, 1), (405, 1), (410, 0), (415, 1), (420, 1), (425, 1), (430, 0), (435, 0), (440, 0), (445, 0), (450, 1), (455, 1), (460, 1), (465, 0), (470, 1), (475, 0), (480, 0), (485, 1), (490, 0), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 0), (575, 1), (580, 0), (585, 0), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 1), (700, 0), (705, 0), (710, 1), (715, 1), (720, 1), (725, 1), (730, 0), (735, 0), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 0), (770, 0), (775, 0), (780, 0), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 0), (825, 1), (830, 1), (835, 0), (840, 0), (845, 0), (850, 1), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 0), (895, 0), (900, 1), (905, 1), (910, 0), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 1), (945, 0), (950, 1), (955, 1), (960, 1), (965, 0), (970, 1), (975, 1), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 1), (1005, 1), (1010, 1), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_11  din0_11  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 0.0v 44.745n 0.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 0.0v 74.745n 0.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 0.0v 414.745n 0.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 0.0v 469.745n 0.0v 469.755n 1.0v 474.745n 1.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 1.0v 489.745n 1.0v 489.755n 0.0v 494.745n 0.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 0.0v 574.745n 0.0v 574.755n 1.0v 579.745n 1.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 0.0v 914.745n 0.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 0.0v 949.745n 0.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 0.0v 969.745n 0.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 1), (75, 0), (80, 0), (85, 1), (90, 1), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 1), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 1), (180, 1), (185, 1), (190, 0), (195, 0), (200, 0), (205, 0), (210, 1), (215, 1), (220, 0), (225, 0), (230, 0), (235, 0), (240, 1), (245, 0), (250, 0), (255, 0), (260, 0), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 0), (315, 1), (320, 1), (325, 1), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 1), (370, 0), (375, 0), (380, 0), (385, 1), (390, 0), (395, 0), (400, 1), (405, 1), (410, 1), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 0), (470, 0), (475, 0), (480, 1), (485, 0), (490, 1), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 0), (565, 1), (570, 1), (575, 0), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 0), (650, 0), (655, 0), (660, 0), (665, 1), (670, 1), (675, 1), (680, 1), (685, 0), (690, 0), (695, 1), (700, 1), (705, 1), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 1), (760, 1), (765, 1), (770, 1), (775, 1), (780, 1), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 1), (820, 0), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 1), (905, 1), (910, 1), (915, 0), (920, 1), (925, 1), (930, 1), (935, 1), (940, 1), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 1), (985, 0), (990, 0), (995, 0), (1000, 1), (1005, 1), (1010, 1), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_12  din0_12  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 1.0v 74.745n 1.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.0v 139.745n 1.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 1.0v 244.745n 1.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 0.0v 314.745n 0.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 1.0v 369.745n 1.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 1.0v 389.745n 1.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 1.0v 484.745n 1.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.0v 494.745n 1.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 1.0v 819.745n 1.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 0.0v 919.745n 0.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 1.0v 984.745n 1.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 1), (20, 1), (25, 0), (30, 0), (35, 0), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 1), (130, 1), (135, 0), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 0), (195, 0), (200, 1), (205, 1), (210, 0), (215, 0), (220, 1), (225, 1), (230, 1), (235, 1), (240, 0), (245, 1), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 0), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 0), (385, 0), (390, 1), (395, 1), (400, 0), (405, 0), (410, 1), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 1), (455, 1), (460, 1), (465, 1), (470, 0), (475, 0), (480, 1), (485, 1), (490, 1), (495, 0), (500, 0), (505, 0), (510, 0), (515, 1), (520, 1), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 1), (565, 0), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 1), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 0), (665, 1), (670, 1), (675, 1), (680, 1), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 0), (760, 0), (765, 1), (770, 1), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 0), (820, 0), (825, 0), (830, 0), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 0), (870, 0), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 0), (905, 0), (910, 0), (915, 1), (920, 1), (925, 1), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 1), (970, 0), (975, 0), (980, 0), (985, 1), (990, 1), (995, 1), (1000, 0), (1005, 0), (1010, 0), (1015, 1), (1020, 0), (1025, 0)]
Va0_0  a0_0  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 0.0v 14.745n 0.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 0.0v 139.745n 0.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 0.0v 244.745n 0.0v 244.755n 1.0v 249.745n 1.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 0.0v 319.745n 0.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.0v 414.745n 1.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 0.0v 664.745n 0.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 1.0v 969.745n 1.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 1), (80, 0), (85, 0), (90, 0), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 1), (130, 1), (135, 0), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 0), (190, 1), (195, 1), (200, 0), (205, 0), (210, 0), (215, 0), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 0), (250, 0), (255, 0), (260, 1), (265, 0), (270, 0), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 1), (370, 0), (375, 0), (380, 0), (385, 0), (390, 1), (395, 1), (400, 1), (405, 1), (410, 1), (415, 0), (420, 0), (425, 0), (430, 1), (435, 1), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 1), (475, 1), (480, 1), (485, 0), (490, 1), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 0), (565, 0), (570, 0), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 0), (635, 0), (640, 0), (645, 1), (650, 1), (655, 1), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 1), (735, 1), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 0), (840, 0), (845, 0), (850, 1), (855, 1), (860, 1), (865, 1), (870, 1), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 1), (905, 1), (910, 0), (915, 1), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 1), (970, 1), (975, 1), (980, 0), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Va0_1  a0_1  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 0.0v 139.745n 0.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 0.0v 189.745n 0.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 1.0v 264.745n 1.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 1.0v 369.745n 1.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 0.0v 914.745n 0.0v 914.755n 1.0v 919.745n 1.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 0.0v 984.745n 0.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 0), (20, 0), (25, 1), (30, 1), (35, 0), (40, 0), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 1), (195, 1), (200, 0), (205, 0), (210, 1), (215, 1), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 1), (250, 1), (255, 1), (260, 1), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 1), (320, 1), (325, 1), (330, 1), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 1), (385, 1), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 1), (430, 0), (435, 0), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 0), (470, 1), (475, 1), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 1), (565, 0), (570, 1), (575, 0), (580, 1), (585, 1), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 0), (735, 0), (740, 1), (745, 1), (750, 1), (755, 0), (760, 0), (765, 1), (770, 1), (775, 1), (780, 1), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 1), (820, 1), (825, 0), (830, 0), (835, 1), (840, 1), (845, 1), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 1), (895, 1), (900, 1), (905, 1), (910, 0), (915, 0), (920, 1), (925, 1), (930, 0), (935, 0), (940, 0), (945, 1), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Va0_2  a0_2  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.0v 14.745n 1.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 1.0v 429.745n 1.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 0.0v 469.745n 0.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 1.0v 574.745n 1.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 0), (40, 0), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 0), (75, 1), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 1), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 1), (195, 1), (200, 0), (205, 0), (210, 1), (215, 1), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 1), (250, 1), (255, 1), (260, 1), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 1), (320, 1), (325, 1), (330, 1), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 1), (385, 1), (390, 1), (395, 1), (400, 0), (405, 0), (410, 1), (415, 0), (420, 0), (425, 1), (430, 0), (435, 0), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 0), (470, 1), (475, 1), (480, 1), (485, 0), (490, 1), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 1), (565, 0), (570, 1), (575, 0), (580, 1), (585, 1), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 0), (735, 1), (740, 1), (745, 1), (750, 1), (755, 0), (760, 0), (765, 1), (770, 1), (775, 1), (780, 1), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 1), (820, 1), (825, 0), (830, 0), (835, 1), (840, 1), (845, 1), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 1), (895, 1), (900, 1), (905, 1), (910, 0), (915, 0), (920, 1), (925, 1), (930, 0), (935, 0), (940, 0), (945, 1), (950, 0), (955, 0), (960, 0), (965, 1), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Va0_3  a0_3  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 0.0v 74.745n 0.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.0v 414.745n 1.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 1.0v 429.745n 1.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 0.0v 469.745n 0.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.0v 494.745n 1.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 1.0v 574.745n 1.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 0.0v 734.745n 0.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 1.0v 969.745n 1.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 0), (40, 0), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 0), (75, 1), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 1), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 1), (195, 1), (200, 0), (205, 0), (210, 1), (215, 1), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 1), (250, 1), (255, 1), (260, 1), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 1), (320, 1), (325, 1), (330, 1), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 1), (385, 1), (390, 1), (395, 1), (400, 0), (405, 0), (410, 1), (415, 0), (420, 0), (425, 1), (430, 0), (435, 0), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 0), (470, 1), (475, 1), (480, 1), (485, 0), (490, 1), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 1), (565, 0), (570, 1), (575, 0), (580, 1), (585, 1), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 0), (735, 1), (740, 1), (745, 1), (750, 1), (755, 0), (760, 0), (765, 1), (770, 1), (775, 1), (780, 1), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 1), (820, 1), (825, 0), (830, 0), (835, 1), (840, 1), (845, 1), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 1), (895, 1), (900, 1), (905, 1), (910, 0), (915, 0), (920, 1), (925, 1), (930, 0), (935, 0), (940, 0), (945, 1), (950, 0), (955, 0), (960, 0), (965, 1), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Va0_4  a0_4  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 0.0v 74.745n 0.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.0v 414.745n 1.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 1.0v 429.745n 1.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 0.0v 469.745n 0.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.0v 494.745n 1.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 1.0v 574.745n 1.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 0.0v 734.745n 0.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 1.0v 969.745n 1.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 0), (40, 0), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 0), (75, 1), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 1), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 1), (195, 1), (200, 0), (205, 0), (210, 1), (215, 1), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 1), (250, 1), (255, 1), (260, 1), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 1), (320, 1), (325, 1), (330, 1), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 1), (385, 1), (390, 1), (395, 1), (400, 0), (405, 0), (410, 1), (415, 0), (420, 0), (425, 1), (430, 0), (435, 0), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 0), (470, 1), (475, 1), (480, 1), (485, 0), (490, 1), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 1), (565, 0), (570, 1), (575, 0), (580, 1), (585, 1), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 0), (735, 1), (740, 1), (745, 1), (750, 1), (755, 0), (760, 0), (765, 1), (770, 1), (775, 1), (780, 1), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 1), (820, 1), (825, 0), (830, 0), (835, 1), (840, 1), (845, 1), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 1), (895, 1), (900, 1), (905, 1), (910, 0), (915, 0), (920, 1), (925, 1), (930, 0), (935, 0), (940, 0), (945, 1), (950, 0), (955, 0), (960, 0), (965, 1), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Va0_5  a0_5  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 0.0v 74.745n 0.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.0v 414.745n 1.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 1.0v 429.745n 1.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 0.0v 469.745n 0.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.0v 494.745n 1.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 1.0v 574.745n 1.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 0.0v 734.745n 0.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 1.0v 969.745n 1.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 0), (40, 0), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 0), (75, 1), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 1), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 1), (195, 1), (200, 0), (205, 0), (210, 1), (215, 1), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 1), (250, 1), (255, 1), (260, 1), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 1), (320, 1), (325, 1), (330, 1), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 1), (385, 1), (390, 1), (395, 1), (400, 0), (405, 0), (410, 1), (415, 0), (420, 0), (425, 1), (430, 0), (435, 0), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 0), (470, 1), (475, 1), (480, 1), (485, 0), (490, 1), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 1), (565, 0), (570, 1), (575, 0), (580, 1), (585, 1), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 0), (735, 1), (740, 1), (745, 1), (750, 1), (755, 0), (760, 0), (765, 1), (770, 1), (775, 1), (780, 1), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 1), (820, 1), (825, 0), (830, 0), (835, 1), (840, 1), (845, 1), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 1), (895, 1), (900, 1), (905, 1), (910, 0), (915, 0), (920, 1), (925, 1), (930, 0), (935, 0), (940, 0), (945, 1), (950, 0), (955, 0), (960, 0), (965, 1), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Va0_6  a0_6  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 0.0v 74.745n 0.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.0v 414.745n 1.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 1.0v 429.745n 1.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 0.0v 469.745n 0.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.0v 494.745n 1.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 1.0v 574.745n 1.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 0.0v 734.745n 0.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 1.0v 969.745n 1.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 1), (25, 1), (30, 0), (35, 0), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 0), (110, 1), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 0), (150, 0), (155, 1), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 1), (195, 0), (200, 0), (205, 0), (210, 0), (215, 1), (220, 1), (225, 1), (230, 0), (235, 0), (240, 0), (245, 1), (250, 0), (255, 0), (260, 0), (265, 1), (270, 0), (275, 0), (280, 1), (285, 1), (290, 1), (295, 1), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 0), (380, 0), (385, 0), (390, 0), (395, 0), (400, 1), (405, 1), (410, 0), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 0), (465, 1), (470, 1), (475, 1), (480, 1), (485, 0), (490, 0), (495, 0), (500, 1), (505, 1), (510, 0), (515, 0), (520, 0), (525, 0), (530, 1), (535, 1), (540, 0), (545, 0), (550, 0), (555, 1), (560, 0), (565, 0), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 0), (605, 1), (610, 1), (615, 1), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 1), (700, 1), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 1), (760, 1), (765, 1), (770, 1), (775, 1), (780, 1), (785, 1), (790, 1), (795, 0), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 1), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 1), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Va1_0  a1_0  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 0.0v 109.745n 0.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 1.0v 159.745n 1.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 1.0v 194.745n 1.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 1.0v 249.745n 1.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 1.0v 269.745n 1.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 0.0v 414.745n 0.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 0.0v 464.745n 0.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.0v 559.745n 1.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.0v 729.745n 1.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 0.0v 799.745n 0.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 1.0v 999.745n 1.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 1), (25, 1), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 1), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 1), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 1), (190, 0), (195, 0), (200, 0), (205, 1), (210, 1), (215, 0), (220, 0), (225, 1), (230, 0), (235, 0), (240, 0), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 0), (275, 0), (280, 1), (285, 1), (290, 0), (295, 0), (300, 0), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 0), (405, 0), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 1), (505, 0), (510, 0), (515, 0), (520, 0), (525, 1), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 1), (560, 0), (565, 1), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 1), (625, 1), (630, 1), (635, 1), (640, 0), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 1), (675, 1), (680, 1), (685, 1), (690, 0), (695, 0), (700, 0), (705, 1), (710, 1), (715, 1), (720, 1), (725, 0), (730, 1), (735, 1), (740, 0), (745, 0), (750, 0), (755, 1), (760, 1), (765, 1), (770, 1), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 0), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 1), (915, 1), (920, 0), (925, 1), (930, 1), (935, 1), (940, 1), (945, 1), (950, 1), (955, 1), (960, 1), (965, 1), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 1), (1000, 1), (1005, 0), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Va1_1  a1_1  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 1.0v 64.745n 1.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 1.0v 109.745n 1.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 1.0v 189.745n 1.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 1.0v 229.745n 1.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 1.0v 504.745n 1.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 1.0v 529.745n 1.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.0v 559.745n 1.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 0.0v 729.745n 0.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 0.0v 829.745n 0.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 0.0v 924.745n 0.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 1), (35, 1), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 1), (115, 1), (120, 1), (125, 0), (130, 0), (135, 0), (140, 0), (145, 1), (150, 1), (155, 1), (160, 0), (165, 0), (170, 1), (175, 1), (180, 1), (185, 0), (190, 1), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 1), (235, 1), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 1), (310, 1), (315, 1), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 1), (395, 1), (400, 0), (405, 0), (410, 1), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 1), (465, 0), (470, 0), (475, 1), (480, 1), (485, 0), (490, 1), (495, 1), (500, 0), (505, 1), (510, 0), (515, 0), (520, 0), (525, 1), (530, 1), (535, 1), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 1), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 0), (600, 0), (605, 1), (610, 1), (615, 0), (620, 1), (625, 1), (630, 1), (635, 1), (640, 0), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 1), (675, 1), (680, 1), (685, 1), (690, 0), (695, 0), (700, 1), (705, 1), (710, 1), (715, 1), (720, 0), (725, 0), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 1), (830, 1), (835, 1), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 1), (890, 1), (895, 1), (900, 0), (905, 0), (910, 0), (915, 0), (920, 1), (925, 0), (930, 1), (935, 1), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 1), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va1_2  a1_2  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 0.0v 189.745n 0.0v 189.755n 1.0v 194.745n 1.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.0v 414.745n 1.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 1.0v 464.745n 1.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 0.0v 504.745n 0.0v 504.755n 1.0v 509.745n 1.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 0.0v 619.745n 0.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 1.0v 924.745n 1.0v 924.755n 0.0v 929.745n 0.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 1), (25, 1), (30, 1), (35, 1), (40, 0), (45, 0), (50, 0), (55, 0), (60, 1), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 1), (115, 1), (120, 1), (125, 0), (130, 0), (135, 0), (140, 0), (145, 1), (150, 1), (155, 1), (160, 0), (165, 0), (170, 1), (175, 1), (180, 1), (185, 0), (190, 1), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 1), (235, 1), (240, 0), (245, 1), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 1), (285, 1), (290, 0), (295, 0), (300, 0), (305, 1), (310, 1), (315, 1), (320, 0), (325, 1), (330, 1), (335, 0), (340, 0), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 0), (380, 0), (385, 0), (390, 1), (395, 1), (400, 0), (405, 0), (410, 1), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 0), (490, 1), (495, 1), (500, 0), (505, 1), (510, 0), (515, 0), (520, 0), (525, 1), (530, 1), (535, 1), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 1), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 0), (600, 0), (605, 1), (610, 1), (615, 0), (620, 1), (625, 1), (630, 1), (635, 1), (640, 0), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 1), (675, 1), (680, 1), (685, 1), (690, 0), (695, 0), (700, 1), (705, 1), (710, 1), (715, 1), (720, 0), (725, 0), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 0), (845, 0), (850, 1), (855, 0), (860, 0), (865, 1), (870, 0), (875, 0), (880, 0), (885, 1), (890, 1), (895, 1), (900, 0), (905, 0), (910, 0), (915, 0), (920, 1), (925, 0), (930, 1), (935, 1), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 1), (1000, 1), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va1_3  a1_3  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 1.0v 64.745n 1.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 0.0v 189.745n 0.0v 189.755n 1.0v 194.745n 1.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 0.0v 244.745n 0.0v 244.755n 1.0v 249.745n 1.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 0.0v 324.745n 0.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.0v 414.745n 1.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 0.0v 504.745n 0.0v 504.755n 1.0v 509.745n 1.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 0.0v 619.745n 0.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 1.0v 854.745n 1.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 1.0v 869.745n 1.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 1.0v 924.745n 1.0v 924.755n 0.0v 929.745n 0.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 1), (25, 1), (30, 1), (35, 1), (40, 0), (45, 0), (50, 0), (55, 0), (60, 1), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 1), (115, 1), (120, 1), (125, 0), (130, 0), (135, 0), (140, 0), (145, 1), (150, 1), (155, 1), (160, 0), (165, 0), (170, 1), (175, 1), (180, 1), (185, 0), (190, 1), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 1), (235, 1), (240, 0), (245, 1), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 1), (285, 1), (290, 0), (295, 0), (300, 0), (305, 1), (310, 1), (315, 1), (320, 0), (325, 1), (330, 1), (335, 0), (340, 0), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 0), (380, 0), (385, 0), (390, 1), (395, 1), (400, 0), (405, 0), (410, 1), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 0), (490, 1), (495, 1), (500, 0), (505, 1), (510, 0), (515, 0), (520, 0), (525, 1), (530, 1), (535, 1), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 1), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 0), (600, 0), (605, 1), (610, 1), (615, 0), (620, 1), (625, 1), (630, 1), (635, 1), (640, 0), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 1), (675, 1), (680, 1), (685, 1), (690, 0), (695, 0), (700, 1), (705, 1), (710, 1), (715, 1), (720, 0), (725, 0), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 0), (845, 0), (850, 1), (855, 0), (860, 0), (865, 1), (870, 0), (875, 0), (880, 0), (885, 1), (890, 1), (895, 1), (900, 0), (905, 0), (910, 0), (915, 0), (920, 1), (925, 0), (930, 1), (935, 1), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 1), (1000, 1), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va1_4  a1_4  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 1.0v 64.745n 1.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 0.0v 189.745n 0.0v 189.755n 1.0v 194.745n 1.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 0.0v 244.745n 0.0v 244.755n 1.0v 249.745n 1.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 0.0v 324.745n 0.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.0v 414.745n 1.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 0.0v 504.745n 0.0v 504.755n 1.0v 509.745n 1.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 0.0v 619.745n 0.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 1.0v 854.745n 1.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 1.0v 869.745n 1.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 1.0v 924.745n 1.0v 924.755n 0.0v 929.745n 0.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 1), (25, 1), (30, 1), (35, 1), (40, 0), (45, 0), (50, 0), (55, 0), (60, 1), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 1), (115, 1), (120, 1), (125, 0), (130, 0), (135, 0), (140, 0), (145, 1), (150, 1), (155, 1), (160, 0), (165, 0), (170, 1), (175, 1), (180, 1), (185, 0), (190, 1), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 1), (235, 1), (240, 0), (245, 1), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 1), (285, 1), (290, 0), (295, 0), (300, 0), (305, 1), (310, 1), (315, 1), (320, 0), (325, 1), (330, 1), (335, 0), (340, 0), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 0), (380, 0), (385, 0), (390, 1), (395, 1), (400, 0), (405, 0), (410, 1), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 0), (490, 1), (495, 1), (500, 0), (505, 1), (510, 0), (515, 0), (520, 0), (525, 1), (530, 1), (535, 1), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 1), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 0), (600, 0), (605, 1), (610, 1), (615, 0), (620, 1), (625, 1), (630, 1), (635, 1), (640, 0), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 1), (675, 1), (680, 1), (685, 1), (690, 0), (695, 0), (700, 1), (705, 1), (710, 1), (715, 1), (720, 0), (725, 0), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 0), (845, 0), (850, 1), (855, 0), (860, 0), (865, 1), (870, 0), (875, 0), (880, 0), (885, 1), (890, 1), (895, 1), (900, 0), (905, 0), (910, 0), (915, 0), (920, 1), (925, 0), (930, 1), (935, 1), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 1), (1000, 1), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va1_5  a1_5  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 1.0v 64.745n 1.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 0.0v 189.745n 0.0v 189.755n 1.0v 194.745n 1.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 0.0v 244.745n 0.0v 244.755n 1.0v 249.745n 1.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 0.0v 324.745n 0.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.0v 414.745n 1.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 0.0v 504.745n 0.0v 504.755n 1.0v 509.745n 1.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 0.0v 619.745n 0.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 1.0v 854.745n 1.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 1.0v 869.745n 1.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 1.0v 924.745n 1.0v 924.755n 0.0v 929.745n 0.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 1), (25, 1), (30, 1), (35, 1), (40, 0), (45, 0), (50, 0), (55, 0), (60, 1), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 1), (115, 1), (120, 1), (125, 0), (130, 0), (135, 0), (140, 0), (145, 1), (150, 1), (155, 1), (160, 0), (165, 0), (170, 1), (175, 1), (180, 1), (185, 0), (190, 1), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 1), (235, 1), (240, 0), (245, 1), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 1), (285, 1), (290, 0), (295, 0), (300, 0), (305, 1), (310, 1), (315, 1), (320, 0), (325, 1), (330, 1), (335, 0), (340, 0), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 0), (380, 0), (385, 0), (390, 1), (395, 1), (400, 0), (405, 0), (410, 1), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 0), (490, 1), (495, 1), (500, 0), (505, 1), (510, 0), (515, 0), (520, 0), (525, 1), (530, 1), (535, 1), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 1), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 0), (600, 0), (605, 1), (610, 1), (615, 0), (620, 1), (625, 1), (630, 1), (635, 1), (640, 0), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 1), (675, 1), (680, 1), (685, 1), (690, 0), (695, 0), (700, 1), (705, 1), (710, 1), (715, 1), (720, 0), (725, 0), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 0), (845, 0), (850, 1), (855, 0), (860, 0), (865, 1), (870, 0), (875, 0), (880, 0), (885, 1), (890, 1), (895, 1), (900, 0), (905, 0), (910, 0), (915, 0), (920, 1), (925, 0), (930, 1), (935, 1), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 1), (1000, 1), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va1_6  a1_6  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 1.0v 64.745n 1.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 0.0v 189.745n 0.0v 189.755n 1.0v 194.745n 1.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 0.0v 244.745n 0.0v 244.755n 1.0v 249.745n 1.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 0.0v 324.745n 0.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.0v 414.745n 1.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 0.0v 504.745n 0.0v 504.755n 1.0v 509.745n 1.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 0.0v 619.745n 0.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 1.0v 854.745n 1.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 1.0v 869.745n 1.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 1.0v 924.745n 1.0v 924.755n 0.0v 929.745n 0.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )

 * Generation of control signals
* (time, data): [(0, 1), (5, 0), (10, 0), (15, 0), (20, 1), (25, 0), (30, 1), (35, 0), (40, 0), (45, 0), (50, 1), (55, 1), (60, 1), (65, 1), (70, 0), (75, 0), (80, 0), (85, 0), (90, 1), (95, 0), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 0), (130, 1), (135, 0), (140, 0), (145, 1), (150, 0), (155, 1), (160, 1), (165, 1), (170, 1), (175, 0), (180, 1), (185, 0), (190, 0), (195, 1), (200, 0), (205, 1), (210, 0), (215, 1), (220, 0), (225, 1), (230, 1), (235, 1), (240, 0), (245, 0), (250, 0), (255, 1), (260, 0), (265, 0), (270, 1), (275, 0), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 0), (315, 0), (320, 0), (325, 1), (330, 0), (335, 0), (340, 1), (345, 1), (350, 1), (355, 0), (360, 1), (365, 0), (370, 0), (375, 1), (380, 0), (385, 0), (390, 0), (395, 1), (400, 0), (405, 1), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 1), (440, 0), (445, 1), (450, 0), (455, 1), (460, 1), (465, 0), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 1), (505, 1), (510, 1), (515, 0), (520, 1), (525, 0), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 0), (565, 0), (570, 0), (575, 0), (580, 0), (585, 1), (590, 0), (595, 1), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 0), (635, 1), (640, 1), (645, 0), (650, 1), (655, 1), (660, 0), (665, 0), (670, 1), (675, 1), (680, 1), (685, 0), (690, 1), (695, 0), (700, 0), (705, 1), (710, 0), (715, 1), (720, 1), (725, 0), (730, 0), (735, 0), (740, 0), (745, 1), (750, 0), (755, 0), (760, 1), (765, 0), (770, 1), (775, 1), (780, 0), (785, 0), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 0), (820, 0), (825, 0), (830, 1), (835, 0), (840, 1), (845, 1), (850, 0), (855, 1), (860, 1), (865, 0), (870, 1), (875, 0), (880, 1), (885, 1), (890, 0), (895, 1), (900, 0), (905, 1), (910, 0), (915, 0), (920, 0), (925, 1), (930, 0), (935, 1), (940, 1), (945, 0), (950, 0), (955, 1), (960, 1), (965, 0), (970, 0), (975, 1), (980, 0), (985, 0), (990, 1), (995, 1), (1000, 0), (1005, 1), (1010, 1), (1015, 0), (1020, 0), (1025, 1)]
VCSB0 CSB0 0 PWL (0n 1.0v 4.745n 1.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 1.0v 24.745n 1.0v 24.755n 0.0v 29.745n 0.0v 29.755n 1.0v 34.745n 1.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 1.0v 94.745n 1.0v 94.755n 0.0v 99.745n 0.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 0.0v 129.745n 0.0v 129.755n 1.0v 134.745n 1.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 1.0v 149.745n 1.0v 149.755n 0.0v 154.745n 0.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 0.0v 179.745n 0.0v 179.755n 1.0v 184.745n 1.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 1.0v 199.745n 1.0v 199.755n 0.0v 204.745n 0.0v 204.755n 1.0v 209.745n 1.0v 209.755n 0.0v 214.745n 0.0v 214.755n 1.0v 219.745n 1.0v 219.755n 0.0v 224.745n 0.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 1.0v 259.745n 1.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 1.0v 274.745n 1.0v 274.755n 0.0v 279.745n 0.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 1.0v 329.745n 1.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 0.0v 359.745n 0.0v 359.755n 1.0v 364.745n 1.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 1.0v 379.745n 1.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 1.0v 399.745n 1.0v 399.755n 0.0v 404.745n 0.0v 404.755n 1.0v 409.745n 1.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 1.0v 439.745n 1.0v 439.755n 0.0v 444.745n 0.0v 444.755n 1.0v 449.745n 1.0v 449.755n 0.0v 454.745n 0.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 0.0v 519.745n 0.0v 519.755n 1.0v 524.745n 1.0v 524.755n 0.0v 529.745n 0.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 0.0v 634.745n 0.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 0.0v 689.745n 0.0v 689.755n 1.0v 694.745n 1.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 1.0v 709.745n 1.0v 709.755n 0.0v 714.745n 0.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 1.0v 749.745n 1.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 1.0v 764.745n 1.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 1.0v 834.745n 1.0v 834.755n 0.0v 839.745n 0.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 0.0v 854.745n 0.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 0.0v 869.745n 0.0v 869.755n 1.0v 874.745n 1.0v 874.755n 0.0v 879.745n 0.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 0.0v 894.745n 0.0v 894.755n 1.0v 899.745n 1.0v 899.755n 0.0v 904.745n 0.0v 904.755n 1.0v 909.745n 1.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 1.0v 929.745n 1.0v 929.755n 0.0v 934.745n 0.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 1.0v 979.745n 1.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 1.0v )
* (time, data): [(0, 1), (5, 1), (10, 1), (15, 1), (20, 0), (25, 0), (30, 0), (35, 1), (40, 0), (45, 0), (50, 1), (55, 1), (60, 0), (65, 0), (70, 1), (75, 0), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 0), (110, 0), (115, 1), (120, 1), (125, 0), (130, 1), (135, 1), (140, 1), (145, 0), (150, 1), (155, 0), (160, 0), (165, 1), (170, 0), (175, 1), (180, 1), (185, 0), (190, 0), (195, 0), (200, 1), (205, 0), (210, 1), (215, 0), (220, 1), (225, 0), (230, 0), (235, 1), (240, 0), (245, 0), (250, 0), (255, 1), (260, 1), (265, 0), (270, 0), (275, 1), (280, 0), (285, 1), (290, 0), (295, 0), (300, 0), (305, 0), (310, 1), (315, 1), (320, 0), (325, 0), (330, 1), (335, 0), (340, 1), (345, 0), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 0), (380, 1), (385, 1), (390, 0), (395, 1), (400, 0), (405, 1), (410, 0), (415, 0), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 0), (460, 0), (465, 0), (470, 1), (475, 0), (480, 1), (485, 0), (490, 0), (495, 1), (500, 0), (505, 0), (510, 0), (515, 1), (520, 1), (525, 0), (530, 0), (535, 1), (540, 0), (545, 1), (550, 1), (555, 0), (560, 0), (565, 0), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 0), (600, 1), (605, 0), (610, 1), (615, 0), (620, 0), (625, 1), (630, 1), (635, 1), (640, 0), (645, 1), (650, 1), (655, 1), (660, 1), (665, 1), (670, 0), (675, 1), (680, 1), (685, 1), (690, 0), (695, 0), (700, 0), (705, 0), (710, 1), (715, 1), (720, 0), (725, 0), (730, 0), (735, 1), (740, 0), (745, 1), (750, 1), (755, 0), (760, 1), (765, 1), (770, 1), (775, 1), (780, 1), (785, 1), (790, 1), (795, 0), (800, 0), (805, 1), (810, 1), (815, 1), (820, 1), (825, 0), (830, 0), (835, 1), (840, 0), (845, 1), (850, 0), (855, 0), (860, 1), (865, 0), (870, 0), (875, 1), (880, 1), (885, 0), (890, 1), (895, 1), (900, 0), (905, 1), (910, 0), (915, 1), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 1), (950, 1), (955, 1), (960, 1), (965, 1), (970, 0), (975, 1), (980, 1), (985, 1), (990, 1), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 1), (1020, 0), (1025, 1)]
VCSB1 CSB1 0 PWL (0n 1.0v 4.745n 1.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 1.0v 39.745n 1.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 1.0v 74.745n 1.0v 74.755n 0.0v 79.745n 0.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 0.0v 129.745n 0.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.0v 154.745n 1.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 1.0v 169.745n 1.0v 169.755n 0.0v 174.745n 0.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 1.0v 204.745n 1.0v 204.755n 0.0v 209.745n 0.0v 209.755n 1.0v 214.745n 1.0v 214.755n 0.0v 219.745n 0.0v 219.755n 1.0v 224.745n 1.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 1.0v 239.745n 1.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 1.0v 279.745n 1.0v 279.755n 0.0v 284.745n 0.0v 284.755n 1.0v 289.745n 1.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 1.0v 334.745n 1.0v 334.755n 0.0v 339.745n 0.0v 339.755n 1.0v 344.745n 1.0v 344.755n 0.0v 349.745n 0.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 0.0v 379.745n 0.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 0.0v 394.745n 0.0v 394.755n 1.0v 399.745n 1.0v 399.755n 0.0v 404.745n 0.0v 404.755n 1.0v 409.745n 1.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 1.0v 474.745n 1.0v 474.755n 0.0v 479.745n 0.0v 479.755n 1.0v 484.745n 1.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 1.0v 499.745n 1.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 1.0v 539.745n 1.0v 539.755n 0.0v 544.745n 0.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.0v 604.745n 1.0v 604.755n 0.0v 609.745n 0.0v 609.755n 1.0v 614.745n 1.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 0.0v 644.745n 0.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 0.0v 674.745n 0.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 1.0v 739.745n 1.0v 739.755n 0.0v 744.745n 0.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 0.0v 759.745n 0.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 1.0v 839.745n 1.0v 839.755n 0.0v 844.745n 0.0v 844.755n 1.0v 849.745n 1.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 1.0v 864.745n 1.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 0.0v 889.745n 0.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 0.0v 904.745n 0.0v 904.755n 1.0v 909.745n 1.0v 909.755n 0.0v 914.745n 0.0v 914.755n 1.0v 919.745n 1.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 0.0v 974.745n 0.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 1.0v )
* PULSE: period=5
Vclk0 clk0 0 PULSE (0 1.0 4.995n 0.01n 0.01n 2.49n 5n)
* PULSE: period=5
Vclk1 clk1 0 PULSE (0 1.0 4.995n 0.01n 0.01n 2.49n 5n)

 * Generation of dout measurements
* CHECK dout1_0 Vdout1_0ck4 = 1.0 time = 25
.meas tran vdout1_0ck4 FIND v(dout1_0) AT=25.025n

* CHECK dout1_1 Vdout1_1ck4 = 1.0 time = 25
.meas tran vdout1_1ck4 FIND v(dout1_1) AT=25.025n

* CHECK dout1_2 Vdout1_2ck4 = 0 time = 25
.meas tran vdout1_2ck4 FIND v(dout1_2) AT=25.025n

* CHECK dout1_3 Vdout1_3ck4 = 0 time = 25
.meas tran vdout1_3ck4 FIND v(dout1_3) AT=25.025n

* CHECK dout1_4 Vdout1_4ck4 = 0 time = 25
.meas tran vdout1_4ck4 FIND v(dout1_4) AT=25.025n

* CHECK dout1_5 Vdout1_5ck4 = 1.0 time = 25
.meas tran vdout1_5ck4 FIND v(dout1_5) AT=25.025n

* CHECK dout1_6 Vdout1_6ck4 = 0 time = 25
.meas tran vdout1_6ck4 FIND v(dout1_6) AT=25.025n

* CHECK dout1_7 Vdout1_7ck4 = 0 time = 25
.meas tran vdout1_7ck4 FIND v(dout1_7) AT=25.025n

* CHECK dout1_8 Vdout1_8ck4 = 1.0 time = 25
.meas tran vdout1_8ck4 FIND v(dout1_8) AT=25.025n

* CHECK dout1_9 Vdout1_9ck4 = 0 time = 25
.meas tran vdout1_9ck4 FIND v(dout1_9) AT=25.025n

* CHECK dout1_10 Vdout1_10ck4 = 1.0 time = 25
.meas tran vdout1_10ck4 FIND v(dout1_10) AT=25.025n

* CHECK dout1_11 Vdout1_11ck4 = 1.0 time = 25
.meas tran vdout1_11ck4 FIND v(dout1_11) AT=25.025n

* CHECK dout1_12 Vdout1_12ck4 = 1.0 time = 25
.meas tran vdout1_12ck4 FIND v(dout1_12) AT=25.025n

* CHECK dout1_0 Vdout1_0ck5 = 1.0 time = 30
.meas tran vdout1_0ck5 FIND v(dout1_0) AT=30.025n

* CHECK dout1_1 Vdout1_1ck5 = 1.0 time = 30
.meas tran vdout1_1ck5 FIND v(dout1_1) AT=30.025n

* CHECK dout1_2 Vdout1_2ck5 = 0 time = 30
.meas tran vdout1_2ck5 FIND v(dout1_2) AT=30.025n

* CHECK dout1_3 Vdout1_3ck5 = 0 time = 30
.meas tran vdout1_3ck5 FIND v(dout1_3) AT=30.025n

* CHECK dout1_4 Vdout1_4ck5 = 0 time = 30
.meas tran vdout1_4ck5 FIND v(dout1_4) AT=30.025n

* CHECK dout1_5 Vdout1_5ck5 = 1.0 time = 30
.meas tran vdout1_5ck5 FIND v(dout1_5) AT=30.025n

* CHECK dout1_6 Vdout1_6ck5 = 0 time = 30
.meas tran vdout1_6ck5 FIND v(dout1_6) AT=30.025n

* CHECK dout1_7 Vdout1_7ck5 = 0 time = 30
.meas tran vdout1_7ck5 FIND v(dout1_7) AT=30.025n

* CHECK dout1_8 Vdout1_8ck5 = 1.0 time = 30
.meas tran vdout1_8ck5 FIND v(dout1_8) AT=30.025n

* CHECK dout1_9 Vdout1_9ck5 = 0 time = 30
.meas tran vdout1_9ck5 FIND v(dout1_9) AT=30.025n

* CHECK dout1_10 Vdout1_10ck5 = 1.0 time = 30
.meas tran vdout1_10ck5 FIND v(dout1_10) AT=30.025n

* CHECK dout1_11 Vdout1_11ck5 = 1.0 time = 30
.meas tran vdout1_11ck5 FIND v(dout1_11) AT=30.025n

* CHECK dout1_12 Vdout1_12ck5 = 1.0 time = 30
.meas tran vdout1_12ck5 FIND v(dout1_12) AT=30.025n

* CHECK dout1_0 Vdout1_0ck6 = 0 time = 35
.meas tran vdout1_0ck6 FIND v(dout1_0) AT=35.025n

* CHECK dout1_1 Vdout1_1ck6 = 0 time = 35
.meas tran vdout1_1ck6 FIND v(dout1_1) AT=35.025n

* CHECK dout1_2 Vdout1_2ck6 = 1.0 time = 35
.meas tran vdout1_2ck6 FIND v(dout1_2) AT=35.025n

* CHECK dout1_3 Vdout1_3ck6 = 0 time = 35
.meas tran vdout1_3ck6 FIND v(dout1_3) AT=35.025n

* CHECK dout1_4 Vdout1_4ck6 = 1.0 time = 35
.meas tran vdout1_4ck6 FIND v(dout1_4) AT=35.025n

* CHECK dout1_5 Vdout1_5ck6 = 0 time = 35
.meas tran vdout1_5ck6 FIND v(dout1_5) AT=35.025n

* CHECK dout1_6 Vdout1_6ck6 = 0 time = 35
.meas tran vdout1_6ck6 FIND v(dout1_6) AT=35.025n

* CHECK dout1_7 Vdout1_7ck6 = 0 time = 35
.meas tran vdout1_7ck6 FIND v(dout1_7) AT=35.025n

* CHECK dout1_8 Vdout1_8ck6 = 0 time = 35
.meas tran vdout1_8ck6 FIND v(dout1_8) AT=35.025n

* CHECK dout1_9 Vdout1_9ck6 = 1.0 time = 35
.meas tran vdout1_9ck6 FIND v(dout1_9) AT=35.025n

* CHECK dout1_10 Vdout1_10ck6 = 1.0 time = 35
.meas tran vdout1_10ck6 FIND v(dout1_10) AT=35.025n

* CHECK dout1_11 Vdout1_11ck6 = 1.0 time = 35
.meas tran vdout1_11ck6 FIND v(dout1_11) AT=35.025n

* CHECK dout1_12 Vdout1_12ck6 = 1.0 time = 35
.meas tran vdout1_12ck6 FIND v(dout1_12) AT=35.025n

* CHECK dout1_0 Vdout1_0ck8 = 0 time = 45
.meas tran vdout1_0ck8 FIND v(dout1_0) AT=45.025n

* CHECK dout1_1 Vdout1_1ck8 = 1.0 time = 45
.meas tran vdout1_1ck8 FIND v(dout1_1) AT=45.025n

* CHECK dout1_2 Vdout1_2ck8 = 1.0 time = 45
.meas tran vdout1_2ck8 FIND v(dout1_2) AT=45.025n

* CHECK dout1_3 Vdout1_3ck8 = 1.0 time = 45
.meas tran vdout1_3ck8 FIND v(dout1_3) AT=45.025n

* CHECK dout1_4 Vdout1_4ck8 = 0 time = 45
.meas tran vdout1_4ck8 FIND v(dout1_4) AT=45.025n

* CHECK dout1_5 Vdout1_5ck8 = 0 time = 45
.meas tran vdout1_5ck8 FIND v(dout1_5) AT=45.025n

* CHECK dout1_6 Vdout1_6ck8 = 1.0 time = 45
.meas tran vdout1_6ck8 FIND v(dout1_6) AT=45.025n

* CHECK dout1_7 Vdout1_7ck8 = 1.0 time = 45
.meas tran vdout1_7ck8 FIND v(dout1_7) AT=45.025n

* CHECK dout1_8 Vdout1_8ck8 = 1.0 time = 45
.meas tran vdout1_8ck8 FIND v(dout1_8) AT=45.025n

* CHECK dout1_9 Vdout1_9ck8 = 0 time = 45
.meas tran vdout1_9ck8 FIND v(dout1_9) AT=45.025n

* CHECK dout1_10 Vdout1_10ck8 = 0 time = 45
.meas tran vdout1_10ck8 FIND v(dout1_10) AT=45.025n

* CHECK dout1_11 Vdout1_11ck8 = 0 time = 45
.meas tran vdout1_11ck8 FIND v(dout1_11) AT=45.025n

* CHECK dout1_12 Vdout1_12ck8 = 0 time = 45
.meas tran vdout1_12ck8 FIND v(dout1_12) AT=45.025n

* CHECK dout1_0 Vdout1_0ck9 = 0 time = 50
.meas tran vdout1_0ck9 FIND v(dout1_0) AT=50.025n

* CHECK dout1_1 Vdout1_1ck9 = 1.0 time = 50
.meas tran vdout1_1ck9 FIND v(dout1_1) AT=50.025n

* CHECK dout1_2 Vdout1_2ck9 = 1.0 time = 50
.meas tran vdout1_2ck9 FIND v(dout1_2) AT=50.025n

* CHECK dout1_3 Vdout1_3ck9 = 1.0 time = 50
.meas tran vdout1_3ck9 FIND v(dout1_3) AT=50.025n

* CHECK dout1_4 Vdout1_4ck9 = 0 time = 50
.meas tran vdout1_4ck9 FIND v(dout1_4) AT=50.025n

* CHECK dout1_5 Vdout1_5ck9 = 0 time = 50
.meas tran vdout1_5ck9 FIND v(dout1_5) AT=50.025n

* CHECK dout1_6 Vdout1_6ck9 = 1.0 time = 50
.meas tran vdout1_6ck9 FIND v(dout1_6) AT=50.025n

* CHECK dout1_7 Vdout1_7ck9 = 1.0 time = 50
.meas tran vdout1_7ck9 FIND v(dout1_7) AT=50.025n

* CHECK dout1_8 Vdout1_8ck9 = 1.0 time = 50
.meas tran vdout1_8ck9 FIND v(dout1_8) AT=50.025n

* CHECK dout1_9 Vdout1_9ck9 = 0 time = 50
.meas tran vdout1_9ck9 FIND v(dout1_9) AT=50.025n

* CHECK dout1_10 Vdout1_10ck9 = 0 time = 50
.meas tran vdout1_10ck9 FIND v(dout1_10) AT=50.025n

* CHECK dout1_11 Vdout1_11ck9 = 0 time = 50
.meas tran vdout1_11ck9 FIND v(dout1_11) AT=50.025n

* CHECK dout1_12 Vdout1_12ck9 = 0 time = 50
.meas tran vdout1_12ck9 FIND v(dout1_12) AT=50.025n

* CHECK dout1_0 Vdout1_0ck12 = 1.0 time = 65
.meas tran vdout1_0ck12 FIND v(dout1_0) AT=65.025n

* CHECK dout1_1 Vdout1_1ck12 = 1.0 time = 65
.meas tran vdout1_1ck12 FIND v(dout1_1) AT=65.025n

* CHECK dout1_2 Vdout1_2ck12 = 0 time = 65
.meas tran vdout1_2ck12 FIND v(dout1_2) AT=65.025n

* CHECK dout1_3 Vdout1_3ck12 = 0 time = 65
.meas tran vdout1_3ck12 FIND v(dout1_3) AT=65.025n

* CHECK dout1_4 Vdout1_4ck12 = 0 time = 65
.meas tran vdout1_4ck12 FIND v(dout1_4) AT=65.025n

* CHECK dout1_5 Vdout1_5ck12 = 1.0 time = 65
.meas tran vdout1_5ck12 FIND v(dout1_5) AT=65.025n

* CHECK dout1_6 Vdout1_6ck12 = 0 time = 65
.meas tran vdout1_6ck12 FIND v(dout1_6) AT=65.025n

* CHECK dout1_7 Vdout1_7ck12 = 0 time = 65
.meas tran vdout1_7ck12 FIND v(dout1_7) AT=65.025n

* CHECK dout1_8 Vdout1_8ck12 = 1.0 time = 65
.meas tran vdout1_8ck12 FIND v(dout1_8) AT=65.025n

* CHECK dout1_9 Vdout1_9ck12 = 0 time = 65
.meas tran vdout1_9ck12 FIND v(dout1_9) AT=65.025n

* CHECK dout1_10 Vdout1_10ck12 = 1.0 time = 65
.meas tran vdout1_10ck12 FIND v(dout1_10) AT=65.025n

* CHECK dout1_11 Vdout1_11ck12 = 1.0 time = 65
.meas tran vdout1_11ck12 FIND v(dout1_11) AT=65.025n

* CHECK dout1_12 Vdout1_12ck12 = 1.0 time = 65
.meas tran vdout1_12ck12 FIND v(dout1_12) AT=65.025n

* CHECK dout1_0 Vdout1_0ck13 = 0 time = 70
.meas tran vdout1_0ck13 FIND v(dout1_0) AT=70.025n

* CHECK dout1_1 Vdout1_1ck13 = 1.0 time = 70
.meas tran vdout1_1ck13 FIND v(dout1_1) AT=70.025n

* CHECK dout1_2 Vdout1_2ck13 = 1.0 time = 70
.meas tran vdout1_2ck13 FIND v(dout1_2) AT=70.025n

* CHECK dout1_3 Vdout1_3ck13 = 1.0 time = 70
.meas tran vdout1_3ck13 FIND v(dout1_3) AT=70.025n

* CHECK dout1_4 Vdout1_4ck13 = 0 time = 70
.meas tran vdout1_4ck13 FIND v(dout1_4) AT=70.025n

* CHECK dout1_5 Vdout1_5ck13 = 0 time = 70
.meas tran vdout1_5ck13 FIND v(dout1_5) AT=70.025n

* CHECK dout1_6 Vdout1_6ck13 = 1.0 time = 70
.meas tran vdout1_6ck13 FIND v(dout1_6) AT=70.025n

* CHECK dout1_7 Vdout1_7ck13 = 1.0 time = 70
.meas tran vdout1_7ck13 FIND v(dout1_7) AT=70.025n

* CHECK dout1_8 Vdout1_8ck13 = 1.0 time = 70
.meas tran vdout1_8ck13 FIND v(dout1_8) AT=70.025n

* CHECK dout1_9 Vdout1_9ck13 = 0 time = 70
.meas tran vdout1_9ck13 FIND v(dout1_9) AT=70.025n

* CHECK dout1_10 Vdout1_10ck13 = 0 time = 70
.meas tran vdout1_10ck13 FIND v(dout1_10) AT=70.025n

* CHECK dout1_11 Vdout1_11ck13 = 0 time = 70
.meas tran vdout1_11ck13 FIND v(dout1_11) AT=70.025n

* CHECK dout1_12 Vdout1_12ck13 = 0 time = 70
.meas tran vdout1_12ck13 FIND v(dout1_12) AT=70.025n

* CHECK dout1_0 Vdout1_0ck15 = 0 time = 80
.meas tran vdout1_0ck15 FIND v(dout1_0) AT=80.025n

* CHECK dout1_1 Vdout1_1ck15 = 0 time = 80
.meas tran vdout1_1ck15 FIND v(dout1_1) AT=80.025n

* CHECK dout1_2 Vdout1_2ck15 = 0 time = 80
.meas tran vdout1_2ck15 FIND v(dout1_2) AT=80.025n

* CHECK dout1_3 Vdout1_3ck15 = 1.0 time = 80
.meas tran vdout1_3ck15 FIND v(dout1_3) AT=80.025n

* CHECK dout1_4 Vdout1_4ck15 = 0 time = 80
.meas tran vdout1_4ck15 FIND v(dout1_4) AT=80.025n

* CHECK dout1_5 Vdout1_5ck15 = 1.0 time = 80
.meas tran vdout1_5ck15 FIND v(dout1_5) AT=80.025n

* CHECK dout1_6 Vdout1_6ck15 = 1.0 time = 80
.meas tran vdout1_6ck15 FIND v(dout1_6) AT=80.025n

* CHECK dout1_7 Vdout1_7ck15 = 0 time = 80
.meas tran vdout1_7ck15 FIND v(dout1_7) AT=80.025n

* CHECK dout1_8 Vdout1_8ck15 = 1.0 time = 80
.meas tran vdout1_8ck15 FIND v(dout1_8) AT=80.025n

* CHECK dout1_9 Vdout1_9ck15 = 0 time = 80
.meas tran vdout1_9ck15 FIND v(dout1_9) AT=80.025n

* CHECK dout1_10 Vdout1_10ck15 = 1.0 time = 80
.meas tran vdout1_10ck15 FIND v(dout1_10) AT=80.025n

* CHECK dout1_11 Vdout1_11ck15 = 0 time = 80
.meas tran vdout1_11ck15 FIND v(dout1_11) AT=80.025n

* CHECK dout1_12 Vdout1_12ck15 = 1.0 time = 80
.meas tran vdout1_12ck15 FIND v(dout1_12) AT=80.025n

* CHECK dout1_0 Vdout1_0ck21 = 1.0 time = 110
.meas tran vdout1_0ck21 FIND v(dout1_0) AT=110.025n

* CHECK dout1_1 Vdout1_1ck21 = 1.0 time = 110
.meas tran vdout1_1ck21 FIND v(dout1_1) AT=110.025n

* CHECK dout1_2 Vdout1_2ck21 = 1.0 time = 110
.meas tran vdout1_2ck21 FIND v(dout1_2) AT=110.025n

* CHECK dout1_3 Vdout1_3ck21 = 0 time = 110
.meas tran vdout1_3ck21 FIND v(dout1_3) AT=110.025n

* CHECK dout1_4 Vdout1_4ck21 = 1.0 time = 110
.meas tran vdout1_4ck21 FIND v(dout1_4) AT=110.025n

* CHECK dout1_5 Vdout1_5ck21 = 0 time = 110
.meas tran vdout1_5ck21 FIND v(dout1_5) AT=110.025n

* CHECK dout1_6 Vdout1_6ck21 = 1.0 time = 110
.meas tran vdout1_6ck21 FIND v(dout1_6) AT=110.025n

* CHECK dout1_7 Vdout1_7ck21 = 0 time = 110
.meas tran vdout1_7ck21 FIND v(dout1_7) AT=110.025n

* CHECK dout1_8 Vdout1_8ck21 = 1.0 time = 110
.meas tran vdout1_8ck21 FIND v(dout1_8) AT=110.025n

* CHECK dout1_9 Vdout1_9ck21 = 1.0 time = 110
.meas tran vdout1_9ck21 FIND v(dout1_9) AT=110.025n

* CHECK dout1_10 Vdout1_10ck21 = 0 time = 110
.meas tran vdout1_10ck21 FIND v(dout1_10) AT=110.025n

* CHECK dout1_11 Vdout1_11ck21 = 1.0 time = 110
.meas tran vdout1_11ck21 FIND v(dout1_11) AT=110.025n

* CHECK dout1_12 Vdout1_12ck21 = 0 time = 110
.meas tran vdout1_12ck21 FIND v(dout1_12) AT=110.025n

* CHECK dout1_0 Vdout1_0ck22 = 0 time = 115
.meas tran vdout1_0ck22 FIND v(dout1_0) AT=115.025n

* CHECK dout1_1 Vdout1_1ck22 = 0 time = 115
.meas tran vdout1_1ck22 FIND v(dout1_1) AT=115.025n

* CHECK dout1_2 Vdout1_2ck22 = 0 time = 115
.meas tran vdout1_2ck22 FIND v(dout1_2) AT=115.025n

* CHECK dout1_3 Vdout1_3ck22 = 1.0 time = 115
.meas tran vdout1_3ck22 FIND v(dout1_3) AT=115.025n

* CHECK dout1_4 Vdout1_4ck22 = 1.0 time = 115
.meas tran vdout1_4ck22 FIND v(dout1_4) AT=115.025n

* CHECK dout1_5 Vdout1_5ck22 = 1.0 time = 115
.meas tran vdout1_5ck22 FIND v(dout1_5) AT=115.025n

* CHECK dout1_6 Vdout1_6ck22 = 1.0 time = 115
.meas tran vdout1_6ck22 FIND v(dout1_6) AT=115.025n

* CHECK dout1_7 Vdout1_7ck22 = 0 time = 115
.meas tran vdout1_7ck22 FIND v(dout1_7) AT=115.025n

* CHECK dout1_8 Vdout1_8ck22 = 1.0 time = 115
.meas tran vdout1_8ck22 FIND v(dout1_8) AT=115.025n

* CHECK dout1_9 Vdout1_9ck22 = 0 time = 115
.meas tran vdout1_9ck22 FIND v(dout1_9) AT=115.025n

* CHECK dout1_10 Vdout1_10ck22 = 0 time = 115
.meas tran vdout1_10ck22 FIND v(dout1_10) AT=115.025n

* CHECK dout1_11 Vdout1_11ck22 = 1.0 time = 115
.meas tran vdout1_11ck22 FIND v(dout1_11) AT=115.025n

* CHECK dout1_12 Vdout1_12ck22 = 0 time = 115
.meas tran vdout1_12ck22 FIND v(dout1_12) AT=115.025n

* CHECK dout1_0 Vdout1_0ck25 = 0 time = 130
.meas tran vdout1_0ck25 FIND v(dout1_0) AT=130.025n

* CHECK dout1_1 Vdout1_1ck25 = 0 time = 130
.meas tran vdout1_1ck25 FIND v(dout1_1) AT=130.025n

* CHECK dout1_2 Vdout1_2ck25 = 0 time = 130
.meas tran vdout1_2ck25 FIND v(dout1_2) AT=130.025n

* CHECK dout1_3 Vdout1_3ck25 = 1.0 time = 130
.meas tran vdout1_3ck25 FIND v(dout1_3) AT=130.025n

* CHECK dout1_4 Vdout1_4ck25 = 0 time = 130
.meas tran vdout1_4ck25 FIND v(dout1_4) AT=130.025n

* CHECK dout1_5 Vdout1_5ck25 = 1.0 time = 130
.meas tran vdout1_5ck25 FIND v(dout1_5) AT=130.025n

* CHECK dout1_6 Vdout1_6ck25 = 1.0 time = 130
.meas tran vdout1_6ck25 FIND v(dout1_6) AT=130.025n

* CHECK dout1_7 Vdout1_7ck25 = 0 time = 130
.meas tran vdout1_7ck25 FIND v(dout1_7) AT=130.025n

* CHECK dout1_8 Vdout1_8ck25 = 1.0 time = 130
.meas tran vdout1_8ck25 FIND v(dout1_8) AT=130.025n

* CHECK dout1_9 Vdout1_9ck25 = 0 time = 130
.meas tran vdout1_9ck25 FIND v(dout1_9) AT=130.025n

* CHECK dout1_10 Vdout1_10ck25 = 1.0 time = 130
.meas tran vdout1_10ck25 FIND v(dout1_10) AT=130.025n

* CHECK dout1_11 Vdout1_11ck25 = 0 time = 130
.meas tran vdout1_11ck25 FIND v(dout1_11) AT=130.025n

* CHECK dout1_12 Vdout1_12ck25 = 1.0 time = 130
.meas tran vdout1_12ck25 FIND v(dout1_12) AT=130.025n

* CHECK dout1_0 Vdout1_0ck29 = 0 time = 150
.meas tran vdout1_0ck29 FIND v(dout1_0) AT=150.025n

* CHECK dout1_1 Vdout1_1ck29 = 0 time = 150
.meas tran vdout1_1ck29 FIND v(dout1_1) AT=150.025n

* CHECK dout1_2 Vdout1_2ck29 = 1.0 time = 150
.meas tran vdout1_2ck29 FIND v(dout1_2) AT=150.025n

* CHECK dout1_3 Vdout1_3ck29 = 0 time = 150
.meas tran vdout1_3ck29 FIND v(dout1_3) AT=150.025n

* CHECK dout1_4 Vdout1_4ck29 = 1.0 time = 150
.meas tran vdout1_4ck29 FIND v(dout1_4) AT=150.025n

* CHECK dout1_5 Vdout1_5ck29 = 0 time = 150
.meas tran vdout1_5ck29 FIND v(dout1_5) AT=150.025n

* CHECK dout1_6 Vdout1_6ck29 = 0 time = 150
.meas tran vdout1_6ck29 FIND v(dout1_6) AT=150.025n

* CHECK dout1_7 Vdout1_7ck29 = 0 time = 150
.meas tran vdout1_7ck29 FIND v(dout1_7) AT=150.025n

* CHECK dout1_8 Vdout1_8ck29 = 0 time = 150
.meas tran vdout1_8ck29 FIND v(dout1_8) AT=150.025n

* CHECK dout1_9 Vdout1_9ck29 = 1.0 time = 150
.meas tran vdout1_9ck29 FIND v(dout1_9) AT=150.025n

* CHECK dout1_10 Vdout1_10ck29 = 1.0 time = 150
.meas tran vdout1_10ck29 FIND v(dout1_10) AT=150.025n

* CHECK dout1_11 Vdout1_11ck29 = 1.0 time = 150
.meas tran vdout1_11ck29 FIND v(dout1_11) AT=150.025n

* CHECK dout1_12 Vdout1_12ck29 = 1.0 time = 150
.meas tran vdout1_12ck29 FIND v(dout1_12) AT=150.025n

* CHECK dout1_0 Vdout1_0ck31 = 0 time = 160
.meas tran vdout1_0ck31 FIND v(dout1_0) AT=160.025n

* CHECK dout1_1 Vdout1_1ck31 = 0 time = 160
.meas tran vdout1_1ck31 FIND v(dout1_1) AT=160.025n

* CHECK dout1_2 Vdout1_2ck31 = 0 time = 160
.meas tran vdout1_2ck31 FIND v(dout1_2) AT=160.025n

* CHECK dout1_3 Vdout1_3ck31 = 1.0 time = 160
.meas tran vdout1_3ck31 FIND v(dout1_3) AT=160.025n

* CHECK dout1_4 Vdout1_4ck31 = 1.0 time = 160
.meas tran vdout1_4ck31 FIND v(dout1_4) AT=160.025n

* CHECK dout1_5 Vdout1_5ck31 = 1.0 time = 160
.meas tran vdout1_5ck31 FIND v(dout1_5) AT=160.025n

* CHECK dout1_6 Vdout1_6ck31 = 1.0 time = 160
.meas tran vdout1_6ck31 FIND v(dout1_6) AT=160.025n

* CHECK dout1_7 Vdout1_7ck31 = 0 time = 160
.meas tran vdout1_7ck31 FIND v(dout1_7) AT=160.025n

* CHECK dout1_8 Vdout1_8ck31 = 1.0 time = 160
.meas tran vdout1_8ck31 FIND v(dout1_8) AT=160.025n

* CHECK dout1_9 Vdout1_9ck31 = 0 time = 160
.meas tran vdout1_9ck31 FIND v(dout1_9) AT=160.025n

* CHECK dout1_10 Vdout1_10ck31 = 0 time = 160
.meas tran vdout1_10ck31 FIND v(dout1_10) AT=160.025n

* CHECK dout1_11 Vdout1_11ck31 = 1.0 time = 160
.meas tran vdout1_11ck31 FIND v(dout1_11) AT=160.025n

* CHECK dout1_12 Vdout1_12ck31 = 0 time = 160
.meas tran vdout1_12ck31 FIND v(dout1_12) AT=160.025n

* CHECK dout1_0 Vdout1_0ck32 = 1.0 time = 165
.meas tran vdout1_0ck32 FIND v(dout1_0) AT=165.025n

* CHECK dout1_1 Vdout1_1ck32 = 1.0 time = 165
.meas tran vdout1_1ck32 FIND v(dout1_1) AT=165.025n

* CHECK dout1_2 Vdout1_2ck32 = 1.0 time = 165
.meas tran vdout1_2ck32 FIND v(dout1_2) AT=165.025n

* CHECK dout1_3 Vdout1_3ck32 = 0 time = 165
.meas tran vdout1_3ck32 FIND v(dout1_3) AT=165.025n

* CHECK dout1_4 Vdout1_4ck32 = 0 time = 165
.meas tran vdout1_4ck32 FIND v(dout1_4) AT=165.025n

* CHECK dout1_5 Vdout1_5ck32 = 0 time = 165
.meas tran vdout1_5ck32 FIND v(dout1_5) AT=165.025n

* CHECK dout1_6 Vdout1_6ck32 = 0 time = 165
.meas tran vdout1_6ck32 FIND v(dout1_6) AT=165.025n

* CHECK dout1_7 Vdout1_7ck32 = 0 time = 165
.meas tran vdout1_7ck32 FIND v(dout1_7) AT=165.025n

* CHECK dout1_8 Vdout1_8ck32 = 1.0 time = 165
.meas tran vdout1_8ck32 FIND v(dout1_8) AT=165.025n

* CHECK dout1_9 Vdout1_9ck32 = 0 time = 165
.meas tran vdout1_9ck32 FIND v(dout1_9) AT=165.025n

* CHECK dout1_10 Vdout1_10ck32 = 1.0 time = 165
.meas tran vdout1_10ck32 FIND v(dout1_10) AT=165.025n

* CHECK dout1_11 Vdout1_11ck32 = 0 time = 165
.meas tran vdout1_11ck32 FIND v(dout1_11) AT=165.025n

* CHECK dout1_12 Vdout1_12ck32 = 1.0 time = 165
.meas tran vdout1_12ck32 FIND v(dout1_12) AT=165.025n

* CHECK dout1_0 Vdout1_0ck34 = 0 time = 175
.meas tran vdout1_0ck34 FIND v(dout1_0) AT=175.025n

* CHECK dout1_1 Vdout1_1ck34 = 0 time = 175
.meas tran vdout1_1ck34 FIND v(dout1_1) AT=175.025n

* CHECK dout1_2 Vdout1_2ck34 = 1.0 time = 175
.meas tran vdout1_2ck34 FIND v(dout1_2) AT=175.025n

* CHECK dout1_3 Vdout1_3ck34 = 0 time = 175
.meas tran vdout1_3ck34 FIND v(dout1_3) AT=175.025n

* CHECK dout1_4 Vdout1_4ck34 = 1.0 time = 175
.meas tran vdout1_4ck34 FIND v(dout1_4) AT=175.025n

* CHECK dout1_5 Vdout1_5ck34 = 0 time = 175
.meas tran vdout1_5ck34 FIND v(dout1_5) AT=175.025n

* CHECK dout1_6 Vdout1_6ck34 = 0 time = 175
.meas tran vdout1_6ck34 FIND v(dout1_6) AT=175.025n

* CHECK dout1_7 Vdout1_7ck34 = 0 time = 175
.meas tran vdout1_7ck34 FIND v(dout1_7) AT=175.025n

* CHECK dout1_8 Vdout1_8ck34 = 0 time = 175
.meas tran vdout1_8ck34 FIND v(dout1_8) AT=175.025n

* CHECK dout1_9 Vdout1_9ck34 = 1.0 time = 175
.meas tran vdout1_9ck34 FIND v(dout1_9) AT=175.025n

* CHECK dout1_10 Vdout1_10ck34 = 1.0 time = 175
.meas tran vdout1_10ck34 FIND v(dout1_10) AT=175.025n

* CHECK dout1_11 Vdout1_11ck34 = 1.0 time = 175
.meas tran vdout1_11ck34 FIND v(dout1_11) AT=175.025n

* CHECK dout1_12 Vdout1_12ck34 = 1.0 time = 175
.meas tran vdout1_12ck34 FIND v(dout1_12) AT=175.025n

* CHECK dout1_0 Vdout1_0ck37 = 1.0 time = 190
.meas tran vdout1_0ck37 FIND v(dout1_0) AT=190.025n

* CHECK dout1_1 Vdout1_1ck37 = 1.0 time = 190
.meas tran vdout1_1ck37 FIND v(dout1_1) AT=190.025n

* CHECK dout1_2 Vdout1_2ck37 = 1.0 time = 190
.meas tran vdout1_2ck37 FIND v(dout1_2) AT=190.025n

* CHECK dout1_3 Vdout1_3ck37 = 0 time = 190
.meas tran vdout1_3ck37 FIND v(dout1_3) AT=190.025n

* CHECK dout1_4 Vdout1_4ck37 = 1.0 time = 190
.meas tran vdout1_4ck37 FIND v(dout1_4) AT=190.025n

* CHECK dout1_5 Vdout1_5ck37 = 0 time = 190
.meas tran vdout1_5ck37 FIND v(dout1_5) AT=190.025n

* CHECK dout1_6 Vdout1_6ck37 = 1.0 time = 190
.meas tran vdout1_6ck37 FIND v(dout1_6) AT=190.025n

* CHECK dout1_7 Vdout1_7ck37 = 0 time = 190
.meas tran vdout1_7ck37 FIND v(dout1_7) AT=190.025n

* CHECK dout1_8 Vdout1_8ck37 = 1.0 time = 190
.meas tran vdout1_8ck37 FIND v(dout1_8) AT=190.025n

* CHECK dout1_9 Vdout1_9ck37 = 1.0 time = 190
.meas tran vdout1_9ck37 FIND v(dout1_9) AT=190.025n

* CHECK dout1_10 Vdout1_10ck37 = 0 time = 190
.meas tran vdout1_10ck37 FIND v(dout1_10) AT=190.025n

* CHECK dout1_11 Vdout1_11ck37 = 1.0 time = 190
.meas tran vdout1_11ck37 FIND v(dout1_11) AT=190.025n

* CHECK dout1_12 Vdout1_12ck37 = 0 time = 190
.meas tran vdout1_12ck37 FIND v(dout1_12) AT=190.025n

* CHECK dout1_0 Vdout1_0ck38 = 0 time = 195
.meas tran vdout1_0ck38 FIND v(dout1_0) AT=195.025n

* CHECK dout1_1 Vdout1_1ck38 = 0 time = 195
.meas tran vdout1_1ck38 FIND v(dout1_1) AT=195.025n

* CHECK dout1_2 Vdout1_2ck38 = 0 time = 195
.meas tran vdout1_2ck38 FIND v(dout1_2) AT=195.025n

* CHECK dout1_3 Vdout1_3ck38 = 1.0 time = 195
.meas tran vdout1_3ck38 FIND v(dout1_3) AT=195.025n

* CHECK dout1_4 Vdout1_4ck38 = 1.0 time = 195
.meas tran vdout1_4ck38 FIND v(dout1_4) AT=195.025n

* CHECK dout1_5 Vdout1_5ck38 = 1.0 time = 195
.meas tran vdout1_5ck38 FIND v(dout1_5) AT=195.025n

* CHECK dout1_6 Vdout1_6ck38 = 1.0 time = 195
.meas tran vdout1_6ck38 FIND v(dout1_6) AT=195.025n

* CHECK dout1_7 Vdout1_7ck38 = 0 time = 195
.meas tran vdout1_7ck38 FIND v(dout1_7) AT=195.025n

* CHECK dout1_8 Vdout1_8ck38 = 1.0 time = 195
.meas tran vdout1_8ck38 FIND v(dout1_8) AT=195.025n

* CHECK dout1_9 Vdout1_9ck38 = 0 time = 195
.meas tran vdout1_9ck38 FIND v(dout1_9) AT=195.025n

* CHECK dout1_10 Vdout1_10ck38 = 0 time = 195
.meas tran vdout1_10ck38 FIND v(dout1_10) AT=195.025n

* CHECK dout1_11 Vdout1_11ck38 = 1.0 time = 195
.meas tran vdout1_11ck38 FIND v(dout1_11) AT=195.025n

* CHECK dout1_12 Vdout1_12ck38 = 0 time = 195
.meas tran vdout1_12ck38 FIND v(dout1_12) AT=195.025n

* CHECK dout1_0 Vdout1_0ck39 = 1.0 time = 200
.meas tran vdout1_0ck39 FIND v(dout1_0) AT=200.025n

* CHECK dout1_1 Vdout1_1ck39 = 1.0 time = 200
.meas tran vdout1_1ck39 FIND v(dout1_1) AT=200.025n

* CHECK dout1_2 Vdout1_2ck39 = 1.0 time = 200
.meas tran vdout1_2ck39 FIND v(dout1_2) AT=200.025n

* CHECK dout1_3 Vdout1_3ck39 = 0 time = 200
.meas tran vdout1_3ck39 FIND v(dout1_3) AT=200.025n

* CHECK dout1_4 Vdout1_4ck39 = 0 time = 200
.meas tran vdout1_4ck39 FIND v(dout1_4) AT=200.025n

* CHECK dout1_5 Vdout1_5ck39 = 0 time = 200
.meas tran vdout1_5ck39 FIND v(dout1_5) AT=200.025n

* CHECK dout1_6 Vdout1_6ck39 = 0 time = 200
.meas tran vdout1_6ck39 FIND v(dout1_6) AT=200.025n

* CHECK dout1_7 Vdout1_7ck39 = 0 time = 200
.meas tran vdout1_7ck39 FIND v(dout1_7) AT=200.025n

* CHECK dout1_8 Vdout1_8ck39 = 1.0 time = 200
.meas tran vdout1_8ck39 FIND v(dout1_8) AT=200.025n

* CHECK dout1_9 Vdout1_9ck39 = 0 time = 200
.meas tran vdout1_9ck39 FIND v(dout1_9) AT=200.025n

* CHECK dout1_10 Vdout1_10ck39 = 1.0 time = 200
.meas tran vdout1_10ck39 FIND v(dout1_10) AT=200.025n

* CHECK dout1_11 Vdout1_11ck39 = 0 time = 200
.meas tran vdout1_11ck39 FIND v(dout1_11) AT=200.025n

* CHECK dout1_12 Vdout1_12ck39 = 1.0 time = 200
.meas tran vdout1_12ck39 FIND v(dout1_12) AT=200.025n

* CHECK dout1_0 Vdout1_0ck41 = 1.0 time = 210
.meas tran vdout1_0ck41 FIND v(dout1_0) AT=210.025n

* CHECK dout1_1 Vdout1_1ck41 = 1.0 time = 210
.meas tran vdout1_1ck41 FIND v(dout1_1) AT=210.025n

* CHECK dout1_2 Vdout1_2ck41 = 1.0 time = 210
.meas tran vdout1_2ck41 FIND v(dout1_2) AT=210.025n

* CHECK dout1_3 Vdout1_3ck41 = 0 time = 210
.meas tran vdout1_3ck41 FIND v(dout1_3) AT=210.025n

* CHECK dout1_4 Vdout1_4ck41 = 1.0 time = 210
.meas tran vdout1_4ck41 FIND v(dout1_4) AT=210.025n

* CHECK dout1_5 Vdout1_5ck41 = 0 time = 210
.meas tran vdout1_5ck41 FIND v(dout1_5) AT=210.025n

* CHECK dout1_6 Vdout1_6ck41 = 1.0 time = 210
.meas tran vdout1_6ck41 FIND v(dout1_6) AT=210.025n

* CHECK dout1_7 Vdout1_7ck41 = 0 time = 210
.meas tran vdout1_7ck41 FIND v(dout1_7) AT=210.025n

* CHECK dout1_8 Vdout1_8ck41 = 1.0 time = 210
.meas tran vdout1_8ck41 FIND v(dout1_8) AT=210.025n

* CHECK dout1_9 Vdout1_9ck41 = 1.0 time = 210
.meas tran vdout1_9ck41 FIND v(dout1_9) AT=210.025n

* CHECK dout1_10 Vdout1_10ck41 = 0 time = 210
.meas tran vdout1_10ck41 FIND v(dout1_10) AT=210.025n

* CHECK dout1_11 Vdout1_11ck41 = 1.0 time = 210
.meas tran vdout1_11ck41 FIND v(dout1_11) AT=210.025n

* CHECK dout1_12 Vdout1_12ck41 = 0 time = 210
.meas tran vdout1_12ck41 FIND v(dout1_12) AT=210.025n

* CHECK dout1_0 Vdout1_0ck43 = 0 time = 220
.meas tran vdout1_0ck43 FIND v(dout1_0) AT=220.025n

* CHECK dout1_1 Vdout1_1ck43 = 0 time = 220
.meas tran vdout1_1ck43 FIND v(dout1_1) AT=220.025n

* CHECK dout1_2 Vdout1_2ck43 = 0 time = 220
.meas tran vdout1_2ck43 FIND v(dout1_2) AT=220.025n

* CHECK dout1_3 Vdout1_3ck43 = 1.0 time = 220
.meas tran vdout1_3ck43 FIND v(dout1_3) AT=220.025n

* CHECK dout1_4 Vdout1_4ck43 = 1.0 time = 220
.meas tran vdout1_4ck43 FIND v(dout1_4) AT=220.025n

* CHECK dout1_5 Vdout1_5ck43 = 1.0 time = 220
.meas tran vdout1_5ck43 FIND v(dout1_5) AT=220.025n

* CHECK dout1_6 Vdout1_6ck43 = 1.0 time = 220
.meas tran vdout1_6ck43 FIND v(dout1_6) AT=220.025n

* CHECK dout1_7 Vdout1_7ck43 = 0 time = 220
.meas tran vdout1_7ck43 FIND v(dout1_7) AT=220.025n

* CHECK dout1_8 Vdout1_8ck43 = 1.0 time = 220
.meas tran vdout1_8ck43 FIND v(dout1_8) AT=220.025n

* CHECK dout1_9 Vdout1_9ck43 = 0 time = 220
.meas tran vdout1_9ck43 FIND v(dout1_9) AT=220.025n

* CHECK dout1_10 Vdout1_10ck43 = 1.0 time = 220
.meas tran vdout1_10ck43 FIND v(dout1_10) AT=220.025n

* CHECK dout1_11 Vdout1_11ck43 = 1.0 time = 220
.meas tran vdout1_11ck43 FIND v(dout1_11) AT=220.025n

* CHECK dout1_12 Vdout1_12ck43 = 0 time = 220
.meas tran vdout1_12ck43 FIND v(dout1_12) AT=220.025n

* CHECK dout1_0 Vdout1_0ck45 = 0 time = 230
.meas tran vdout1_0ck45 FIND v(dout1_0) AT=230.025n

* CHECK dout1_1 Vdout1_1ck45 = 0 time = 230
.meas tran vdout1_1ck45 FIND v(dout1_1) AT=230.025n

* CHECK dout1_2 Vdout1_2ck45 = 0 time = 230
.meas tran vdout1_2ck45 FIND v(dout1_2) AT=230.025n

* CHECK dout1_3 Vdout1_3ck45 = 0 time = 230
.meas tran vdout1_3ck45 FIND v(dout1_3) AT=230.025n

* CHECK dout1_4 Vdout1_4ck45 = 1.0 time = 230
.meas tran vdout1_4ck45 FIND v(dout1_4) AT=230.025n

* CHECK dout1_5 Vdout1_5ck45 = 1.0 time = 230
.meas tran vdout1_5ck45 FIND v(dout1_5) AT=230.025n

* CHECK dout1_6 Vdout1_6ck45 = 0 time = 230
.meas tran vdout1_6ck45 FIND v(dout1_6) AT=230.025n

* CHECK dout1_7 Vdout1_7ck45 = 1.0 time = 230
.meas tran vdout1_7ck45 FIND v(dout1_7) AT=230.025n

* CHECK dout1_8 Vdout1_8ck45 = 0 time = 230
.meas tran vdout1_8ck45 FIND v(dout1_8) AT=230.025n

* CHECK dout1_9 Vdout1_9ck45 = 1.0 time = 230
.meas tran vdout1_9ck45 FIND v(dout1_9) AT=230.025n

* CHECK dout1_10 Vdout1_10ck45 = 0 time = 230
.meas tran vdout1_10ck45 FIND v(dout1_10) AT=230.025n

* CHECK dout1_11 Vdout1_11ck45 = 0 time = 230
.meas tran vdout1_11ck45 FIND v(dout1_11) AT=230.025n

* CHECK dout1_12 Vdout1_12ck45 = 0 time = 230
.meas tran vdout1_12ck45 FIND v(dout1_12) AT=230.025n

* CHECK dout1_0 Vdout1_0ck46 = 1.0 time = 235
.meas tran vdout1_0ck46 FIND v(dout1_0) AT=235.025n

* CHECK dout1_1 Vdout1_1ck46 = 0 time = 235
.meas tran vdout1_1ck46 FIND v(dout1_1) AT=235.025n

* CHECK dout1_2 Vdout1_2ck46 = 1.0 time = 235
.meas tran vdout1_2ck46 FIND v(dout1_2) AT=235.025n

* CHECK dout1_3 Vdout1_3ck46 = 0 time = 235
.meas tran vdout1_3ck46 FIND v(dout1_3) AT=235.025n

* CHECK dout1_4 Vdout1_4ck46 = 1.0 time = 235
.meas tran vdout1_4ck46 FIND v(dout1_4) AT=235.025n

* CHECK dout1_5 Vdout1_5ck46 = 1.0 time = 235
.meas tran vdout1_5ck46 FIND v(dout1_5) AT=235.025n

* CHECK dout1_6 Vdout1_6ck46 = 1.0 time = 235
.meas tran vdout1_6ck46 FIND v(dout1_6) AT=235.025n

* CHECK dout1_7 Vdout1_7ck46 = 0 time = 235
.meas tran vdout1_7ck46 FIND v(dout1_7) AT=235.025n

* CHECK dout1_8 Vdout1_8ck46 = 0 time = 235
.meas tran vdout1_8ck46 FIND v(dout1_8) AT=235.025n

* CHECK dout1_9 Vdout1_9ck46 = 1.0 time = 235
.meas tran vdout1_9ck46 FIND v(dout1_9) AT=235.025n

* CHECK dout1_10 Vdout1_10ck46 = 1.0 time = 235
.meas tran vdout1_10ck46 FIND v(dout1_10) AT=235.025n

* CHECK dout1_11 Vdout1_11ck46 = 1.0 time = 235
.meas tran vdout1_11ck46 FIND v(dout1_11) AT=235.025n

* CHECK dout1_12 Vdout1_12ck46 = 1.0 time = 235
.meas tran vdout1_12ck46 FIND v(dout1_12) AT=235.025n

* CHECK dout1_0 Vdout1_0ck48 = 1.0 time = 245
.meas tran vdout1_0ck48 FIND v(dout1_0) AT=245.025n

* CHECK dout1_1 Vdout1_1ck48 = 1.0 time = 245
.meas tran vdout1_1ck48 FIND v(dout1_1) AT=245.025n

* CHECK dout1_2 Vdout1_2ck48 = 1.0 time = 245
.meas tran vdout1_2ck48 FIND v(dout1_2) AT=245.025n

* CHECK dout1_3 Vdout1_3ck48 = 0 time = 245
.meas tran vdout1_3ck48 FIND v(dout1_3) AT=245.025n

* CHECK dout1_4 Vdout1_4ck48 = 0 time = 245
.meas tran vdout1_4ck48 FIND v(dout1_4) AT=245.025n

* CHECK dout1_5 Vdout1_5ck48 = 0 time = 245
.meas tran vdout1_5ck48 FIND v(dout1_5) AT=245.025n

* CHECK dout1_6 Vdout1_6ck48 = 0 time = 245
.meas tran vdout1_6ck48 FIND v(dout1_6) AT=245.025n

* CHECK dout1_7 Vdout1_7ck48 = 0 time = 245
.meas tran vdout1_7ck48 FIND v(dout1_7) AT=245.025n

* CHECK dout1_8 Vdout1_8ck48 = 1.0 time = 245
.meas tran vdout1_8ck48 FIND v(dout1_8) AT=245.025n

* CHECK dout1_9 Vdout1_9ck48 = 0 time = 245
.meas tran vdout1_9ck48 FIND v(dout1_9) AT=245.025n

* CHECK dout1_10 Vdout1_10ck48 = 1.0 time = 245
.meas tran vdout1_10ck48 FIND v(dout1_10) AT=245.025n

* CHECK dout1_11 Vdout1_11ck48 = 0 time = 245
.meas tran vdout1_11ck48 FIND v(dout1_11) AT=245.025n

* CHECK dout1_12 Vdout1_12ck48 = 1.0 time = 245
.meas tran vdout1_12ck48 FIND v(dout1_12) AT=245.025n

* CHECK dout1_0 Vdout1_0ck49 = 1.0 time = 250
.meas tran vdout1_0ck49 FIND v(dout1_0) AT=250.025n

* CHECK dout1_1 Vdout1_1ck49 = 0 time = 250
.meas tran vdout1_1ck49 FIND v(dout1_1) AT=250.025n

* CHECK dout1_2 Vdout1_2ck49 = 0 time = 250
.meas tran vdout1_2ck49 FIND v(dout1_2) AT=250.025n

* CHECK dout1_3 Vdout1_3ck49 = 1.0 time = 250
.meas tran vdout1_3ck49 FIND v(dout1_3) AT=250.025n

* CHECK dout1_4 Vdout1_4ck49 = 0 time = 250
.meas tran vdout1_4ck49 FIND v(dout1_4) AT=250.025n

* CHECK dout1_5 Vdout1_5ck49 = 0 time = 250
.meas tran vdout1_5ck49 FIND v(dout1_5) AT=250.025n

* CHECK dout1_6 Vdout1_6ck49 = 1.0 time = 250
.meas tran vdout1_6ck49 FIND v(dout1_6) AT=250.025n

* CHECK dout1_7 Vdout1_7ck49 = 0 time = 250
.meas tran vdout1_7ck49 FIND v(dout1_7) AT=250.025n

* CHECK dout1_8 Vdout1_8ck49 = 0 time = 250
.meas tran vdout1_8ck49 FIND v(dout1_8) AT=250.025n

* CHECK dout1_9 Vdout1_9ck49 = 0 time = 250
.meas tran vdout1_9ck49 FIND v(dout1_9) AT=250.025n

* CHECK dout1_10 Vdout1_10ck49 = 1.0 time = 250
.meas tran vdout1_10ck49 FIND v(dout1_10) AT=250.025n

* CHECK dout1_11 Vdout1_11ck49 = 1.0 time = 250
.meas tran vdout1_11ck49 FIND v(dout1_11) AT=250.025n

* CHECK dout1_12 Vdout1_12ck49 = 0 time = 250
.meas tran vdout1_12ck49 FIND v(dout1_12) AT=250.025n

* CHECK dout1_0 Vdout1_0ck50 = 0 time = 255
.meas tran vdout1_0ck50 FIND v(dout1_0) AT=255.025n

* CHECK dout1_1 Vdout1_1ck50 = 0 time = 255
.meas tran vdout1_1ck50 FIND v(dout1_1) AT=255.025n

* CHECK dout1_2 Vdout1_2ck50 = 1.0 time = 255
.meas tran vdout1_2ck50 FIND v(dout1_2) AT=255.025n

* CHECK dout1_3 Vdout1_3ck50 = 1.0 time = 255
.meas tran vdout1_3ck50 FIND v(dout1_3) AT=255.025n

* CHECK dout1_4 Vdout1_4ck50 = 1.0 time = 255
.meas tran vdout1_4ck50 FIND v(dout1_4) AT=255.025n

* CHECK dout1_5 Vdout1_5ck50 = 1.0 time = 255
.meas tran vdout1_5ck50 FIND v(dout1_5) AT=255.025n

* CHECK dout1_6 Vdout1_6ck50 = 1.0 time = 255
.meas tran vdout1_6ck50 FIND v(dout1_6) AT=255.025n

* CHECK dout1_7 Vdout1_7ck50 = 0 time = 255
.meas tran vdout1_7ck50 FIND v(dout1_7) AT=255.025n

* CHECK dout1_8 Vdout1_8ck50 = 0 time = 255
.meas tran vdout1_8ck50 FIND v(dout1_8) AT=255.025n

* CHECK dout1_9 Vdout1_9ck50 = 1.0 time = 255
.meas tran vdout1_9ck50 FIND v(dout1_9) AT=255.025n

* CHECK dout1_10 Vdout1_10ck50 = 1.0 time = 255
.meas tran vdout1_10ck50 FIND v(dout1_10) AT=255.025n

* CHECK dout1_11 Vdout1_11ck50 = 1.0 time = 255
.meas tran vdout1_11ck50 FIND v(dout1_11) AT=255.025n

* CHECK dout1_12 Vdout1_12ck50 = 1.0 time = 255
.meas tran vdout1_12ck50 FIND v(dout1_12) AT=255.025n

* CHECK dout1_0 Vdout1_0ck53 = 0 time = 270
.meas tran vdout1_0ck53 FIND v(dout1_0) AT=270.025n

* CHECK dout1_1 Vdout1_1ck53 = 0 time = 270
.meas tran vdout1_1ck53 FIND v(dout1_1) AT=270.025n

* CHECK dout1_2 Vdout1_2ck53 = 0 time = 270
.meas tran vdout1_2ck53 FIND v(dout1_2) AT=270.025n

* CHECK dout1_3 Vdout1_3ck53 = 0 time = 270
.meas tran vdout1_3ck53 FIND v(dout1_3) AT=270.025n

* CHECK dout1_4 Vdout1_4ck53 = 1.0 time = 270
.meas tran vdout1_4ck53 FIND v(dout1_4) AT=270.025n

* CHECK dout1_5 Vdout1_5ck53 = 1.0 time = 270
.meas tran vdout1_5ck53 FIND v(dout1_5) AT=270.025n

* CHECK dout1_6 Vdout1_6ck53 = 0 time = 270
.meas tran vdout1_6ck53 FIND v(dout1_6) AT=270.025n

* CHECK dout1_7 Vdout1_7ck53 = 1.0 time = 270
.meas tran vdout1_7ck53 FIND v(dout1_7) AT=270.025n

* CHECK dout1_8 Vdout1_8ck53 = 0 time = 270
.meas tran vdout1_8ck53 FIND v(dout1_8) AT=270.025n

* CHECK dout1_9 Vdout1_9ck53 = 1.0 time = 270
.meas tran vdout1_9ck53 FIND v(dout1_9) AT=270.025n

* CHECK dout1_10 Vdout1_10ck53 = 0 time = 270
.meas tran vdout1_10ck53 FIND v(dout1_10) AT=270.025n

* CHECK dout1_11 Vdout1_11ck53 = 0 time = 270
.meas tran vdout1_11ck53 FIND v(dout1_11) AT=270.025n

* CHECK dout1_12 Vdout1_12ck53 = 0 time = 270
.meas tran vdout1_12ck53 FIND v(dout1_12) AT=270.025n

* CHECK dout1_0 Vdout1_0ck54 = 0 time = 275
.meas tran vdout1_0ck54 FIND v(dout1_0) AT=275.025n

* CHECK dout1_1 Vdout1_1ck54 = 0 time = 275
.meas tran vdout1_1ck54 FIND v(dout1_1) AT=275.025n

* CHECK dout1_2 Vdout1_2ck54 = 0 time = 275
.meas tran vdout1_2ck54 FIND v(dout1_2) AT=275.025n

* CHECK dout1_3 Vdout1_3ck54 = 1.0 time = 275
.meas tran vdout1_3ck54 FIND v(dout1_3) AT=275.025n

* CHECK dout1_4 Vdout1_4ck54 = 1.0 time = 275
.meas tran vdout1_4ck54 FIND v(dout1_4) AT=275.025n

* CHECK dout1_5 Vdout1_5ck54 = 1.0 time = 275
.meas tran vdout1_5ck54 FIND v(dout1_5) AT=275.025n

* CHECK dout1_6 Vdout1_6ck54 = 0 time = 275
.meas tran vdout1_6ck54 FIND v(dout1_6) AT=275.025n

* CHECK dout1_7 Vdout1_7ck54 = 0 time = 275
.meas tran vdout1_7ck54 FIND v(dout1_7) AT=275.025n

* CHECK dout1_8 Vdout1_8ck54 = 1.0 time = 275
.meas tran vdout1_8ck54 FIND v(dout1_8) AT=275.025n

* CHECK dout1_9 Vdout1_9ck54 = 1.0 time = 275
.meas tran vdout1_9ck54 FIND v(dout1_9) AT=275.025n

* CHECK dout1_10 Vdout1_10ck54 = 1.0 time = 275
.meas tran vdout1_10ck54 FIND v(dout1_10) AT=275.025n

* CHECK dout1_11 Vdout1_11ck54 = 0 time = 275
.meas tran vdout1_11ck54 FIND v(dout1_11) AT=275.025n

* CHECK dout1_12 Vdout1_12ck54 = 1.0 time = 275
.meas tran vdout1_12ck54 FIND v(dout1_12) AT=275.025n

* CHECK dout1_0 Vdout1_0ck56 = 1.0 time = 285
.meas tran vdout1_0ck56 FIND v(dout1_0) AT=285.025n

* CHECK dout1_1 Vdout1_1ck56 = 0 time = 285
.meas tran vdout1_1ck56 FIND v(dout1_1) AT=285.025n

* CHECK dout1_2 Vdout1_2ck56 = 0 time = 285
.meas tran vdout1_2ck56 FIND v(dout1_2) AT=285.025n

* CHECK dout1_3 Vdout1_3ck56 = 1.0 time = 285
.meas tran vdout1_3ck56 FIND v(dout1_3) AT=285.025n

* CHECK dout1_4 Vdout1_4ck56 = 0 time = 285
.meas tran vdout1_4ck56 FIND v(dout1_4) AT=285.025n

* CHECK dout1_5 Vdout1_5ck56 = 0 time = 285
.meas tran vdout1_5ck56 FIND v(dout1_5) AT=285.025n

* CHECK dout1_6 Vdout1_6ck56 = 1.0 time = 285
.meas tran vdout1_6ck56 FIND v(dout1_6) AT=285.025n

* CHECK dout1_7 Vdout1_7ck56 = 0 time = 285
.meas tran vdout1_7ck56 FIND v(dout1_7) AT=285.025n

* CHECK dout1_8 Vdout1_8ck56 = 0 time = 285
.meas tran vdout1_8ck56 FIND v(dout1_8) AT=285.025n

* CHECK dout1_9 Vdout1_9ck56 = 0 time = 285
.meas tran vdout1_9ck56 FIND v(dout1_9) AT=285.025n

* CHECK dout1_10 Vdout1_10ck56 = 1.0 time = 285
.meas tran vdout1_10ck56 FIND v(dout1_10) AT=285.025n

* CHECK dout1_11 Vdout1_11ck56 = 1.0 time = 285
.meas tran vdout1_11ck56 FIND v(dout1_11) AT=285.025n

* CHECK dout1_12 Vdout1_12ck56 = 0 time = 285
.meas tran vdout1_12ck56 FIND v(dout1_12) AT=285.025n

* CHECK dout1_0 Vdout1_0ck58 = 0 time = 295
.meas tran vdout1_0ck58 FIND v(dout1_0) AT=295.025n

* CHECK dout1_1 Vdout1_1ck58 = 0 time = 295
.meas tran vdout1_1ck58 FIND v(dout1_1) AT=295.025n

* CHECK dout1_2 Vdout1_2ck58 = 0 time = 295
.meas tran vdout1_2ck58 FIND v(dout1_2) AT=295.025n

* CHECK dout1_3 Vdout1_3ck58 = 1.0 time = 295
.meas tran vdout1_3ck58 FIND v(dout1_3) AT=295.025n

* CHECK dout1_4 Vdout1_4ck58 = 1.0 time = 295
.meas tran vdout1_4ck58 FIND v(dout1_4) AT=295.025n

* CHECK dout1_5 Vdout1_5ck58 = 1.0 time = 295
.meas tran vdout1_5ck58 FIND v(dout1_5) AT=295.025n

* CHECK dout1_6 Vdout1_6ck58 = 1.0 time = 295
.meas tran vdout1_6ck58 FIND v(dout1_6) AT=295.025n

* CHECK dout1_7 Vdout1_7ck58 = 0 time = 295
.meas tran vdout1_7ck58 FIND v(dout1_7) AT=295.025n

* CHECK dout1_8 Vdout1_8ck58 = 1.0 time = 295
.meas tran vdout1_8ck58 FIND v(dout1_8) AT=295.025n

* CHECK dout1_9 Vdout1_9ck58 = 0 time = 295
.meas tran vdout1_9ck58 FIND v(dout1_9) AT=295.025n

* CHECK dout1_10 Vdout1_10ck58 = 1.0 time = 295
.meas tran vdout1_10ck58 FIND v(dout1_10) AT=295.025n

* CHECK dout1_11 Vdout1_11ck58 = 1.0 time = 295
.meas tran vdout1_11ck58 FIND v(dout1_11) AT=295.025n

* CHECK dout1_12 Vdout1_12ck58 = 0 time = 295
.meas tran vdout1_12ck58 FIND v(dout1_12) AT=295.025n

* CHECK dout1_0 Vdout1_0ck59 = 0 time = 300
.meas tran vdout1_0ck59 FIND v(dout1_0) AT=300.025n

* CHECK dout1_1 Vdout1_1ck59 = 0 time = 300
.meas tran vdout1_1ck59 FIND v(dout1_1) AT=300.025n

* CHECK dout1_2 Vdout1_2ck59 = 0 time = 300
.meas tran vdout1_2ck59 FIND v(dout1_2) AT=300.025n

* CHECK dout1_3 Vdout1_3ck59 = 1.0 time = 300
.meas tran vdout1_3ck59 FIND v(dout1_3) AT=300.025n

* CHECK dout1_4 Vdout1_4ck59 = 1.0 time = 300
.meas tran vdout1_4ck59 FIND v(dout1_4) AT=300.025n

* CHECK dout1_5 Vdout1_5ck59 = 1.0 time = 300
.meas tran vdout1_5ck59 FIND v(dout1_5) AT=300.025n

* CHECK dout1_6 Vdout1_6ck59 = 1.0 time = 300
.meas tran vdout1_6ck59 FIND v(dout1_6) AT=300.025n

* CHECK dout1_7 Vdout1_7ck59 = 0 time = 300
.meas tran vdout1_7ck59 FIND v(dout1_7) AT=300.025n

* CHECK dout1_8 Vdout1_8ck59 = 1.0 time = 300
.meas tran vdout1_8ck59 FIND v(dout1_8) AT=300.025n

* CHECK dout1_9 Vdout1_9ck59 = 0 time = 300
.meas tran vdout1_9ck59 FIND v(dout1_9) AT=300.025n

* CHECK dout1_10 Vdout1_10ck59 = 1.0 time = 300
.meas tran vdout1_10ck59 FIND v(dout1_10) AT=300.025n

* CHECK dout1_11 Vdout1_11ck59 = 1.0 time = 300
.meas tran vdout1_11ck59 FIND v(dout1_11) AT=300.025n

* CHECK dout1_12 Vdout1_12ck59 = 0 time = 300
.meas tran vdout1_12ck59 FIND v(dout1_12) AT=300.025n

* CHECK dout1_0 Vdout1_0ck60 = 0 time = 305
.meas tran vdout1_0ck60 FIND v(dout1_0) AT=305.025n

* CHECK dout1_1 Vdout1_1ck60 = 0 time = 305
.meas tran vdout1_1ck60 FIND v(dout1_1) AT=305.025n

* CHECK dout1_2 Vdout1_2ck60 = 0 time = 305
.meas tran vdout1_2ck60 FIND v(dout1_2) AT=305.025n

* CHECK dout1_3 Vdout1_3ck60 = 1.0 time = 305
.meas tran vdout1_3ck60 FIND v(dout1_3) AT=305.025n

* CHECK dout1_4 Vdout1_4ck60 = 1.0 time = 305
.meas tran vdout1_4ck60 FIND v(dout1_4) AT=305.025n

* CHECK dout1_5 Vdout1_5ck60 = 1.0 time = 305
.meas tran vdout1_5ck60 FIND v(dout1_5) AT=305.025n

* CHECK dout1_6 Vdout1_6ck60 = 0 time = 305
.meas tran vdout1_6ck60 FIND v(dout1_6) AT=305.025n

* CHECK dout1_7 Vdout1_7ck60 = 0 time = 305
.meas tran vdout1_7ck60 FIND v(dout1_7) AT=305.025n

* CHECK dout1_8 Vdout1_8ck60 = 1.0 time = 305
.meas tran vdout1_8ck60 FIND v(dout1_8) AT=305.025n

* CHECK dout1_9 Vdout1_9ck60 = 1.0 time = 305
.meas tran vdout1_9ck60 FIND v(dout1_9) AT=305.025n

* CHECK dout1_10 Vdout1_10ck60 = 1.0 time = 305
.meas tran vdout1_10ck60 FIND v(dout1_10) AT=305.025n

* CHECK dout1_11 Vdout1_11ck60 = 0 time = 305
.meas tran vdout1_11ck60 FIND v(dout1_11) AT=305.025n

* CHECK dout1_12 Vdout1_12ck60 = 1.0 time = 305
.meas tran vdout1_12ck60 FIND v(dout1_12) AT=305.025n

* CHECK dout1_0 Vdout1_0ck61 = 1.0 time = 310
.meas tran vdout1_0ck61 FIND v(dout1_0) AT=310.025n

* CHECK dout1_1 Vdout1_1ck61 = 1.0 time = 310
.meas tran vdout1_1ck61 FIND v(dout1_1) AT=310.025n

* CHECK dout1_2 Vdout1_2ck61 = 0 time = 310
.meas tran vdout1_2ck61 FIND v(dout1_2) AT=310.025n

* CHECK dout1_3 Vdout1_3ck61 = 1.0 time = 310
.meas tran vdout1_3ck61 FIND v(dout1_3) AT=310.025n

* CHECK dout1_4 Vdout1_4ck61 = 1.0 time = 310
.meas tran vdout1_4ck61 FIND v(dout1_4) AT=310.025n

* CHECK dout1_5 Vdout1_5ck61 = 0 time = 310
.meas tran vdout1_5ck61 FIND v(dout1_5) AT=310.025n

* CHECK dout1_6 Vdout1_6ck61 = 0 time = 310
.meas tran vdout1_6ck61 FIND v(dout1_6) AT=310.025n

* CHECK dout1_7 Vdout1_7ck61 = 1.0 time = 310
.meas tran vdout1_7ck61 FIND v(dout1_7) AT=310.025n

* CHECK dout1_8 Vdout1_8ck61 = 1.0 time = 310
.meas tran vdout1_8ck61 FIND v(dout1_8) AT=310.025n

* CHECK dout1_9 Vdout1_9ck61 = 1.0 time = 310
.meas tran vdout1_9ck61 FIND v(dout1_9) AT=310.025n

* CHECK dout1_10 Vdout1_10ck61 = 0 time = 310
.meas tran vdout1_10ck61 FIND v(dout1_10) AT=310.025n

* CHECK dout1_11 Vdout1_11ck61 = 0 time = 310
.meas tran vdout1_11ck61 FIND v(dout1_11) AT=310.025n

* CHECK dout1_12 Vdout1_12ck61 = 0 time = 310
.meas tran vdout1_12ck61 FIND v(dout1_12) AT=310.025n

* CHECK dout1_0 Vdout1_0ck64 = 0 time = 325
.meas tran vdout1_0ck64 FIND v(dout1_0) AT=325.025n

* CHECK dout1_1 Vdout1_1ck64 = 0 time = 325
.meas tran vdout1_1ck64 FIND v(dout1_1) AT=325.025n

* CHECK dout1_2 Vdout1_2ck64 = 1.0 time = 325
.meas tran vdout1_2ck64 FIND v(dout1_2) AT=325.025n

* CHECK dout1_3 Vdout1_3ck64 = 1.0 time = 325
.meas tran vdout1_3ck64 FIND v(dout1_3) AT=325.025n

* CHECK dout1_4 Vdout1_4ck64 = 1.0 time = 325
.meas tran vdout1_4ck64 FIND v(dout1_4) AT=325.025n

* CHECK dout1_5 Vdout1_5ck64 = 1.0 time = 325
.meas tran vdout1_5ck64 FIND v(dout1_5) AT=325.025n

* CHECK dout1_6 Vdout1_6ck64 = 1.0 time = 325
.meas tran vdout1_6ck64 FIND v(dout1_6) AT=325.025n

* CHECK dout1_7 Vdout1_7ck64 = 0 time = 325
.meas tran vdout1_7ck64 FIND v(dout1_7) AT=325.025n

* CHECK dout1_8 Vdout1_8ck64 = 0 time = 325
.meas tran vdout1_8ck64 FIND v(dout1_8) AT=325.025n

* CHECK dout1_9 Vdout1_9ck64 = 1.0 time = 325
.meas tran vdout1_9ck64 FIND v(dout1_9) AT=325.025n

* CHECK dout1_10 Vdout1_10ck64 = 1.0 time = 325
.meas tran vdout1_10ck64 FIND v(dout1_10) AT=325.025n

* CHECK dout1_11 Vdout1_11ck64 = 1.0 time = 325
.meas tran vdout1_11ck64 FIND v(dout1_11) AT=325.025n

* CHECK dout1_12 Vdout1_12ck64 = 1.0 time = 325
.meas tran vdout1_12ck64 FIND v(dout1_12) AT=325.025n

* CHECK dout1_0 Vdout1_0ck65 = 1.0 time = 330
.meas tran vdout1_0ck65 FIND v(dout1_0) AT=330.025n

* CHECK dout1_1 Vdout1_1ck65 = 0 time = 330
.meas tran vdout1_1ck65 FIND v(dout1_1) AT=330.025n

* CHECK dout1_2 Vdout1_2ck65 = 0 time = 330
.meas tran vdout1_2ck65 FIND v(dout1_2) AT=330.025n

* CHECK dout1_3 Vdout1_3ck65 = 1.0 time = 330
.meas tran vdout1_3ck65 FIND v(dout1_3) AT=330.025n

* CHECK dout1_4 Vdout1_4ck65 = 0 time = 330
.meas tran vdout1_4ck65 FIND v(dout1_4) AT=330.025n

* CHECK dout1_5 Vdout1_5ck65 = 0 time = 330
.meas tran vdout1_5ck65 FIND v(dout1_5) AT=330.025n

* CHECK dout1_6 Vdout1_6ck65 = 1.0 time = 330
.meas tran vdout1_6ck65 FIND v(dout1_6) AT=330.025n

* CHECK dout1_7 Vdout1_7ck65 = 0 time = 330
.meas tran vdout1_7ck65 FIND v(dout1_7) AT=330.025n

* CHECK dout1_8 Vdout1_8ck65 = 0 time = 330
.meas tran vdout1_8ck65 FIND v(dout1_8) AT=330.025n

* CHECK dout1_9 Vdout1_9ck65 = 0 time = 330
.meas tran vdout1_9ck65 FIND v(dout1_9) AT=330.025n

* CHECK dout1_10 Vdout1_10ck65 = 1.0 time = 330
.meas tran vdout1_10ck65 FIND v(dout1_10) AT=330.025n

* CHECK dout1_11 Vdout1_11ck65 = 1.0 time = 330
.meas tran vdout1_11ck65 FIND v(dout1_11) AT=330.025n

* CHECK dout1_12 Vdout1_12ck65 = 0 time = 330
.meas tran vdout1_12ck65 FIND v(dout1_12) AT=330.025n

* CHECK dout1_0 Vdout1_0ck67 = 0 time = 340
.meas tran vdout1_0ck67 FIND v(dout1_0) AT=340.025n

* CHECK dout1_1 Vdout1_1ck67 = 1.0 time = 340
.meas tran vdout1_1ck67 FIND v(dout1_1) AT=340.025n

* CHECK dout1_2 Vdout1_2ck67 = 1.0 time = 340
.meas tran vdout1_2ck67 FIND v(dout1_2) AT=340.025n

* CHECK dout1_3 Vdout1_3ck67 = 0 time = 340
.meas tran vdout1_3ck67 FIND v(dout1_3) AT=340.025n

* CHECK dout1_4 Vdout1_4ck67 = 1.0 time = 340
.meas tran vdout1_4ck67 FIND v(dout1_4) AT=340.025n

* CHECK dout1_5 Vdout1_5ck67 = 0 time = 340
.meas tran vdout1_5ck67 FIND v(dout1_5) AT=340.025n

* CHECK dout1_6 Vdout1_6ck67 = 0 time = 340
.meas tran vdout1_6ck67 FIND v(dout1_6) AT=340.025n

* CHECK dout1_7 Vdout1_7ck67 = 0 time = 340
.meas tran vdout1_7ck67 FIND v(dout1_7) AT=340.025n

* CHECK dout1_8 Vdout1_8ck67 = 0 time = 340
.meas tran vdout1_8ck67 FIND v(dout1_8) AT=340.025n

* CHECK dout1_9 Vdout1_9ck67 = 1.0 time = 340
.meas tran vdout1_9ck67 FIND v(dout1_9) AT=340.025n

* CHECK dout1_10 Vdout1_10ck67 = 1.0 time = 340
.meas tran vdout1_10ck67 FIND v(dout1_10) AT=340.025n

* CHECK dout1_11 Vdout1_11ck67 = 0 time = 340
.meas tran vdout1_11ck67 FIND v(dout1_11) AT=340.025n

* CHECK dout1_12 Vdout1_12ck67 = 0 time = 340
.meas tran vdout1_12ck67 FIND v(dout1_12) AT=340.025n

* CHECK dout1_0 Vdout1_0ck69 = 1.0 time = 350
.meas tran vdout1_0ck69 FIND v(dout1_0) AT=350.025n

* CHECK dout1_1 Vdout1_1ck69 = 0 time = 350
.meas tran vdout1_1ck69 FIND v(dout1_1) AT=350.025n

* CHECK dout1_2 Vdout1_2ck69 = 0 time = 350
.meas tran vdout1_2ck69 FIND v(dout1_2) AT=350.025n

* CHECK dout1_3 Vdout1_3ck69 = 1.0 time = 350
.meas tran vdout1_3ck69 FIND v(dout1_3) AT=350.025n

* CHECK dout1_4 Vdout1_4ck69 = 0 time = 350
.meas tran vdout1_4ck69 FIND v(dout1_4) AT=350.025n

* CHECK dout1_5 Vdout1_5ck69 = 0 time = 350
.meas tran vdout1_5ck69 FIND v(dout1_5) AT=350.025n

* CHECK dout1_6 Vdout1_6ck69 = 1.0 time = 350
.meas tran vdout1_6ck69 FIND v(dout1_6) AT=350.025n

* CHECK dout1_7 Vdout1_7ck69 = 0 time = 350
.meas tran vdout1_7ck69 FIND v(dout1_7) AT=350.025n

* CHECK dout1_8 Vdout1_8ck69 = 0 time = 350
.meas tran vdout1_8ck69 FIND v(dout1_8) AT=350.025n

* CHECK dout1_9 Vdout1_9ck69 = 0 time = 350
.meas tran vdout1_9ck69 FIND v(dout1_9) AT=350.025n

* CHECK dout1_10 Vdout1_10ck69 = 1.0 time = 350
.meas tran vdout1_10ck69 FIND v(dout1_10) AT=350.025n

* CHECK dout1_11 Vdout1_11ck69 = 1.0 time = 350
.meas tran vdout1_11ck69 FIND v(dout1_11) AT=350.025n

* CHECK dout1_12 Vdout1_12ck69 = 0 time = 350
.meas tran vdout1_12ck69 FIND v(dout1_12) AT=350.025n

* CHECK dout1_0 Vdout1_0ck75 = 0 time = 380
.meas tran vdout1_0ck75 FIND v(dout1_0) AT=380.025n

* CHECK dout1_1 Vdout1_1ck75 = 0 time = 380
.meas tran vdout1_1ck75 FIND v(dout1_1) AT=380.025n

* CHECK dout1_2 Vdout1_2ck75 = 1.0 time = 380
.meas tran vdout1_2ck75 FIND v(dout1_2) AT=380.025n

* CHECK dout1_3 Vdout1_3ck75 = 1.0 time = 380
.meas tran vdout1_3ck75 FIND v(dout1_3) AT=380.025n

* CHECK dout1_4 Vdout1_4ck75 = 1.0 time = 380
.meas tran vdout1_4ck75 FIND v(dout1_4) AT=380.025n

* CHECK dout1_5 Vdout1_5ck75 = 1.0 time = 380
.meas tran vdout1_5ck75 FIND v(dout1_5) AT=380.025n

* CHECK dout1_6 Vdout1_6ck75 = 1.0 time = 380
.meas tran vdout1_6ck75 FIND v(dout1_6) AT=380.025n

* CHECK dout1_7 Vdout1_7ck75 = 0 time = 380
.meas tran vdout1_7ck75 FIND v(dout1_7) AT=380.025n

* CHECK dout1_8 Vdout1_8ck75 = 0 time = 380
.meas tran vdout1_8ck75 FIND v(dout1_8) AT=380.025n

* CHECK dout1_9 Vdout1_9ck75 = 1.0 time = 380
.meas tran vdout1_9ck75 FIND v(dout1_9) AT=380.025n

* CHECK dout1_10 Vdout1_10ck75 = 1.0 time = 380
.meas tran vdout1_10ck75 FIND v(dout1_10) AT=380.025n

* CHECK dout1_11 Vdout1_11ck75 = 1.0 time = 380
.meas tran vdout1_11ck75 FIND v(dout1_11) AT=380.025n

* CHECK dout1_12 Vdout1_12ck75 = 1.0 time = 380
.meas tran vdout1_12ck75 FIND v(dout1_12) AT=380.025n

* CHECK dout1_0 Vdout1_0ck78 = 0 time = 395
.meas tran vdout1_0ck78 FIND v(dout1_0) AT=395.025n

* CHECK dout1_1 Vdout1_1ck78 = 1.0 time = 395
.meas tran vdout1_1ck78 FIND v(dout1_1) AT=395.025n

* CHECK dout1_2 Vdout1_2ck78 = 1.0 time = 395
.meas tran vdout1_2ck78 FIND v(dout1_2) AT=395.025n

* CHECK dout1_3 Vdout1_3ck78 = 1.0 time = 395
.meas tran vdout1_3ck78 FIND v(dout1_3) AT=395.025n

* CHECK dout1_4 Vdout1_4ck78 = 0 time = 395
.meas tran vdout1_4ck78 FIND v(dout1_4) AT=395.025n

* CHECK dout1_5 Vdout1_5ck78 = 0 time = 395
.meas tran vdout1_5ck78 FIND v(dout1_5) AT=395.025n

* CHECK dout1_6 Vdout1_6ck78 = 1.0 time = 395
.meas tran vdout1_6ck78 FIND v(dout1_6) AT=395.025n

* CHECK dout1_7 Vdout1_7ck78 = 0 time = 395
.meas tran vdout1_7ck78 FIND v(dout1_7) AT=395.025n

* CHECK dout1_8 Vdout1_8ck78 = 1.0 time = 395
.meas tran vdout1_8ck78 FIND v(dout1_8) AT=395.025n

* CHECK dout1_9 Vdout1_9ck78 = 0 time = 395
.meas tran vdout1_9ck78 FIND v(dout1_9) AT=395.025n

* CHECK dout1_10 Vdout1_10ck78 = 0 time = 395
.meas tran vdout1_10ck78 FIND v(dout1_10) AT=395.025n

* CHECK dout1_11 Vdout1_11ck78 = 1.0 time = 395
.meas tran vdout1_11ck78 FIND v(dout1_11) AT=395.025n

* CHECK dout1_12 Vdout1_12ck78 = 1.0 time = 395
.meas tran vdout1_12ck78 FIND v(dout1_12) AT=395.025n

* CHECK dout1_0 Vdout1_0ck80 = 1.0 time = 405
.meas tran vdout1_0ck80 FIND v(dout1_0) AT=405.025n

* CHECK dout1_1 Vdout1_1ck80 = 0 time = 405
.meas tran vdout1_1ck80 FIND v(dout1_1) AT=405.025n

* CHECK dout1_2 Vdout1_2ck80 = 1.0 time = 405
.meas tran vdout1_2ck80 FIND v(dout1_2) AT=405.025n

* CHECK dout1_3 Vdout1_3ck80 = 1.0 time = 405
.meas tran vdout1_3ck80 FIND v(dout1_3) AT=405.025n

* CHECK dout1_4 Vdout1_4ck80 = 1.0 time = 405
.meas tran vdout1_4ck80 FIND v(dout1_4) AT=405.025n

* CHECK dout1_5 Vdout1_5ck80 = 1.0 time = 405
.meas tran vdout1_5ck80 FIND v(dout1_5) AT=405.025n

* CHECK dout1_6 Vdout1_6ck80 = 0 time = 405
.meas tran vdout1_6ck80 FIND v(dout1_6) AT=405.025n

* CHECK dout1_7 Vdout1_7ck80 = 1.0 time = 405
.meas tran vdout1_7ck80 FIND v(dout1_7) AT=405.025n

* CHECK dout1_8 Vdout1_8ck80 = 1.0 time = 405
.meas tran vdout1_8ck80 FIND v(dout1_8) AT=405.025n

* CHECK dout1_9 Vdout1_9ck80 = 0 time = 405
.meas tran vdout1_9ck80 FIND v(dout1_9) AT=405.025n

* CHECK dout1_10 Vdout1_10ck80 = 0 time = 405
.meas tran vdout1_10ck80 FIND v(dout1_10) AT=405.025n

* CHECK dout1_11 Vdout1_11ck80 = 0 time = 405
.meas tran vdout1_11ck80 FIND v(dout1_11) AT=405.025n

* CHECK dout1_12 Vdout1_12ck80 = 0 time = 405
.meas tran vdout1_12ck80 FIND v(dout1_12) AT=405.025n

* CHECK dout1_0 Vdout1_0ck82 = 0 time = 415
.meas tran vdout1_0ck82 FIND v(dout1_0) AT=415.025n

* CHECK dout1_1 Vdout1_1ck82 = 1.0 time = 415
.meas tran vdout1_1ck82 FIND v(dout1_1) AT=415.025n

* CHECK dout1_2 Vdout1_2ck82 = 1.0 time = 415
.meas tran vdout1_2ck82 FIND v(dout1_2) AT=415.025n

* CHECK dout1_3 Vdout1_3ck82 = 1.0 time = 415
.meas tran vdout1_3ck82 FIND v(dout1_3) AT=415.025n

* CHECK dout1_4 Vdout1_4ck82 = 0 time = 415
.meas tran vdout1_4ck82 FIND v(dout1_4) AT=415.025n

* CHECK dout1_5 Vdout1_5ck82 = 0 time = 415
.meas tran vdout1_5ck82 FIND v(dout1_5) AT=415.025n

* CHECK dout1_6 Vdout1_6ck82 = 1.0 time = 415
.meas tran vdout1_6ck82 FIND v(dout1_6) AT=415.025n

* CHECK dout1_7 Vdout1_7ck82 = 0 time = 415
.meas tran vdout1_7ck82 FIND v(dout1_7) AT=415.025n

* CHECK dout1_8 Vdout1_8ck82 = 1.0 time = 415
.meas tran vdout1_8ck82 FIND v(dout1_8) AT=415.025n

* CHECK dout1_9 Vdout1_9ck82 = 0 time = 415
.meas tran vdout1_9ck82 FIND v(dout1_9) AT=415.025n

* CHECK dout1_10 Vdout1_10ck82 = 0 time = 415
.meas tran vdout1_10ck82 FIND v(dout1_10) AT=415.025n

* CHECK dout1_11 Vdout1_11ck82 = 1.0 time = 415
.meas tran vdout1_11ck82 FIND v(dout1_11) AT=415.025n

* CHECK dout1_12 Vdout1_12ck82 = 1.0 time = 415
.meas tran vdout1_12ck82 FIND v(dout1_12) AT=415.025n

* CHECK dout1_0 Vdout1_0ck83 = 1.0 time = 420
.meas tran vdout1_0ck83 FIND v(dout1_0) AT=420.025n

* CHECK dout1_1 Vdout1_1ck83 = 1.0 time = 420
.meas tran vdout1_1ck83 FIND v(dout1_1) AT=420.025n

* CHECK dout1_2 Vdout1_2ck83 = 1.0 time = 420
.meas tran vdout1_2ck83 FIND v(dout1_2) AT=420.025n

* CHECK dout1_3 Vdout1_3ck83 = 0 time = 420
.meas tran vdout1_3ck83 FIND v(dout1_3) AT=420.025n

* CHECK dout1_4 Vdout1_4ck83 = 1.0 time = 420
.meas tran vdout1_4ck83 FIND v(dout1_4) AT=420.025n

* CHECK dout1_5 Vdout1_5ck83 = 1.0 time = 420
.meas tran vdout1_5ck83 FIND v(dout1_5) AT=420.025n

* CHECK dout1_6 Vdout1_6ck83 = 0 time = 420
.meas tran vdout1_6ck83 FIND v(dout1_6) AT=420.025n

* CHECK dout1_7 Vdout1_7ck83 = 1.0 time = 420
.meas tran vdout1_7ck83 FIND v(dout1_7) AT=420.025n

* CHECK dout1_8 Vdout1_8ck83 = 1.0 time = 420
.meas tran vdout1_8ck83 FIND v(dout1_8) AT=420.025n

* CHECK dout1_9 Vdout1_9ck83 = 1.0 time = 420
.meas tran vdout1_9ck83 FIND v(dout1_9) AT=420.025n

* CHECK dout1_10 Vdout1_10ck83 = 1.0 time = 420
.meas tran vdout1_10ck83 FIND v(dout1_10) AT=420.025n

* CHECK dout1_11 Vdout1_11ck83 = 0 time = 420
.meas tran vdout1_11ck83 FIND v(dout1_11) AT=420.025n

* CHECK dout1_12 Vdout1_12ck83 = 1.0 time = 420
.meas tran vdout1_12ck83 FIND v(dout1_12) AT=420.025n

* CHECK dout1_0 Vdout1_0ck91 = 1.0 time = 460
.meas tran vdout1_0ck91 FIND v(dout1_0) AT=460.025n

* CHECK dout1_1 Vdout1_1ck91 = 1.0 time = 460
.meas tran vdout1_1ck91 FIND v(dout1_1) AT=460.025n

* CHECK dout1_2 Vdout1_2ck91 = 1.0 time = 460
.meas tran vdout1_2ck91 FIND v(dout1_2) AT=460.025n

* CHECK dout1_3 Vdout1_3ck91 = 0 time = 460
.meas tran vdout1_3ck91 FIND v(dout1_3) AT=460.025n

* CHECK dout1_4 Vdout1_4ck91 = 1.0 time = 460
.meas tran vdout1_4ck91 FIND v(dout1_4) AT=460.025n

* CHECK dout1_5 Vdout1_5ck91 = 1.0 time = 460
.meas tran vdout1_5ck91 FIND v(dout1_5) AT=460.025n

* CHECK dout1_6 Vdout1_6ck91 = 0 time = 460
.meas tran vdout1_6ck91 FIND v(dout1_6) AT=460.025n

* CHECK dout1_7 Vdout1_7ck91 = 0 time = 460
.meas tran vdout1_7ck91 FIND v(dout1_7) AT=460.025n

* CHECK dout1_8 Vdout1_8ck91 = 0 time = 460
.meas tran vdout1_8ck91 FIND v(dout1_8) AT=460.025n

* CHECK dout1_9 Vdout1_9ck91 = 0 time = 460
.meas tran vdout1_9ck91 FIND v(dout1_9) AT=460.025n

* CHECK dout1_10 Vdout1_10ck91 = 1.0 time = 460
.meas tran vdout1_10ck91 FIND v(dout1_10) AT=460.025n

* CHECK dout1_11 Vdout1_11ck91 = 0 time = 460
.meas tran vdout1_11ck91 FIND v(dout1_11) AT=460.025n

* CHECK dout1_12 Vdout1_12ck91 = 1.0 time = 460
.meas tran vdout1_12ck91 FIND v(dout1_12) AT=460.025n

* CHECK dout1_0 Vdout1_0ck92 = 0 time = 465
.meas tran vdout1_0ck92 FIND v(dout1_0) AT=465.025n

* CHECK dout1_1 Vdout1_1ck92 = 1.0 time = 465
.meas tran vdout1_1ck92 FIND v(dout1_1) AT=465.025n

* CHECK dout1_2 Vdout1_2ck92 = 1.0 time = 465
.meas tran vdout1_2ck92 FIND v(dout1_2) AT=465.025n

* CHECK dout1_3 Vdout1_3ck92 = 1.0 time = 465
.meas tran vdout1_3ck92 FIND v(dout1_3) AT=465.025n

* CHECK dout1_4 Vdout1_4ck92 = 0 time = 465
.meas tran vdout1_4ck92 FIND v(dout1_4) AT=465.025n

* CHECK dout1_5 Vdout1_5ck92 = 0 time = 465
.meas tran vdout1_5ck92 FIND v(dout1_5) AT=465.025n

* CHECK dout1_6 Vdout1_6ck92 = 1.0 time = 465
.meas tran vdout1_6ck92 FIND v(dout1_6) AT=465.025n

* CHECK dout1_7 Vdout1_7ck92 = 0 time = 465
.meas tran vdout1_7ck92 FIND v(dout1_7) AT=465.025n

* CHECK dout1_8 Vdout1_8ck92 = 1.0 time = 465
.meas tran vdout1_8ck92 FIND v(dout1_8) AT=465.025n

* CHECK dout1_9 Vdout1_9ck92 = 0 time = 465
.meas tran vdout1_9ck92 FIND v(dout1_9) AT=465.025n

* CHECK dout1_10 Vdout1_10ck92 = 0 time = 465
.meas tran vdout1_10ck92 FIND v(dout1_10) AT=465.025n

* CHECK dout1_11 Vdout1_11ck92 = 1.0 time = 465
.meas tran vdout1_11ck92 FIND v(dout1_11) AT=465.025n

* CHECK dout1_12 Vdout1_12ck92 = 1.0 time = 465
.meas tran vdout1_12ck92 FIND v(dout1_12) AT=465.025n

* CHECK dout1_0 Vdout1_0ck93 = 1.0 time = 470
.meas tran vdout1_0ck93 FIND v(dout1_0) AT=470.025n

* CHECK dout1_1 Vdout1_1ck93 = 1.0 time = 470
.meas tran vdout1_1ck93 FIND v(dout1_1) AT=470.025n

* CHECK dout1_2 Vdout1_2ck93 = 1.0 time = 470
.meas tran vdout1_2ck93 FIND v(dout1_2) AT=470.025n

* CHECK dout1_3 Vdout1_3ck93 = 0 time = 470
.meas tran vdout1_3ck93 FIND v(dout1_3) AT=470.025n

* CHECK dout1_4 Vdout1_4ck93 = 1.0 time = 470
.meas tran vdout1_4ck93 FIND v(dout1_4) AT=470.025n

* CHECK dout1_5 Vdout1_5ck93 = 1.0 time = 470
.meas tran vdout1_5ck93 FIND v(dout1_5) AT=470.025n

* CHECK dout1_6 Vdout1_6ck93 = 0 time = 470
.meas tran vdout1_6ck93 FIND v(dout1_6) AT=470.025n

* CHECK dout1_7 Vdout1_7ck93 = 0 time = 470
.meas tran vdout1_7ck93 FIND v(dout1_7) AT=470.025n

* CHECK dout1_8 Vdout1_8ck93 = 0 time = 470
.meas tran vdout1_8ck93 FIND v(dout1_8) AT=470.025n

* CHECK dout1_9 Vdout1_9ck93 = 0 time = 470
.meas tran vdout1_9ck93 FIND v(dout1_9) AT=470.025n

* CHECK dout1_10 Vdout1_10ck93 = 1.0 time = 470
.meas tran vdout1_10ck93 FIND v(dout1_10) AT=470.025n

* CHECK dout1_11 Vdout1_11ck93 = 0 time = 470
.meas tran vdout1_11ck93 FIND v(dout1_11) AT=470.025n

* CHECK dout1_12 Vdout1_12ck93 = 1.0 time = 470
.meas tran vdout1_12ck93 FIND v(dout1_12) AT=470.025n

* CHECK dout1_0 Vdout1_0ck95 = 1.0 time = 480
.meas tran vdout1_0ck95 FIND v(dout1_0) AT=480.025n

* CHECK dout1_1 Vdout1_1ck95 = 1.0 time = 480
.meas tran vdout1_1ck95 FIND v(dout1_1) AT=480.025n

* CHECK dout1_2 Vdout1_2ck95 = 0 time = 480
.meas tran vdout1_2ck95 FIND v(dout1_2) AT=480.025n

* CHECK dout1_3 Vdout1_3ck95 = 1.0 time = 480
.meas tran vdout1_3ck95 FIND v(dout1_3) AT=480.025n

* CHECK dout1_4 Vdout1_4ck95 = 1.0 time = 480
.meas tran vdout1_4ck95 FIND v(dout1_4) AT=480.025n

* CHECK dout1_5 Vdout1_5ck95 = 1.0 time = 480
.meas tran vdout1_5ck95 FIND v(dout1_5) AT=480.025n

* CHECK dout1_6 Vdout1_6ck95 = 1.0 time = 480
.meas tran vdout1_6ck95 FIND v(dout1_6) AT=480.025n

* CHECK dout1_7 Vdout1_7ck95 = 1.0 time = 480
.meas tran vdout1_7ck95 FIND v(dout1_7) AT=480.025n

* CHECK dout1_8 Vdout1_8ck95 = 1.0 time = 480
.meas tran vdout1_8ck95 FIND v(dout1_8) AT=480.025n

* CHECK dout1_9 Vdout1_9ck95 = 1.0 time = 480
.meas tran vdout1_9ck95 FIND v(dout1_9) AT=480.025n

* CHECK dout1_10 Vdout1_10ck95 = 1.0 time = 480
.meas tran vdout1_10ck95 FIND v(dout1_10) AT=480.025n

* CHECK dout1_11 Vdout1_11ck95 = 1.0 time = 480
.meas tran vdout1_11ck95 FIND v(dout1_11) AT=480.025n

* CHECK dout1_12 Vdout1_12ck95 = 1.0 time = 480
.meas tran vdout1_12ck95 FIND v(dout1_12) AT=480.025n

* CHECK dout1_0 Vdout1_0ck97 = 0 time = 490
.meas tran vdout1_0ck97 FIND v(dout1_0) AT=490.025n

* CHECK dout1_1 Vdout1_1ck97 = 0 time = 490
.meas tran vdout1_1ck97 FIND v(dout1_1) AT=490.025n

* CHECK dout1_2 Vdout1_2ck97 = 1.0 time = 490
.meas tran vdout1_2ck97 FIND v(dout1_2) AT=490.025n

* CHECK dout1_3 Vdout1_3ck97 = 0 time = 490
.meas tran vdout1_3ck97 FIND v(dout1_3) AT=490.025n

* CHECK dout1_4 Vdout1_4ck97 = 0 time = 490
.meas tran vdout1_4ck97 FIND v(dout1_4) AT=490.025n

* CHECK dout1_5 Vdout1_5ck97 = 0 time = 490
.meas tran vdout1_5ck97 FIND v(dout1_5) AT=490.025n

* CHECK dout1_6 Vdout1_6ck97 = 1.0 time = 490
.meas tran vdout1_6ck97 FIND v(dout1_6) AT=490.025n

* CHECK dout1_7 Vdout1_7ck97 = 1.0 time = 490
.meas tran vdout1_7ck97 FIND v(dout1_7) AT=490.025n

* CHECK dout1_8 Vdout1_8ck97 = 0 time = 490
.meas tran vdout1_8ck97 FIND v(dout1_8) AT=490.025n

* CHECK dout1_9 Vdout1_9ck97 = 0 time = 490
.meas tran vdout1_9ck97 FIND v(dout1_9) AT=490.025n

* CHECK dout1_10 Vdout1_10ck97 = 0 time = 490
.meas tran vdout1_10ck97 FIND v(dout1_10) AT=490.025n

* CHECK dout1_11 Vdout1_11ck97 = 1.0 time = 490
.meas tran vdout1_11ck97 FIND v(dout1_11) AT=490.025n

* CHECK dout1_12 Vdout1_12ck97 = 0 time = 490
.meas tran vdout1_12ck97 FIND v(dout1_12) AT=490.025n

* CHECK dout1_0 Vdout1_0ck98 = 1.0 time = 495
.meas tran vdout1_0ck98 FIND v(dout1_0) AT=495.025n

* CHECK dout1_1 Vdout1_1ck98 = 1.0 time = 495
.meas tran vdout1_1ck98 FIND v(dout1_1) AT=495.025n

* CHECK dout1_2 Vdout1_2ck98 = 0 time = 495
.meas tran vdout1_2ck98 FIND v(dout1_2) AT=495.025n

* CHECK dout1_3 Vdout1_3ck98 = 0 time = 495
.meas tran vdout1_3ck98 FIND v(dout1_3) AT=495.025n

* CHECK dout1_4 Vdout1_4ck98 = 0 time = 495
.meas tran vdout1_4ck98 FIND v(dout1_4) AT=495.025n

* CHECK dout1_5 Vdout1_5ck98 = 0 time = 495
.meas tran vdout1_5ck98 FIND v(dout1_5) AT=495.025n

* CHECK dout1_6 Vdout1_6ck98 = 1.0 time = 495
.meas tran vdout1_6ck98 FIND v(dout1_6) AT=495.025n

* CHECK dout1_7 Vdout1_7ck98 = 1.0 time = 495
.meas tran vdout1_7ck98 FIND v(dout1_7) AT=495.025n

* CHECK dout1_8 Vdout1_8ck98 = 1.0 time = 495
.meas tran vdout1_8ck98 FIND v(dout1_8) AT=495.025n

* CHECK dout1_9 Vdout1_9ck98 = 0 time = 495
.meas tran vdout1_9ck98 FIND v(dout1_9) AT=495.025n

* CHECK dout1_10 Vdout1_10ck98 = 1.0 time = 495
.meas tran vdout1_10ck98 FIND v(dout1_10) AT=495.025n

* CHECK dout1_11 Vdout1_11ck98 = 0 time = 495
.meas tran vdout1_11ck98 FIND v(dout1_11) AT=495.025n

* CHECK dout1_12 Vdout1_12ck98 = 1.0 time = 495
.meas tran vdout1_12ck98 FIND v(dout1_12) AT=495.025n

* CHECK dout1_0 Vdout1_0ck100 = 1.0 time = 505
.meas tran vdout1_0ck100 FIND v(dout1_0) AT=505.025n

* CHECK dout1_1 Vdout1_1ck100 = 1.0 time = 505
.meas tran vdout1_1ck100 FIND v(dout1_1) AT=505.025n

* CHECK dout1_2 Vdout1_2ck100 = 1.0 time = 505
.meas tran vdout1_2ck100 FIND v(dout1_2) AT=505.025n

* CHECK dout1_3 Vdout1_3ck100 = 0 time = 505
.meas tran vdout1_3ck100 FIND v(dout1_3) AT=505.025n

* CHECK dout1_4 Vdout1_4ck100 = 1.0 time = 505
.meas tran vdout1_4ck100 FIND v(dout1_4) AT=505.025n

* CHECK dout1_5 Vdout1_5ck100 = 1.0 time = 505
.meas tran vdout1_5ck100 FIND v(dout1_5) AT=505.025n

* CHECK dout1_6 Vdout1_6ck100 = 0 time = 505
.meas tran vdout1_6ck100 FIND v(dout1_6) AT=505.025n

* CHECK dout1_7 Vdout1_7ck100 = 1.0 time = 505
.meas tran vdout1_7ck100 FIND v(dout1_7) AT=505.025n

* CHECK dout1_8 Vdout1_8ck100 = 1.0 time = 505
.meas tran vdout1_8ck100 FIND v(dout1_8) AT=505.025n

* CHECK dout1_9 Vdout1_9ck100 = 1.0 time = 505
.meas tran vdout1_9ck100 FIND v(dout1_9) AT=505.025n

* CHECK dout1_10 Vdout1_10ck100 = 1.0 time = 505
.meas tran vdout1_10ck100 FIND v(dout1_10) AT=505.025n

* CHECK dout1_11 Vdout1_11ck100 = 0 time = 505
.meas tran vdout1_11ck100 FIND v(dout1_11) AT=505.025n

* CHECK dout1_12 Vdout1_12ck100 = 1.0 time = 505
.meas tran vdout1_12ck100 FIND v(dout1_12) AT=505.025n

* CHECK dout1_0 Vdout1_0ck101 = 1.0 time = 510
.meas tran vdout1_0ck101 FIND v(dout1_0) AT=510.025n

* CHECK dout1_1 Vdout1_1ck101 = 1.0 time = 510
.meas tran vdout1_1ck101 FIND v(dout1_1) AT=510.025n

* CHECK dout1_2 Vdout1_2ck101 = 0 time = 510
.meas tran vdout1_2ck101 FIND v(dout1_2) AT=510.025n

* CHECK dout1_3 Vdout1_3ck101 = 1.0 time = 510
.meas tran vdout1_3ck101 FIND v(dout1_3) AT=510.025n

* CHECK dout1_4 Vdout1_4ck101 = 1.0 time = 510
.meas tran vdout1_4ck101 FIND v(dout1_4) AT=510.025n

* CHECK dout1_5 Vdout1_5ck101 = 1.0 time = 510
.meas tran vdout1_5ck101 FIND v(dout1_5) AT=510.025n

* CHECK dout1_6 Vdout1_6ck101 = 1.0 time = 510
.meas tran vdout1_6ck101 FIND v(dout1_6) AT=510.025n

* CHECK dout1_7 Vdout1_7ck101 = 1.0 time = 510
.meas tran vdout1_7ck101 FIND v(dout1_7) AT=510.025n

* CHECK dout1_8 Vdout1_8ck101 = 1.0 time = 510
.meas tran vdout1_8ck101 FIND v(dout1_8) AT=510.025n

* CHECK dout1_9 Vdout1_9ck101 = 1.0 time = 510
.meas tran vdout1_9ck101 FIND v(dout1_9) AT=510.025n

* CHECK dout1_10 Vdout1_10ck101 = 1.0 time = 510
.meas tran vdout1_10ck101 FIND v(dout1_10) AT=510.025n

* CHECK dout1_11 Vdout1_11ck101 = 1.0 time = 510
.meas tran vdout1_11ck101 FIND v(dout1_11) AT=510.025n

* CHECK dout1_12 Vdout1_12ck101 = 1.0 time = 510
.meas tran vdout1_12ck101 FIND v(dout1_12) AT=510.025n

* CHECK dout1_0 Vdout1_0ck102 = 0 time = 515
.meas tran vdout1_0ck102 FIND v(dout1_0) AT=515.025n

* CHECK dout1_1 Vdout1_1ck102 = 0 time = 515
.meas tran vdout1_1ck102 FIND v(dout1_1) AT=515.025n

* CHECK dout1_2 Vdout1_2ck102 = 1.0 time = 515
.meas tran vdout1_2ck102 FIND v(dout1_2) AT=515.025n

* CHECK dout1_3 Vdout1_3ck102 = 0 time = 515
.meas tran vdout1_3ck102 FIND v(dout1_3) AT=515.025n

* CHECK dout1_4 Vdout1_4ck102 = 0 time = 515
.meas tran vdout1_4ck102 FIND v(dout1_4) AT=515.025n

* CHECK dout1_5 Vdout1_5ck102 = 0 time = 515
.meas tran vdout1_5ck102 FIND v(dout1_5) AT=515.025n

* CHECK dout1_6 Vdout1_6ck102 = 1.0 time = 515
.meas tran vdout1_6ck102 FIND v(dout1_6) AT=515.025n

* CHECK dout1_7 Vdout1_7ck102 = 1.0 time = 515
.meas tran vdout1_7ck102 FIND v(dout1_7) AT=515.025n

* CHECK dout1_8 Vdout1_8ck102 = 0 time = 515
.meas tran vdout1_8ck102 FIND v(dout1_8) AT=515.025n

* CHECK dout1_9 Vdout1_9ck102 = 0 time = 515
.meas tran vdout1_9ck102 FIND v(dout1_9) AT=515.025n

* CHECK dout1_10 Vdout1_10ck102 = 0 time = 515
.meas tran vdout1_10ck102 FIND v(dout1_10) AT=515.025n

* CHECK dout1_11 Vdout1_11ck102 = 1.0 time = 515
.meas tran vdout1_11ck102 FIND v(dout1_11) AT=515.025n

* CHECK dout1_12 Vdout1_12ck102 = 0 time = 515
.meas tran vdout1_12ck102 FIND v(dout1_12) AT=515.025n

* CHECK dout1_0 Vdout1_0ck105 = 0 time = 530
.meas tran vdout1_0ck105 FIND v(dout1_0) AT=530.025n

* CHECK dout1_1 Vdout1_1ck105 = 0 time = 530
.meas tran vdout1_1ck105 FIND v(dout1_1) AT=530.025n

* CHECK dout1_2 Vdout1_2ck105 = 1.0 time = 530
.meas tran vdout1_2ck105 FIND v(dout1_2) AT=530.025n

* CHECK dout1_3 Vdout1_3ck105 = 0 time = 530
.meas tran vdout1_3ck105 FIND v(dout1_3) AT=530.025n

* CHECK dout1_4 Vdout1_4ck105 = 1.0 time = 530
.meas tran vdout1_4ck105 FIND v(dout1_4) AT=530.025n

* CHECK dout1_5 Vdout1_5ck105 = 0 time = 530
.meas tran vdout1_5ck105 FIND v(dout1_5) AT=530.025n

* CHECK dout1_6 Vdout1_6ck105 = 1.0 time = 530
.meas tran vdout1_6ck105 FIND v(dout1_6) AT=530.025n

* CHECK dout1_7 Vdout1_7ck105 = 1.0 time = 530
.meas tran vdout1_7ck105 FIND v(dout1_7) AT=530.025n

* CHECK dout1_8 Vdout1_8ck105 = 0 time = 530
.meas tran vdout1_8ck105 FIND v(dout1_8) AT=530.025n

* CHECK dout1_9 Vdout1_9ck105 = 0 time = 530
.meas tran vdout1_9ck105 FIND v(dout1_9) AT=530.025n

* CHECK dout1_10 Vdout1_10ck105 = 1.0 time = 530
.meas tran vdout1_10ck105 FIND v(dout1_10) AT=530.025n

* CHECK dout1_11 Vdout1_11ck105 = 0 time = 530
.meas tran vdout1_11ck105 FIND v(dout1_11) AT=530.025n

* CHECK dout1_12 Vdout1_12ck105 = 0 time = 530
.meas tran vdout1_12ck105 FIND v(dout1_12) AT=530.025n

* CHECK dout1_0 Vdout1_0ck106 = 1.0 time = 535
.meas tran vdout1_0ck106 FIND v(dout1_0) AT=535.025n

* CHECK dout1_1 Vdout1_1ck106 = 1.0 time = 535
.meas tran vdout1_1ck106 FIND v(dout1_1) AT=535.025n

* CHECK dout1_2 Vdout1_2ck106 = 0 time = 535
.meas tran vdout1_2ck106 FIND v(dout1_2) AT=535.025n

* CHECK dout1_3 Vdout1_3ck106 = 1.0 time = 535
.meas tran vdout1_3ck106 FIND v(dout1_3) AT=535.025n

* CHECK dout1_4 Vdout1_4ck106 = 1.0 time = 535
.meas tran vdout1_4ck106 FIND v(dout1_4) AT=535.025n

* CHECK dout1_5 Vdout1_5ck106 = 1.0 time = 535
.meas tran vdout1_5ck106 FIND v(dout1_5) AT=535.025n

* CHECK dout1_6 Vdout1_6ck106 = 1.0 time = 535
.meas tran vdout1_6ck106 FIND v(dout1_6) AT=535.025n

* CHECK dout1_7 Vdout1_7ck106 = 1.0 time = 535
.meas tran vdout1_7ck106 FIND v(dout1_7) AT=535.025n

* CHECK dout1_8 Vdout1_8ck106 = 1.0 time = 535
.meas tran vdout1_8ck106 FIND v(dout1_8) AT=535.025n

* CHECK dout1_9 Vdout1_9ck106 = 1.0 time = 535
.meas tran vdout1_9ck106 FIND v(dout1_9) AT=535.025n

* CHECK dout1_10 Vdout1_10ck106 = 1.0 time = 535
.meas tran vdout1_10ck106 FIND v(dout1_10) AT=535.025n

* CHECK dout1_11 Vdout1_11ck106 = 1.0 time = 535
.meas tran vdout1_11ck106 FIND v(dout1_11) AT=535.025n

* CHECK dout1_12 Vdout1_12ck106 = 1.0 time = 535
.meas tran vdout1_12ck106 FIND v(dout1_12) AT=535.025n

* CHECK dout1_0 Vdout1_0ck108 = 0 time = 545
.meas tran vdout1_0ck108 FIND v(dout1_0) AT=545.025n

* CHECK dout1_1 Vdout1_1ck108 = 0 time = 545
.meas tran vdout1_1ck108 FIND v(dout1_1) AT=545.025n

* CHECK dout1_2 Vdout1_2ck108 = 1.0 time = 545
.meas tran vdout1_2ck108 FIND v(dout1_2) AT=545.025n

* CHECK dout1_3 Vdout1_3ck108 = 0 time = 545
.meas tran vdout1_3ck108 FIND v(dout1_3) AT=545.025n

* CHECK dout1_4 Vdout1_4ck108 = 0 time = 545
.meas tran vdout1_4ck108 FIND v(dout1_4) AT=545.025n

* CHECK dout1_5 Vdout1_5ck108 = 0 time = 545
.meas tran vdout1_5ck108 FIND v(dout1_5) AT=545.025n

* CHECK dout1_6 Vdout1_6ck108 = 1.0 time = 545
.meas tran vdout1_6ck108 FIND v(dout1_6) AT=545.025n

* CHECK dout1_7 Vdout1_7ck108 = 1.0 time = 545
.meas tran vdout1_7ck108 FIND v(dout1_7) AT=545.025n

* CHECK dout1_8 Vdout1_8ck108 = 0 time = 545
.meas tran vdout1_8ck108 FIND v(dout1_8) AT=545.025n

* CHECK dout1_9 Vdout1_9ck108 = 0 time = 545
.meas tran vdout1_9ck108 FIND v(dout1_9) AT=545.025n

* CHECK dout1_10 Vdout1_10ck108 = 0 time = 545
.meas tran vdout1_10ck108 FIND v(dout1_10) AT=545.025n

* CHECK dout1_11 Vdout1_11ck108 = 1.0 time = 545
.meas tran vdout1_11ck108 FIND v(dout1_11) AT=545.025n

* CHECK dout1_12 Vdout1_12ck108 = 0 time = 545
.meas tran vdout1_12ck108 FIND v(dout1_12) AT=545.025n

* CHECK dout1_0 Vdout1_0ck111 = 0 time = 560
.meas tran vdout1_0ck111 FIND v(dout1_0) AT=560.025n

* CHECK dout1_1 Vdout1_1ck111 = 1.0 time = 560
.meas tran vdout1_1ck111 FIND v(dout1_1) AT=560.025n

* CHECK dout1_2 Vdout1_2ck111 = 1.0 time = 560
.meas tran vdout1_2ck111 FIND v(dout1_2) AT=560.025n

* CHECK dout1_3 Vdout1_3ck111 = 0 time = 560
.meas tran vdout1_3ck111 FIND v(dout1_3) AT=560.025n

* CHECK dout1_4 Vdout1_4ck111 = 0 time = 560
.meas tran vdout1_4ck111 FIND v(dout1_4) AT=560.025n

* CHECK dout1_5 Vdout1_5ck111 = 0 time = 560
.meas tran vdout1_5ck111 FIND v(dout1_5) AT=560.025n

* CHECK dout1_6 Vdout1_6ck111 = 0 time = 560
.meas tran vdout1_6ck111 FIND v(dout1_6) AT=560.025n

* CHECK dout1_7 Vdout1_7ck111 = 0 time = 560
.meas tran vdout1_7ck111 FIND v(dout1_7) AT=560.025n

* CHECK dout1_8 Vdout1_8ck111 = 0 time = 560
.meas tran vdout1_8ck111 FIND v(dout1_8) AT=560.025n

* CHECK dout1_9 Vdout1_9ck111 = 1.0 time = 560
.meas tran vdout1_9ck111 FIND v(dout1_9) AT=560.025n

* CHECK dout1_10 Vdout1_10ck111 = 1.0 time = 560
.meas tran vdout1_10ck111 FIND v(dout1_10) AT=560.025n

* CHECK dout1_11 Vdout1_11ck111 = 1.0 time = 560
.meas tran vdout1_11ck111 FIND v(dout1_11) AT=560.025n

* CHECK dout1_12 Vdout1_12ck111 = 0 time = 560
.meas tran vdout1_12ck111 FIND v(dout1_12) AT=560.025n

* CHECK dout1_0 Vdout1_0ck112 = 0 time = 565
.meas tran vdout1_0ck112 FIND v(dout1_0) AT=565.025n

* CHECK dout1_1 Vdout1_1ck112 = 0 time = 565
.meas tran vdout1_1ck112 FIND v(dout1_1) AT=565.025n

* CHECK dout1_2 Vdout1_2ck112 = 1.0 time = 565
.meas tran vdout1_2ck112 FIND v(dout1_2) AT=565.025n

* CHECK dout1_3 Vdout1_3ck112 = 0 time = 565
.meas tran vdout1_3ck112 FIND v(dout1_3) AT=565.025n

* CHECK dout1_4 Vdout1_4ck112 = 0 time = 565
.meas tran vdout1_4ck112 FIND v(dout1_4) AT=565.025n

* CHECK dout1_5 Vdout1_5ck112 = 0 time = 565
.meas tran vdout1_5ck112 FIND v(dout1_5) AT=565.025n

* CHECK dout1_6 Vdout1_6ck112 = 1.0 time = 565
.meas tran vdout1_6ck112 FIND v(dout1_6) AT=565.025n

* CHECK dout1_7 Vdout1_7ck112 = 1.0 time = 565
.meas tran vdout1_7ck112 FIND v(dout1_7) AT=565.025n

* CHECK dout1_8 Vdout1_8ck112 = 0 time = 565
.meas tran vdout1_8ck112 FIND v(dout1_8) AT=565.025n

* CHECK dout1_9 Vdout1_9ck112 = 0 time = 565
.meas tran vdout1_9ck112 FIND v(dout1_9) AT=565.025n

* CHECK dout1_10 Vdout1_10ck112 = 0 time = 565
.meas tran vdout1_10ck112 FIND v(dout1_10) AT=565.025n

* CHECK dout1_11 Vdout1_11ck112 = 1.0 time = 565
.meas tran vdout1_11ck112 FIND v(dout1_11) AT=565.025n

* CHECK dout1_12 Vdout1_12ck112 = 0 time = 565
.meas tran vdout1_12ck112 FIND v(dout1_12) AT=565.025n

* CHECK dout1_0 Vdout1_0ck113 = 0 time = 570
.meas tran vdout1_0ck113 FIND v(dout1_0) AT=570.025n

* CHECK dout1_1 Vdout1_1ck113 = 0 time = 570
.meas tran vdout1_1ck113 FIND v(dout1_1) AT=570.025n

* CHECK dout1_2 Vdout1_2ck113 = 1.0 time = 570
.meas tran vdout1_2ck113 FIND v(dout1_2) AT=570.025n

* CHECK dout1_3 Vdout1_3ck113 = 0 time = 570
.meas tran vdout1_3ck113 FIND v(dout1_3) AT=570.025n

* CHECK dout1_4 Vdout1_4ck113 = 1.0 time = 570
.meas tran vdout1_4ck113 FIND v(dout1_4) AT=570.025n

* CHECK dout1_5 Vdout1_5ck113 = 0 time = 570
.meas tran vdout1_5ck113 FIND v(dout1_5) AT=570.025n

* CHECK dout1_6 Vdout1_6ck113 = 1.0 time = 570
.meas tran vdout1_6ck113 FIND v(dout1_6) AT=570.025n

* CHECK dout1_7 Vdout1_7ck113 = 1.0 time = 570
.meas tran vdout1_7ck113 FIND v(dout1_7) AT=570.025n

* CHECK dout1_8 Vdout1_8ck113 = 0 time = 570
.meas tran vdout1_8ck113 FIND v(dout1_8) AT=570.025n

* CHECK dout1_9 Vdout1_9ck113 = 0 time = 570
.meas tran vdout1_9ck113 FIND v(dout1_9) AT=570.025n

* CHECK dout1_10 Vdout1_10ck113 = 1.0 time = 570
.meas tran vdout1_10ck113 FIND v(dout1_10) AT=570.025n

* CHECK dout1_11 Vdout1_11ck113 = 0 time = 570
.meas tran vdout1_11ck113 FIND v(dout1_11) AT=570.025n

* CHECK dout1_12 Vdout1_12ck113 = 0 time = 570
.meas tran vdout1_12ck113 FIND v(dout1_12) AT=570.025n

* CHECK dout1_0 Vdout1_0ck119 = 1.0 time = 600
.meas tran vdout1_0ck119 FIND v(dout1_0) AT=600.025n

* CHECK dout1_1 Vdout1_1ck119 = 1.0 time = 600
.meas tran vdout1_1ck119 FIND v(dout1_1) AT=600.025n

* CHECK dout1_2 Vdout1_2ck119 = 1.0 time = 600
.meas tran vdout1_2ck119 FIND v(dout1_2) AT=600.025n

* CHECK dout1_3 Vdout1_3ck119 = 1.0 time = 600
.meas tran vdout1_3ck119 FIND v(dout1_3) AT=600.025n

* CHECK dout1_4 Vdout1_4ck119 = 1.0 time = 600
.meas tran vdout1_4ck119 FIND v(dout1_4) AT=600.025n

* CHECK dout1_5 Vdout1_5ck119 = 0 time = 600
.meas tran vdout1_5ck119 FIND v(dout1_5) AT=600.025n

* CHECK dout1_6 Vdout1_6ck119 = 0 time = 600
.meas tran vdout1_6ck119 FIND v(dout1_6) AT=600.025n

* CHECK dout1_7 Vdout1_7ck119 = 0 time = 600
.meas tran vdout1_7ck119 FIND v(dout1_7) AT=600.025n

* CHECK dout1_8 Vdout1_8ck119 = 0 time = 600
.meas tran vdout1_8ck119 FIND v(dout1_8) AT=600.025n

* CHECK dout1_9 Vdout1_9ck119 = 0 time = 600
.meas tran vdout1_9ck119 FIND v(dout1_9) AT=600.025n

* CHECK dout1_10 Vdout1_10ck119 = 1.0 time = 600
.meas tran vdout1_10ck119 FIND v(dout1_10) AT=600.025n

* CHECK dout1_11 Vdout1_11ck119 = 1.0 time = 600
.meas tran vdout1_11ck119 FIND v(dout1_11) AT=600.025n

* CHECK dout1_12 Vdout1_12ck119 = 1.0 time = 600
.meas tran vdout1_12ck119 FIND v(dout1_12) AT=600.025n

* CHECK dout1_0 Vdout1_0ck121 = 1.0 time = 610
.meas tran vdout1_0ck121 FIND v(dout1_0) AT=610.025n

* CHECK dout1_1 Vdout1_1ck121 = 0 time = 610
.meas tran vdout1_1ck121 FIND v(dout1_1) AT=610.025n

* CHECK dout1_2 Vdout1_2ck121 = 1.0 time = 610
.meas tran vdout1_2ck121 FIND v(dout1_2) AT=610.025n

* CHECK dout1_3 Vdout1_3ck121 = 0 time = 610
.meas tran vdout1_3ck121 FIND v(dout1_3) AT=610.025n

* CHECK dout1_4 Vdout1_4ck121 = 1.0 time = 610
.meas tran vdout1_4ck121 FIND v(dout1_4) AT=610.025n

* CHECK dout1_5 Vdout1_5ck121 = 0 time = 610
.meas tran vdout1_5ck121 FIND v(dout1_5) AT=610.025n

* CHECK dout1_6 Vdout1_6ck121 = 1.0 time = 610
.meas tran vdout1_6ck121 FIND v(dout1_6) AT=610.025n

* CHECK dout1_7 Vdout1_7ck121 = 1.0 time = 610
.meas tran vdout1_7ck121 FIND v(dout1_7) AT=610.025n

* CHECK dout1_8 Vdout1_8ck121 = 1.0 time = 610
.meas tran vdout1_8ck121 FIND v(dout1_8) AT=610.025n

* CHECK dout1_9 Vdout1_9ck121 = 1.0 time = 610
.meas tran vdout1_9ck121 FIND v(dout1_9) AT=610.025n

* CHECK dout1_10 Vdout1_10ck121 = 1.0 time = 610
.meas tran vdout1_10ck121 FIND v(dout1_10) AT=610.025n

* CHECK dout1_11 Vdout1_11ck121 = 1.0 time = 610
.meas tran vdout1_11ck121 FIND v(dout1_11) AT=610.025n

* CHECK dout1_12 Vdout1_12ck121 = 0 time = 610
.meas tran vdout1_12ck121 FIND v(dout1_12) AT=610.025n

* CHECK dout1_0 Vdout1_0ck123 = 1.0 time = 620
.meas tran vdout1_0ck123 FIND v(dout1_0) AT=620.025n

* CHECK dout1_1 Vdout1_1ck123 = 0 time = 620
.meas tran vdout1_1ck123 FIND v(dout1_1) AT=620.025n

* CHECK dout1_2 Vdout1_2ck123 = 1.0 time = 620
.meas tran vdout1_2ck123 FIND v(dout1_2) AT=620.025n

* CHECK dout1_3 Vdout1_3ck123 = 0 time = 620
.meas tran vdout1_3ck123 FIND v(dout1_3) AT=620.025n

* CHECK dout1_4 Vdout1_4ck123 = 1.0 time = 620
.meas tran vdout1_4ck123 FIND v(dout1_4) AT=620.025n

* CHECK dout1_5 Vdout1_5ck123 = 1.0 time = 620
.meas tran vdout1_5ck123 FIND v(dout1_5) AT=620.025n

* CHECK dout1_6 Vdout1_6ck123 = 1.0 time = 620
.meas tran vdout1_6ck123 FIND v(dout1_6) AT=620.025n

* CHECK dout1_7 Vdout1_7ck123 = 1.0 time = 620
.meas tran vdout1_7ck123 FIND v(dout1_7) AT=620.025n

* CHECK dout1_8 Vdout1_8ck123 = 0 time = 620
.meas tran vdout1_8ck123 FIND v(dout1_8) AT=620.025n

* CHECK dout1_9 Vdout1_9ck123 = 0 time = 620
.meas tran vdout1_9ck123 FIND v(dout1_9) AT=620.025n

* CHECK dout1_10 Vdout1_10ck123 = 1.0 time = 620
.meas tran vdout1_10ck123 FIND v(dout1_10) AT=620.025n

* CHECK dout1_11 Vdout1_11ck123 = 1.0 time = 620
.meas tran vdout1_11ck123 FIND v(dout1_11) AT=620.025n

* CHECK dout1_12 Vdout1_12ck123 = 0 time = 620
.meas tran vdout1_12ck123 FIND v(dout1_12) AT=620.025n

* CHECK dout1_0 Vdout1_0ck124 = 0 time = 625
.meas tran vdout1_0ck124 FIND v(dout1_0) AT=625.025n

* CHECK dout1_1 Vdout1_1ck124 = 0 time = 625
.meas tran vdout1_1ck124 FIND v(dout1_1) AT=625.025n

* CHECK dout1_2 Vdout1_2ck124 = 0 time = 625
.meas tran vdout1_2ck124 FIND v(dout1_2) AT=625.025n

* CHECK dout1_3 Vdout1_3ck124 = 1.0 time = 625
.meas tran vdout1_3ck124 FIND v(dout1_3) AT=625.025n

* CHECK dout1_4 Vdout1_4ck124 = 0 time = 625
.meas tran vdout1_4ck124 FIND v(dout1_4) AT=625.025n

* CHECK dout1_5 Vdout1_5ck124 = 0 time = 625
.meas tran vdout1_5ck124 FIND v(dout1_5) AT=625.025n

* CHECK dout1_6 Vdout1_6ck124 = 0 time = 625
.meas tran vdout1_6ck124 FIND v(dout1_6) AT=625.025n

* CHECK dout1_7 Vdout1_7ck124 = 0 time = 625
.meas tran vdout1_7ck124 FIND v(dout1_7) AT=625.025n

* CHECK dout1_8 Vdout1_8ck124 = 0 time = 625
.meas tran vdout1_8ck124 FIND v(dout1_8) AT=625.025n

* CHECK dout1_9 Vdout1_9ck124 = 1.0 time = 625
.meas tran vdout1_9ck124 FIND v(dout1_9) AT=625.025n

* CHECK dout1_10 Vdout1_10ck124 = 1.0 time = 625
.meas tran vdout1_10ck124 FIND v(dout1_10) AT=625.025n

* CHECK dout1_11 Vdout1_11ck124 = 0 time = 625
.meas tran vdout1_11ck124 FIND v(dout1_11) AT=625.025n

* CHECK dout1_12 Vdout1_12ck124 = 1.0 time = 625
.meas tran vdout1_12ck124 FIND v(dout1_12) AT=625.025n

* CHECK dout1_0 Vdout1_0ck128 = 1.0 time = 645
.meas tran vdout1_0ck128 FIND v(dout1_0) AT=645.025n

* CHECK dout1_1 Vdout1_1ck128 = 1.0 time = 645
.meas tran vdout1_1ck128 FIND v(dout1_1) AT=645.025n

* CHECK dout1_2 Vdout1_2ck128 = 1.0 time = 645
.meas tran vdout1_2ck128 FIND v(dout1_2) AT=645.025n

* CHECK dout1_3 Vdout1_3ck128 = 1.0 time = 645
.meas tran vdout1_3ck128 FIND v(dout1_3) AT=645.025n

* CHECK dout1_4 Vdout1_4ck128 = 1.0 time = 645
.meas tran vdout1_4ck128 FIND v(dout1_4) AT=645.025n

* CHECK dout1_5 Vdout1_5ck128 = 0 time = 645
.meas tran vdout1_5ck128 FIND v(dout1_5) AT=645.025n

* CHECK dout1_6 Vdout1_6ck128 = 0 time = 645
.meas tran vdout1_6ck128 FIND v(dout1_6) AT=645.025n

* CHECK dout1_7 Vdout1_7ck128 = 0 time = 645
.meas tran vdout1_7ck128 FIND v(dout1_7) AT=645.025n

* CHECK dout1_8 Vdout1_8ck128 = 0 time = 645
.meas tran vdout1_8ck128 FIND v(dout1_8) AT=645.025n

* CHECK dout1_9 Vdout1_9ck128 = 0 time = 645
.meas tran vdout1_9ck128 FIND v(dout1_9) AT=645.025n

* CHECK dout1_10 Vdout1_10ck128 = 1.0 time = 645
.meas tran vdout1_10ck128 FIND v(dout1_10) AT=645.025n

* CHECK dout1_11 Vdout1_11ck128 = 1.0 time = 645
.meas tran vdout1_11ck128 FIND v(dout1_11) AT=645.025n

* CHECK dout1_12 Vdout1_12ck128 = 1.0 time = 645
.meas tran vdout1_12ck128 FIND v(dout1_12) AT=645.025n

* CHECK dout1_0 Vdout1_0ck134 = 0 time = 675
.meas tran vdout1_0ck134 FIND v(dout1_0) AT=675.025n

* CHECK dout1_1 Vdout1_1ck134 = 0 time = 675
.meas tran vdout1_1ck134 FIND v(dout1_1) AT=675.025n

* CHECK dout1_2 Vdout1_2ck134 = 0 time = 675
.meas tran vdout1_2ck134 FIND v(dout1_2) AT=675.025n

* CHECK dout1_3 Vdout1_3ck134 = 1.0 time = 675
.meas tran vdout1_3ck134 FIND v(dout1_3) AT=675.025n

* CHECK dout1_4 Vdout1_4ck134 = 0 time = 675
.meas tran vdout1_4ck134 FIND v(dout1_4) AT=675.025n

* CHECK dout1_5 Vdout1_5ck134 = 0 time = 675
.meas tran vdout1_5ck134 FIND v(dout1_5) AT=675.025n

* CHECK dout1_6 Vdout1_6ck134 = 0 time = 675
.meas tran vdout1_6ck134 FIND v(dout1_6) AT=675.025n

* CHECK dout1_7 Vdout1_7ck134 = 0 time = 675
.meas tran vdout1_7ck134 FIND v(dout1_7) AT=675.025n

* CHECK dout1_8 Vdout1_8ck134 = 0 time = 675
.meas tran vdout1_8ck134 FIND v(dout1_8) AT=675.025n

* CHECK dout1_9 Vdout1_9ck134 = 1.0 time = 675
.meas tran vdout1_9ck134 FIND v(dout1_9) AT=675.025n

* CHECK dout1_10 Vdout1_10ck134 = 1.0 time = 675
.meas tran vdout1_10ck134 FIND v(dout1_10) AT=675.025n

* CHECK dout1_11 Vdout1_11ck134 = 0 time = 675
.meas tran vdout1_11ck134 FIND v(dout1_11) AT=675.025n

* CHECK dout1_12 Vdout1_12ck134 = 1.0 time = 675
.meas tran vdout1_12ck134 FIND v(dout1_12) AT=675.025n

* CHECK dout1_0 Vdout1_0ck138 = 1.0 time = 695
.meas tran vdout1_0ck138 FIND v(dout1_0) AT=695.025n

* CHECK dout1_1 Vdout1_1ck138 = 1.0 time = 695
.meas tran vdout1_1ck138 FIND v(dout1_1) AT=695.025n

* CHECK dout1_2 Vdout1_2ck138 = 0 time = 695
.meas tran vdout1_2ck138 FIND v(dout1_2) AT=695.025n

* CHECK dout1_3 Vdout1_3ck138 = 0 time = 695
.meas tran vdout1_3ck138 FIND v(dout1_3) AT=695.025n

* CHECK dout1_4 Vdout1_4ck138 = 0 time = 695
.meas tran vdout1_4ck138 FIND v(dout1_4) AT=695.025n

* CHECK dout1_5 Vdout1_5ck138 = 0 time = 695
.meas tran vdout1_5ck138 FIND v(dout1_5) AT=695.025n

* CHECK dout1_6 Vdout1_6ck138 = 0 time = 695
.meas tran vdout1_6ck138 FIND v(dout1_6) AT=695.025n

* CHECK dout1_7 Vdout1_7ck138 = 0 time = 695
.meas tran vdout1_7ck138 FIND v(dout1_7) AT=695.025n

* CHECK dout1_8 Vdout1_8ck138 = 0 time = 695
.meas tran vdout1_8ck138 FIND v(dout1_8) AT=695.025n

* CHECK dout1_9 Vdout1_9ck138 = 0 time = 695
.meas tran vdout1_9ck138 FIND v(dout1_9) AT=695.025n

* CHECK dout1_10 Vdout1_10ck138 = 0 time = 695
.meas tran vdout1_10ck138 FIND v(dout1_10) AT=695.025n

* CHECK dout1_11 Vdout1_11ck138 = 0 time = 695
.meas tran vdout1_11ck138 FIND v(dout1_11) AT=695.025n

* CHECK dout1_12 Vdout1_12ck138 = 0 time = 695
.meas tran vdout1_12ck138 FIND v(dout1_12) AT=695.025n

* CHECK dout1_0 Vdout1_0ck139 = 0 time = 700
.meas tran vdout1_0ck139 FIND v(dout1_0) AT=700.025n

* CHECK dout1_1 Vdout1_1ck139 = 1.0 time = 700
.meas tran vdout1_1ck139 FIND v(dout1_1) AT=700.025n

* CHECK dout1_2 Vdout1_2ck139 = 1.0 time = 700
.meas tran vdout1_2ck139 FIND v(dout1_2) AT=700.025n

* CHECK dout1_3 Vdout1_3ck139 = 0 time = 700
.meas tran vdout1_3ck139 FIND v(dout1_3) AT=700.025n

* CHECK dout1_4 Vdout1_4ck139 = 1.0 time = 700
.meas tran vdout1_4ck139 FIND v(dout1_4) AT=700.025n

* CHECK dout1_5 Vdout1_5ck139 = 1.0 time = 700
.meas tran vdout1_5ck139 FIND v(dout1_5) AT=700.025n

* CHECK dout1_6 Vdout1_6ck139 = 1.0 time = 700
.meas tran vdout1_6ck139 FIND v(dout1_6) AT=700.025n

* CHECK dout1_7 Vdout1_7ck139 = 0 time = 700
.meas tran vdout1_7ck139 FIND v(dout1_7) AT=700.025n

* CHECK dout1_8 Vdout1_8ck139 = 0 time = 700
.meas tran vdout1_8ck139 FIND v(dout1_8) AT=700.025n

* CHECK dout1_9 Vdout1_9ck139 = 1.0 time = 700
.meas tran vdout1_9ck139 FIND v(dout1_9) AT=700.025n

* CHECK dout1_10 Vdout1_10ck139 = 0 time = 700
.meas tran vdout1_10ck139 FIND v(dout1_10) AT=700.025n

* CHECK dout1_11 Vdout1_11ck139 = 1.0 time = 700
.meas tran vdout1_11ck139 FIND v(dout1_11) AT=700.025n

* CHECK dout1_12 Vdout1_12ck139 = 1.0 time = 700
.meas tran vdout1_12ck139 FIND v(dout1_12) AT=700.025n

* CHECK dout1_0 Vdout1_0ck140 = 1.0 time = 705
.meas tran vdout1_0ck140 FIND v(dout1_0) AT=705.025n

* CHECK dout1_1 Vdout1_1ck140 = 0 time = 705
.meas tran vdout1_1ck140 FIND v(dout1_1) AT=705.025n

* CHECK dout1_2 Vdout1_2ck140 = 1.0 time = 705
.meas tran vdout1_2ck140 FIND v(dout1_2) AT=705.025n

* CHECK dout1_3 Vdout1_3ck140 = 0 time = 705
.meas tran vdout1_3ck140 FIND v(dout1_3) AT=705.025n

* CHECK dout1_4 Vdout1_4ck140 = 1.0 time = 705
.meas tran vdout1_4ck140 FIND v(dout1_4) AT=705.025n

* CHECK dout1_5 Vdout1_5ck140 = 0 time = 705
.meas tran vdout1_5ck140 FIND v(dout1_5) AT=705.025n

* CHECK dout1_6 Vdout1_6ck140 = 1.0 time = 705
.meas tran vdout1_6ck140 FIND v(dout1_6) AT=705.025n

* CHECK dout1_7 Vdout1_7ck140 = 1.0 time = 705
.meas tran vdout1_7ck140 FIND v(dout1_7) AT=705.025n

* CHECK dout1_8 Vdout1_8ck140 = 1.0 time = 705
.meas tran vdout1_8ck140 FIND v(dout1_8) AT=705.025n

* CHECK dout1_9 Vdout1_9ck140 = 1.0 time = 705
.meas tran vdout1_9ck140 FIND v(dout1_9) AT=705.025n

* CHECK dout1_10 Vdout1_10ck140 = 1.0 time = 705
.meas tran vdout1_10ck140 FIND v(dout1_10) AT=705.025n

* CHECK dout1_11 Vdout1_11ck140 = 1.0 time = 705
.meas tran vdout1_11ck140 FIND v(dout1_11) AT=705.025n

* CHECK dout1_12 Vdout1_12ck140 = 0 time = 705
.meas tran vdout1_12ck140 FIND v(dout1_12) AT=705.025n

* CHECK dout1_0 Vdout1_0ck141 = 0 time = 710
.meas tran vdout1_0ck141 FIND v(dout1_0) AT=710.025n

* CHECK dout1_1 Vdout1_1ck141 = 0 time = 710
.meas tran vdout1_1ck141 FIND v(dout1_1) AT=710.025n

* CHECK dout1_2 Vdout1_2ck141 = 0 time = 710
.meas tran vdout1_2ck141 FIND v(dout1_2) AT=710.025n

* CHECK dout1_3 Vdout1_3ck141 = 1.0 time = 710
.meas tran vdout1_3ck141 FIND v(dout1_3) AT=710.025n

* CHECK dout1_4 Vdout1_4ck141 = 0 time = 710
.meas tran vdout1_4ck141 FIND v(dout1_4) AT=710.025n

* CHECK dout1_5 Vdout1_5ck141 = 0 time = 710
.meas tran vdout1_5ck141 FIND v(dout1_5) AT=710.025n

* CHECK dout1_6 Vdout1_6ck141 = 0 time = 710
.meas tran vdout1_6ck141 FIND v(dout1_6) AT=710.025n

* CHECK dout1_7 Vdout1_7ck141 = 0 time = 710
.meas tran vdout1_7ck141 FIND v(dout1_7) AT=710.025n

* CHECK dout1_8 Vdout1_8ck141 = 0 time = 710
.meas tran vdout1_8ck141 FIND v(dout1_8) AT=710.025n

* CHECK dout1_9 Vdout1_9ck141 = 1.0 time = 710
.meas tran vdout1_9ck141 FIND v(dout1_9) AT=710.025n

* CHECK dout1_10 Vdout1_10ck141 = 1.0 time = 710
.meas tran vdout1_10ck141 FIND v(dout1_10) AT=710.025n

* CHECK dout1_11 Vdout1_11ck141 = 0 time = 710
.meas tran vdout1_11ck141 FIND v(dout1_11) AT=710.025n

* CHECK dout1_12 Vdout1_12ck141 = 1.0 time = 710
.meas tran vdout1_12ck141 FIND v(dout1_12) AT=710.025n

* CHECK dout1_0 Vdout1_0ck144 = 1.0 time = 725
.meas tran vdout1_0ck144 FIND v(dout1_0) AT=725.025n

* CHECK dout1_1 Vdout1_1ck144 = 1.0 time = 725
.meas tran vdout1_1ck144 FIND v(dout1_1) AT=725.025n

* CHECK dout1_2 Vdout1_2ck144 = 0 time = 725
.meas tran vdout1_2ck144 FIND v(dout1_2) AT=725.025n

* CHECK dout1_3 Vdout1_3ck144 = 1.0 time = 725
.meas tran vdout1_3ck144 FIND v(dout1_3) AT=725.025n

* CHECK dout1_4 Vdout1_4ck144 = 1.0 time = 725
.meas tran vdout1_4ck144 FIND v(dout1_4) AT=725.025n

* CHECK dout1_5 Vdout1_5ck144 = 1.0 time = 725
.meas tran vdout1_5ck144 FIND v(dout1_5) AT=725.025n

* CHECK dout1_6 Vdout1_6ck144 = 1.0 time = 725
.meas tran vdout1_6ck144 FIND v(dout1_6) AT=725.025n

* CHECK dout1_7 Vdout1_7ck144 = 1.0 time = 725
.meas tran vdout1_7ck144 FIND v(dout1_7) AT=725.025n

* CHECK dout1_8 Vdout1_8ck144 = 1.0 time = 725
.meas tran vdout1_8ck144 FIND v(dout1_8) AT=725.025n

* CHECK dout1_9 Vdout1_9ck144 = 1.0 time = 725
.meas tran vdout1_9ck144 FIND v(dout1_9) AT=725.025n

* CHECK dout1_10 Vdout1_10ck144 = 1.0 time = 725
.meas tran vdout1_10ck144 FIND v(dout1_10) AT=725.025n

* CHECK dout1_11 Vdout1_11ck144 = 0 time = 725
.meas tran vdout1_11ck144 FIND v(dout1_11) AT=725.025n

* CHECK dout1_12 Vdout1_12ck144 = 0 time = 725
.meas tran vdout1_12ck144 FIND v(dout1_12) AT=725.025n

* CHECK dout1_0 Vdout1_0ck145 = 0 time = 730
.meas tran vdout1_0ck145 FIND v(dout1_0) AT=730.025n

* CHECK dout1_1 Vdout1_1ck145 = 1.0 time = 730
.meas tran vdout1_1ck145 FIND v(dout1_1) AT=730.025n

* CHECK dout1_2 Vdout1_2ck145 = 1.0 time = 730
.meas tran vdout1_2ck145 FIND v(dout1_2) AT=730.025n

* CHECK dout1_3 Vdout1_3ck145 = 0 time = 730
.meas tran vdout1_3ck145 FIND v(dout1_3) AT=730.025n

* CHECK dout1_4 Vdout1_4ck145 = 1.0 time = 730
.meas tran vdout1_4ck145 FIND v(dout1_4) AT=730.025n

* CHECK dout1_5 Vdout1_5ck145 = 1.0 time = 730
.meas tran vdout1_5ck145 FIND v(dout1_5) AT=730.025n

* CHECK dout1_6 Vdout1_6ck145 = 1.0 time = 730
.meas tran vdout1_6ck145 FIND v(dout1_6) AT=730.025n

* CHECK dout1_7 Vdout1_7ck145 = 0 time = 730
.meas tran vdout1_7ck145 FIND v(dout1_7) AT=730.025n

* CHECK dout1_8 Vdout1_8ck145 = 0 time = 730
.meas tran vdout1_8ck145 FIND v(dout1_8) AT=730.025n

* CHECK dout1_9 Vdout1_9ck145 = 1.0 time = 730
.meas tran vdout1_9ck145 FIND v(dout1_9) AT=730.025n

* CHECK dout1_10 Vdout1_10ck145 = 0 time = 730
.meas tran vdout1_10ck145 FIND v(dout1_10) AT=730.025n

* CHECK dout1_11 Vdout1_11ck145 = 1.0 time = 730
.meas tran vdout1_11ck145 FIND v(dout1_11) AT=730.025n

* CHECK dout1_12 Vdout1_12ck145 = 1.0 time = 730
.meas tran vdout1_12ck145 FIND v(dout1_12) AT=730.025n

* CHECK dout1_0 Vdout1_0ck146 = 0 time = 735
.meas tran vdout1_0ck146 FIND v(dout1_0) AT=735.025n

* CHECK dout1_1 Vdout1_1ck146 = 0 time = 735
.meas tran vdout1_1ck146 FIND v(dout1_1) AT=735.025n

* CHECK dout1_2 Vdout1_2ck146 = 0 time = 735
.meas tran vdout1_2ck146 FIND v(dout1_2) AT=735.025n

* CHECK dout1_3 Vdout1_3ck146 = 1.0 time = 735
.meas tran vdout1_3ck146 FIND v(dout1_3) AT=735.025n

* CHECK dout1_4 Vdout1_4ck146 = 0 time = 735
.meas tran vdout1_4ck146 FIND v(dout1_4) AT=735.025n

* CHECK dout1_5 Vdout1_5ck146 = 0 time = 735
.meas tran vdout1_5ck146 FIND v(dout1_5) AT=735.025n

* CHECK dout1_6 Vdout1_6ck146 = 0 time = 735
.meas tran vdout1_6ck146 FIND v(dout1_6) AT=735.025n

* CHECK dout1_7 Vdout1_7ck146 = 0 time = 735
.meas tran vdout1_7ck146 FIND v(dout1_7) AT=735.025n

* CHECK dout1_8 Vdout1_8ck146 = 0 time = 735
.meas tran vdout1_8ck146 FIND v(dout1_8) AT=735.025n

* CHECK dout1_9 Vdout1_9ck146 = 1.0 time = 735
.meas tran vdout1_9ck146 FIND v(dout1_9) AT=735.025n

* CHECK dout1_10 Vdout1_10ck146 = 1.0 time = 735
.meas tran vdout1_10ck146 FIND v(dout1_10) AT=735.025n

* CHECK dout1_11 Vdout1_11ck146 = 0 time = 735
.meas tran vdout1_11ck146 FIND v(dout1_11) AT=735.025n

* CHECK dout1_12 Vdout1_12ck146 = 1.0 time = 735
.meas tran vdout1_12ck146 FIND v(dout1_12) AT=735.025n

* CHECK dout1_0 Vdout1_0ck148 = 1.0 time = 745
.meas tran vdout1_0ck148 FIND v(dout1_0) AT=745.025n

* CHECK dout1_1 Vdout1_1ck148 = 1.0 time = 745
.meas tran vdout1_1ck148 FIND v(dout1_1) AT=745.025n

* CHECK dout1_2 Vdout1_2ck148 = 1.0 time = 745
.meas tran vdout1_2ck148 FIND v(dout1_2) AT=745.025n

* CHECK dout1_3 Vdout1_3ck148 = 1.0 time = 745
.meas tran vdout1_3ck148 FIND v(dout1_3) AT=745.025n

* CHECK dout1_4 Vdout1_4ck148 = 1.0 time = 745
.meas tran vdout1_4ck148 FIND v(dout1_4) AT=745.025n

* CHECK dout1_5 Vdout1_5ck148 = 1.0 time = 745
.meas tran vdout1_5ck148 FIND v(dout1_5) AT=745.025n

* CHECK dout1_6 Vdout1_6ck148 = 1.0 time = 745
.meas tran vdout1_6ck148 FIND v(dout1_6) AT=745.025n

* CHECK dout1_7 Vdout1_7ck148 = 1.0 time = 745
.meas tran vdout1_7ck148 FIND v(dout1_7) AT=745.025n

* CHECK dout1_8 Vdout1_8ck148 = 1.0 time = 745
.meas tran vdout1_8ck148 FIND v(dout1_8) AT=745.025n

* CHECK dout1_9 Vdout1_9ck148 = 0 time = 745
.meas tran vdout1_9ck148 FIND v(dout1_9) AT=745.025n

* CHECK dout1_10 Vdout1_10ck148 = 0 time = 745
.meas tran vdout1_10ck148 FIND v(dout1_10) AT=745.025n

* CHECK dout1_11 Vdout1_11ck148 = 1.0 time = 745
.meas tran vdout1_11ck148 FIND v(dout1_11) AT=745.025n

* CHECK dout1_12 Vdout1_12ck148 = 0 time = 745
.meas tran vdout1_12ck148 FIND v(dout1_12) AT=745.025n

* CHECK dout1_0 Vdout1_0ck151 = 0 time = 760
.meas tran vdout1_0ck151 FIND v(dout1_0) AT=760.025n

* CHECK dout1_1 Vdout1_1ck151 = 0 time = 760
.meas tran vdout1_1ck151 FIND v(dout1_1) AT=760.025n

* CHECK dout1_2 Vdout1_2ck151 = 1.0 time = 760
.meas tran vdout1_2ck151 FIND v(dout1_2) AT=760.025n

* CHECK dout1_3 Vdout1_3ck151 = 1.0 time = 760
.meas tran vdout1_3ck151 FIND v(dout1_3) AT=760.025n

* CHECK dout1_4 Vdout1_4ck151 = 0 time = 760
.meas tran vdout1_4ck151 FIND v(dout1_4) AT=760.025n

* CHECK dout1_5 Vdout1_5ck151 = 0 time = 760
.meas tran vdout1_5ck151 FIND v(dout1_5) AT=760.025n

* CHECK dout1_6 Vdout1_6ck151 = 0 time = 760
.meas tran vdout1_6ck151 FIND v(dout1_6) AT=760.025n

* CHECK dout1_7 Vdout1_7ck151 = 0 time = 760
.meas tran vdout1_7ck151 FIND v(dout1_7) AT=760.025n

* CHECK dout1_8 Vdout1_8ck151 = 1.0 time = 760
.meas tran vdout1_8ck151 FIND v(dout1_8) AT=760.025n

* CHECK dout1_9 Vdout1_9ck151 = 1.0 time = 760
.meas tran vdout1_9ck151 FIND v(dout1_9) AT=760.025n

* CHECK dout1_10 Vdout1_10ck151 = 0 time = 760
.meas tran vdout1_10ck151 FIND v(dout1_10) AT=760.025n

* CHECK dout1_11 Vdout1_11ck151 = 0 time = 760
.meas tran vdout1_11ck151 FIND v(dout1_11) AT=760.025n

* CHECK dout1_12 Vdout1_12ck151 = 0 time = 760
.meas tran vdout1_12ck151 FIND v(dout1_12) AT=760.025n

* CHECK dout1_0 Vdout1_0ck159 = 1.0 time = 800
.meas tran vdout1_0ck159 FIND v(dout1_0) AT=800.025n

* CHECK dout1_1 Vdout1_1ck159 = 1.0 time = 800
.meas tran vdout1_1ck159 FIND v(dout1_1) AT=800.025n

* CHECK dout1_2 Vdout1_2ck159 = 0 time = 800
.meas tran vdout1_2ck159 FIND v(dout1_2) AT=800.025n

* CHECK dout1_3 Vdout1_3ck159 = 1.0 time = 800
.meas tran vdout1_3ck159 FIND v(dout1_3) AT=800.025n

* CHECK dout1_4 Vdout1_4ck159 = 1.0 time = 800
.meas tran vdout1_4ck159 FIND v(dout1_4) AT=800.025n

* CHECK dout1_5 Vdout1_5ck159 = 1.0 time = 800
.meas tran vdout1_5ck159 FIND v(dout1_5) AT=800.025n

* CHECK dout1_6 Vdout1_6ck159 = 1.0 time = 800
.meas tran vdout1_6ck159 FIND v(dout1_6) AT=800.025n

* CHECK dout1_7 Vdout1_7ck159 = 1.0 time = 800
.meas tran vdout1_7ck159 FIND v(dout1_7) AT=800.025n

* CHECK dout1_8 Vdout1_8ck159 = 1.0 time = 800
.meas tran vdout1_8ck159 FIND v(dout1_8) AT=800.025n

* CHECK dout1_9 Vdout1_9ck159 = 1.0 time = 800
.meas tran vdout1_9ck159 FIND v(dout1_9) AT=800.025n

* CHECK dout1_10 Vdout1_10ck159 = 1.0 time = 800
.meas tran vdout1_10ck159 FIND v(dout1_10) AT=800.025n

* CHECK dout1_11 Vdout1_11ck159 = 0 time = 800
.meas tran vdout1_11ck159 FIND v(dout1_11) AT=800.025n

* CHECK dout1_12 Vdout1_12ck159 = 0 time = 800
.meas tran vdout1_12ck159 FIND v(dout1_12) AT=800.025n

* CHECK dout1_0 Vdout1_0ck160 = 1.0 time = 805
.meas tran vdout1_0ck160 FIND v(dout1_0) AT=805.025n

* CHECK dout1_1 Vdout1_1ck160 = 1.0 time = 805
.meas tran vdout1_1ck160 FIND v(dout1_1) AT=805.025n

* CHECK dout1_2 Vdout1_2ck160 = 0 time = 805
.meas tran vdout1_2ck160 FIND v(dout1_2) AT=805.025n

* CHECK dout1_3 Vdout1_3ck160 = 0 time = 805
.meas tran vdout1_3ck160 FIND v(dout1_3) AT=805.025n

* CHECK dout1_4 Vdout1_4ck160 = 0 time = 805
.meas tran vdout1_4ck160 FIND v(dout1_4) AT=805.025n

* CHECK dout1_5 Vdout1_5ck160 = 1.0 time = 805
.meas tran vdout1_5ck160 FIND v(dout1_5) AT=805.025n

* CHECK dout1_6 Vdout1_6ck160 = 1.0 time = 805
.meas tran vdout1_6ck160 FIND v(dout1_6) AT=805.025n

* CHECK dout1_7 Vdout1_7ck160 = 1.0 time = 805
.meas tran vdout1_7ck160 FIND v(dout1_7) AT=805.025n

* CHECK dout1_8 Vdout1_8ck160 = 0 time = 805
.meas tran vdout1_8ck160 FIND v(dout1_8) AT=805.025n

* CHECK dout1_9 Vdout1_9ck160 = 0 time = 805
.meas tran vdout1_9ck160 FIND v(dout1_9) AT=805.025n

* CHECK dout1_10 Vdout1_10ck160 = 0 time = 805
.meas tran vdout1_10ck160 FIND v(dout1_10) AT=805.025n

* CHECK dout1_11 Vdout1_11ck160 = 0 time = 805
.meas tran vdout1_11ck160 FIND v(dout1_11) AT=805.025n

* CHECK dout1_12 Vdout1_12ck160 = 0 time = 805
.meas tran vdout1_12ck160 FIND v(dout1_12) AT=805.025n

* CHECK dout1_0 Vdout1_0ck165 = 1.0 time = 830
.meas tran vdout1_0ck165 FIND v(dout1_0) AT=830.025n

* CHECK dout1_1 Vdout1_1ck165 = 1.0 time = 830
.meas tran vdout1_1ck165 FIND v(dout1_1) AT=830.025n

* CHECK dout1_2 Vdout1_2ck165 = 1.0 time = 830
.meas tran vdout1_2ck165 FIND v(dout1_2) AT=830.025n

* CHECK dout1_3 Vdout1_3ck165 = 1.0 time = 830
.meas tran vdout1_3ck165 FIND v(dout1_3) AT=830.025n

* CHECK dout1_4 Vdout1_4ck165 = 1.0 time = 830
.meas tran vdout1_4ck165 FIND v(dout1_4) AT=830.025n

* CHECK dout1_5 Vdout1_5ck165 = 1.0 time = 830
.meas tran vdout1_5ck165 FIND v(dout1_5) AT=830.025n

* CHECK dout1_6 Vdout1_6ck165 = 1.0 time = 830
.meas tran vdout1_6ck165 FIND v(dout1_6) AT=830.025n

* CHECK dout1_7 Vdout1_7ck165 = 1.0 time = 830
.meas tran vdout1_7ck165 FIND v(dout1_7) AT=830.025n

* CHECK dout1_8 Vdout1_8ck165 = 1.0 time = 830
.meas tran vdout1_8ck165 FIND v(dout1_8) AT=830.025n

* CHECK dout1_9 Vdout1_9ck165 = 0 time = 830
.meas tran vdout1_9ck165 FIND v(dout1_9) AT=830.025n

* CHECK dout1_10 Vdout1_10ck165 = 0 time = 830
.meas tran vdout1_10ck165 FIND v(dout1_10) AT=830.025n

* CHECK dout1_11 Vdout1_11ck165 = 1.0 time = 830
.meas tran vdout1_11ck165 FIND v(dout1_11) AT=830.025n

* CHECK dout1_12 Vdout1_12ck165 = 0 time = 830
.meas tran vdout1_12ck165 FIND v(dout1_12) AT=830.025n

* CHECK dout1_0 Vdout1_0ck166 = 0 time = 835
.meas tran vdout1_0ck166 FIND v(dout1_0) AT=835.025n

* CHECK dout1_1 Vdout1_1ck166 = 1.0 time = 835
.meas tran vdout1_1ck166 FIND v(dout1_1) AT=835.025n

* CHECK dout1_2 Vdout1_2ck166 = 0 time = 835
.meas tran vdout1_2ck166 FIND v(dout1_2) AT=835.025n

* CHECK dout1_3 Vdout1_3ck166 = 0 time = 835
.meas tran vdout1_3ck166 FIND v(dout1_3) AT=835.025n

* CHECK dout1_4 Vdout1_4ck166 = 1.0 time = 835
.meas tran vdout1_4ck166 FIND v(dout1_4) AT=835.025n

* CHECK dout1_5 Vdout1_5ck166 = 0 time = 835
.meas tran vdout1_5ck166 FIND v(dout1_5) AT=835.025n

* CHECK dout1_6 Vdout1_6ck166 = 1.0 time = 835
.meas tran vdout1_6ck166 FIND v(dout1_6) AT=835.025n

* CHECK dout1_7 Vdout1_7ck166 = 1.0 time = 835
.meas tran vdout1_7ck166 FIND v(dout1_7) AT=835.025n

* CHECK dout1_8 Vdout1_8ck166 = 0 time = 835
.meas tran vdout1_8ck166 FIND v(dout1_8) AT=835.025n

* CHECK dout1_9 Vdout1_9ck166 = 1.0 time = 835
.meas tran vdout1_9ck166 FIND v(dout1_9) AT=835.025n

* CHECK dout1_10 Vdout1_10ck166 = 1.0 time = 835
.meas tran vdout1_10ck166 FIND v(dout1_10) AT=835.025n

* CHECK dout1_11 Vdout1_11ck166 = 0 time = 835
.meas tran vdout1_11ck166 FIND v(dout1_11) AT=835.025n

* CHECK dout1_12 Vdout1_12ck166 = 0 time = 835
.meas tran vdout1_12ck166 FIND v(dout1_12) AT=835.025n

* CHECK dout1_0 Vdout1_0ck168 = 1.0 time = 845
.meas tran vdout1_0ck168 FIND v(dout1_0) AT=845.025n

* CHECK dout1_1 Vdout1_1ck168 = 1.0 time = 845
.meas tran vdout1_1ck168 FIND v(dout1_1) AT=845.025n

* CHECK dout1_2 Vdout1_2ck168 = 0 time = 845
.meas tran vdout1_2ck168 FIND v(dout1_2) AT=845.025n

* CHECK dout1_3 Vdout1_3ck168 = 1.0 time = 845
.meas tran vdout1_3ck168 FIND v(dout1_3) AT=845.025n

* CHECK dout1_4 Vdout1_4ck168 = 1.0 time = 845
.meas tran vdout1_4ck168 FIND v(dout1_4) AT=845.025n

* CHECK dout1_5 Vdout1_5ck168 = 1.0 time = 845
.meas tran vdout1_5ck168 FIND v(dout1_5) AT=845.025n

* CHECK dout1_6 Vdout1_6ck168 = 0 time = 845
.meas tran vdout1_6ck168 FIND v(dout1_6) AT=845.025n

* CHECK dout1_7 Vdout1_7ck168 = 0 time = 845
.meas tran vdout1_7ck168 FIND v(dout1_7) AT=845.025n

* CHECK dout1_8 Vdout1_8ck168 = 0 time = 845
.meas tran vdout1_8ck168 FIND v(dout1_8) AT=845.025n

* CHECK dout1_9 Vdout1_9ck168 = 0 time = 845
.meas tran vdout1_9ck168 FIND v(dout1_9) AT=845.025n

* CHECK dout1_10 Vdout1_10ck168 = 1.0 time = 845
.meas tran vdout1_10ck168 FIND v(dout1_10) AT=845.025n

* CHECK dout1_11 Vdout1_11ck168 = 1.0 time = 845
.meas tran vdout1_11ck168 FIND v(dout1_11) AT=845.025n

* CHECK dout1_12 Vdout1_12ck168 = 1.0 time = 845
.meas tran vdout1_12ck168 FIND v(dout1_12) AT=845.025n

* CHECK dout1_0 Vdout1_0ck170 = 1.0 time = 855
.meas tran vdout1_0ck170 FIND v(dout1_0) AT=855.025n

* CHECK dout1_1 Vdout1_1ck170 = 1.0 time = 855
.meas tran vdout1_1ck170 FIND v(dout1_1) AT=855.025n

* CHECK dout1_2 Vdout1_2ck170 = 0 time = 855
.meas tran vdout1_2ck170 FIND v(dout1_2) AT=855.025n

* CHECK dout1_3 Vdout1_3ck170 = 0 time = 855
.meas tran vdout1_3ck170 FIND v(dout1_3) AT=855.025n

* CHECK dout1_4 Vdout1_4ck170 = 0 time = 855
.meas tran vdout1_4ck170 FIND v(dout1_4) AT=855.025n

* CHECK dout1_5 Vdout1_5ck170 = 1.0 time = 855
.meas tran vdout1_5ck170 FIND v(dout1_5) AT=855.025n

* CHECK dout1_6 Vdout1_6ck170 = 1.0 time = 855
.meas tran vdout1_6ck170 FIND v(dout1_6) AT=855.025n

* CHECK dout1_7 Vdout1_7ck170 = 1.0 time = 855
.meas tran vdout1_7ck170 FIND v(dout1_7) AT=855.025n

* CHECK dout1_8 Vdout1_8ck170 = 0 time = 855
.meas tran vdout1_8ck170 FIND v(dout1_8) AT=855.025n

* CHECK dout1_9 Vdout1_9ck170 = 0 time = 855
.meas tran vdout1_9ck170 FIND v(dout1_9) AT=855.025n

* CHECK dout1_10 Vdout1_10ck170 = 0 time = 855
.meas tran vdout1_10ck170 FIND v(dout1_10) AT=855.025n

* CHECK dout1_11 Vdout1_11ck170 = 0 time = 855
.meas tran vdout1_11ck170 FIND v(dout1_11) AT=855.025n

* CHECK dout1_12 Vdout1_12ck170 = 0 time = 855
.meas tran vdout1_12ck170 FIND v(dout1_12) AT=855.025n

* CHECK dout1_0 Vdout1_0ck171 = 1.0 time = 860
.meas tran vdout1_0ck171 FIND v(dout1_0) AT=860.025n

* CHECK dout1_1 Vdout1_1ck171 = 1.0 time = 860
.meas tran vdout1_1ck171 FIND v(dout1_1) AT=860.025n

* CHECK dout1_2 Vdout1_2ck171 = 1.0 time = 860
.meas tran vdout1_2ck171 FIND v(dout1_2) AT=860.025n

* CHECK dout1_3 Vdout1_3ck171 = 1.0 time = 860
.meas tran vdout1_3ck171 FIND v(dout1_3) AT=860.025n

* CHECK dout1_4 Vdout1_4ck171 = 0 time = 860
.meas tran vdout1_4ck171 FIND v(dout1_4) AT=860.025n

* CHECK dout1_5 Vdout1_5ck171 = 0 time = 860
.meas tran vdout1_5ck171 FIND v(dout1_5) AT=860.025n

* CHECK dout1_6 Vdout1_6ck171 = 0 time = 860
.meas tran vdout1_6ck171 FIND v(dout1_6) AT=860.025n

* CHECK dout1_7 Vdout1_7ck171 = 0 time = 860
.meas tran vdout1_7ck171 FIND v(dout1_7) AT=860.025n

* CHECK dout1_8 Vdout1_8ck171 = 0 time = 860
.meas tran vdout1_8ck171 FIND v(dout1_8) AT=860.025n

* CHECK dout1_9 Vdout1_9ck171 = 1.0 time = 860
.meas tran vdout1_9ck171 FIND v(dout1_9) AT=860.025n

* CHECK dout1_10 Vdout1_10ck171 = 1.0 time = 860
.meas tran vdout1_10ck171 FIND v(dout1_10) AT=860.025n

* CHECK dout1_11 Vdout1_11ck171 = 1.0 time = 860
.meas tran vdout1_11ck171 FIND v(dout1_11) AT=860.025n

* CHECK dout1_12 Vdout1_12ck171 = 0 time = 860
.meas tran vdout1_12ck171 FIND v(dout1_12) AT=860.025n

* CHECK dout1_0 Vdout1_0ck173 = 1.0 time = 870
.meas tran vdout1_0ck173 FIND v(dout1_0) AT=870.025n

* CHECK dout1_1 Vdout1_1ck173 = 1.0 time = 870
.meas tran vdout1_1ck173 FIND v(dout1_1) AT=870.025n

* CHECK dout1_2 Vdout1_2ck173 = 0 time = 870
.meas tran vdout1_2ck173 FIND v(dout1_2) AT=870.025n

* CHECK dout1_3 Vdout1_3ck173 = 0 time = 870
.meas tran vdout1_3ck173 FIND v(dout1_3) AT=870.025n

* CHECK dout1_4 Vdout1_4ck173 = 0 time = 870
.meas tran vdout1_4ck173 FIND v(dout1_4) AT=870.025n

* CHECK dout1_5 Vdout1_5ck173 = 1.0 time = 870
.meas tran vdout1_5ck173 FIND v(dout1_5) AT=870.025n

* CHECK dout1_6 Vdout1_6ck173 = 1.0 time = 870
.meas tran vdout1_6ck173 FIND v(dout1_6) AT=870.025n

* CHECK dout1_7 Vdout1_7ck173 = 1.0 time = 870
.meas tran vdout1_7ck173 FIND v(dout1_7) AT=870.025n

* CHECK dout1_8 Vdout1_8ck173 = 0 time = 870
.meas tran vdout1_8ck173 FIND v(dout1_8) AT=870.025n

* CHECK dout1_9 Vdout1_9ck173 = 0 time = 870
.meas tran vdout1_9ck173 FIND v(dout1_9) AT=870.025n

* CHECK dout1_10 Vdout1_10ck173 = 0 time = 870
.meas tran vdout1_10ck173 FIND v(dout1_10) AT=870.025n

* CHECK dout1_11 Vdout1_11ck173 = 0 time = 870
.meas tran vdout1_11ck173 FIND v(dout1_11) AT=870.025n

* CHECK dout1_12 Vdout1_12ck173 = 0 time = 870
.meas tran vdout1_12ck173 FIND v(dout1_12) AT=870.025n

* CHECK dout1_0 Vdout1_0ck174 = 1.0 time = 875
.meas tran vdout1_0ck174 FIND v(dout1_0) AT=875.025n

* CHECK dout1_1 Vdout1_1ck174 = 1.0 time = 875
.meas tran vdout1_1ck174 FIND v(dout1_1) AT=875.025n

* CHECK dout1_2 Vdout1_2ck174 = 1.0 time = 875
.meas tran vdout1_2ck174 FIND v(dout1_2) AT=875.025n

* CHECK dout1_3 Vdout1_3ck174 = 1.0 time = 875
.meas tran vdout1_3ck174 FIND v(dout1_3) AT=875.025n

* CHECK dout1_4 Vdout1_4ck174 = 0 time = 875
.meas tran vdout1_4ck174 FIND v(dout1_4) AT=875.025n

* CHECK dout1_5 Vdout1_5ck174 = 0 time = 875
.meas tran vdout1_5ck174 FIND v(dout1_5) AT=875.025n

* CHECK dout1_6 Vdout1_6ck174 = 0 time = 875
.meas tran vdout1_6ck174 FIND v(dout1_6) AT=875.025n

* CHECK dout1_7 Vdout1_7ck174 = 0 time = 875
.meas tran vdout1_7ck174 FIND v(dout1_7) AT=875.025n

* CHECK dout1_8 Vdout1_8ck174 = 0 time = 875
.meas tran vdout1_8ck174 FIND v(dout1_8) AT=875.025n

* CHECK dout1_9 Vdout1_9ck174 = 1.0 time = 875
.meas tran vdout1_9ck174 FIND v(dout1_9) AT=875.025n

* CHECK dout1_10 Vdout1_10ck174 = 1.0 time = 875
.meas tran vdout1_10ck174 FIND v(dout1_10) AT=875.025n

* CHECK dout1_11 Vdout1_11ck174 = 1.0 time = 875
.meas tran vdout1_11ck174 FIND v(dout1_11) AT=875.025n

* CHECK dout1_12 Vdout1_12ck174 = 0 time = 875
.meas tran vdout1_12ck174 FIND v(dout1_12) AT=875.025n

* CHECK dout1_0 Vdout1_0ck177 = 1.0 time = 890
.meas tran vdout1_0ck177 FIND v(dout1_0) AT=890.025n

* CHECK dout1_1 Vdout1_1ck177 = 1.0 time = 890
.meas tran vdout1_1ck177 FIND v(dout1_1) AT=890.025n

* CHECK dout1_2 Vdout1_2ck177 = 0 time = 890
.meas tran vdout1_2ck177 FIND v(dout1_2) AT=890.025n

* CHECK dout1_3 Vdout1_3ck177 = 0 time = 890
.meas tran vdout1_3ck177 FIND v(dout1_3) AT=890.025n

* CHECK dout1_4 Vdout1_4ck177 = 1.0 time = 890
.meas tran vdout1_4ck177 FIND v(dout1_4) AT=890.025n

* CHECK dout1_5 Vdout1_5ck177 = 1.0 time = 890
.meas tran vdout1_5ck177 FIND v(dout1_5) AT=890.025n

* CHECK dout1_6 Vdout1_6ck177 = 0 time = 890
.meas tran vdout1_6ck177 FIND v(dout1_6) AT=890.025n

* CHECK dout1_7 Vdout1_7ck177 = 1.0 time = 890
.meas tran vdout1_7ck177 FIND v(dout1_7) AT=890.025n

* CHECK dout1_8 Vdout1_8ck177 = 1.0 time = 890
.meas tran vdout1_8ck177 FIND v(dout1_8) AT=890.025n

* CHECK dout1_9 Vdout1_9ck177 = 0 time = 890
.meas tran vdout1_9ck177 FIND v(dout1_9) AT=890.025n

* CHECK dout1_10 Vdout1_10ck177 = 1.0 time = 890
.meas tran vdout1_10ck177 FIND v(dout1_10) AT=890.025n

* CHECK dout1_11 Vdout1_11ck177 = 0 time = 890
.meas tran vdout1_11ck177 FIND v(dout1_11) AT=890.025n

* CHECK dout1_12 Vdout1_12ck177 = 1.0 time = 890
.meas tran vdout1_12ck177 FIND v(dout1_12) AT=890.025n

* CHECK dout1_0 Vdout1_0ck180 = 1.0 time = 905
.meas tran vdout1_0ck180 FIND v(dout1_0) AT=905.025n

* CHECK dout1_1 Vdout1_1ck180 = 1.0 time = 905
.meas tran vdout1_1ck180 FIND v(dout1_1) AT=905.025n

* CHECK dout1_2 Vdout1_2ck180 = 0 time = 905
.meas tran vdout1_2ck180 FIND v(dout1_2) AT=905.025n

* CHECK dout1_3 Vdout1_3ck180 = 0 time = 905
.meas tran vdout1_3ck180 FIND v(dout1_3) AT=905.025n

* CHECK dout1_4 Vdout1_4ck180 = 0 time = 905
.meas tran vdout1_4ck180 FIND v(dout1_4) AT=905.025n

* CHECK dout1_5 Vdout1_5ck180 = 0 time = 905
.meas tran vdout1_5ck180 FIND v(dout1_5) AT=905.025n

* CHECK dout1_6 Vdout1_6ck180 = 1.0 time = 905
.meas tran vdout1_6ck180 FIND v(dout1_6) AT=905.025n

* CHECK dout1_7 Vdout1_7ck180 = 0 time = 905
.meas tran vdout1_7ck180 FIND v(dout1_7) AT=905.025n

* CHECK dout1_8 Vdout1_8ck180 = 1.0 time = 905
.meas tran vdout1_8ck180 FIND v(dout1_8) AT=905.025n

* CHECK dout1_9 Vdout1_9ck180 = 1.0 time = 905
.meas tran vdout1_9ck180 FIND v(dout1_9) AT=905.025n

* CHECK dout1_10 Vdout1_10ck180 = 0 time = 905
.meas tran vdout1_10ck180 FIND v(dout1_10) AT=905.025n

* CHECK dout1_11 Vdout1_11ck180 = 1.0 time = 905
.meas tran vdout1_11ck180 FIND v(dout1_11) AT=905.025n

* CHECK dout1_12 Vdout1_12ck180 = 0 time = 905
.meas tran vdout1_12ck180 FIND v(dout1_12) AT=905.025n

* CHECK dout1_0 Vdout1_0ck182 = 1.0 time = 915
.meas tran vdout1_0ck182 FIND v(dout1_0) AT=915.025n

* CHECK dout1_1 Vdout1_1ck182 = 1.0 time = 915
.meas tran vdout1_1ck182 FIND v(dout1_1) AT=915.025n

* CHECK dout1_2 Vdout1_2ck182 = 1.0 time = 915
.meas tran vdout1_2ck182 FIND v(dout1_2) AT=915.025n

* CHECK dout1_3 Vdout1_3ck182 = 1.0 time = 915
.meas tran vdout1_3ck182 FIND v(dout1_3) AT=915.025n

* CHECK dout1_4 Vdout1_4ck182 = 0 time = 915
.meas tran vdout1_4ck182 FIND v(dout1_4) AT=915.025n

* CHECK dout1_5 Vdout1_5ck182 = 0 time = 915
.meas tran vdout1_5ck182 FIND v(dout1_5) AT=915.025n

* CHECK dout1_6 Vdout1_6ck182 = 0 time = 915
.meas tran vdout1_6ck182 FIND v(dout1_6) AT=915.025n

* CHECK dout1_7 Vdout1_7ck182 = 0 time = 915
.meas tran vdout1_7ck182 FIND v(dout1_7) AT=915.025n

* CHECK dout1_8 Vdout1_8ck182 = 0 time = 915
.meas tran vdout1_8ck182 FIND v(dout1_8) AT=915.025n

* CHECK dout1_9 Vdout1_9ck182 = 1.0 time = 915
.meas tran vdout1_9ck182 FIND v(dout1_9) AT=915.025n

* CHECK dout1_10 Vdout1_10ck182 = 1.0 time = 915
.meas tran vdout1_10ck182 FIND v(dout1_10) AT=915.025n

* CHECK dout1_11 Vdout1_11ck182 = 1.0 time = 915
.meas tran vdout1_11ck182 FIND v(dout1_11) AT=915.025n

* CHECK dout1_12 Vdout1_12ck182 = 0 time = 915
.meas tran vdout1_12ck182 FIND v(dout1_12) AT=915.025n

* CHECK dout1_0 Vdout1_0ck184 = 1.0 time = 925
.meas tran vdout1_0ck184 FIND v(dout1_0) AT=925.025n

* CHECK dout1_1 Vdout1_1ck184 = 1.0 time = 925
.meas tran vdout1_1ck184 FIND v(dout1_1) AT=925.025n

* CHECK dout1_2 Vdout1_2ck184 = 1.0 time = 925
.meas tran vdout1_2ck184 FIND v(dout1_2) AT=925.025n

* CHECK dout1_3 Vdout1_3ck184 = 1.0 time = 925
.meas tran vdout1_3ck184 FIND v(dout1_3) AT=925.025n

* CHECK dout1_4 Vdout1_4ck184 = 1.0 time = 925
.meas tran vdout1_4ck184 FIND v(dout1_4) AT=925.025n

* CHECK dout1_5 Vdout1_5ck184 = 1.0 time = 925
.meas tran vdout1_5ck184 FIND v(dout1_5) AT=925.025n

* CHECK dout1_6 Vdout1_6ck184 = 1.0 time = 925
.meas tran vdout1_6ck184 FIND v(dout1_6) AT=925.025n

* CHECK dout1_7 Vdout1_7ck184 = 1.0 time = 925
.meas tran vdout1_7ck184 FIND v(dout1_7) AT=925.025n

* CHECK dout1_8 Vdout1_8ck184 = 1.0 time = 925
.meas tran vdout1_8ck184 FIND v(dout1_8) AT=925.025n

* CHECK dout1_9 Vdout1_9ck184 = 0 time = 925
.meas tran vdout1_9ck184 FIND v(dout1_9) AT=925.025n

* CHECK dout1_10 Vdout1_10ck184 = 0 time = 925
.meas tran vdout1_10ck184 FIND v(dout1_10) AT=925.025n

* CHECK dout1_11 Vdout1_11ck184 = 1.0 time = 925
.meas tran vdout1_11ck184 FIND v(dout1_11) AT=925.025n

* CHECK dout1_12 Vdout1_12ck184 = 0 time = 925
.meas tran vdout1_12ck184 FIND v(dout1_12) AT=925.025n

* CHECK dout1_0 Vdout1_0ck185 = 1.0 time = 930
.meas tran vdout1_0ck185 FIND v(dout1_0) AT=930.025n

* CHECK dout1_1 Vdout1_1ck185 = 0 time = 930
.meas tran vdout1_1ck185 FIND v(dout1_1) AT=930.025n

* CHECK dout1_2 Vdout1_2ck185 = 0 time = 930
.meas tran vdout1_2ck185 FIND v(dout1_2) AT=930.025n

* CHECK dout1_3 Vdout1_3ck185 = 0 time = 930
.meas tran vdout1_3ck185 FIND v(dout1_3) AT=930.025n

* CHECK dout1_4 Vdout1_4ck185 = 0 time = 930
.meas tran vdout1_4ck185 FIND v(dout1_4) AT=930.025n

* CHECK dout1_5 Vdout1_5ck185 = 1.0 time = 930
.meas tran vdout1_5ck185 FIND v(dout1_5) AT=930.025n

* CHECK dout1_6 Vdout1_6ck185 = 0 time = 930
.meas tran vdout1_6ck185 FIND v(dout1_6) AT=930.025n

* CHECK dout1_7 Vdout1_7ck185 = 1.0 time = 930
.meas tran vdout1_7ck185 FIND v(dout1_7) AT=930.025n

* CHECK dout1_8 Vdout1_8ck185 = 1.0 time = 930
.meas tran vdout1_8ck185 FIND v(dout1_8) AT=930.025n

* CHECK dout1_9 Vdout1_9ck185 = 1.0 time = 930
.meas tran vdout1_9ck185 FIND v(dout1_9) AT=930.025n

* CHECK dout1_10 Vdout1_10ck185 = 1.0 time = 930
.meas tran vdout1_10ck185 FIND v(dout1_10) AT=930.025n

* CHECK dout1_11 Vdout1_11ck185 = 1.0 time = 930
.meas tran vdout1_11ck185 FIND v(dout1_11) AT=930.025n

* CHECK dout1_12 Vdout1_12ck185 = 0 time = 930
.meas tran vdout1_12ck185 FIND v(dout1_12) AT=930.025n

* CHECK dout1_0 Vdout1_0ck186 = 1.0 time = 935
.meas tran vdout1_0ck186 FIND v(dout1_0) AT=935.025n

* CHECK dout1_1 Vdout1_1ck186 = 1.0 time = 935
.meas tran vdout1_1ck186 FIND v(dout1_1) AT=935.025n

* CHECK dout1_2 Vdout1_2ck186 = 1.0 time = 935
.meas tran vdout1_2ck186 FIND v(dout1_2) AT=935.025n

* CHECK dout1_3 Vdout1_3ck186 = 0 time = 935
.meas tran vdout1_3ck186 FIND v(dout1_3) AT=935.025n

* CHECK dout1_4 Vdout1_4ck186 = 1.0 time = 935
.meas tran vdout1_4ck186 FIND v(dout1_4) AT=935.025n

* CHECK dout1_5 Vdout1_5ck186 = 1.0 time = 935
.meas tran vdout1_5ck186 FIND v(dout1_5) AT=935.025n

* CHECK dout1_6 Vdout1_6ck186 = 0 time = 935
.meas tran vdout1_6ck186 FIND v(dout1_6) AT=935.025n

* CHECK dout1_7 Vdout1_7ck186 = 0 time = 935
.meas tran vdout1_7ck186 FIND v(dout1_7) AT=935.025n

* CHECK dout1_8 Vdout1_8ck186 = 1.0 time = 935
.meas tran vdout1_8ck186 FIND v(dout1_8) AT=935.025n

* CHECK dout1_9 Vdout1_9ck186 = 1.0 time = 935
.meas tran vdout1_9ck186 FIND v(dout1_9) AT=935.025n

* CHECK dout1_10 Vdout1_10ck186 = 1.0 time = 935
.meas tran vdout1_10ck186 FIND v(dout1_10) AT=935.025n

* CHECK dout1_11 Vdout1_11ck186 = 1.0 time = 935
.meas tran vdout1_11ck186 FIND v(dout1_11) AT=935.025n

* CHECK dout1_12 Vdout1_12ck186 = 1.0 time = 935
.meas tran vdout1_12ck186 FIND v(dout1_12) AT=935.025n

* CHECK dout1_0 Vdout1_0ck187 = 1.0 time = 940
.meas tran vdout1_0ck187 FIND v(dout1_0) AT=940.025n

* CHECK dout1_1 Vdout1_1ck187 = 1.0 time = 940
.meas tran vdout1_1ck187 FIND v(dout1_1) AT=940.025n

* CHECK dout1_2 Vdout1_2ck187 = 1.0 time = 940
.meas tran vdout1_2ck187 FIND v(dout1_2) AT=940.025n

* CHECK dout1_3 Vdout1_3ck187 = 0 time = 940
.meas tran vdout1_3ck187 FIND v(dout1_3) AT=940.025n

* CHECK dout1_4 Vdout1_4ck187 = 1.0 time = 940
.meas tran vdout1_4ck187 FIND v(dout1_4) AT=940.025n

* CHECK dout1_5 Vdout1_5ck187 = 1.0 time = 940
.meas tran vdout1_5ck187 FIND v(dout1_5) AT=940.025n

* CHECK dout1_6 Vdout1_6ck187 = 0 time = 940
.meas tran vdout1_6ck187 FIND v(dout1_6) AT=940.025n

* CHECK dout1_7 Vdout1_7ck187 = 0 time = 940
.meas tran vdout1_7ck187 FIND v(dout1_7) AT=940.025n

* CHECK dout1_8 Vdout1_8ck187 = 1.0 time = 940
.meas tran vdout1_8ck187 FIND v(dout1_8) AT=940.025n

* CHECK dout1_9 Vdout1_9ck187 = 1.0 time = 940
.meas tran vdout1_9ck187 FIND v(dout1_9) AT=940.025n

* CHECK dout1_10 Vdout1_10ck187 = 1.0 time = 940
.meas tran vdout1_10ck187 FIND v(dout1_10) AT=940.025n

* CHECK dout1_11 Vdout1_11ck187 = 1.0 time = 940
.meas tran vdout1_11ck187 FIND v(dout1_11) AT=940.025n

* CHECK dout1_12 Vdout1_12ck187 = 1.0 time = 940
.meas tran vdout1_12ck187 FIND v(dout1_12) AT=940.025n

* CHECK dout1_0 Vdout1_0ck188 = 1.0 time = 945
.meas tran vdout1_0ck188 FIND v(dout1_0) AT=945.025n

* CHECK dout1_1 Vdout1_1ck188 = 0 time = 945
.meas tran vdout1_1ck188 FIND v(dout1_1) AT=945.025n

* CHECK dout1_2 Vdout1_2ck188 = 0 time = 945
.meas tran vdout1_2ck188 FIND v(dout1_2) AT=945.025n

* CHECK dout1_3 Vdout1_3ck188 = 0 time = 945
.meas tran vdout1_3ck188 FIND v(dout1_3) AT=945.025n

* CHECK dout1_4 Vdout1_4ck188 = 0 time = 945
.meas tran vdout1_4ck188 FIND v(dout1_4) AT=945.025n

* CHECK dout1_5 Vdout1_5ck188 = 1.0 time = 945
.meas tran vdout1_5ck188 FIND v(dout1_5) AT=945.025n

* CHECK dout1_6 Vdout1_6ck188 = 0 time = 945
.meas tran vdout1_6ck188 FIND v(dout1_6) AT=945.025n

* CHECK dout1_7 Vdout1_7ck188 = 1.0 time = 945
.meas tran vdout1_7ck188 FIND v(dout1_7) AT=945.025n

* CHECK dout1_8 Vdout1_8ck188 = 1.0 time = 945
.meas tran vdout1_8ck188 FIND v(dout1_8) AT=945.025n

* CHECK dout1_9 Vdout1_9ck188 = 1.0 time = 945
.meas tran vdout1_9ck188 FIND v(dout1_9) AT=945.025n

* CHECK dout1_10 Vdout1_10ck188 = 1.0 time = 945
.meas tran vdout1_10ck188 FIND v(dout1_10) AT=945.025n

* CHECK dout1_11 Vdout1_11ck188 = 1.0 time = 945
.meas tran vdout1_11ck188 FIND v(dout1_11) AT=945.025n

* CHECK dout1_12 Vdout1_12ck188 = 0 time = 945
.meas tran vdout1_12ck188 FIND v(dout1_12) AT=945.025n

* CHECK dout1_0 Vdout1_0ck194 = 1.0 time = 975
.meas tran vdout1_0ck194 FIND v(dout1_0) AT=975.025n

* CHECK dout1_1 Vdout1_1ck194 = 1.0 time = 975
.meas tran vdout1_1ck194 FIND v(dout1_1) AT=975.025n

* CHECK dout1_2 Vdout1_2ck194 = 1.0 time = 975
.meas tran vdout1_2ck194 FIND v(dout1_2) AT=975.025n

* CHECK dout1_3 Vdout1_3ck194 = 0 time = 975
.meas tran vdout1_3ck194 FIND v(dout1_3) AT=975.025n

* CHECK dout1_4 Vdout1_4ck194 = 1.0 time = 975
.meas tran vdout1_4ck194 FIND v(dout1_4) AT=975.025n

* CHECK dout1_5 Vdout1_5ck194 = 1.0 time = 975
.meas tran vdout1_5ck194 FIND v(dout1_5) AT=975.025n

* CHECK dout1_6 Vdout1_6ck194 = 0 time = 975
.meas tran vdout1_6ck194 FIND v(dout1_6) AT=975.025n

* CHECK dout1_7 Vdout1_7ck194 = 0 time = 975
.meas tran vdout1_7ck194 FIND v(dout1_7) AT=975.025n

* CHECK dout1_8 Vdout1_8ck194 = 1.0 time = 975
.meas tran vdout1_8ck194 FIND v(dout1_8) AT=975.025n

* CHECK dout1_9 Vdout1_9ck194 = 0 time = 975
.meas tran vdout1_9ck194 FIND v(dout1_9) AT=975.025n

* CHECK dout1_10 Vdout1_10ck194 = 0 time = 975
.meas tran vdout1_10ck194 FIND v(dout1_10) AT=975.025n

* CHECK dout1_11 Vdout1_11ck194 = 1.0 time = 975
.meas tran vdout1_11ck194 FIND v(dout1_11) AT=975.025n

* CHECK dout1_12 Vdout1_12ck194 = 0 time = 975
.meas tran vdout1_12ck194 FIND v(dout1_12) AT=975.025n

* CHECK dout1_0 Vdout1_0ck199 = 1.0 time = 1000
.meas tran vdout1_0ck199 FIND v(dout1_0) AT=1000.025n

* CHECK dout1_1 Vdout1_1ck199 = 0 time = 1000
.meas tran vdout1_1ck199 FIND v(dout1_1) AT=1000.025n

* CHECK dout1_2 Vdout1_2ck199 = 0 time = 1000
.meas tran vdout1_2ck199 FIND v(dout1_2) AT=1000.025n

* CHECK dout1_3 Vdout1_3ck199 = 1.0 time = 1000
.meas tran vdout1_3ck199 FIND v(dout1_3) AT=1000.025n

* CHECK dout1_4 Vdout1_4ck199 = 0 time = 1000
.meas tran vdout1_4ck199 FIND v(dout1_4) AT=1000.025n

* CHECK dout1_5 Vdout1_5ck199 = 0 time = 1000
.meas tran vdout1_5ck199 FIND v(dout1_5) AT=1000.025n

* CHECK dout1_6 Vdout1_6ck199 = 0 time = 1000
.meas tran vdout1_6ck199 FIND v(dout1_6) AT=1000.025n

* CHECK dout1_7 Vdout1_7ck199 = 1.0 time = 1000
.meas tran vdout1_7ck199 FIND v(dout1_7) AT=1000.025n

* CHECK dout1_8 Vdout1_8ck199 = 0 time = 1000
.meas tran vdout1_8ck199 FIND v(dout1_8) AT=1000.025n

* CHECK dout1_9 Vdout1_9ck199 = 1.0 time = 1000
.meas tran vdout1_9ck199 FIND v(dout1_9) AT=1000.025n

* CHECK dout1_10 Vdout1_10ck199 = 1.0 time = 1000
.meas tran vdout1_10ck199 FIND v(dout1_10) AT=1000.025n

* CHECK dout1_11 Vdout1_11ck199 = 0 time = 1000
.meas tran vdout1_11ck199 FIND v(dout1_11) AT=1000.025n

* CHECK dout1_12 Vdout1_12ck199 = 0 time = 1000
.meas tran vdout1_12ck199 FIND v(dout1_12) AT=1000.025n

* CHECK dout1_0 Vdout1_0ck200 = 1.0 time = 1005
.meas tran vdout1_0ck200 FIND v(dout1_0) AT=1005.025n

* CHECK dout1_1 Vdout1_1ck200 = 1.0 time = 1005
.meas tran vdout1_1ck200 FIND v(dout1_1) AT=1005.025n

* CHECK dout1_2 Vdout1_2ck200 = 1.0 time = 1005
.meas tran vdout1_2ck200 FIND v(dout1_2) AT=1005.025n

* CHECK dout1_3 Vdout1_3ck200 = 0 time = 1005
.meas tran vdout1_3ck200 FIND v(dout1_3) AT=1005.025n

* CHECK dout1_4 Vdout1_4ck200 = 1.0 time = 1005
.meas tran vdout1_4ck200 FIND v(dout1_4) AT=1005.025n

* CHECK dout1_5 Vdout1_5ck200 = 1.0 time = 1005
.meas tran vdout1_5ck200 FIND v(dout1_5) AT=1005.025n

* CHECK dout1_6 Vdout1_6ck200 = 0 time = 1005
.meas tran vdout1_6ck200 FIND v(dout1_6) AT=1005.025n

* CHECK dout1_7 Vdout1_7ck200 = 0 time = 1005
.meas tran vdout1_7ck200 FIND v(dout1_7) AT=1005.025n

* CHECK dout1_8 Vdout1_8ck200 = 1.0 time = 1005
.meas tran vdout1_8ck200 FIND v(dout1_8) AT=1005.025n

* CHECK dout1_9 Vdout1_9ck200 = 1.0 time = 1005
.meas tran vdout1_9ck200 FIND v(dout1_9) AT=1005.025n

* CHECK dout1_10 Vdout1_10ck200 = 1.0 time = 1005
.meas tran vdout1_10ck200 FIND v(dout1_10) AT=1005.025n

* CHECK dout1_11 Vdout1_11ck200 = 1.0 time = 1005
.meas tran vdout1_11ck200 FIND v(dout1_11) AT=1005.025n

* CHECK dout1_12 Vdout1_12ck200 = 1.0 time = 1005
.meas tran vdout1_12ck200 FIND v(dout1_12) AT=1005.025n

* CHECK dout1_0 Vdout1_0ck201 = 1.0 time = 1010
.meas tran vdout1_0ck201 FIND v(dout1_0) AT=1010.025n

* CHECK dout1_1 Vdout1_1ck201 = 0 time = 1010
.meas tran vdout1_1ck201 FIND v(dout1_1) AT=1010.025n

* CHECK dout1_2 Vdout1_2ck201 = 1.0 time = 1010
.meas tran vdout1_2ck201 FIND v(dout1_2) AT=1010.025n

* CHECK dout1_3 Vdout1_3ck201 = 1.0 time = 1010
.meas tran vdout1_3ck201 FIND v(dout1_3) AT=1010.025n

* CHECK dout1_4 Vdout1_4ck201 = 1.0 time = 1010
.meas tran vdout1_4ck201 FIND v(dout1_4) AT=1010.025n

* CHECK dout1_5 Vdout1_5ck201 = 0 time = 1010
.meas tran vdout1_5ck201 FIND v(dout1_5) AT=1010.025n

* CHECK dout1_6 Vdout1_6ck201 = 0 time = 1010
.meas tran vdout1_6ck201 FIND v(dout1_6) AT=1010.025n

* CHECK dout1_7 Vdout1_7ck201 = 0 time = 1010
.meas tran vdout1_7ck201 FIND v(dout1_7) AT=1010.025n

* CHECK dout1_8 Vdout1_8ck201 = 1.0 time = 1010
.meas tran vdout1_8ck201 FIND v(dout1_8) AT=1010.025n

* CHECK dout1_9 Vdout1_9ck201 = 0 time = 1010
.meas tran vdout1_9ck201 FIND v(dout1_9) AT=1010.025n

* CHECK dout1_10 Vdout1_10ck201 = 0 time = 1010
.meas tran vdout1_10ck201 FIND v(dout1_10) AT=1010.025n

* CHECK dout1_11 Vdout1_11ck201 = 0 time = 1010
.meas tran vdout1_11ck201 FIND v(dout1_11) AT=1010.025n

* CHECK dout1_12 Vdout1_12ck201 = 1.0 time = 1010
.meas tran vdout1_12ck201 FIND v(dout1_12) AT=1010.025n

* CHECK dout1_0 Vdout1_0ck202 = 1.0 time = 1015
.meas tran vdout1_0ck202 FIND v(dout1_0) AT=1015.025n

* CHECK dout1_1 Vdout1_1ck202 = 0 time = 1015
.meas tran vdout1_1ck202 FIND v(dout1_1) AT=1015.025n

* CHECK dout1_2 Vdout1_2ck202 = 1.0 time = 1015
.meas tran vdout1_2ck202 FIND v(dout1_2) AT=1015.025n

* CHECK dout1_3 Vdout1_3ck202 = 1.0 time = 1015
.meas tran vdout1_3ck202 FIND v(dout1_3) AT=1015.025n

* CHECK dout1_4 Vdout1_4ck202 = 1.0 time = 1015
.meas tran vdout1_4ck202 FIND v(dout1_4) AT=1015.025n

* CHECK dout1_5 Vdout1_5ck202 = 0 time = 1015
.meas tran vdout1_5ck202 FIND v(dout1_5) AT=1015.025n

* CHECK dout1_6 Vdout1_6ck202 = 0 time = 1015
.meas tran vdout1_6ck202 FIND v(dout1_6) AT=1015.025n

* CHECK dout1_7 Vdout1_7ck202 = 0 time = 1015
.meas tran vdout1_7ck202 FIND v(dout1_7) AT=1015.025n

* CHECK dout1_8 Vdout1_8ck202 = 1.0 time = 1015
.meas tran vdout1_8ck202 FIND v(dout1_8) AT=1015.025n

* CHECK dout1_9 Vdout1_9ck202 = 0 time = 1015
.meas tran vdout1_9ck202 FIND v(dout1_9) AT=1015.025n

* CHECK dout1_10 Vdout1_10ck202 = 0 time = 1015
.meas tran vdout1_10ck202 FIND v(dout1_10) AT=1015.025n

* CHECK dout1_11 Vdout1_11ck202 = 0 time = 1015
.meas tran vdout1_11ck202 FIND v(dout1_11) AT=1015.025n

* CHECK dout1_12 Vdout1_12ck202 = 1.0 time = 1015
.meas tran vdout1_12ck202 FIND v(dout1_12) AT=1015.025n

* CHECK dout1_0 Vdout1_0ck204 = 0 time = 1025
.meas tran vdout1_0ck204 FIND v(dout1_0) AT=1025.025n

* CHECK dout1_1 Vdout1_1ck204 = 0 time = 1025
.meas tran vdout1_1ck204 FIND v(dout1_1) AT=1025.025n

* CHECK dout1_2 Vdout1_2ck204 = 0 time = 1025
.meas tran vdout1_2ck204 FIND v(dout1_2) AT=1025.025n

* CHECK dout1_3 Vdout1_3ck204 = 0 time = 1025
.meas tran vdout1_3ck204 FIND v(dout1_3) AT=1025.025n

* CHECK dout1_4 Vdout1_4ck204 = 0 time = 1025
.meas tran vdout1_4ck204 FIND v(dout1_4) AT=1025.025n

* CHECK dout1_5 Vdout1_5ck204 = 0 time = 1025
.meas tran vdout1_5ck204 FIND v(dout1_5) AT=1025.025n

* CHECK dout1_6 Vdout1_6ck204 = 1.0 time = 1025
.meas tran vdout1_6ck204 FIND v(dout1_6) AT=1025.025n

* CHECK dout1_7 Vdout1_7ck204 = 1.0 time = 1025
.meas tran vdout1_7ck204 FIND v(dout1_7) AT=1025.025n

* CHECK dout1_8 Vdout1_8ck204 = 1.0 time = 1025
.meas tran vdout1_8ck204 FIND v(dout1_8) AT=1025.025n

* CHECK dout1_9 Vdout1_9ck204 = 1.0 time = 1025
.meas tran vdout1_9ck204 FIND v(dout1_9) AT=1025.025n

* CHECK dout1_10 Vdout1_10ck204 = 0 time = 1025
.meas tran vdout1_10ck204 FIND v(dout1_10) AT=1025.025n

* CHECK dout1_11 Vdout1_11ck204 = 0 time = 1025
.meas tran vdout1_11ck204 FIND v(dout1_11) AT=1025.025n

* CHECK dout1_12 Vdout1_12ck204 = 0 time = 1025
.meas tran vdout1_12ck204 FIND v(dout1_12) AT=1025.025n

* probe is used for hspice/xa, while plot is used in ngspice
.plot V(*)
.end

