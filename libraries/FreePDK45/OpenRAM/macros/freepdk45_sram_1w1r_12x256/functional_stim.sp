* Functional test stimulus file for 5ns period

* TT process corner
.include "/freepdk45/ncsu_basekit/models/hspice/tran_models/models_nom/PMOS_VTG.inc"
.include "/freepdk45/ncsu_basekit/models/hspice/tran_models/models_nom/NMOS_VTG.inc"
.include "freepdk45_sram_1w1r_12x256.sp"

* Global Power Supplies
Vvdd vdd 0 1.0

*Nodes gnd and 0 are the same global ground node in ngspice/hspice/xa. Otherwise, this source may be needed.
*Vgnd gnd 0 0.0

* Instantiation of the SRAM
Xfreepdk45_sram_1w1r_12x256 din0_0 din0_1 din0_2 din0_3 din0_4 din0_5 din0_6 din0_7 din0_8 din0_9 din0_10 din0_11 a0_0 a0_1 a0_2 a0_3 a0_4 a0_5 a0_6 a0_7 a1_0 a1_1 a1_2 a1_3 a1_4 a1_5 a1_6 a1_7 CSB0 CSB1 clk0 clk1 dout1_0 dout1_1 dout1_2 dout1_3 dout1_4 dout1_5 dout1_6 dout1_7 dout1_8 dout1_9 dout1_10 dout1_11 vdd gnd freepdk45_sram_1w1r_12x256

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


* Important signals for debug
* bl:	xfreepdk45_sram_1w1r_12x256.xbank0.bl_1_0
* br:	xfreepdk45_sram_1w1r_12x256.xbank0.br_1_0
* s_en:	xfreepdk45_sram_1w1r_12x256.s_en
* q:	xfreepdk45_sram_1w1r_12x256.xbank0.xbitcell_array.xbitcell_array.xbit_r0_c0.Q
* qbar:	xfreepdk45_sram_1w1r_12x256.xbank0.xbitcell_array.xbitcell_array.xbit_r0_c0.Q_bar


* Sequence of operations
*	Idle during cycle 0 (0ns - 5ns)
*	Writing 001111000111  to  address 00000010 (from port 0) during cycle 1 (5ns - 10ns)
*	Writing 000011110110  to  address 00000000 (from port 0) during cycle 2 (10ns - 15ns)
*	Writing 011010011000  to  address 11111011 (from port 0) during cycle 3 (15ns - 20ns)
*	Reading 011010011000 from address 11111011 (from port 1) during cycle 4 (20ns - 25ns)
*	Reading 000011110110 from address 00000000 (from port 1) during cycle 5 (25ns - 30ns)
*	Reading 011010011000 from address 11111011 (from port 1) during cycle 6 (30ns - 35ns)
*	Writing 010110101100  to  address 11111011 (from port 0) during cycle 8 (40ns - 45ns)
*	Reading 000011110110 from address 00000000 (from port 1) during cycle 8 (40ns - 45ns)
*	Reading 000011110110 from address 00000000 (from port 1) during cycle 9 (45ns - 50ns)
*	Writing 111001101101  to  address 11111011 (from port 0) during cycle 10 (50ns - 55ns)
*	Reading 001111000111 from address 00000010 (from port 1) during cycle 11 (55ns - 60ns)
*	Writing 110110010010  to  address 11111110 (from port 0) during cycle 13 (65ns - 70ns)
*	Reading 111001101101 from address 11111011 (from port 1) during cycle 13 (65ns - 70ns)
*	Writing 011110000110  to  address 11111101 (from port 0) during cycle 14 (70ns - 75ns)
*	Writing 010111010101  to  address 00000000 (from port 0) during cycle 15 (75ns - 80ns)
*	Reading 011110000110 from address 11111101 (from port 1) during cycle 15 (75ns - 80ns)
*	Writing 000000000001  to  address 00000000 (from port 0) during cycle 16 (80ns - 85ns)
*	Reading 011110000110 from address 11111101 (from port 1) during cycle 16 (80ns - 85ns)
*	Reading 001111000111 from address 00000010 (from port 1) during cycle 17 (85ns - 90ns)
*	Writing 011001010000  to  address 00000010 (from port 0) during cycle 18 (90ns - 95ns)
*	Writing 010011011110  to  address 11111101 (from port 0) during cycle 19 (95ns - 100ns)
*	Reading 111001101101 from address 11111011 (from port 1) during cycle 20 (100ns - 105ns)
*	Writing 111111010101  to  address 00000001 (from port 0) during cycle 22 (110ns - 115ns)
*	Reading 000000000001 from address 00000000 (from port 1) during cycle 22 (110ns - 115ns)
*	Reading 010011011110 from address 11111101 (from port 1) during cycle 23 (115ns - 120ns)
*	Writing 000010100100  to  address 11111100 (from port 0) during cycle 24 (120ns - 125ns)
*	Reading 000010100100 from address 11111100 (from port 1) during cycle 25 (125ns - 130ns)
*	Reading 000000000001 from address 00000000 (from port 1) during cycle 26 (130ns - 135ns)
*	Reading 011001010000 from address 00000010 (from port 1) during cycle 28 (140ns - 145ns)
*	Reading 000010100100 from address 11111100 (from port 1) during cycle 29 (145ns - 150ns)
*	Writing 100011101100  to  address 11111011 (from port 0) during cycle 31 (155ns - 160ns)
*	Writing 101001100001  to  address 00000011 (from port 0) during cycle 33 (165ns - 170ns)
*	Writing 101001000011  to  address 11111011 (from port 0) during cycle 34 (170ns - 175ns)
*	Reading 000000000001 from address 00000000 (from port 1) during cycle 36 (180ns - 185ns)
*	Writing 100111000110  to  address 00000011 (from port 0) during cycle 38 (190ns - 195ns)
*	Reading 010011011110 from address 11111101 (from port 1) during cycle 39 (195ns - 200ns)
*	Reading 000010100100 from address 11111100 (from port 1) during cycle 40 (200ns - 205ns)
*	Writing 001011011110  to  address 00000010 (from port 0) during cycle 41 (205ns - 210ns)
*	Writing 000000000100  to  address 00000000 (from port 0) during cycle 42 (210ns - 215ns)
*	Reading 010011011110 from address 11111101 (from port 1) during cycle 42 (210ns - 215ns)
*	Writing 011101100110  to  address 00000011 (from port 0) during cycle 46 (230ns - 235ns)
*	Reading 010011011110 from address 11111101 (from port 1) during cycle 48 (240ns - 245ns)
*	Writing 010110110110  to  address 00000000 (from port 0) during cycle 50 (250ns - 255ns)
*	Writing 100000010111  to  address 00000001 (from port 0) during cycle 51 (255ns - 260ns)
*	Writing 100000010110  to  address 00000011 (from port 0) during cycle 53 (265ns - 270ns)
*	Writing 010000100010  to  address 00000000 (from port 0) during cycle 54 (270ns - 275ns)
*	Reading 001011011110 from address 00000010 (from port 1) during cycle 54 (270ns - 275ns)
*	Reading 100000010110 from address 00000011 (from port 1) during cycle 56 (280ns - 285ns)
*	Reading 001011011110 from address 00000010 (from port 1) during cycle 57 (285ns - 290ns)
*	Writing 111101101111  to  address 11111011 (from port 0) during cycle 58 (290ns - 295ns)
*	Reading 111101101111 from address 11111011 (from port 1) during cycle 60 (300ns - 305ns)
*	Writing 101111001010  to  address 11111011 (from port 0) during cycle 61 (305ns - 310ns)
*	Writing 001001111111  to  address 11111101 (from port 0) during cycle 62 (310ns - 315ns)
*	Writing 101010110011  to  address 11111101 (from port 0) during cycle 63 (315ns - 320ns)
*	Reading 000010100100 from address 11111100 (from port 1) during cycle 63 (315ns - 320ns)
*	Writing 001100011000  to  address 11111100 (from port 0) during cycle 64 (320ns - 325ns)
*	Writing 010101011110  to  address 11111011 (from port 0) during cycle 65 (325ns - 330ns)
*	Reading 100000010110 from address 00000011 (from port 1) during cycle 65 (325ns - 330ns)
*	Writing 101101000110  to  address 11111110 (from port 0) during cycle 66 (330ns - 335ns)
*	Writing 000101101111  to  address 11111011 (from port 0) during cycle 67 (335ns - 340ns)
*	Reading 101010110011 from address 11111101 (from port 1) during cycle 69 (345ns - 350ns)
*	Writing 101111010011  to  address 11111100 (from port 0) during cycle 70 (350ns - 355ns)
*	Reading 100000010110 from address 00000011 (from port 1) during cycle 70 (350ns - 355ns)
*	Reading 010000100010 from address 00000000 (from port 1) during cycle 71 (355ns - 360ns)
*	Writing 101010010101  to  address 00000010 (from port 0) during cycle 72 (360ns - 365ns)
*	Reading 100000010110 from address 00000011 (from port 1) during cycle 72 (360ns - 365ns)
*	Writing 001110110110  to  address 00000000 (from port 0) during cycle 76 (380ns - 385ns)
*	Writing 100010011111  to  address 11111011 (from port 0) during cycle 77 (385ns - 390ns)
*	Writing 111000010110  to  address 11111110 (from port 0) during cycle 79 (395ns - 400ns)
*	Writing 010110110100  to  address 11111100 (from port 0) during cycle 80 (400ns - 405ns)
*	Reading 101010010101 from address 00000010 (from port 1) during cycle 80 (400ns - 405ns)
*	Writing 001111110010  to  address 11111011 (from port 0) during cycle 81 (405ns - 410ns)
*	Reading 100000010110 from address 00000011 (from port 1) during cycle 81 (405ns - 410ns)
*	Writing 101001100001  to  address 00000001 (from port 0) during cycle 82 (410ns - 415ns)
*	Reading 101010010101 from address 00000010 (from port 1) during cycle 82 (410ns - 415ns)
*	Writing 010010101110  to  address 11111101 (from port 0) during cycle 83 (415ns - 420ns)
*	Reading 001110110110 from address 00000000 (from port 1) during cycle 83 (415ns - 420ns)
*	Writing 110010101010  to  address 00000001 (from port 0) during cycle 84 (420ns - 425ns)
*	Reading 110010101010 from address 00000001 (from port 1) during cycle 85 (425ns - 430ns)
*	Reading 111000010110 from address 11111110 (from port 1) during cycle 87 (435ns - 440ns)
*	Writing 100111100010  to  address 11111100 (from port 0) during cycle 89 (445ns - 450ns)
*	Reading 010010101110 from address 11111101 (from port 1) during cycle 89 (445ns - 450ns)
*	Reading 001110110110 from address 00000000 (from port 1) during cycle 92 (460ns - 465ns)
*	Writing 001010000110  to  address 11111110 (from port 0) during cycle 93 (465ns - 470ns)
*	Reading 101010010101 from address 00000010 (from port 1) during cycle 93 (465ns - 470ns)
*	Writing 000111010111  to  address 11111011 (from port 0) during cycle 95 (475ns - 480ns)
*	Writing 000111001010  to  address 00000000 (from port 0) during cycle 96 (480ns - 485ns)
*	Reading 100111100010 from address 11111100 (from port 1) during cycle 96 (480ns - 485ns)
*	Reading 000111010111 from address 11111011 (from port 1) during cycle 97 (485ns - 490ns)
*	Writing 100100010000  to  address 00000001 (from port 0) during cycle 98 (490ns - 495ns)
*	Writing 010001101100  to  address 00000010 (from port 0) during cycle 99 (495ns - 500ns)
*	Writing 000101100000  to  address 00000000 (from port 0) during cycle 100 (500ns - 505ns)
*	Reading 100111100010 from address 11111100 (from port 1) during cycle 100 (500ns - 505ns)
*	Reading 000111010111 from address 11111011 (from port 1) during cycle 101 (505ns - 510ns)
*	Reading 000101100000 from address 00000000 (from port 1) during cycle 102 (510ns - 515ns)
*	Reading 100111100010 from address 11111100 (from port 1) during cycle 105 (525ns - 530ns)
*	Writing 000101101011  to  address 11111100 (from port 0) during cycle 106 (530ns - 535ns)
*	Writing 111011011010  to  address 00000011 (from port 0) during cycle 108 (540ns - 545ns)
*	Reading 001010000110 from address 11111110 (from port 1) during cycle 108 (540ns - 545ns)
*	Writing 001101100010  to  address 11111101 (from port 0) during cycle 110 (550ns - 555ns)
*	Reading 000111010111 from address 11111011 (from port 1) during cycle 110 (550ns - 555ns)
*	Writing 010101000001  to  address 11111110 (from port 0) during cycle 112 (560ns - 565ns)
*	Writing 100110010100  to  address 00000001 (from port 0) during cycle 115 (575ns - 580ns)
*	Reading 000111010111 from address 11111011 (from port 1) during cycle 115 (575ns - 580ns)
*	Writing 001101100110  to  address 11111011 (from port 0) during cycle 116 (580ns - 585ns)
*	Reading 111011011010 from address 00000011 (from port 1) during cycle 117 (585ns - 590ns)
*	Writing 101000010000  to  address 00000010 (from port 0) during cycle 118 (590ns - 595ns)
*	Reading 001101100110 from address 11111011 (from port 1) during cycle 118 (590ns - 595ns)
*	Writing 101000111100  to  address 00000010 (from port 0) during cycle 119 (595ns - 600ns)
*	Reading 111011011010 from address 00000011 (from port 1) during cycle 119 (595ns - 600ns)
*	Writing 001100111111  to  address 00000010 (from port 0) during cycle 120 (600ns - 605ns)
*	Writing 100001100111  to  address 11111101 (from port 0) during cycle 123 (615ns - 620ns)
*	Writing 110000011010  to  address 11111101 (from port 0) during cycle 125 (625ns - 630ns)
*	Reading 010101000001 from address 11111110 (from port 1) during cycle 125 (625ns - 630ns)
*	Writing 010010010010  to  address 11111110 (from port 0) during cycle 126 (630ns - 635ns)
*	Reading 100110010100 from address 00000001 (from port 1) during cycle 126 (630ns - 635ns)
*	Reading 001101100110 from address 11111011 (from port 1) during cycle 127 (635ns - 640ns)
*	Writing 111101110110  to  address 00000001 (from port 0) during cycle 129 (645ns - 650ns)
*	Reading 000101100000 from address 00000000 (from port 1) during cycle 129 (645ns - 650ns)
*	Writing 010001001110  to  address 11111110 (from port 0) during cycle 131 (655ns - 660ns)
*	Writing 110111000111  to  address 11111101 (from port 0) during cycle 134 (670ns - 675ns)
*	Reading 001100111111 from address 00000010 (from port 1) during cycle 134 (670ns - 675ns)
*	Writing 000111000110  to  address 00000000 (from port 0) during cycle 138 (690ns - 695ns)
*	Reading 111011011010 from address 00000011 (from port 1) during cycle 138 (690ns - 695ns)
*	Writing 011111110110  to  address 11111110 (from port 0) during cycle 139 (695ns - 700ns)
*	Writing 000011101000  to  address 11111110 (from port 0) during cycle 140 (700ns - 705ns)
*	Writing 100100000101  to  address 00000010 (from port 0) during cycle 142 (710ns - 715ns)
*	Reading 111101110110 from address 00000001 (from port 1) during cycle 142 (710ns - 715ns)
*	Writing 110010111111  to  address 00000010 (from port 0) during cycle 143 (715ns - 720ns)
*	Writing 010010101101  to  address 11111110 (from port 0) during cycle 144 (720ns - 725ns)
*	Reading 111101110110 from address 00000001 (from port 1) during cycle 144 (720ns - 725ns)
*	Writing 011010101001  to  address 11111011 (from port 0) during cycle 145 (725ns - 730ns)
*	Reading 000111000110 from address 00000000 (from port 1) during cycle 145 (725ns - 730ns)
*	Writing 010110110101  to  address 11111101 (from port 0) during cycle 148 (740ns - 745ns)
*	Writing 001001101111  to  address 11111101 (from port 0) during cycle 149 (745ns - 750ns)
*	Writing 011010000101  to  address 00000001 (from port 0) during cycle 151 (755ns - 760ns)
*	Reading 111011011010 from address 00000011 (from port 1) during cycle 151 (755ns - 760ns)
*	Writing 101101000010  to  address 00000000 (from port 0) during cycle 154 (770ns - 775ns)
*	Writing 000000100100  to  address 11111011 (from port 0) during cycle 155 (775ns - 780ns)
*	Reading 010010101101 from address 11111110 (from port 1) during cycle 155 (775ns - 780ns)
*	Writing 101101101110  to  address 00000011 (from port 0) during cycle 156 (780ns - 785ns)
*	Writing 000111001101  to  address 11111011 (from port 0) during cycle 157 (785ns - 790ns)
*	Writing 101001100110  to  address 11111110 (from port 0) during cycle 159 (795ns - 800ns)
*	Writing 111000001011  to  address 00000001 (from port 0) during cycle 160 (800ns - 805ns)
*	Reading 110010111111 from address 00000010 (from port 1) during cycle 160 (800ns - 805ns)
*	Writing 101000001111  to  address 00000000 (from port 0) during cycle 162 (810ns - 815ns)
*	Reading 101001100110 from address 11111110 (from port 1) during cycle 162 (810ns - 815ns)
*	Writing 001101110100  to  address 00000011 (from port 0) during cycle 164 (820ns - 825ns)
*	Reading 101001100110 from address 11111110 (from port 1) during cycle 164 (820ns - 825ns)
*	Reading 110010111111 from address 00000010 (from port 1) during cycle 166 (830ns - 835ns)
*	Writing 111011000000  to  address 11111100 (from port 0) during cycle 167 (835ns - 840ns)
*	Reading 001101110100 from address 00000011 (from port 1) during cycle 167 (835ns - 840ns)
*	Writing 001000000010  to  address 11111101 (from port 0) during cycle 169 (845ns - 850ns)
*	Writing 111111011011  to  address 00000011 (from port 0) during cycle 170 (850ns - 855ns)
*	Reading 001000000010 from address 11111101 (from port 1) during cycle 171 (855ns - 860ns)
*	Writing 100001001010  to  address 00000000 (from port 0) during cycle 172 (860ns - 865ns)
*	Writing 010111011110  to  address 00000000 (from port 0) during cycle 173 (865ns - 870ns)
*	Writing 011111100001  to  address 00000000 (from port 0) during cycle 174 (870ns - 875ns)
*	Reading 000111001101 from address 11111011 (from port 1) during cycle 175 (875ns - 880ns)
*	Reading 001000000010 from address 11111101 (from port 1) during cycle 176 (880ns - 885ns)
*	Writing 100010011100  to  address 11111100 (from port 0) during cycle 177 (885ns - 890ns)
*	Reading 000111001101 from address 11111011 (from port 1) during cycle 178 (890ns - 895ns)
*	Reading 111000001011 from address 00000001 (from port 1) during cycle 179 (895ns - 900ns)
*	Reading 000111001101 from address 11111011 (from port 1) during cycle 181 (905ns - 910ns)
*	Reading 110010111111 from address 00000010 (from port 1) during cycle 183 (915ns - 920ns)
*	Reading 011111100001 from address 00000000 (from port 1) during cycle 184 (920ns - 925ns)
*	Reading 111111011011 from address 00000011 (from port 1) during cycle 185 (925ns - 930ns)
*	Writing 011010110011  to  address 11111011 (from port 0) during cycle 187 (935ns - 940ns)
*	Writing 100011110110  to  address 11111110 (from port 0) during cycle 188 (940ns - 945ns)
*	Writing 101000110010  to  address 00000000 (from port 0) during cycle 190 (950ns - 955ns)
*	Writing 101011011111  to  address 00000010 (from port 0) during cycle 191 (955ns - 960ns)
*	Reading 101000110010 from address 00000000 (from port 1) during cycle 191 (955ns - 960ns)
*	Writing 001101111101  to  address 00000011 (from port 0) during cycle 192 (960ns - 965ns)
*	Reading 101011011111 from address 00000010 (from port 1) during cycle 192 (960ns - 965ns)
*	Reading 101011011111 from address 00000010 (from port 1) during cycle 194 (970ns - 975ns)
*	Writing 110100011010  to  address 00000000 (from port 0) during cycle 195 (975ns - 980ns)
*	Reading 111000001011 from address 00000001 (from port 1) during cycle 195 (975ns - 980ns)
*	Writing 001010010101  to  address 00000001 (from port 0) during cycle 197 (985ns - 990ns)
*	Reading 011010110011 from address 11111011 (from port 1) during cycle 197 (985ns - 990ns)
*	Writing 100011101000  to  address 00000001 (from port 0) during cycle 199 (995ns - 1000ns)
*	Reading 001101111101 from address 00000011 (from port 1) during cycle 199 (995ns - 1000ns)
*	Writing 110110001011  to  address 00000000 (from port 0) during cycle 201 (1005ns - 1010ns)
*	Writing 100101011111  to  address 11111011 (from port 0) during cycle 202 (1010ns - 1015ns)
*	Reading 001000000010 from address 11111101 (from port 1) during cycle 202 (1010ns - 1015ns)
*	Writing 100010110000  to  address 11111011 (from port 0) during cycle 203 (1015ns - 1020ns)
*	Writing 001011001011  to  address 11111011 (from port 0) during cycle 204 (1020ns - 1025ns)
*	Idle during cycle 205 (1025ns - 1030ns)

* Generation of data and address signals
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 1), (55, 1), (60, 1), (65, 0), (70, 0), (75, 1), (80, 1), (85, 1), (90, 0), (95, 0), (100, 0), (105, 0), (110, 1), (115, 1), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 1), (260, 1), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 1), (295, 1), (300, 1), (305, 0), (310, 1), (315, 1), (320, 0), (325, 0), (330, 0), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 0), (385, 1), (390, 1), (395, 0), (400, 0), (405, 0), (410, 1), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 0), (475, 1), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 1), (535, 1), (540, 0), (545, 0), (550, 0), (555, 0), (560, 1), (565, 1), (570, 1), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 1), (675, 1), (680, 1), (685, 1), (690, 0), (695, 0), (700, 0), (705, 0), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 0), (775, 0), (780, 0), (785, 1), (790, 1), (795, 0), (800, 1), (805, 1), (810, 1), (815, 1), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 1), (855, 1), (860, 0), (865, 0), (870, 1), (875, 1), (880, 1), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 1), (940, 0), (945, 0), (950, 0), (955, 1), (960, 1), (965, 1), (970, 1), (975, 0), (980, 0), (985, 1), (990, 1), (995, 0), (1000, 0), (1005, 1), (1010, 1), (1015, 0), (1020, 1), (1025, 1)]
Vdin0_0  din0_0  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 0.0v 309.745n 0.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 0.0v 384.745n 0.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.0v 414.745n 1.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 1.0v 479.745n 1.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 0.0v 799.745n 0.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 1.0v 939.745n 1.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 1), (70, 1), (75, 0), (80, 0), (85, 0), (90, 0), (95, 1), (100, 1), (105, 1), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 1), (210, 0), (215, 0), (220, 0), (225, 0), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 0), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 0), (365, 0), (370, 0), (375, 0), (380, 1), (385, 1), (390, 1), (395, 1), (400, 0), (405, 1), (410, 0), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 0), (565, 0), (570, 0), (575, 0), (580, 1), (585, 1), (590, 0), (595, 0), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 0), (705, 0), (710, 0), (715, 1), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 1), (750, 1), (755, 0), (760, 0), (765, 0), (770, 1), (775, 0), (780, 1), (785, 0), (790, 0), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 1), (940, 1), (945, 1), (950, 1), (955, 1), (960, 0), (965, 0), (970, 0), (975, 1), (980, 1), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 1), (1010, 1), (1015, 0), (1020, 1), (1025, 1)]
Vdin0_1  din0_1  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 0.0v 324.745n 0.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 0.0v 404.745n 0.0v 404.755n 1.0v 409.745n 1.0v 409.755n 0.0v 414.745n 0.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 1.0v 719.745n 1.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.0v 774.745n 1.0v 774.755n 0.0v 779.745n 0.0v 779.755n 1.0v 784.745n 1.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 0), (70, 1), (75, 1), (80, 0), (85, 0), (90, 0), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 1), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 0), (275, 0), (280, 0), (285, 0), (290, 1), (295, 1), (300, 1), (305, 0), (310, 1), (315, 0), (320, 0), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 0), (355, 0), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 0), (410, 0), (415, 1), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 1), (470, 1), (475, 1), (480, 0), (485, 0), (490, 0), (495, 1), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 1), (580, 1), (585, 1), (590, 0), (595, 1), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 0), (630, 0), (635, 0), (640, 0), (645, 1), (650, 1), (655, 1), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 0), (705, 0), (710, 1), (715, 1), (720, 1), (725, 0), (730, 0), (735, 0), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 0), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 0), (805, 0), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 1), (870, 0), (875, 0), (880, 0), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 0), (940, 1), (945, 1), (950, 0), (955, 1), (960, 1), (965, 1), (970, 1), (975, 0), (980, 0), (985, 1), (990, 1), (995, 0), (1000, 0), (1005, 0), (1010, 1), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_2  din0_2  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 0.0v 69.745n 0.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 0.0v 309.745n 0.0v 309.755n 1.0v 314.745n 1.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 1.0v 419.745n 1.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 1.0v 499.745n 1.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 0.0v 774.745n 0.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 1.0v 869.745n 1.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 0.0v 939.745n 0.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 1), (100, 1), (105, 1), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 1), (160, 1), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 1), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 0), (320, 1), (325, 1), (330, 0), (335, 1), (340, 1), (345, 1), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 1), (390, 1), (395, 0), (400, 0), (405, 0), (410, 0), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 1), (485, 1), (490, 0), (495, 1), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 1), (535, 1), (540, 1), (545, 1), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 1), (600, 1), (605, 1), (610, 1), (615, 0), (620, 0), (625, 1), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 1), (660, 1), (665, 1), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 1), (705, 1), (710, 0), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 0), (745, 1), (750, 1), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 1), (785, 1), (790, 1), (795, 0), (800, 1), (805, 1), (810, 1), (815, 1), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 1), (855, 1), (860, 1), (865, 1), (870, 0), (875, 0), (880, 0), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 0), (940, 0), (945, 0), (950, 0), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 0), (990, 0), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 0), (1020, 1), (1025, 1)]
Vdin0_3  din0_3  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 1.0v 209.745n 1.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 0.0v 319.745n 0.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 0.0v 334.745n 0.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 0.0v 494.745n 0.0v 494.755n 1.0v 499.745n 1.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 1.0v 629.745n 1.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 0.0v 714.745n 0.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 0.0v 744.745n 0.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 0.0v 799.745n 0.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 1), (70, 0), (75, 1), (80, 0), (85, 0), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 1), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 1), (255, 1), (260, 1), (265, 1), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 1), (315, 1), (320, 1), (325, 1), (330, 0), (335, 0), (340, 0), (345, 0), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 0), (475, 1), (480, 0), (485, 0), (490, 1), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 1), (545, 1), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 1), (580, 0), (585, 0), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 0), (620, 0), (625, 1), (630, 1), (635, 1), (640, 1), (645, 1), (650, 1), (655, 0), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 1), (700, 0), (705, 0), (710, 0), (715, 1), (720, 0), (725, 0), (730, 0), (735, 0), (740, 1), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 1), (825, 1), (830, 1), (835, 0), (840, 0), (845, 0), (850, 1), (855, 1), (860, 0), (865, 1), (870, 0), (875, 0), (880, 0), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 1), (945, 1), (950, 1), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 1), (995, 0), (1000, 0), (1005, 0), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Vdin0_4  din0_4  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 1.0v 69.745n 1.0v 69.755n 0.0v 74.745n 0.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 1.0v 209.745n 1.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 1.0v 479.745n 1.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.0v 494.745n 1.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 1.0v 579.745n 1.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 1.0v 719.745n 1.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 1.0v 744.745n 1.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 0.0v 864.745n 0.0v 864.755n 1.0v 869.745n 1.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 0), (260, 0), (265, 0), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 0), (310, 1), (315, 1), (320, 0), (325, 0), (330, 0), (335, 1), (340, 1), (345, 1), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 1), (385, 0), (390, 0), (395, 0), (400, 1), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 0), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 0), (545, 0), (550, 1), (555, 1), (560, 0), (565, 0), (570, 0), (575, 0), (580, 1), (585, 1), (590, 0), (595, 1), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 0), (630, 0), (635, 0), (640, 0), (645, 1), (650, 1), (655, 0), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 1), (700, 1), (705, 1), (710, 0), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 0), (760, 0), (765, 0), (770, 0), (775, 1), (780, 1), (785, 0), (790, 0), (795, 1), (800, 0), (805, 0), (810, 0), (815, 0), (820, 1), (825, 1), (830, 1), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 1), (875, 1), (880, 1), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 1), (940, 1), (945, 1), (950, 1), (955, 0), (960, 1), (965, 1), (970, 1), (975, 0), (980, 0), (985, 0), (990, 0), (995, 1), (1000, 1), (1005, 0), (1010, 0), (1015, 1), (1020, 0), (1025, 0)]
Vdin0_5  din0_5  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.0v 14.745n 1.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 0.0v 309.745n 0.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 1.0v 384.745n 1.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 0.0v 714.745n 0.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 0.0v 959.745n 0.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 1), (55, 1), (60, 1), (65, 0), (70, 0), (75, 1), (80, 0), (85, 0), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 1), (210, 0), (215, 0), (220, 0), (225, 0), (230, 1), (235, 1), (240, 1), (245, 1), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 0), (320, 0), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 1), (410, 1), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 1), (450, 1), (455, 1), (460, 1), (465, 0), (470, 0), (475, 1), (480, 1), (485, 1), (490, 0), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 0), (580, 1), (585, 1), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 1), (620, 1), (625, 0), (630, 0), (635, 0), (640, 0), (645, 1), (650, 1), (655, 1), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 1), (750, 1), (755, 0), (760, 0), (765, 0), (770, 1), (775, 0), (780, 1), (785, 1), (790, 1), (795, 1), (800, 0), (805, 0), (810, 0), (815, 0), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 0), (850, 1), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 1), (945, 1), (950, 0), (955, 1), (960, 1), (965, 1), (970, 1), (975, 0), (980, 0), (985, 0), (990, 0), (995, 1), (1000, 1), (1005, 0), (1010, 1), (1015, 0), (1020, 1), (1025, 1)]
Vdin0_6  din0_6  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 0.0v 494.745n 0.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.0v 774.745n 1.0v 774.755n 0.0v 779.745n 0.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 0.0v 849.745n 0.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 0), (55, 0), (60, 0), (65, 1), (70, 1), (75, 1), (80, 0), (85, 0), (90, 0), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 1), (195, 1), (200, 1), (205, 1), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 1), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 1), (310, 0), (315, 1), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 0), (400, 1), (405, 1), (410, 0), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 1), (545, 1), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 1), (580, 0), (585, 0), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 1), (635, 1), (640, 1), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 0), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 1), (745, 0), (750, 0), (755, 1), (760, 1), (765, 1), (770, 0), (775, 0), (780, 0), (785, 1), (790, 1), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 1), (840, 1), (845, 0), (850, 1), (855, 1), (860, 0), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 1), (945, 1), (950, 0), (955, 1), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 0), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_7  din0_7  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 1.0v 254.745n 1.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 1.0v 309.745n 1.0v 309.755n 0.0v 314.745n 0.0v 314.755n 1.0v 319.745n 1.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 0.0v 414.745n 0.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 1.0v 579.745n 1.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 0.0v 714.745n 0.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 0.0v 849.745n 0.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 0.0v 864.745n 0.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 1.0v 959.745n 1.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 1), (45, 1), (50, 0), (55, 0), (60, 0), (65, 1), (70, 1), (75, 1), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 1), (115, 1), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 1), (195, 1), (200, 1), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 1), (295, 1), (300, 1), (305, 1), (310, 0), (315, 0), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 0), (365, 0), (370, 0), (375, 0), (380, 1), (385, 0), (390, 0), (395, 0), (400, 1), (405, 1), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 1), (450, 1), (455, 1), (460, 1), (465, 0), (470, 0), (475, 1), (480, 1), (485, 1), (490, 1), (495, 0), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 0), (545, 0), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 1), (585, 1), (590, 0), (595, 0), (600, 1), (605, 1), (610, 1), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 1), (650, 1), (655, 0), (660, 0), (665, 0), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 0), (705, 0), (710, 1), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 1), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 1), (775, 0), (780, 1), (785, 1), (790, 1), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 1), (825, 1), (830, 1), (835, 0), (840, 0), (845, 0), (850, 1), (855, 1), (860, 0), (865, 1), (870, 1), (875, 1), (880, 1), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 1), (1010, 1), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_8  din0_8  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 1.0v 384.745n 1.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 0.0v 499.745n 0.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 1.0v 714.745n 1.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 1.0v 744.745n 1.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.0v 774.745n 1.0v 774.755n 0.0v 779.745n 0.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 0.0v 864.745n 0.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 0), (45, 0), (50, 1), (55, 1), (60, 1), (65, 0), (70, 1), (75, 0), (80, 0), (85, 0), (90, 1), (95, 0), (100, 0), (105, 0), (110, 1), (115, 1), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 0), (195, 0), (200, 0), (205, 1), (210, 0), (215, 0), (220, 0), (225, 0), (230, 1), (235, 1), (240, 1), (245, 1), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 0), (330, 1), (335, 0), (340, 0), (345, 0), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 0), (390, 0), (395, 1), (400, 0), (405, 1), (410, 1), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 1), (470, 1), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 1), (545, 1), (550, 1), (555, 1), (560, 0), (565, 0), (570, 0), (575, 0), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 1), (650, 1), (655, 0), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 1), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 1), (735, 1), (740, 0), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 1), (775, 0), (780, 1), (785, 0), (790, 0), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 0), (865, 0), (870, 1), (875, 1), (880, 1), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 1), (940, 0), (945, 0), (950, 1), (955, 1), (960, 1), (965, 1), (970, 1), (975, 0), (980, 0), (985, 1), (990, 1), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Vdin0_9  din0_9  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 0.0v 14.745n 0.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 0.0v 69.745n 0.0v 69.755n 1.0v 74.745n 1.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 1.0v 94.745n 1.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 1.0v 209.745n 1.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 0.0v 329.745n 0.0v 329.755n 1.0v 334.745n 1.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 1.0v 399.745n 1.0v 399.755n 0.0v 404.745n 0.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 0.0v 744.745n 0.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 0.0v 779.745n 0.0v 779.755n 1.0v 784.745n 1.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 1.0v 939.745n 1.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 0), (85, 0), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 0), (260, 0), (265, 0), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 0), (310, 0), (315, 0), (320, 0), (325, 1), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 1), (400, 1), (405, 0), (410, 0), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 1), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 1), (545, 1), (550, 0), (555, 0), (560, 1), (565, 1), (570, 1), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 1), (630, 1), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 0), (695, 1), (700, 0), (705, 0), (710, 0), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 1), (745, 0), (750, 0), (755, 1), (760, 1), (765, 1), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 1), (805, 1), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 1), (840, 1), (845, 0), (850, 1), (855, 1), (860, 0), (865, 1), (870, 1), (875, 1), (880, 1), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 1), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 1), (980, 1), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 1), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_10  din0_10  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 1.0v 329.745n 1.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 1.0v 499.745n 1.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 0.0v 849.745n 0.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 0.0v 864.745n 0.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 1.0v 939.745n 1.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 1), (55, 1), (60, 1), (65, 1), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 1), (115, 1), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 1), (260, 1), (265, 1), (270, 0), (275, 0), (280, 0), (285, 0), (290, 1), (295, 1), (300, 1), (305, 1), (310, 0), (315, 1), (320, 0), (325, 0), (330, 1), (335, 0), (340, 0), (345, 0), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 0), (385, 1), (390, 1), (395, 1), (400, 0), (405, 0), (410, 1), (415, 0), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 0), (470, 0), (475, 0), (480, 0), (485, 0), (490, 1), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 1), (545, 1), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 1), (580, 0), (585, 0), (590, 1), (595, 1), (600, 0), (605, 0), (610, 0), (615, 1), (620, 1), (625, 1), (630, 0), (635, 0), (640, 0), (645, 1), (650, 1), (655, 0), (660, 0), (665, 0), (670, 1), (675, 1), (680, 1), (685, 1), (690, 0), (695, 0), (700, 0), (705, 0), (710, 1), (715, 1), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 1), (775, 0), (780, 1), (785, 0), (790, 0), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 0), (825, 0), (830, 0), (835, 1), (840, 1), (845, 0), (850, 1), (855, 1), (860, 1), (865, 0), (870, 0), (875, 0), (880, 0), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 0), (940, 1), (945, 1), (950, 1), (955, 1), (960, 0), (965, 0), (970, 0), (975, 1), (980, 1), (985, 0), (990, 0), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Vdin0_11  din0_11  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 0.0v 314.745n 0.0v 314.755n 1.0v 319.745n 1.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 1.0v 334.745n 1.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 0.0v 384.745n 0.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.0v 414.745n 1.0v 414.755n 0.0v 419.745n 0.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.0v 494.745n 1.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 1.0v 579.745n 1.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.0v 774.745n 1.0v 774.755n 0.0v 779.745n 0.0v 779.755n 1.0v 784.745n 1.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 0.0v 849.745n 0.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 0.0v 939.745n 0.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 0), (70, 1), (75, 0), (80, 0), (85, 0), (90, 0), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 1), (235, 1), (240, 1), (245, 1), (250, 0), (255, 1), (260, 1), (265, 1), (270, 0), (275, 0), (280, 0), (285, 0), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 0), (325, 1), (330, 0), (335, 1), (340, 1), (345, 1), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 1), (390, 1), (395, 0), (400, 0), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 0), (475, 1), (480, 0), (485, 0), (490, 1), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 1), (545, 1), (550, 1), (555, 1), (560, 0), (565, 0), (570, 0), (575, 1), (580, 1), (585, 1), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 1), (620, 1), (625, 1), (630, 0), (635, 0), (640, 0), (645, 1), (650, 1), (655, 0), (660, 0), (665, 0), (670, 1), (675, 1), (680, 1), (685, 1), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 0), (775, 1), (780, 1), (785, 1), (790, 1), (795, 0), (800, 1), (805, 1), (810, 0), (815, 0), (820, 1), (825, 1), (830, 1), (835, 0), (840, 0), (845, 1), (850, 1), (855, 1), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 1), (940, 0), (945, 0), (950, 0), (955, 0), (960, 1), (965, 1), (970, 1), (975, 0), (980, 0), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 0), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Va0_0  a0_0  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 0.0v 69.745n 0.0v 69.755n 1.0v 74.745n 1.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 0.0v 254.745n 0.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 0.0v 324.745n 0.0v 324.755n 1.0v 329.745n 1.0v 329.755n 0.0v 334.745n 0.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 1.0v 479.745n 1.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.0v 494.745n 1.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 0.0v 774.745n 0.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 0.0v 799.745n 0.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 1.0v 939.745n 1.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 0), (75, 0), (80, 0), (85, 0), (90, 1), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 1), (210, 0), (215, 0), (220, 0), (225, 0), (230, 1), (235, 1), (240, 1), (245, 1), (250, 0), (255, 0), (260, 0), (265, 1), (270, 0), (275, 0), (280, 0), (285, 0), (290, 1), (295, 1), (300, 1), (305, 1), (310, 0), (315, 0), (320, 0), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 0), (355, 0), (360, 1), (365, 1), (370, 1), (375, 1), (380, 0), (385, 1), (390, 1), (395, 1), (400, 0), (405, 1), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 1), (470, 1), (475, 1), (480, 0), (485, 0), (490, 0), (495, 1), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 1), (545, 1), (550, 0), (555, 0), (560, 1), (565, 1), (570, 1), (575, 0), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 0), (620, 0), (625, 0), (630, 1), (635, 1), (640, 1), (645, 0), (650, 0), (655, 1), (660, 1), (665, 1), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 0), (805, 0), (810, 0), (815, 0), (820, 1), (825, 1), (830, 1), (835, 0), (840, 0), (845, 0), (850, 1), (855, 1), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 1), (940, 1), (945, 1), (950, 0), (955, 1), (960, 1), (965, 1), (970, 1), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Va0_1  a0_1  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 0.0v 14.745n 0.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 1.0v 94.745n 1.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 1.0v 269.745n 1.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 0.0v 384.745n 0.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 0.0v 404.745n 0.0v 404.755n 1.0v 409.745n 1.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 1.0v 499.745n 1.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 1), (70, 1), (75, 0), (80, 0), (85, 0), (90, 0), (95, 1), (100, 1), (105, 1), (110, 0), (115, 0), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 1), (315, 1), (320, 1), (325, 0), (330, 1), (335, 0), (340, 0), (345, 0), (350, 1), (355, 1), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 1), (400, 1), (405, 0), (410, 0), (415, 1), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 1), (535, 1), (540, 0), (545, 0), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 0), (650, 0), (655, 1), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 0), (695, 1), (700, 1), (705, 1), (710, 0), (715, 0), (720, 1), (725, 0), (730, 0), (735, 0), (740, 1), (745, 1), (750, 1), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 1), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 1), (840, 1), (845, 1), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 0), (940, 1), (945, 1), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va0_2  a0_2  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 0.0v 329.745n 0.0v 329.755n 1.0v 334.745n 1.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 1.0v 419.745n 1.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 1.0v 724.745n 1.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 0.0v 939.745n 0.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 0), (80, 0), (85, 0), (90, 0), (95, 1), (100, 1), (105, 1), (110, 0), (115, 0), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 0), (170, 1), (175, 1), (180, 1), (185, 1), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 0), (415, 1), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 1), (535, 1), (540, 0), (545, 0), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 0), (580, 1), (585, 1), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 0), (650, 0), (655, 1), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 0), (695, 1), (700, 1), (705, 1), (710, 0), (715, 0), (720, 1), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 0), (760, 0), (765, 0), (770, 0), (775, 1), (780, 0), (785, 1), (790, 1), (795, 1), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 1), (840, 1), (845, 1), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 1), (945, 1), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Va0_3  a0_3  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 0.0v 414.745n 0.0v 414.755n 1.0v 419.745n 1.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 1.0v 779.745n 1.0v 779.755n 0.0v 784.745n 0.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 0), (80, 0), (85, 0), (90, 0), (95, 1), (100, 1), (105, 1), (110, 0), (115, 0), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 0), (170, 1), (175, 1), (180, 1), (185, 1), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 0), (415, 1), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 1), (535, 1), (540, 0), (545, 0), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 0), (580, 1), (585, 1), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 0), (650, 0), (655, 1), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 0), (695, 1), (700, 1), (705, 1), (710, 0), (715, 0), (720, 1), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 0), (760, 0), (765, 0), (770, 0), (775, 1), (780, 0), (785, 1), (790, 1), (795, 1), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 1), (840, 1), (845, 1), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 1), (945, 1), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Va0_4  a0_4  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 0.0v 414.745n 0.0v 414.755n 1.0v 419.745n 1.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 1.0v 779.745n 1.0v 779.755n 0.0v 784.745n 0.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 0), (80, 0), (85, 0), (90, 0), (95, 1), (100, 1), (105, 1), (110, 0), (115, 0), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 0), (170, 1), (175, 1), (180, 1), (185, 1), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 0), (415, 1), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 1), (535, 1), (540, 0), (545, 0), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 0), (580, 1), (585, 1), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 0), (650, 0), (655, 1), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 0), (695, 1), (700, 1), (705, 1), (710, 0), (715, 0), (720, 1), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 0), (760, 0), (765, 0), (770, 0), (775, 1), (780, 0), (785, 1), (790, 1), (795, 1), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 1), (840, 1), (845, 1), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 1), (945, 1), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Va0_5  a0_5  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 0.0v 414.745n 0.0v 414.755n 1.0v 419.745n 1.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 1.0v 779.745n 1.0v 779.755n 0.0v 784.745n 0.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 0), (80, 0), (85, 0), (90, 0), (95, 1), (100, 1), (105, 1), (110, 0), (115, 0), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 0), (170, 1), (175, 1), (180, 1), (185, 1), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 0), (415, 1), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 1), (535, 1), (540, 0), (545, 0), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 0), (580, 1), (585, 1), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 0), (650, 0), (655, 1), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 0), (695, 1), (700, 1), (705, 1), (710, 0), (715, 0), (720, 1), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 0), (760, 0), (765, 0), (770, 0), (775, 1), (780, 0), (785, 1), (790, 1), (795, 1), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 1), (840, 1), (845, 1), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 1), (945, 1), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Va0_6  a0_6  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 0.0v 414.745n 0.0v 414.755n 1.0v 419.745n 1.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 1.0v 779.745n 1.0v 779.755n 0.0v 784.745n 0.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 0), (80, 0), (85, 0), (90, 0), (95, 1), (100, 1), (105, 1), (110, 0), (115, 0), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 0), (170, 1), (175, 1), (180, 1), (185, 1), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 0), (415, 1), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 1), (535, 1), (540, 0), (545, 0), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 0), (580, 1), (585, 1), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 0), (650, 0), (655, 1), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 0), (695, 1), (700, 1), (705, 1), (710, 0), (715, 0), (720, 1), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 0), (760, 0), (765, 0), (770, 0), (775, 1), (780, 0), (785, 1), (790, 1), (795, 1), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 1), (840, 1), (845, 1), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 1), (945, 1), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Va0_7  a0_7  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 0.0v 414.745n 0.0v 414.755n 1.0v 419.745n 1.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 1.0v 779.745n 1.0v 779.755n 0.0v 784.745n 0.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 1), (25, 0), (30, 1), (35, 1), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 1), (70, 1), (75, 1), (80, 1), (85, 0), (90, 0), (95, 0), (100, 1), (105, 1), (110, 0), (115, 1), (120, 1), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 1), (200, 0), (205, 0), (210, 1), (215, 1), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 0), (275, 0), (280, 1), (285, 0), (290, 0), (295, 0), (300, 1), (305, 1), (310, 1), (315, 0), (320, 0), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 0), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 0), (405, 1), (410, 0), (415, 0), (420, 0), (425, 1), (430, 1), (435, 0), (440, 0), (445, 1), (450, 1), (455, 1), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 1), (490, 1), (495, 1), (500, 0), (505, 1), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 0), (630, 1), (635, 1), (640, 1), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 1), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 1), (760, 1), (765, 1), (770, 1), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 0), (920, 0), (925, 1), (930, 1), (935, 1), (940, 1), (945, 1), (950, 1), (955, 0), (960, 0), (965, 0), (970, 0), (975, 1), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Va1_0  a1_0  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 1.0v 24.745n 1.0v 24.755n 0.0v 29.745n 0.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 1.0v 199.745n 1.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 1.0v 284.745n 1.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 0.0v 359.745n 0.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 0.0v 404.745n 0.0v 404.755n 1.0v 409.745n 1.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 0.0v 504.745n 0.0v 504.755n 1.0v 509.745n 1.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 0.0v 629.745n 0.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 1.0v 694.745n 1.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 1), (25, 0), (30, 1), (35, 1), (40, 0), (45, 0), (50, 0), (55, 1), (60, 1), (65, 1), (70, 1), (75, 0), (80, 0), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 1), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 0), (320, 0), (325, 1), (330, 1), (335, 1), (340, 1), (345, 0), (350, 1), (355, 0), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 1), (415, 0), (420, 0), (425, 0), (430, 0), (435, 1), (440, 1), (445, 0), (450, 0), (455, 0), (460, 0), (465, 1), (470, 1), (475, 1), (480, 0), (485, 1), (490, 1), (495, 1), (500, 0), (505, 1), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 0), (635, 1), (640, 1), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 1), (760, 1), (765, 1), (770, 1), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 0), (860, 0), (865, 0), (870, 0), (875, 1), (880, 0), (885, 0), (890, 1), (895, 0), (900, 0), (905, 1), (910, 1), (915, 1), (920, 0), (925, 1), (930, 1), (935, 1), (940, 1), (945, 1), (950, 1), (955, 0), (960, 1), (965, 1), (970, 1), (975, 0), (980, 0), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va1_1  a1_1  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 1.0v 24.745n 1.0v 24.755n 0.0v 29.745n 0.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 1.0v 144.745n 1.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 0.0v 349.745n 0.0v 349.755n 1.0v 354.745n 1.0v 354.755n 0.0v 359.745n 0.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 0.0v 484.745n 0.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 0.0v 504.745n 0.0v 504.755n 1.0v 509.745n 1.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 0.0v 634.745n 0.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 1.0v 879.745n 1.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 1.0v 894.745n 1.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 0.0v 924.745n 0.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 0.0v 959.745n 0.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 1), (80, 1), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 1), (120, 1), (125, 1), (130, 0), (135, 0), (140, 0), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 0), (185, 0), (190, 0), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 1), (320, 1), (325, 0), (330, 0), (335, 0), (340, 0), (345, 1), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 0), (465, 0), (470, 0), (475, 0), (480, 1), (485, 0), (490, 0), (495, 0), (500, 1), (505, 0), (510, 0), (515, 0), (520, 0), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 1), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 0), (805, 0), (810, 1), (815, 1), (820, 1), (825, 1), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 1), (860, 1), (865, 1), (870, 1), (875, 0), (880, 1), (885, 1), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Va1_2  a1_2  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 1.0v 349.745n 1.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 1.0v 484.745n 1.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 1.0v 504.745n 1.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 1.0v 629.745n 1.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 0.0v 879.745n 0.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 1), (25, 0), (30, 1), (35, 1), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 1), (70, 1), (75, 1), (80, 1), (85, 0), (90, 0), (95, 0), (100, 1), (105, 1), (110, 0), (115, 1), (120, 1), (125, 1), (130, 0), (135, 0), (140, 0), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 0), (185, 0), (190, 0), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 0), (330, 0), (335, 0), (340, 0), (345, 1), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 0), (465, 0), (470, 0), (475, 0), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 0), (515, 0), (520, 0), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 1), (585, 0), (590, 1), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 1), (630, 0), (635, 1), (640, 1), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 0), (805, 0), (810, 1), (815, 1), (820, 1), (825, 1), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 0), (900, 0), (905, 1), (910, 1), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 1), (990, 1), (995, 0), (1000, 0), (1005, 0), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Va1_3  a1_3  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 1.0v 24.745n 1.0v 24.755n 0.0v 29.745n 0.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 1.0v 349.745n 1.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 0.0v 589.745n 0.0v 589.755n 1.0v 594.745n 1.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 1.0v 629.745n 1.0v 629.755n 0.0v 634.745n 0.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 1), (25, 0), (30, 1), (35, 1), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 1), (70, 1), (75, 1), (80, 1), (85, 0), (90, 0), (95, 0), (100, 1), (105, 1), (110, 0), (115, 1), (120, 1), (125, 1), (130, 0), (135, 0), (140, 0), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 0), (185, 0), (190, 0), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 0), (330, 0), (335, 0), (340, 0), (345, 1), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 0), (465, 0), (470, 0), (475, 0), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 0), (515, 0), (520, 0), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 1), (585, 0), (590, 1), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 1), (630, 0), (635, 1), (640, 1), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 0), (805, 0), (810, 1), (815, 1), (820, 1), (825, 1), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 0), (900, 0), (905, 1), (910, 1), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 1), (990, 1), (995, 0), (1000, 0), (1005, 0), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Va1_4  a1_4  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 1.0v 24.745n 1.0v 24.755n 0.0v 29.745n 0.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 1.0v 349.745n 1.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 0.0v 589.745n 0.0v 589.755n 1.0v 594.745n 1.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 1.0v 629.745n 1.0v 629.755n 0.0v 634.745n 0.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 1), (25, 0), (30, 1), (35, 1), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 1), (70, 1), (75, 1), (80, 1), (85, 0), (90, 0), (95, 0), (100, 1), (105, 1), (110, 0), (115, 1), (120, 1), (125, 1), (130, 0), (135, 0), (140, 0), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 0), (185, 0), (190, 0), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 0), (330, 0), (335, 0), (340, 0), (345, 1), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 0), (465, 0), (470, 0), (475, 0), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 0), (515, 0), (520, 0), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 1), (585, 0), (590, 1), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 1), (630, 0), (635, 1), (640, 1), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 0), (805, 0), (810, 1), (815, 1), (820, 1), (825, 1), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 0), (900, 0), (905, 1), (910, 1), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 1), (990, 1), (995, 0), (1000, 0), (1005, 0), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Va1_5  a1_5  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 1.0v 24.745n 1.0v 24.755n 0.0v 29.745n 0.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 1.0v 349.745n 1.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 0.0v 589.745n 0.0v 589.755n 1.0v 594.745n 1.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 1.0v 629.745n 1.0v 629.755n 0.0v 634.745n 0.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 1), (25, 0), (30, 1), (35, 1), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 1), (70, 1), (75, 1), (80, 1), (85, 0), (90, 0), (95, 0), (100, 1), (105, 1), (110, 0), (115, 1), (120, 1), (125, 1), (130, 0), (135, 0), (140, 0), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 0), (185, 0), (190, 0), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 0), (330, 0), (335, 0), (340, 0), (345, 1), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 0), (465, 0), (470, 0), (475, 0), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 0), (515, 0), (520, 0), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 1), (585, 0), (590, 1), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 1), (630, 0), (635, 1), (640, 1), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 0), (805, 0), (810, 1), (815, 1), (820, 1), (825, 1), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 0), (900, 0), (905, 1), (910, 1), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 1), (990, 1), (995, 0), (1000, 0), (1005, 0), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Va1_6  a1_6  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 1.0v 24.745n 1.0v 24.755n 0.0v 29.745n 0.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 1.0v 349.745n 1.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 0.0v 589.745n 0.0v 589.755n 1.0v 594.745n 1.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 1.0v 629.745n 1.0v 629.755n 0.0v 634.745n 0.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 1), (25, 0), (30, 1), (35, 1), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 1), (70, 1), (75, 1), (80, 1), (85, 0), (90, 0), (95, 0), (100, 1), (105, 1), (110, 0), (115, 1), (120, 1), (125, 1), (130, 0), (135, 0), (140, 0), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 0), (185, 0), (190, 0), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 0), (330, 0), (335, 0), (340, 0), (345, 1), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 0), (465, 0), (470, 0), (475, 0), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 0), (515, 0), (520, 0), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 1), (585, 0), (590, 1), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 1), (630, 0), (635, 1), (640, 1), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 0), (805, 0), (810, 1), (815, 1), (820, 1), (825, 1), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 0), (900, 0), (905, 1), (910, 1), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 1), (990, 1), (995, 0), (1000, 0), (1005, 0), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Va1_7  a1_7  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 1.0v 24.745n 1.0v 24.755n 0.0v 29.745n 0.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 1.0v 349.745n 1.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 0.0v 589.745n 0.0v 589.755n 1.0v 594.745n 1.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 1.0v 629.745n 1.0v 629.755n 0.0v 634.745n 0.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )

 * Generation of control signals
* (time, data): [(0, 1), (5, 0), (10, 0), (15, 0), (20, 1), (25, 1), (30, 1), (35, 1), (40, 0), (45, 1), (50, 0), (55, 1), (60, 1), (65, 0), (70, 0), (75, 0), (80, 0), (85, 1), (90, 0), (95, 0), (100, 1), (105, 1), (110, 0), (115, 1), (120, 0), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 0), (160, 1), (165, 0), (170, 0), (175, 1), (180, 1), (185, 1), (190, 0), (195, 1), (200, 1), (205, 0), (210, 0), (215, 1), (220, 1), (225, 1), (230, 0), (235, 1), (240, 1), (245, 1), (250, 0), (255, 0), (260, 1), (265, 0), (270, 0), (275, 1), (280, 1), (285, 1), (290, 0), (295, 1), (300, 1), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 1), (345, 1), (350, 0), (355, 1), (360, 0), (365, 1), (370, 1), (375, 1), (380, 0), (385, 0), (390, 1), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 1), (430, 1), (435, 1), (440, 1), (445, 0), (450, 1), (455, 1), (460, 1), (465, 0), (470, 1), (475, 0), (480, 0), (485, 1), (490, 0), (495, 0), (500, 0), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 0), (535, 1), (540, 0), (545, 1), (550, 0), (555, 1), (560, 0), (565, 1), (570, 1), (575, 0), (580, 0), (585, 1), (590, 0), (595, 0), (600, 0), (605, 1), (610, 1), (615, 0), (620, 1), (625, 0), (630, 0), (635, 1), (640, 1), (645, 0), (650, 1), (655, 0), (660, 1), (665, 1), (670, 0), (675, 1), (680, 1), (685, 1), (690, 0), (695, 0), (700, 0), (705, 1), (710, 0), (715, 0), (720, 0), (725, 0), (730, 1), (735, 1), (740, 0), (745, 0), (750, 1), (755, 0), (760, 1), (765, 1), (770, 0), (775, 0), (780, 0), (785, 0), (790, 1), (795, 0), (800, 0), (805, 1), (810, 0), (815, 1), (820, 0), (825, 1), (830, 1), (835, 0), (840, 1), (845, 0), (850, 0), (855, 1), (860, 0), (865, 0), (870, 0), (875, 1), (880, 1), (885, 0), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 0), (940, 0), (945, 1), (950, 0), (955, 0), (960, 0), (965, 1), (970, 1), (975, 0), (980, 1), (985, 0), (990, 1), (995, 0), (1000, 1), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 1)]
VCSB0 CSB0 0 PWL (0n 1.0v 4.745n 1.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 0.0v 44.745n 0.0v 44.755n 1.0v 49.745n 1.0v 49.755n 0.0v 54.745n 0.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 1.0v 89.745n 1.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.0v 119.745n 1.0v 119.755n 0.0v 124.745n 0.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 0.0v 159.745n 0.0v 159.755n 1.0v 164.745n 1.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 0.0v 194.745n 0.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 0.0v 234.745n 0.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 1.0v 264.745n 1.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 0.0v 294.745n 0.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 0.0v 354.745n 0.0v 354.755n 1.0v 359.745n 1.0v 359.755n 0.0v 364.745n 0.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 0.0v 469.745n 0.0v 469.755n 1.0v 474.745n 1.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 1.0v 489.745n 1.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 0.0v 534.745n 0.0v 534.755n 1.0v 539.745n 1.0v 539.755n 0.0v 544.745n 0.0v 544.755n 1.0v 549.745n 1.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.0v 559.745n 1.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 0.0v 619.745n 0.0v 619.755n 1.0v 624.745n 1.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 1.0v 654.745n 1.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 0.0v 674.745n 0.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 1.0v 709.745n 1.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 1.0v 754.745n 1.0v 754.755n 0.0v 759.745n 0.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 1.0v 794.745n 1.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 1.0v 809.745n 1.0v 809.755n 0.0v 814.745n 0.0v 814.755n 1.0v 819.745n 1.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 0.0v 839.745n 0.0v 839.755n 1.0v 844.745n 1.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 1.0v 859.745n 1.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 0.0v 889.745n 0.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 0.0v 979.745n 0.0v 979.755n 1.0v 984.745n 1.0v 984.755n 0.0v 989.745n 0.0v 989.755n 1.0v 994.745n 1.0v 994.755n 0.0v 999.745n 0.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 1.0v )
* (time, data): [(0, 1), (5, 1), (10, 1), (15, 1), (20, 0), (25, 0), (30, 0), (35, 1), (40, 0), (45, 0), (50, 1), (55, 0), (60, 1), (65, 0), (70, 1), (75, 0), (80, 0), (85, 0), (90, 1), (95, 1), (100, 0), (105, 1), (110, 0), (115, 0), (120, 1), (125, 0), (130, 0), (135, 1), (140, 0), (145, 0), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 0), (185, 1), (190, 1), (195, 0), (200, 0), (205, 1), (210, 0), (215, 1), (220, 1), (225, 1), (230, 1), (235, 1), (240, 0), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 0), (275, 1), (280, 0), (285, 0), (290, 1), (295, 1), (300, 0), (305, 1), (310, 1), (315, 0), (320, 1), (325, 0), (330, 1), (335, 1), (340, 1), (345, 0), (350, 0), (355, 0), (360, 0), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 0), (405, 0), (410, 0), (415, 0), (420, 1), (425, 0), (430, 1), (435, 0), (440, 1), (445, 0), (450, 1), (455, 1), (460, 0), (465, 0), (470, 1), (475, 1), (480, 0), (485, 0), (490, 1), (495, 1), (500, 0), (505, 0), (510, 0), (515, 1), (520, 1), (525, 0), (530, 1), (535, 1), (540, 0), (545, 1), (550, 0), (555, 1), (560, 1), (565, 1), (570, 1), (575, 0), (580, 1), (585, 0), (590, 0), (595, 0), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 0), (630, 0), (635, 0), (640, 1), (645, 0), (650, 1), (655, 1), (660, 1), (665, 1), (670, 0), (675, 1), (680, 1), (685, 1), (690, 0), (695, 1), (700, 1), (705, 1), (710, 0), (715, 1), (720, 0), (725, 0), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 0), (760, 1), (765, 1), (770, 1), (775, 0), (780, 1), (785, 1), (790, 1), (795, 1), (800, 0), (805, 1), (810, 0), (815, 1), (820, 0), (825, 1), (830, 0), (835, 0), (840, 1), (845, 1), (850, 1), (855, 0), (860, 1), (865, 1), (870, 1), (875, 0), (880, 0), (885, 1), (890, 0), (895, 0), (900, 1), (905, 0), (910, 1), (915, 0), (920, 0), (925, 0), (930, 1), (935, 1), (940, 1), (945, 1), (950, 1), (955, 0), (960, 0), (965, 1), (970, 0), (975, 0), (980, 1), (985, 0), (990, 1), (995, 0), (1000, 1), (1005, 1), (1010, 0), (1015, 1), (1020, 1), (1025, 1)]
VCSB1 CSB1 0 PWL (0n 1.0v 4.745n 1.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 1.0v 39.745n 1.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 1.0v 54.745n 1.0v 54.755n 0.0v 59.745n 0.0v 59.755n 1.0v 64.745n 1.0v 64.755n 0.0v 69.745n 0.0v 69.755n 1.0v 74.745n 1.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 0.0v 104.745n 0.0v 104.755n 1.0v 109.745n 1.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 1.0v 124.745n 1.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.0v 139.745n 1.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 0.0v 184.745n 0.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 1.0v 209.745n 1.0v 209.755n 0.0v 214.745n 0.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 0.0v 244.745n 0.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 0.0v 274.745n 0.0v 274.755n 1.0v 279.745n 1.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 0.0v 304.745n 0.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 0.0v 319.745n 0.0v 319.755n 1.0v 324.745n 1.0v 324.755n 0.0v 329.745n 0.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 1.0v 424.745n 1.0v 424.755n 0.0v 429.745n 0.0v 429.755n 1.0v 434.745n 1.0v 434.755n 0.0v 439.745n 0.0v 439.755n 1.0v 444.745n 1.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 0.0v 529.745n 0.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 0.0v 544.745n 0.0v 544.755n 1.0v 549.745n 1.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 0.0v 674.745n 0.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 0.0v 714.745n 0.0v 714.755n 1.0v 719.745n 1.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 0.0v 759.745n 0.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 0.0v 779.745n 0.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 1.0v 809.745n 1.0v 809.755n 0.0v 814.745n 0.0v 814.755n 1.0v 819.745n 1.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.0v 829.745n 1.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 0.0v 859.745n 0.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 1.0v 889.745n 1.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.0v 904.745n 1.0v 904.755n 0.0v 909.745n 0.0v 909.755n 1.0v 914.745n 1.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 1.0v 969.745n 1.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 1.0v 984.745n 1.0v 984.755n 0.0v 989.745n 0.0v 989.755n 1.0v 994.745n 1.0v 994.755n 0.0v 999.745n 0.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* PULSE: period=5
Vclk0 clk0 0 PULSE (0 1.0 4.995n 0.01n 0.01n 2.49n 5n)
* PULSE: period=5
Vclk1 clk1 0 PULSE (0 1.0 4.995n 0.01n 0.01n 2.49n 5n)

 * Generation of dout measurements
* CHECK dout1_0 Vdout1_0ck4 = 0 time = 25
.meas tran vdout1_0ck4 FIND v(dout1_0) AT=25.025n

* CHECK dout1_1 Vdout1_1ck4 = 0 time = 25
.meas tran vdout1_1ck4 FIND v(dout1_1) AT=25.025n

* CHECK dout1_2 Vdout1_2ck4 = 0 time = 25
.meas tran vdout1_2ck4 FIND v(dout1_2) AT=25.025n

* CHECK dout1_3 Vdout1_3ck4 = 1.0 time = 25
.meas tran vdout1_3ck4 FIND v(dout1_3) AT=25.025n

* CHECK dout1_4 Vdout1_4ck4 = 1.0 time = 25
.meas tran vdout1_4ck4 FIND v(dout1_4) AT=25.025n

* CHECK dout1_5 Vdout1_5ck4 = 0 time = 25
.meas tran vdout1_5ck4 FIND v(dout1_5) AT=25.025n

* CHECK dout1_6 Vdout1_6ck4 = 0 time = 25
.meas tran vdout1_6ck4 FIND v(dout1_6) AT=25.025n

* CHECK dout1_7 Vdout1_7ck4 = 1.0 time = 25
.meas tran vdout1_7ck4 FIND v(dout1_7) AT=25.025n

* CHECK dout1_8 Vdout1_8ck4 = 0 time = 25
.meas tran vdout1_8ck4 FIND v(dout1_8) AT=25.025n

* CHECK dout1_9 Vdout1_9ck4 = 1.0 time = 25
.meas tran vdout1_9ck4 FIND v(dout1_9) AT=25.025n

* CHECK dout1_10 Vdout1_10ck4 = 1.0 time = 25
.meas tran vdout1_10ck4 FIND v(dout1_10) AT=25.025n

* CHECK dout1_11 Vdout1_11ck4 = 0 time = 25
.meas tran vdout1_11ck4 FIND v(dout1_11) AT=25.025n

* CHECK dout1_0 Vdout1_0ck5 = 0 time = 30
.meas tran vdout1_0ck5 FIND v(dout1_0) AT=30.025n

* CHECK dout1_1 Vdout1_1ck5 = 1.0 time = 30
.meas tran vdout1_1ck5 FIND v(dout1_1) AT=30.025n

* CHECK dout1_2 Vdout1_2ck5 = 1.0 time = 30
.meas tran vdout1_2ck5 FIND v(dout1_2) AT=30.025n

* CHECK dout1_3 Vdout1_3ck5 = 0 time = 30
.meas tran vdout1_3ck5 FIND v(dout1_3) AT=30.025n

* CHECK dout1_4 Vdout1_4ck5 = 1.0 time = 30
.meas tran vdout1_4ck5 FIND v(dout1_4) AT=30.025n

* CHECK dout1_5 Vdout1_5ck5 = 1.0 time = 30
.meas tran vdout1_5ck5 FIND v(dout1_5) AT=30.025n

* CHECK dout1_6 Vdout1_6ck5 = 1.0 time = 30
.meas tran vdout1_6ck5 FIND v(dout1_6) AT=30.025n

* CHECK dout1_7 Vdout1_7ck5 = 1.0 time = 30
.meas tran vdout1_7ck5 FIND v(dout1_7) AT=30.025n

* CHECK dout1_8 Vdout1_8ck5 = 0 time = 30
.meas tran vdout1_8ck5 FIND v(dout1_8) AT=30.025n

* CHECK dout1_9 Vdout1_9ck5 = 0 time = 30
.meas tran vdout1_9ck5 FIND v(dout1_9) AT=30.025n

* CHECK dout1_10 Vdout1_10ck5 = 0 time = 30
.meas tran vdout1_10ck5 FIND v(dout1_10) AT=30.025n

* CHECK dout1_11 Vdout1_11ck5 = 0 time = 30
.meas tran vdout1_11ck5 FIND v(dout1_11) AT=30.025n

* CHECK dout1_0 Vdout1_0ck6 = 0 time = 35
.meas tran vdout1_0ck6 FIND v(dout1_0) AT=35.025n

* CHECK dout1_1 Vdout1_1ck6 = 0 time = 35
.meas tran vdout1_1ck6 FIND v(dout1_1) AT=35.025n

* CHECK dout1_2 Vdout1_2ck6 = 0 time = 35
.meas tran vdout1_2ck6 FIND v(dout1_2) AT=35.025n

* CHECK dout1_3 Vdout1_3ck6 = 1.0 time = 35
.meas tran vdout1_3ck6 FIND v(dout1_3) AT=35.025n

* CHECK dout1_4 Vdout1_4ck6 = 1.0 time = 35
.meas tran vdout1_4ck6 FIND v(dout1_4) AT=35.025n

* CHECK dout1_5 Vdout1_5ck6 = 0 time = 35
.meas tran vdout1_5ck6 FIND v(dout1_5) AT=35.025n

* CHECK dout1_6 Vdout1_6ck6 = 0 time = 35
.meas tran vdout1_6ck6 FIND v(dout1_6) AT=35.025n

* CHECK dout1_7 Vdout1_7ck6 = 1.0 time = 35
.meas tran vdout1_7ck6 FIND v(dout1_7) AT=35.025n

* CHECK dout1_8 Vdout1_8ck6 = 0 time = 35
.meas tran vdout1_8ck6 FIND v(dout1_8) AT=35.025n

* CHECK dout1_9 Vdout1_9ck6 = 1.0 time = 35
.meas tran vdout1_9ck6 FIND v(dout1_9) AT=35.025n

* CHECK dout1_10 Vdout1_10ck6 = 1.0 time = 35
.meas tran vdout1_10ck6 FIND v(dout1_10) AT=35.025n

* CHECK dout1_11 Vdout1_11ck6 = 0 time = 35
.meas tran vdout1_11ck6 FIND v(dout1_11) AT=35.025n

* CHECK dout1_0 Vdout1_0ck8 = 0 time = 45
.meas tran vdout1_0ck8 FIND v(dout1_0) AT=45.025n

* CHECK dout1_1 Vdout1_1ck8 = 1.0 time = 45
.meas tran vdout1_1ck8 FIND v(dout1_1) AT=45.025n

* CHECK dout1_2 Vdout1_2ck8 = 1.0 time = 45
.meas tran vdout1_2ck8 FIND v(dout1_2) AT=45.025n

* CHECK dout1_3 Vdout1_3ck8 = 0 time = 45
.meas tran vdout1_3ck8 FIND v(dout1_3) AT=45.025n

* CHECK dout1_4 Vdout1_4ck8 = 1.0 time = 45
.meas tran vdout1_4ck8 FIND v(dout1_4) AT=45.025n

* CHECK dout1_5 Vdout1_5ck8 = 1.0 time = 45
.meas tran vdout1_5ck8 FIND v(dout1_5) AT=45.025n

* CHECK dout1_6 Vdout1_6ck8 = 1.0 time = 45
.meas tran vdout1_6ck8 FIND v(dout1_6) AT=45.025n

* CHECK dout1_7 Vdout1_7ck8 = 1.0 time = 45
.meas tran vdout1_7ck8 FIND v(dout1_7) AT=45.025n

* CHECK dout1_8 Vdout1_8ck8 = 0 time = 45
.meas tran vdout1_8ck8 FIND v(dout1_8) AT=45.025n

* CHECK dout1_9 Vdout1_9ck8 = 0 time = 45
.meas tran vdout1_9ck8 FIND v(dout1_9) AT=45.025n

* CHECK dout1_10 Vdout1_10ck8 = 0 time = 45
.meas tran vdout1_10ck8 FIND v(dout1_10) AT=45.025n

* CHECK dout1_11 Vdout1_11ck8 = 0 time = 45
.meas tran vdout1_11ck8 FIND v(dout1_11) AT=45.025n

* CHECK dout1_0 Vdout1_0ck9 = 0 time = 50
.meas tran vdout1_0ck9 FIND v(dout1_0) AT=50.025n

* CHECK dout1_1 Vdout1_1ck9 = 1.0 time = 50
.meas tran vdout1_1ck9 FIND v(dout1_1) AT=50.025n

* CHECK dout1_2 Vdout1_2ck9 = 1.0 time = 50
.meas tran vdout1_2ck9 FIND v(dout1_2) AT=50.025n

* CHECK dout1_3 Vdout1_3ck9 = 0 time = 50
.meas tran vdout1_3ck9 FIND v(dout1_3) AT=50.025n

* CHECK dout1_4 Vdout1_4ck9 = 1.0 time = 50
.meas tran vdout1_4ck9 FIND v(dout1_4) AT=50.025n

* CHECK dout1_5 Vdout1_5ck9 = 1.0 time = 50
.meas tran vdout1_5ck9 FIND v(dout1_5) AT=50.025n

* CHECK dout1_6 Vdout1_6ck9 = 1.0 time = 50
.meas tran vdout1_6ck9 FIND v(dout1_6) AT=50.025n

* CHECK dout1_7 Vdout1_7ck9 = 1.0 time = 50
.meas tran vdout1_7ck9 FIND v(dout1_7) AT=50.025n

* CHECK dout1_8 Vdout1_8ck9 = 0 time = 50
.meas tran vdout1_8ck9 FIND v(dout1_8) AT=50.025n

* CHECK dout1_9 Vdout1_9ck9 = 0 time = 50
.meas tran vdout1_9ck9 FIND v(dout1_9) AT=50.025n

* CHECK dout1_10 Vdout1_10ck9 = 0 time = 50
.meas tran vdout1_10ck9 FIND v(dout1_10) AT=50.025n

* CHECK dout1_11 Vdout1_11ck9 = 0 time = 50
.meas tran vdout1_11ck9 FIND v(dout1_11) AT=50.025n

* CHECK dout1_0 Vdout1_0ck11 = 1.0 time = 60
.meas tran vdout1_0ck11 FIND v(dout1_0) AT=60.025n

* CHECK dout1_1 Vdout1_1ck11 = 1.0 time = 60
.meas tran vdout1_1ck11 FIND v(dout1_1) AT=60.025n

* CHECK dout1_2 Vdout1_2ck11 = 1.0 time = 60
.meas tran vdout1_2ck11 FIND v(dout1_2) AT=60.025n

* CHECK dout1_3 Vdout1_3ck11 = 0 time = 60
.meas tran vdout1_3ck11 FIND v(dout1_3) AT=60.025n

* CHECK dout1_4 Vdout1_4ck11 = 0 time = 60
.meas tran vdout1_4ck11 FIND v(dout1_4) AT=60.025n

* CHECK dout1_5 Vdout1_5ck11 = 0 time = 60
.meas tran vdout1_5ck11 FIND v(dout1_5) AT=60.025n

* CHECK dout1_6 Vdout1_6ck11 = 1.0 time = 60
.meas tran vdout1_6ck11 FIND v(dout1_6) AT=60.025n

* CHECK dout1_7 Vdout1_7ck11 = 1.0 time = 60
.meas tran vdout1_7ck11 FIND v(dout1_7) AT=60.025n

* CHECK dout1_8 Vdout1_8ck11 = 1.0 time = 60
.meas tran vdout1_8ck11 FIND v(dout1_8) AT=60.025n

* CHECK dout1_9 Vdout1_9ck11 = 1.0 time = 60
.meas tran vdout1_9ck11 FIND v(dout1_9) AT=60.025n

* CHECK dout1_10 Vdout1_10ck11 = 0 time = 60
.meas tran vdout1_10ck11 FIND v(dout1_10) AT=60.025n

* CHECK dout1_11 Vdout1_11ck11 = 0 time = 60
.meas tran vdout1_11ck11 FIND v(dout1_11) AT=60.025n

* CHECK dout1_0 Vdout1_0ck13 = 1.0 time = 70
.meas tran vdout1_0ck13 FIND v(dout1_0) AT=70.025n

* CHECK dout1_1 Vdout1_1ck13 = 0 time = 70
.meas tran vdout1_1ck13 FIND v(dout1_1) AT=70.025n

* CHECK dout1_2 Vdout1_2ck13 = 1.0 time = 70
.meas tran vdout1_2ck13 FIND v(dout1_2) AT=70.025n

* CHECK dout1_3 Vdout1_3ck13 = 1.0 time = 70
.meas tran vdout1_3ck13 FIND v(dout1_3) AT=70.025n

* CHECK dout1_4 Vdout1_4ck13 = 0 time = 70
.meas tran vdout1_4ck13 FIND v(dout1_4) AT=70.025n

* CHECK dout1_5 Vdout1_5ck13 = 1.0 time = 70
.meas tran vdout1_5ck13 FIND v(dout1_5) AT=70.025n

* CHECK dout1_6 Vdout1_6ck13 = 1.0 time = 70
.meas tran vdout1_6ck13 FIND v(dout1_6) AT=70.025n

* CHECK dout1_7 Vdout1_7ck13 = 0 time = 70
.meas tran vdout1_7ck13 FIND v(dout1_7) AT=70.025n

* CHECK dout1_8 Vdout1_8ck13 = 0 time = 70
.meas tran vdout1_8ck13 FIND v(dout1_8) AT=70.025n

* CHECK dout1_9 Vdout1_9ck13 = 1.0 time = 70
.meas tran vdout1_9ck13 FIND v(dout1_9) AT=70.025n

* CHECK dout1_10 Vdout1_10ck13 = 1.0 time = 70
.meas tran vdout1_10ck13 FIND v(dout1_10) AT=70.025n

* CHECK dout1_11 Vdout1_11ck13 = 1.0 time = 70
.meas tran vdout1_11ck13 FIND v(dout1_11) AT=70.025n

* CHECK dout1_0 Vdout1_0ck15 = 0 time = 80
.meas tran vdout1_0ck15 FIND v(dout1_0) AT=80.025n

* CHECK dout1_1 Vdout1_1ck15 = 1.0 time = 80
.meas tran vdout1_1ck15 FIND v(dout1_1) AT=80.025n

* CHECK dout1_2 Vdout1_2ck15 = 1.0 time = 80
.meas tran vdout1_2ck15 FIND v(dout1_2) AT=80.025n

* CHECK dout1_3 Vdout1_3ck15 = 0 time = 80
.meas tran vdout1_3ck15 FIND v(dout1_3) AT=80.025n

* CHECK dout1_4 Vdout1_4ck15 = 0 time = 80
.meas tran vdout1_4ck15 FIND v(dout1_4) AT=80.025n

* CHECK dout1_5 Vdout1_5ck15 = 0 time = 80
.meas tran vdout1_5ck15 FIND v(dout1_5) AT=80.025n

* CHECK dout1_6 Vdout1_6ck15 = 0 time = 80
.meas tran vdout1_6ck15 FIND v(dout1_6) AT=80.025n

* CHECK dout1_7 Vdout1_7ck15 = 1.0 time = 80
.meas tran vdout1_7ck15 FIND v(dout1_7) AT=80.025n

* CHECK dout1_8 Vdout1_8ck15 = 1.0 time = 80
.meas tran vdout1_8ck15 FIND v(dout1_8) AT=80.025n

* CHECK dout1_9 Vdout1_9ck15 = 1.0 time = 80
.meas tran vdout1_9ck15 FIND v(dout1_9) AT=80.025n

* CHECK dout1_10 Vdout1_10ck15 = 1.0 time = 80
.meas tran vdout1_10ck15 FIND v(dout1_10) AT=80.025n

* CHECK dout1_11 Vdout1_11ck15 = 0 time = 80
.meas tran vdout1_11ck15 FIND v(dout1_11) AT=80.025n

* CHECK dout1_0 Vdout1_0ck16 = 0 time = 85
.meas tran vdout1_0ck16 FIND v(dout1_0) AT=85.025n

* CHECK dout1_1 Vdout1_1ck16 = 1.0 time = 85
.meas tran vdout1_1ck16 FIND v(dout1_1) AT=85.025n

* CHECK dout1_2 Vdout1_2ck16 = 1.0 time = 85
.meas tran vdout1_2ck16 FIND v(dout1_2) AT=85.025n

* CHECK dout1_3 Vdout1_3ck16 = 0 time = 85
.meas tran vdout1_3ck16 FIND v(dout1_3) AT=85.025n

* CHECK dout1_4 Vdout1_4ck16 = 0 time = 85
.meas tran vdout1_4ck16 FIND v(dout1_4) AT=85.025n

* CHECK dout1_5 Vdout1_5ck16 = 0 time = 85
.meas tran vdout1_5ck16 FIND v(dout1_5) AT=85.025n

* CHECK dout1_6 Vdout1_6ck16 = 0 time = 85
.meas tran vdout1_6ck16 FIND v(dout1_6) AT=85.025n

* CHECK dout1_7 Vdout1_7ck16 = 1.0 time = 85
.meas tran vdout1_7ck16 FIND v(dout1_7) AT=85.025n

* CHECK dout1_8 Vdout1_8ck16 = 1.0 time = 85
.meas tran vdout1_8ck16 FIND v(dout1_8) AT=85.025n

* CHECK dout1_9 Vdout1_9ck16 = 1.0 time = 85
.meas tran vdout1_9ck16 FIND v(dout1_9) AT=85.025n

* CHECK dout1_10 Vdout1_10ck16 = 1.0 time = 85
.meas tran vdout1_10ck16 FIND v(dout1_10) AT=85.025n

* CHECK dout1_11 Vdout1_11ck16 = 0 time = 85
.meas tran vdout1_11ck16 FIND v(dout1_11) AT=85.025n

* CHECK dout1_0 Vdout1_0ck17 = 1.0 time = 90
.meas tran vdout1_0ck17 FIND v(dout1_0) AT=90.025n

* CHECK dout1_1 Vdout1_1ck17 = 1.0 time = 90
.meas tran vdout1_1ck17 FIND v(dout1_1) AT=90.025n

* CHECK dout1_2 Vdout1_2ck17 = 1.0 time = 90
.meas tran vdout1_2ck17 FIND v(dout1_2) AT=90.025n

* CHECK dout1_3 Vdout1_3ck17 = 0 time = 90
.meas tran vdout1_3ck17 FIND v(dout1_3) AT=90.025n

* CHECK dout1_4 Vdout1_4ck17 = 0 time = 90
.meas tran vdout1_4ck17 FIND v(dout1_4) AT=90.025n

* CHECK dout1_5 Vdout1_5ck17 = 0 time = 90
.meas tran vdout1_5ck17 FIND v(dout1_5) AT=90.025n

* CHECK dout1_6 Vdout1_6ck17 = 1.0 time = 90
.meas tran vdout1_6ck17 FIND v(dout1_6) AT=90.025n

* CHECK dout1_7 Vdout1_7ck17 = 1.0 time = 90
.meas tran vdout1_7ck17 FIND v(dout1_7) AT=90.025n

* CHECK dout1_8 Vdout1_8ck17 = 1.0 time = 90
.meas tran vdout1_8ck17 FIND v(dout1_8) AT=90.025n

* CHECK dout1_9 Vdout1_9ck17 = 1.0 time = 90
.meas tran vdout1_9ck17 FIND v(dout1_9) AT=90.025n

* CHECK dout1_10 Vdout1_10ck17 = 0 time = 90
.meas tran vdout1_10ck17 FIND v(dout1_10) AT=90.025n

* CHECK dout1_11 Vdout1_11ck17 = 0 time = 90
.meas tran vdout1_11ck17 FIND v(dout1_11) AT=90.025n

* CHECK dout1_0 Vdout1_0ck20 = 1.0 time = 105
.meas tran vdout1_0ck20 FIND v(dout1_0) AT=105.025n

* CHECK dout1_1 Vdout1_1ck20 = 0 time = 105
.meas tran vdout1_1ck20 FIND v(dout1_1) AT=105.025n

* CHECK dout1_2 Vdout1_2ck20 = 1.0 time = 105
.meas tran vdout1_2ck20 FIND v(dout1_2) AT=105.025n

* CHECK dout1_3 Vdout1_3ck20 = 1.0 time = 105
.meas tran vdout1_3ck20 FIND v(dout1_3) AT=105.025n

* CHECK dout1_4 Vdout1_4ck20 = 0 time = 105
.meas tran vdout1_4ck20 FIND v(dout1_4) AT=105.025n

* CHECK dout1_5 Vdout1_5ck20 = 1.0 time = 105
.meas tran vdout1_5ck20 FIND v(dout1_5) AT=105.025n

* CHECK dout1_6 Vdout1_6ck20 = 1.0 time = 105
.meas tran vdout1_6ck20 FIND v(dout1_6) AT=105.025n

* CHECK dout1_7 Vdout1_7ck20 = 0 time = 105
.meas tran vdout1_7ck20 FIND v(dout1_7) AT=105.025n

* CHECK dout1_8 Vdout1_8ck20 = 0 time = 105
.meas tran vdout1_8ck20 FIND v(dout1_8) AT=105.025n

* CHECK dout1_9 Vdout1_9ck20 = 1.0 time = 105
.meas tran vdout1_9ck20 FIND v(dout1_9) AT=105.025n

* CHECK dout1_10 Vdout1_10ck20 = 1.0 time = 105
.meas tran vdout1_10ck20 FIND v(dout1_10) AT=105.025n

* CHECK dout1_11 Vdout1_11ck20 = 1.0 time = 105
.meas tran vdout1_11ck20 FIND v(dout1_11) AT=105.025n

* CHECK dout1_0 Vdout1_0ck22 = 1.0 time = 115
.meas tran vdout1_0ck22 FIND v(dout1_0) AT=115.025n

* CHECK dout1_1 Vdout1_1ck22 = 0 time = 115
.meas tran vdout1_1ck22 FIND v(dout1_1) AT=115.025n

* CHECK dout1_2 Vdout1_2ck22 = 0 time = 115
.meas tran vdout1_2ck22 FIND v(dout1_2) AT=115.025n

* CHECK dout1_3 Vdout1_3ck22 = 0 time = 115
.meas tran vdout1_3ck22 FIND v(dout1_3) AT=115.025n

* CHECK dout1_4 Vdout1_4ck22 = 0 time = 115
.meas tran vdout1_4ck22 FIND v(dout1_4) AT=115.025n

* CHECK dout1_5 Vdout1_5ck22 = 0 time = 115
.meas tran vdout1_5ck22 FIND v(dout1_5) AT=115.025n

* CHECK dout1_6 Vdout1_6ck22 = 0 time = 115
.meas tran vdout1_6ck22 FIND v(dout1_6) AT=115.025n

* CHECK dout1_7 Vdout1_7ck22 = 0 time = 115
.meas tran vdout1_7ck22 FIND v(dout1_7) AT=115.025n

* CHECK dout1_8 Vdout1_8ck22 = 0 time = 115
.meas tran vdout1_8ck22 FIND v(dout1_8) AT=115.025n

* CHECK dout1_9 Vdout1_9ck22 = 0 time = 115
.meas tran vdout1_9ck22 FIND v(dout1_9) AT=115.025n

* CHECK dout1_10 Vdout1_10ck22 = 0 time = 115
.meas tran vdout1_10ck22 FIND v(dout1_10) AT=115.025n

* CHECK dout1_11 Vdout1_11ck22 = 0 time = 115
.meas tran vdout1_11ck22 FIND v(dout1_11) AT=115.025n

* CHECK dout1_0 Vdout1_0ck23 = 0 time = 120
.meas tran vdout1_0ck23 FIND v(dout1_0) AT=120.025n

* CHECK dout1_1 Vdout1_1ck23 = 1.0 time = 120
.meas tran vdout1_1ck23 FIND v(dout1_1) AT=120.025n

* CHECK dout1_2 Vdout1_2ck23 = 1.0 time = 120
.meas tran vdout1_2ck23 FIND v(dout1_2) AT=120.025n

* CHECK dout1_3 Vdout1_3ck23 = 1.0 time = 120
.meas tran vdout1_3ck23 FIND v(dout1_3) AT=120.025n

* CHECK dout1_4 Vdout1_4ck23 = 1.0 time = 120
.meas tran vdout1_4ck23 FIND v(dout1_4) AT=120.025n

* CHECK dout1_5 Vdout1_5ck23 = 0 time = 120
.meas tran vdout1_5ck23 FIND v(dout1_5) AT=120.025n

* CHECK dout1_6 Vdout1_6ck23 = 1.0 time = 120
.meas tran vdout1_6ck23 FIND v(dout1_6) AT=120.025n

* CHECK dout1_7 Vdout1_7ck23 = 1.0 time = 120
.meas tran vdout1_7ck23 FIND v(dout1_7) AT=120.025n

* CHECK dout1_8 Vdout1_8ck23 = 0 time = 120
.meas tran vdout1_8ck23 FIND v(dout1_8) AT=120.025n

* CHECK dout1_9 Vdout1_9ck23 = 0 time = 120
.meas tran vdout1_9ck23 FIND v(dout1_9) AT=120.025n

* CHECK dout1_10 Vdout1_10ck23 = 1.0 time = 120
.meas tran vdout1_10ck23 FIND v(dout1_10) AT=120.025n

* CHECK dout1_11 Vdout1_11ck23 = 0 time = 120
.meas tran vdout1_11ck23 FIND v(dout1_11) AT=120.025n

* CHECK dout1_0 Vdout1_0ck25 = 0 time = 130
.meas tran vdout1_0ck25 FIND v(dout1_0) AT=130.025n

* CHECK dout1_1 Vdout1_1ck25 = 0 time = 130
.meas tran vdout1_1ck25 FIND v(dout1_1) AT=130.025n

* CHECK dout1_2 Vdout1_2ck25 = 1.0 time = 130
.meas tran vdout1_2ck25 FIND v(dout1_2) AT=130.025n

* CHECK dout1_3 Vdout1_3ck25 = 0 time = 130
.meas tran vdout1_3ck25 FIND v(dout1_3) AT=130.025n

* CHECK dout1_4 Vdout1_4ck25 = 0 time = 130
.meas tran vdout1_4ck25 FIND v(dout1_4) AT=130.025n

* CHECK dout1_5 Vdout1_5ck25 = 1.0 time = 130
.meas tran vdout1_5ck25 FIND v(dout1_5) AT=130.025n

* CHECK dout1_6 Vdout1_6ck25 = 0 time = 130
.meas tran vdout1_6ck25 FIND v(dout1_6) AT=130.025n

* CHECK dout1_7 Vdout1_7ck25 = 1.0 time = 130
.meas tran vdout1_7ck25 FIND v(dout1_7) AT=130.025n

* CHECK dout1_8 Vdout1_8ck25 = 0 time = 130
.meas tran vdout1_8ck25 FIND v(dout1_8) AT=130.025n

* CHECK dout1_9 Vdout1_9ck25 = 0 time = 130
.meas tran vdout1_9ck25 FIND v(dout1_9) AT=130.025n

* CHECK dout1_10 Vdout1_10ck25 = 0 time = 130
.meas tran vdout1_10ck25 FIND v(dout1_10) AT=130.025n

* CHECK dout1_11 Vdout1_11ck25 = 0 time = 130
.meas tran vdout1_11ck25 FIND v(dout1_11) AT=130.025n

* CHECK dout1_0 Vdout1_0ck26 = 1.0 time = 135
.meas tran vdout1_0ck26 FIND v(dout1_0) AT=135.025n

* CHECK dout1_1 Vdout1_1ck26 = 0 time = 135
.meas tran vdout1_1ck26 FIND v(dout1_1) AT=135.025n

* CHECK dout1_2 Vdout1_2ck26 = 0 time = 135
.meas tran vdout1_2ck26 FIND v(dout1_2) AT=135.025n

* CHECK dout1_3 Vdout1_3ck26 = 0 time = 135
.meas tran vdout1_3ck26 FIND v(dout1_3) AT=135.025n

* CHECK dout1_4 Vdout1_4ck26 = 0 time = 135
.meas tran vdout1_4ck26 FIND v(dout1_4) AT=135.025n

* CHECK dout1_5 Vdout1_5ck26 = 0 time = 135
.meas tran vdout1_5ck26 FIND v(dout1_5) AT=135.025n

* CHECK dout1_6 Vdout1_6ck26 = 0 time = 135
.meas tran vdout1_6ck26 FIND v(dout1_6) AT=135.025n

* CHECK dout1_7 Vdout1_7ck26 = 0 time = 135
.meas tran vdout1_7ck26 FIND v(dout1_7) AT=135.025n

* CHECK dout1_8 Vdout1_8ck26 = 0 time = 135
.meas tran vdout1_8ck26 FIND v(dout1_8) AT=135.025n

* CHECK dout1_9 Vdout1_9ck26 = 0 time = 135
.meas tran vdout1_9ck26 FIND v(dout1_9) AT=135.025n

* CHECK dout1_10 Vdout1_10ck26 = 0 time = 135
.meas tran vdout1_10ck26 FIND v(dout1_10) AT=135.025n

* CHECK dout1_11 Vdout1_11ck26 = 0 time = 135
.meas tran vdout1_11ck26 FIND v(dout1_11) AT=135.025n

* CHECK dout1_0 Vdout1_0ck28 = 0 time = 145
.meas tran vdout1_0ck28 FIND v(dout1_0) AT=145.025n

* CHECK dout1_1 Vdout1_1ck28 = 0 time = 145
.meas tran vdout1_1ck28 FIND v(dout1_1) AT=145.025n

* CHECK dout1_2 Vdout1_2ck28 = 0 time = 145
.meas tran vdout1_2ck28 FIND v(dout1_2) AT=145.025n

* CHECK dout1_3 Vdout1_3ck28 = 0 time = 145
.meas tran vdout1_3ck28 FIND v(dout1_3) AT=145.025n

* CHECK dout1_4 Vdout1_4ck28 = 1.0 time = 145
.meas tran vdout1_4ck28 FIND v(dout1_4) AT=145.025n

* CHECK dout1_5 Vdout1_5ck28 = 0 time = 145
.meas tran vdout1_5ck28 FIND v(dout1_5) AT=145.025n

* CHECK dout1_6 Vdout1_6ck28 = 1.0 time = 145
.meas tran vdout1_6ck28 FIND v(dout1_6) AT=145.025n

* CHECK dout1_7 Vdout1_7ck28 = 0 time = 145
.meas tran vdout1_7ck28 FIND v(dout1_7) AT=145.025n

* CHECK dout1_8 Vdout1_8ck28 = 0 time = 145
.meas tran vdout1_8ck28 FIND v(dout1_8) AT=145.025n

* CHECK dout1_9 Vdout1_9ck28 = 1.0 time = 145
.meas tran vdout1_9ck28 FIND v(dout1_9) AT=145.025n

* CHECK dout1_10 Vdout1_10ck28 = 1.0 time = 145
.meas tran vdout1_10ck28 FIND v(dout1_10) AT=145.025n

* CHECK dout1_11 Vdout1_11ck28 = 0 time = 145
.meas tran vdout1_11ck28 FIND v(dout1_11) AT=145.025n

* CHECK dout1_0 Vdout1_0ck29 = 0 time = 150
.meas tran vdout1_0ck29 FIND v(dout1_0) AT=150.025n

* CHECK dout1_1 Vdout1_1ck29 = 0 time = 150
.meas tran vdout1_1ck29 FIND v(dout1_1) AT=150.025n

* CHECK dout1_2 Vdout1_2ck29 = 1.0 time = 150
.meas tran vdout1_2ck29 FIND v(dout1_2) AT=150.025n

* CHECK dout1_3 Vdout1_3ck29 = 0 time = 150
.meas tran vdout1_3ck29 FIND v(dout1_3) AT=150.025n

* CHECK dout1_4 Vdout1_4ck29 = 0 time = 150
.meas tran vdout1_4ck29 FIND v(dout1_4) AT=150.025n

* CHECK dout1_5 Vdout1_5ck29 = 1.0 time = 150
.meas tran vdout1_5ck29 FIND v(dout1_5) AT=150.025n

* CHECK dout1_6 Vdout1_6ck29 = 0 time = 150
.meas tran vdout1_6ck29 FIND v(dout1_6) AT=150.025n

* CHECK dout1_7 Vdout1_7ck29 = 1.0 time = 150
.meas tran vdout1_7ck29 FIND v(dout1_7) AT=150.025n

* CHECK dout1_8 Vdout1_8ck29 = 0 time = 150
.meas tran vdout1_8ck29 FIND v(dout1_8) AT=150.025n

* CHECK dout1_9 Vdout1_9ck29 = 0 time = 150
.meas tran vdout1_9ck29 FIND v(dout1_9) AT=150.025n

* CHECK dout1_10 Vdout1_10ck29 = 0 time = 150
.meas tran vdout1_10ck29 FIND v(dout1_10) AT=150.025n

* CHECK dout1_11 Vdout1_11ck29 = 0 time = 150
.meas tran vdout1_11ck29 FIND v(dout1_11) AT=150.025n

* CHECK dout1_0 Vdout1_0ck36 = 1.0 time = 185
.meas tran vdout1_0ck36 FIND v(dout1_0) AT=185.025n

* CHECK dout1_1 Vdout1_1ck36 = 0 time = 185
.meas tran vdout1_1ck36 FIND v(dout1_1) AT=185.025n

* CHECK dout1_2 Vdout1_2ck36 = 0 time = 185
.meas tran vdout1_2ck36 FIND v(dout1_2) AT=185.025n

* CHECK dout1_3 Vdout1_3ck36 = 0 time = 185
.meas tran vdout1_3ck36 FIND v(dout1_3) AT=185.025n

* CHECK dout1_4 Vdout1_4ck36 = 0 time = 185
.meas tran vdout1_4ck36 FIND v(dout1_4) AT=185.025n

* CHECK dout1_5 Vdout1_5ck36 = 0 time = 185
.meas tran vdout1_5ck36 FIND v(dout1_5) AT=185.025n

* CHECK dout1_6 Vdout1_6ck36 = 0 time = 185
.meas tran vdout1_6ck36 FIND v(dout1_6) AT=185.025n

* CHECK dout1_7 Vdout1_7ck36 = 0 time = 185
.meas tran vdout1_7ck36 FIND v(dout1_7) AT=185.025n

* CHECK dout1_8 Vdout1_8ck36 = 0 time = 185
.meas tran vdout1_8ck36 FIND v(dout1_8) AT=185.025n

* CHECK dout1_9 Vdout1_9ck36 = 0 time = 185
.meas tran vdout1_9ck36 FIND v(dout1_9) AT=185.025n

* CHECK dout1_10 Vdout1_10ck36 = 0 time = 185
.meas tran vdout1_10ck36 FIND v(dout1_10) AT=185.025n

* CHECK dout1_11 Vdout1_11ck36 = 0 time = 185
.meas tran vdout1_11ck36 FIND v(dout1_11) AT=185.025n

* CHECK dout1_0 Vdout1_0ck39 = 0 time = 200
.meas tran vdout1_0ck39 FIND v(dout1_0) AT=200.025n

* CHECK dout1_1 Vdout1_1ck39 = 1.0 time = 200
.meas tran vdout1_1ck39 FIND v(dout1_1) AT=200.025n

* CHECK dout1_2 Vdout1_2ck39 = 1.0 time = 200
.meas tran vdout1_2ck39 FIND v(dout1_2) AT=200.025n

* CHECK dout1_3 Vdout1_3ck39 = 1.0 time = 200
.meas tran vdout1_3ck39 FIND v(dout1_3) AT=200.025n

* CHECK dout1_4 Vdout1_4ck39 = 1.0 time = 200
.meas tran vdout1_4ck39 FIND v(dout1_4) AT=200.025n

* CHECK dout1_5 Vdout1_5ck39 = 0 time = 200
.meas tran vdout1_5ck39 FIND v(dout1_5) AT=200.025n

* CHECK dout1_6 Vdout1_6ck39 = 1.0 time = 200
.meas tran vdout1_6ck39 FIND v(dout1_6) AT=200.025n

* CHECK dout1_7 Vdout1_7ck39 = 1.0 time = 200
.meas tran vdout1_7ck39 FIND v(dout1_7) AT=200.025n

* CHECK dout1_8 Vdout1_8ck39 = 0 time = 200
.meas tran vdout1_8ck39 FIND v(dout1_8) AT=200.025n

* CHECK dout1_9 Vdout1_9ck39 = 0 time = 200
.meas tran vdout1_9ck39 FIND v(dout1_9) AT=200.025n

* CHECK dout1_10 Vdout1_10ck39 = 1.0 time = 200
.meas tran vdout1_10ck39 FIND v(dout1_10) AT=200.025n

* CHECK dout1_11 Vdout1_11ck39 = 0 time = 200
.meas tran vdout1_11ck39 FIND v(dout1_11) AT=200.025n

* CHECK dout1_0 Vdout1_0ck40 = 0 time = 205
.meas tran vdout1_0ck40 FIND v(dout1_0) AT=205.025n

* CHECK dout1_1 Vdout1_1ck40 = 0 time = 205
.meas tran vdout1_1ck40 FIND v(dout1_1) AT=205.025n

* CHECK dout1_2 Vdout1_2ck40 = 1.0 time = 205
.meas tran vdout1_2ck40 FIND v(dout1_2) AT=205.025n

* CHECK dout1_3 Vdout1_3ck40 = 0 time = 205
.meas tran vdout1_3ck40 FIND v(dout1_3) AT=205.025n

* CHECK dout1_4 Vdout1_4ck40 = 0 time = 205
.meas tran vdout1_4ck40 FIND v(dout1_4) AT=205.025n

* CHECK dout1_5 Vdout1_5ck40 = 1.0 time = 205
.meas tran vdout1_5ck40 FIND v(dout1_5) AT=205.025n

* CHECK dout1_6 Vdout1_6ck40 = 0 time = 205
.meas tran vdout1_6ck40 FIND v(dout1_6) AT=205.025n

* CHECK dout1_7 Vdout1_7ck40 = 1.0 time = 205
.meas tran vdout1_7ck40 FIND v(dout1_7) AT=205.025n

* CHECK dout1_8 Vdout1_8ck40 = 0 time = 205
.meas tran vdout1_8ck40 FIND v(dout1_8) AT=205.025n

* CHECK dout1_9 Vdout1_9ck40 = 0 time = 205
.meas tran vdout1_9ck40 FIND v(dout1_9) AT=205.025n

* CHECK dout1_10 Vdout1_10ck40 = 0 time = 205
.meas tran vdout1_10ck40 FIND v(dout1_10) AT=205.025n

* CHECK dout1_11 Vdout1_11ck40 = 0 time = 205
.meas tran vdout1_11ck40 FIND v(dout1_11) AT=205.025n

* CHECK dout1_0 Vdout1_0ck42 = 0 time = 215
.meas tran vdout1_0ck42 FIND v(dout1_0) AT=215.025n

* CHECK dout1_1 Vdout1_1ck42 = 1.0 time = 215
.meas tran vdout1_1ck42 FIND v(dout1_1) AT=215.025n

* CHECK dout1_2 Vdout1_2ck42 = 1.0 time = 215
.meas tran vdout1_2ck42 FIND v(dout1_2) AT=215.025n

* CHECK dout1_3 Vdout1_3ck42 = 1.0 time = 215
.meas tran vdout1_3ck42 FIND v(dout1_3) AT=215.025n

* CHECK dout1_4 Vdout1_4ck42 = 1.0 time = 215
.meas tran vdout1_4ck42 FIND v(dout1_4) AT=215.025n

* CHECK dout1_5 Vdout1_5ck42 = 0 time = 215
.meas tran vdout1_5ck42 FIND v(dout1_5) AT=215.025n

* CHECK dout1_6 Vdout1_6ck42 = 1.0 time = 215
.meas tran vdout1_6ck42 FIND v(dout1_6) AT=215.025n

* CHECK dout1_7 Vdout1_7ck42 = 1.0 time = 215
.meas tran vdout1_7ck42 FIND v(dout1_7) AT=215.025n

* CHECK dout1_8 Vdout1_8ck42 = 0 time = 215
.meas tran vdout1_8ck42 FIND v(dout1_8) AT=215.025n

* CHECK dout1_9 Vdout1_9ck42 = 0 time = 215
.meas tran vdout1_9ck42 FIND v(dout1_9) AT=215.025n

* CHECK dout1_10 Vdout1_10ck42 = 1.0 time = 215
.meas tran vdout1_10ck42 FIND v(dout1_10) AT=215.025n

* CHECK dout1_11 Vdout1_11ck42 = 0 time = 215
.meas tran vdout1_11ck42 FIND v(dout1_11) AT=215.025n

* CHECK dout1_0 Vdout1_0ck48 = 0 time = 245
.meas tran vdout1_0ck48 FIND v(dout1_0) AT=245.025n

* CHECK dout1_1 Vdout1_1ck48 = 1.0 time = 245
.meas tran vdout1_1ck48 FIND v(dout1_1) AT=245.025n

* CHECK dout1_2 Vdout1_2ck48 = 1.0 time = 245
.meas tran vdout1_2ck48 FIND v(dout1_2) AT=245.025n

* CHECK dout1_3 Vdout1_3ck48 = 1.0 time = 245
.meas tran vdout1_3ck48 FIND v(dout1_3) AT=245.025n

* CHECK dout1_4 Vdout1_4ck48 = 1.0 time = 245
.meas tran vdout1_4ck48 FIND v(dout1_4) AT=245.025n

* CHECK dout1_5 Vdout1_5ck48 = 0 time = 245
.meas tran vdout1_5ck48 FIND v(dout1_5) AT=245.025n

* CHECK dout1_6 Vdout1_6ck48 = 1.0 time = 245
.meas tran vdout1_6ck48 FIND v(dout1_6) AT=245.025n

* CHECK dout1_7 Vdout1_7ck48 = 1.0 time = 245
.meas tran vdout1_7ck48 FIND v(dout1_7) AT=245.025n

* CHECK dout1_8 Vdout1_8ck48 = 0 time = 245
.meas tran vdout1_8ck48 FIND v(dout1_8) AT=245.025n

* CHECK dout1_9 Vdout1_9ck48 = 0 time = 245
.meas tran vdout1_9ck48 FIND v(dout1_9) AT=245.025n

* CHECK dout1_10 Vdout1_10ck48 = 1.0 time = 245
.meas tran vdout1_10ck48 FIND v(dout1_10) AT=245.025n

* CHECK dout1_11 Vdout1_11ck48 = 0 time = 245
.meas tran vdout1_11ck48 FIND v(dout1_11) AT=245.025n

* CHECK dout1_0 Vdout1_0ck54 = 0 time = 275
.meas tran vdout1_0ck54 FIND v(dout1_0) AT=275.025n

* CHECK dout1_1 Vdout1_1ck54 = 1.0 time = 275
.meas tran vdout1_1ck54 FIND v(dout1_1) AT=275.025n

* CHECK dout1_2 Vdout1_2ck54 = 1.0 time = 275
.meas tran vdout1_2ck54 FIND v(dout1_2) AT=275.025n

* CHECK dout1_3 Vdout1_3ck54 = 1.0 time = 275
.meas tran vdout1_3ck54 FIND v(dout1_3) AT=275.025n

* CHECK dout1_4 Vdout1_4ck54 = 1.0 time = 275
.meas tran vdout1_4ck54 FIND v(dout1_4) AT=275.025n

* CHECK dout1_5 Vdout1_5ck54 = 0 time = 275
.meas tran vdout1_5ck54 FIND v(dout1_5) AT=275.025n

* CHECK dout1_6 Vdout1_6ck54 = 1.0 time = 275
.meas tran vdout1_6ck54 FIND v(dout1_6) AT=275.025n

* CHECK dout1_7 Vdout1_7ck54 = 1.0 time = 275
.meas tran vdout1_7ck54 FIND v(dout1_7) AT=275.025n

* CHECK dout1_8 Vdout1_8ck54 = 0 time = 275
.meas tran vdout1_8ck54 FIND v(dout1_8) AT=275.025n

* CHECK dout1_9 Vdout1_9ck54 = 1.0 time = 275
.meas tran vdout1_9ck54 FIND v(dout1_9) AT=275.025n

* CHECK dout1_10 Vdout1_10ck54 = 0 time = 275
.meas tran vdout1_10ck54 FIND v(dout1_10) AT=275.025n

* CHECK dout1_11 Vdout1_11ck54 = 0 time = 275
.meas tran vdout1_11ck54 FIND v(dout1_11) AT=275.025n

* CHECK dout1_0 Vdout1_0ck56 = 0 time = 285
.meas tran vdout1_0ck56 FIND v(dout1_0) AT=285.025n

* CHECK dout1_1 Vdout1_1ck56 = 1.0 time = 285
.meas tran vdout1_1ck56 FIND v(dout1_1) AT=285.025n

* CHECK dout1_2 Vdout1_2ck56 = 1.0 time = 285
.meas tran vdout1_2ck56 FIND v(dout1_2) AT=285.025n

* CHECK dout1_3 Vdout1_3ck56 = 0 time = 285
.meas tran vdout1_3ck56 FIND v(dout1_3) AT=285.025n

* CHECK dout1_4 Vdout1_4ck56 = 1.0 time = 285
.meas tran vdout1_4ck56 FIND v(dout1_4) AT=285.025n

* CHECK dout1_5 Vdout1_5ck56 = 0 time = 285
.meas tran vdout1_5ck56 FIND v(dout1_5) AT=285.025n

* CHECK dout1_6 Vdout1_6ck56 = 0 time = 285
.meas tran vdout1_6ck56 FIND v(dout1_6) AT=285.025n

* CHECK dout1_7 Vdout1_7ck56 = 0 time = 285
.meas tran vdout1_7ck56 FIND v(dout1_7) AT=285.025n

* CHECK dout1_8 Vdout1_8ck56 = 0 time = 285
.meas tran vdout1_8ck56 FIND v(dout1_8) AT=285.025n

* CHECK dout1_9 Vdout1_9ck56 = 0 time = 285
.meas tran vdout1_9ck56 FIND v(dout1_9) AT=285.025n

* CHECK dout1_10 Vdout1_10ck56 = 0 time = 285
.meas tran vdout1_10ck56 FIND v(dout1_10) AT=285.025n

* CHECK dout1_11 Vdout1_11ck56 = 1.0 time = 285
.meas tran vdout1_11ck56 FIND v(dout1_11) AT=285.025n

* CHECK dout1_0 Vdout1_0ck57 = 0 time = 290
.meas tran vdout1_0ck57 FIND v(dout1_0) AT=290.025n

* CHECK dout1_1 Vdout1_1ck57 = 1.0 time = 290
.meas tran vdout1_1ck57 FIND v(dout1_1) AT=290.025n

* CHECK dout1_2 Vdout1_2ck57 = 1.0 time = 290
.meas tran vdout1_2ck57 FIND v(dout1_2) AT=290.025n

* CHECK dout1_3 Vdout1_3ck57 = 1.0 time = 290
.meas tran vdout1_3ck57 FIND v(dout1_3) AT=290.025n

* CHECK dout1_4 Vdout1_4ck57 = 1.0 time = 290
.meas tran vdout1_4ck57 FIND v(dout1_4) AT=290.025n

* CHECK dout1_5 Vdout1_5ck57 = 0 time = 290
.meas tran vdout1_5ck57 FIND v(dout1_5) AT=290.025n

* CHECK dout1_6 Vdout1_6ck57 = 1.0 time = 290
.meas tran vdout1_6ck57 FIND v(dout1_6) AT=290.025n

* CHECK dout1_7 Vdout1_7ck57 = 1.0 time = 290
.meas tran vdout1_7ck57 FIND v(dout1_7) AT=290.025n

* CHECK dout1_8 Vdout1_8ck57 = 0 time = 290
.meas tran vdout1_8ck57 FIND v(dout1_8) AT=290.025n

* CHECK dout1_9 Vdout1_9ck57 = 1.0 time = 290
.meas tran vdout1_9ck57 FIND v(dout1_9) AT=290.025n

* CHECK dout1_10 Vdout1_10ck57 = 0 time = 290
.meas tran vdout1_10ck57 FIND v(dout1_10) AT=290.025n

* CHECK dout1_11 Vdout1_11ck57 = 0 time = 290
.meas tran vdout1_11ck57 FIND v(dout1_11) AT=290.025n

* CHECK dout1_0 Vdout1_0ck60 = 1.0 time = 305
.meas tran vdout1_0ck60 FIND v(dout1_0) AT=305.025n

* CHECK dout1_1 Vdout1_1ck60 = 1.0 time = 305
.meas tran vdout1_1ck60 FIND v(dout1_1) AT=305.025n

* CHECK dout1_2 Vdout1_2ck60 = 1.0 time = 305
.meas tran vdout1_2ck60 FIND v(dout1_2) AT=305.025n

* CHECK dout1_3 Vdout1_3ck60 = 1.0 time = 305
.meas tran vdout1_3ck60 FIND v(dout1_3) AT=305.025n

* CHECK dout1_4 Vdout1_4ck60 = 0 time = 305
.meas tran vdout1_4ck60 FIND v(dout1_4) AT=305.025n

* CHECK dout1_5 Vdout1_5ck60 = 1.0 time = 305
.meas tran vdout1_5ck60 FIND v(dout1_5) AT=305.025n

* CHECK dout1_6 Vdout1_6ck60 = 1.0 time = 305
.meas tran vdout1_6ck60 FIND v(dout1_6) AT=305.025n

* CHECK dout1_7 Vdout1_7ck60 = 0 time = 305
.meas tran vdout1_7ck60 FIND v(dout1_7) AT=305.025n

* CHECK dout1_8 Vdout1_8ck60 = 1.0 time = 305
.meas tran vdout1_8ck60 FIND v(dout1_8) AT=305.025n

* CHECK dout1_9 Vdout1_9ck60 = 1.0 time = 305
.meas tran vdout1_9ck60 FIND v(dout1_9) AT=305.025n

* CHECK dout1_10 Vdout1_10ck60 = 1.0 time = 305
.meas tran vdout1_10ck60 FIND v(dout1_10) AT=305.025n

* CHECK dout1_11 Vdout1_11ck60 = 1.0 time = 305
.meas tran vdout1_11ck60 FIND v(dout1_11) AT=305.025n

* CHECK dout1_0 Vdout1_0ck63 = 0 time = 320
.meas tran vdout1_0ck63 FIND v(dout1_0) AT=320.025n

* CHECK dout1_1 Vdout1_1ck63 = 0 time = 320
.meas tran vdout1_1ck63 FIND v(dout1_1) AT=320.025n

* CHECK dout1_2 Vdout1_2ck63 = 1.0 time = 320
.meas tran vdout1_2ck63 FIND v(dout1_2) AT=320.025n

* CHECK dout1_3 Vdout1_3ck63 = 0 time = 320
.meas tran vdout1_3ck63 FIND v(dout1_3) AT=320.025n

* CHECK dout1_4 Vdout1_4ck63 = 0 time = 320
.meas tran vdout1_4ck63 FIND v(dout1_4) AT=320.025n

* CHECK dout1_5 Vdout1_5ck63 = 1.0 time = 320
.meas tran vdout1_5ck63 FIND v(dout1_5) AT=320.025n

* CHECK dout1_6 Vdout1_6ck63 = 0 time = 320
.meas tran vdout1_6ck63 FIND v(dout1_6) AT=320.025n

* CHECK dout1_7 Vdout1_7ck63 = 1.0 time = 320
.meas tran vdout1_7ck63 FIND v(dout1_7) AT=320.025n

* CHECK dout1_8 Vdout1_8ck63 = 0 time = 320
.meas tran vdout1_8ck63 FIND v(dout1_8) AT=320.025n

* CHECK dout1_9 Vdout1_9ck63 = 0 time = 320
.meas tran vdout1_9ck63 FIND v(dout1_9) AT=320.025n

* CHECK dout1_10 Vdout1_10ck63 = 0 time = 320
.meas tran vdout1_10ck63 FIND v(dout1_10) AT=320.025n

* CHECK dout1_11 Vdout1_11ck63 = 0 time = 320
.meas tran vdout1_11ck63 FIND v(dout1_11) AT=320.025n

* CHECK dout1_0 Vdout1_0ck65 = 0 time = 330
.meas tran vdout1_0ck65 FIND v(dout1_0) AT=330.025n

* CHECK dout1_1 Vdout1_1ck65 = 1.0 time = 330
.meas tran vdout1_1ck65 FIND v(dout1_1) AT=330.025n

* CHECK dout1_2 Vdout1_2ck65 = 1.0 time = 330
.meas tran vdout1_2ck65 FIND v(dout1_2) AT=330.025n

* CHECK dout1_3 Vdout1_3ck65 = 0 time = 330
.meas tran vdout1_3ck65 FIND v(dout1_3) AT=330.025n

* CHECK dout1_4 Vdout1_4ck65 = 1.0 time = 330
.meas tran vdout1_4ck65 FIND v(dout1_4) AT=330.025n

* CHECK dout1_5 Vdout1_5ck65 = 0 time = 330
.meas tran vdout1_5ck65 FIND v(dout1_5) AT=330.025n

* CHECK dout1_6 Vdout1_6ck65 = 0 time = 330
.meas tran vdout1_6ck65 FIND v(dout1_6) AT=330.025n

* CHECK dout1_7 Vdout1_7ck65 = 0 time = 330
.meas tran vdout1_7ck65 FIND v(dout1_7) AT=330.025n

* CHECK dout1_8 Vdout1_8ck65 = 0 time = 330
.meas tran vdout1_8ck65 FIND v(dout1_8) AT=330.025n

* CHECK dout1_9 Vdout1_9ck65 = 0 time = 330
.meas tran vdout1_9ck65 FIND v(dout1_9) AT=330.025n

* CHECK dout1_10 Vdout1_10ck65 = 0 time = 330
.meas tran vdout1_10ck65 FIND v(dout1_10) AT=330.025n

* CHECK dout1_11 Vdout1_11ck65 = 1.0 time = 330
.meas tran vdout1_11ck65 FIND v(dout1_11) AT=330.025n

* CHECK dout1_0 Vdout1_0ck69 = 1.0 time = 350
.meas tran vdout1_0ck69 FIND v(dout1_0) AT=350.025n

* CHECK dout1_1 Vdout1_1ck69 = 1.0 time = 350
.meas tran vdout1_1ck69 FIND v(dout1_1) AT=350.025n

* CHECK dout1_2 Vdout1_2ck69 = 0 time = 350
.meas tran vdout1_2ck69 FIND v(dout1_2) AT=350.025n

* CHECK dout1_3 Vdout1_3ck69 = 0 time = 350
.meas tran vdout1_3ck69 FIND v(dout1_3) AT=350.025n

* CHECK dout1_4 Vdout1_4ck69 = 1.0 time = 350
.meas tran vdout1_4ck69 FIND v(dout1_4) AT=350.025n

* CHECK dout1_5 Vdout1_5ck69 = 1.0 time = 350
.meas tran vdout1_5ck69 FIND v(dout1_5) AT=350.025n

* CHECK dout1_6 Vdout1_6ck69 = 0 time = 350
.meas tran vdout1_6ck69 FIND v(dout1_6) AT=350.025n

* CHECK dout1_7 Vdout1_7ck69 = 1.0 time = 350
.meas tran vdout1_7ck69 FIND v(dout1_7) AT=350.025n

* CHECK dout1_8 Vdout1_8ck69 = 0 time = 350
.meas tran vdout1_8ck69 FIND v(dout1_8) AT=350.025n

* CHECK dout1_9 Vdout1_9ck69 = 1.0 time = 350
.meas tran vdout1_9ck69 FIND v(dout1_9) AT=350.025n

* CHECK dout1_10 Vdout1_10ck69 = 0 time = 350
.meas tran vdout1_10ck69 FIND v(dout1_10) AT=350.025n

* CHECK dout1_11 Vdout1_11ck69 = 1.0 time = 350
.meas tran vdout1_11ck69 FIND v(dout1_11) AT=350.025n

* CHECK dout1_0 Vdout1_0ck70 = 0 time = 355
.meas tran vdout1_0ck70 FIND v(dout1_0) AT=355.025n

* CHECK dout1_1 Vdout1_1ck70 = 1.0 time = 355
.meas tran vdout1_1ck70 FIND v(dout1_1) AT=355.025n

* CHECK dout1_2 Vdout1_2ck70 = 1.0 time = 355
.meas tran vdout1_2ck70 FIND v(dout1_2) AT=355.025n

* CHECK dout1_3 Vdout1_3ck70 = 0 time = 355
.meas tran vdout1_3ck70 FIND v(dout1_3) AT=355.025n

* CHECK dout1_4 Vdout1_4ck70 = 1.0 time = 355
.meas tran vdout1_4ck70 FIND v(dout1_4) AT=355.025n

* CHECK dout1_5 Vdout1_5ck70 = 0 time = 355
.meas tran vdout1_5ck70 FIND v(dout1_5) AT=355.025n

* CHECK dout1_6 Vdout1_6ck70 = 0 time = 355
.meas tran vdout1_6ck70 FIND v(dout1_6) AT=355.025n

* CHECK dout1_7 Vdout1_7ck70 = 0 time = 355
.meas tran vdout1_7ck70 FIND v(dout1_7) AT=355.025n

* CHECK dout1_8 Vdout1_8ck70 = 0 time = 355
.meas tran vdout1_8ck70 FIND v(dout1_8) AT=355.025n

* CHECK dout1_9 Vdout1_9ck70 = 0 time = 355
.meas tran vdout1_9ck70 FIND v(dout1_9) AT=355.025n

* CHECK dout1_10 Vdout1_10ck70 = 0 time = 355
.meas tran vdout1_10ck70 FIND v(dout1_10) AT=355.025n

* CHECK dout1_11 Vdout1_11ck70 = 1.0 time = 355
.meas tran vdout1_11ck70 FIND v(dout1_11) AT=355.025n

* CHECK dout1_0 Vdout1_0ck71 = 0 time = 360
.meas tran vdout1_0ck71 FIND v(dout1_0) AT=360.025n

* CHECK dout1_1 Vdout1_1ck71 = 1.0 time = 360
.meas tran vdout1_1ck71 FIND v(dout1_1) AT=360.025n

* CHECK dout1_2 Vdout1_2ck71 = 0 time = 360
.meas tran vdout1_2ck71 FIND v(dout1_2) AT=360.025n

* CHECK dout1_3 Vdout1_3ck71 = 0 time = 360
.meas tran vdout1_3ck71 FIND v(dout1_3) AT=360.025n

* CHECK dout1_4 Vdout1_4ck71 = 0 time = 360
.meas tran vdout1_4ck71 FIND v(dout1_4) AT=360.025n

* CHECK dout1_5 Vdout1_5ck71 = 1.0 time = 360
.meas tran vdout1_5ck71 FIND v(dout1_5) AT=360.025n

* CHECK dout1_6 Vdout1_6ck71 = 0 time = 360
.meas tran vdout1_6ck71 FIND v(dout1_6) AT=360.025n

* CHECK dout1_7 Vdout1_7ck71 = 0 time = 360
.meas tran vdout1_7ck71 FIND v(dout1_7) AT=360.025n

* CHECK dout1_8 Vdout1_8ck71 = 0 time = 360
.meas tran vdout1_8ck71 FIND v(dout1_8) AT=360.025n

* CHECK dout1_9 Vdout1_9ck71 = 0 time = 360
.meas tran vdout1_9ck71 FIND v(dout1_9) AT=360.025n

* CHECK dout1_10 Vdout1_10ck71 = 1.0 time = 360
.meas tran vdout1_10ck71 FIND v(dout1_10) AT=360.025n

* CHECK dout1_11 Vdout1_11ck71 = 0 time = 360
.meas tran vdout1_11ck71 FIND v(dout1_11) AT=360.025n

* CHECK dout1_0 Vdout1_0ck72 = 0 time = 365
.meas tran vdout1_0ck72 FIND v(dout1_0) AT=365.025n

* CHECK dout1_1 Vdout1_1ck72 = 1.0 time = 365
.meas tran vdout1_1ck72 FIND v(dout1_1) AT=365.025n

* CHECK dout1_2 Vdout1_2ck72 = 1.0 time = 365
.meas tran vdout1_2ck72 FIND v(dout1_2) AT=365.025n

* CHECK dout1_3 Vdout1_3ck72 = 0 time = 365
.meas tran vdout1_3ck72 FIND v(dout1_3) AT=365.025n

* CHECK dout1_4 Vdout1_4ck72 = 1.0 time = 365
.meas tran vdout1_4ck72 FIND v(dout1_4) AT=365.025n

* CHECK dout1_5 Vdout1_5ck72 = 0 time = 365
.meas tran vdout1_5ck72 FIND v(dout1_5) AT=365.025n

* CHECK dout1_6 Vdout1_6ck72 = 0 time = 365
.meas tran vdout1_6ck72 FIND v(dout1_6) AT=365.025n

* CHECK dout1_7 Vdout1_7ck72 = 0 time = 365
.meas tran vdout1_7ck72 FIND v(dout1_7) AT=365.025n

* CHECK dout1_8 Vdout1_8ck72 = 0 time = 365
.meas tran vdout1_8ck72 FIND v(dout1_8) AT=365.025n

* CHECK dout1_9 Vdout1_9ck72 = 0 time = 365
.meas tran vdout1_9ck72 FIND v(dout1_9) AT=365.025n

* CHECK dout1_10 Vdout1_10ck72 = 0 time = 365
.meas tran vdout1_10ck72 FIND v(dout1_10) AT=365.025n

* CHECK dout1_11 Vdout1_11ck72 = 1.0 time = 365
.meas tran vdout1_11ck72 FIND v(dout1_11) AT=365.025n

* CHECK dout1_0 Vdout1_0ck80 = 1.0 time = 405
.meas tran vdout1_0ck80 FIND v(dout1_0) AT=405.025n

* CHECK dout1_1 Vdout1_1ck80 = 0 time = 405
.meas tran vdout1_1ck80 FIND v(dout1_1) AT=405.025n

* CHECK dout1_2 Vdout1_2ck80 = 1.0 time = 405
.meas tran vdout1_2ck80 FIND v(dout1_2) AT=405.025n

* CHECK dout1_3 Vdout1_3ck80 = 0 time = 405
.meas tran vdout1_3ck80 FIND v(dout1_3) AT=405.025n

* CHECK dout1_4 Vdout1_4ck80 = 1.0 time = 405
.meas tran vdout1_4ck80 FIND v(dout1_4) AT=405.025n

* CHECK dout1_5 Vdout1_5ck80 = 0 time = 405
.meas tran vdout1_5ck80 FIND v(dout1_5) AT=405.025n

* CHECK dout1_6 Vdout1_6ck80 = 0 time = 405
.meas tran vdout1_6ck80 FIND v(dout1_6) AT=405.025n

* CHECK dout1_7 Vdout1_7ck80 = 1.0 time = 405
.meas tran vdout1_7ck80 FIND v(dout1_7) AT=405.025n

* CHECK dout1_8 Vdout1_8ck80 = 0 time = 405
.meas tran vdout1_8ck80 FIND v(dout1_8) AT=405.025n

* CHECK dout1_9 Vdout1_9ck80 = 1.0 time = 405
.meas tran vdout1_9ck80 FIND v(dout1_9) AT=405.025n

* CHECK dout1_10 Vdout1_10ck80 = 0 time = 405
.meas tran vdout1_10ck80 FIND v(dout1_10) AT=405.025n

* CHECK dout1_11 Vdout1_11ck80 = 1.0 time = 405
.meas tran vdout1_11ck80 FIND v(dout1_11) AT=405.025n

* CHECK dout1_0 Vdout1_0ck81 = 0 time = 410
.meas tran vdout1_0ck81 FIND v(dout1_0) AT=410.025n

* CHECK dout1_1 Vdout1_1ck81 = 1.0 time = 410
.meas tran vdout1_1ck81 FIND v(dout1_1) AT=410.025n

* CHECK dout1_2 Vdout1_2ck81 = 1.0 time = 410
.meas tran vdout1_2ck81 FIND v(dout1_2) AT=410.025n

* CHECK dout1_3 Vdout1_3ck81 = 0 time = 410
.meas tran vdout1_3ck81 FIND v(dout1_3) AT=410.025n

* CHECK dout1_4 Vdout1_4ck81 = 1.0 time = 410
.meas tran vdout1_4ck81 FIND v(dout1_4) AT=410.025n

* CHECK dout1_5 Vdout1_5ck81 = 0 time = 410
.meas tran vdout1_5ck81 FIND v(dout1_5) AT=410.025n

* CHECK dout1_6 Vdout1_6ck81 = 0 time = 410
.meas tran vdout1_6ck81 FIND v(dout1_6) AT=410.025n

* CHECK dout1_7 Vdout1_7ck81 = 0 time = 410
.meas tran vdout1_7ck81 FIND v(dout1_7) AT=410.025n

* CHECK dout1_8 Vdout1_8ck81 = 0 time = 410
.meas tran vdout1_8ck81 FIND v(dout1_8) AT=410.025n

* CHECK dout1_9 Vdout1_9ck81 = 0 time = 410
.meas tran vdout1_9ck81 FIND v(dout1_9) AT=410.025n

* CHECK dout1_10 Vdout1_10ck81 = 0 time = 410
.meas tran vdout1_10ck81 FIND v(dout1_10) AT=410.025n

* CHECK dout1_11 Vdout1_11ck81 = 1.0 time = 410
.meas tran vdout1_11ck81 FIND v(dout1_11) AT=410.025n

* CHECK dout1_0 Vdout1_0ck82 = 1.0 time = 415
.meas tran vdout1_0ck82 FIND v(dout1_0) AT=415.025n

* CHECK dout1_1 Vdout1_1ck82 = 0 time = 415
.meas tran vdout1_1ck82 FIND v(dout1_1) AT=415.025n

* CHECK dout1_2 Vdout1_2ck82 = 1.0 time = 415
.meas tran vdout1_2ck82 FIND v(dout1_2) AT=415.025n

* CHECK dout1_3 Vdout1_3ck82 = 0 time = 415
.meas tran vdout1_3ck82 FIND v(dout1_3) AT=415.025n

* CHECK dout1_4 Vdout1_4ck82 = 1.0 time = 415
.meas tran vdout1_4ck82 FIND v(dout1_4) AT=415.025n

* CHECK dout1_5 Vdout1_5ck82 = 0 time = 415
.meas tran vdout1_5ck82 FIND v(dout1_5) AT=415.025n

* CHECK dout1_6 Vdout1_6ck82 = 0 time = 415
.meas tran vdout1_6ck82 FIND v(dout1_6) AT=415.025n

* CHECK dout1_7 Vdout1_7ck82 = 1.0 time = 415
.meas tran vdout1_7ck82 FIND v(dout1_7) AT=415.025n

* CHECK dout1_8 Vdout1_8ck82 = 0 time = 415
.meas tran vdout1_8ck82 FIND v(dout1_8) AT=415.025n

* CHECK dout1_9 Vdout1_9ck82 = 1.0 time = 415
.meas tran vdout1_9ck82 FIND v(dout1_9) AT=415.025n

* CHECK dout1_10 Vdout1_10ck82 = 0 time = 415
.meas tran vdout1_10ck82 FIND v(dout1_10) AT=415.025n

* CHECK dout1_11 Vdout1_11ck82 = 1.0 time = 415
.meas tran vdout1_11ck82 FIND v(dout1_11) AT=415.025n

* CHECK dout1_0 Vdout1_0ck83 = 0 time = 420
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

* CHECK dout1_10 Vdout1_10ck83 = 0 time = 420
.meas tran vdout1_10ck83 FIND v(dout1_10) AT=420.025n

* CHECK dout1_11 Vdout1_11ck83 = 0 time = 420
.meas tran vdout1_11ck83 FIND v(dout1_11) AT=420.025n

* CHECK dout1_0 Vdout1_0ck85 = 0 time = 430
.meas tran vdout1_0ck85 FIND v(dout1_0) AT=430.025n

* CHECK dout1_1 Vdout1_1ck85 = 1.0 time = 430
.meas tran vdout1_1ck85 FIND v(dout1_1) AT=430.025n

* CHECK dout1_2 Vdout1_2ck85 = 0 time = 430
.meas tran vdout1_2ck85 FIND v(dout1_2) AT=430.025n

* CHECK dout1_3 Vdout1_3ck85 = 1.0 time = 430
.meas tran vdout1_3ck85 FIND v(dout1_3) AT=430.025n

* CHECK dout1_4 Vdout1_4ck85 = 0 time = 430
.meas tran vdout1_4ck85 FIND v(dout1_4) AT=430.025n

* CHECK dout1_5 Vdout1_5ck85 = 1.0 time = 430
.meas tran vdout1_5ck85 FIND v(dout1_5) AT=430.025n

* CHECK dout1_6 Vdout1_6ck85 = 0 time = 430
.meas tran vdout1_6ck85 FIND v(dout1_6) AT=430.025n

* CHECK dout1_7 Vdout1_7ck85 = 1.0 time = 430
.meas tran vdout1_7ck85 FIND v(dout1_7) AT=430.025n

* CHECK dout1_8 Vdout1_8ck85 = 0 time = 430
.meas tran vdout1_8ck85 FIND v(dout1_8) AT=430.025n

* CHECK dout1_9 Vdout1_9ck85 = 0 time = 430
.meas tran vdout1_9ck85 FIND v(dout1_9) AT=430.025n

* CHECK dout1_10 Vdout1_10ck85 = 1.0 time = 430
.meas tran vdout1_10ck85 FIND v(dout1_10) AT=430.025n

* CHECK dout1_11 Vdout1_11ck85 = 1.0 time = 430
.meas tran vdout1_11ck85 FIND v(dout1_11) AT=430.025n

* CHECK dout1_0 Vdout1_0ck87 = 0 time = 440
.meas tran vdout1_0ck87 FIND v(dout1_0) AT=440.025n

* CHECK dout1_1 Vdout1_1ck87 = 1.0 time = 440
.meas tran vdout1_1ck87 FIND v(dout1_1) AT=440.025n

* CHECK dout1_2 Vdout1_2ck87 = 1.0 time = 440
.meas tran vdout1_2ck87 FIND v(dout1_2) AT=440.025n

* CHECK dout1_3 Vdout1_3ck87 = 0 time = 440
.meas tran vdout1_3ck87 FIND v(dout1_3) AT=440.025n

* CHECK dout1_4 Vdout1_4ck87 = 1.0 time = 440
.meas tran vdout1_4ck87 FIND v(dout1_4) AT=440.025n

* CHECK dout1_5 Vdout1_5ck87 = 0 time = 440
.meas tran vdout1_5ck87 FIND v(dout1_5) AT=440.025n

* CHECK dout1_6 Vdout1_6ck87 = 0 time = 440
.meas tran vdout1_6ck87 FIND v(dout1_6) AT=440.025n

* CHECK dout1_7 Vdout1_7ck87 = 0 time = 440
.meas tran vdout1_7ck87 FIND v(dout1_7) AT=440.025n

* CHECK dout1_8 Vdout1_8ck87 = 0 time = 440
.meas tran vdout1_8ck87 FIND v(dout1_8) AT=440.025n

* CHECK dout1_9 Vdout1_9ck87 = 1.0 time = 440
.meas tran vdout1_9ck87 FIND v(dout1_9) AT=440.025n

* CHECK dout1_10 Vdout1_10ck87 = 1.0 time = 440
.meas tran vdout1_10ck87 FIND v(dout1_10) AT=440.025n

* CHECK dout1_11 Vdout1_11ck87 = 1.0 time = 440
.meas tran vdout1_11ck87 FIND v(dout1_11) AT=440.025n

* CHECK dout1_0 Vdout1_0ck89 = 0 time = 450
.meas tran vdout1_0ck89 FIND v(dout1_0) AT=450.025n

* CHECK dout1_1 Vdout1_1ck89 = 1.0 time = 450
.meas tran vdout1_1ck89 FIND v(dout1_1) AT=450.025n

* CHECK dout1_2 Vdout1_2ck89 = 1.0 time = 450
.meas tran vdout1_2ck89 FIND v(dout1_2) AT=450.025n

* CHECK dout1_3 Vdout1_3ck89 = 1.0 time = 450
.meas tran vdout1_3ck89 FIND v(dout1_3) AT=450.025n

* CHECK dout1_4 Vdout1_4ck89 = 0 time = 450
.meas tran vdout1_4ck89 FIND v(dout1_4) AT=450.025n

* CHECK dout1_5 Vdout1_5ck89 = 1.0 time = 450
.meas tran vdout1_5ck89 FIND v(dout1_5) AT=450.025n

* CHECK dout1_6 Vdout1_6ck89 = 0 time = 450
.meas tran vdout1_6ck89 FIND v(dout1_6) AT=450.025n

* CHECK dout1_7 Vdout1_7ck89 = 1.0 time = 450
.meas tran vdout1_7ck89 FIND v(dout1_7) AT=450.025n

* CHECK dout1_8 Vdout1_8ck89 = 0 time = 450
.meas tran vdout1_8ck89 FIND v(dout1_8) AT=450.025n

* CHECK dout1_9 Vdout1_9ck89 = 0 time = 450
.meas tran vdout1_9ck89 FIND v(dout1_9) AT=450.025n

* CHECK dout1_10 Vdout1_10ck89 = 1.0 time = 450
.meas tran vdout1_10ck89 FIND v(dout1_10) AT=450.025n

* CHECK dout1_11 Vdout1_11ck89 = 0 time = 450
.meas tran vdout1_11ck89 FIND v(dout1_11) AT=450.025n

* CHECK dout1_0 Vdout1_0ck92 = 0 time = 465
.meas tran vdout1_0ck92 FIND v(dout1_0) AT=465.025n

* CHECK dout1_1 Vdout1_1ck92 = 1.0 time = 465
.meas tran vdout1_1ck92 FIND v(dout1_1) AT=465.025n

* CHECK dout1_2 Vdout1_2ck92 = 1.0 time = 465
.meas tran vdout1_2ck92 FIND v(dout1_2) AT=465.025n

* CHECK dout1_3 Vdout1_3ck92 = 0 time = 465
.meas tran vdout1_3ck92 FIND v(dout1_3) AT=465.025n

* CHECK dout1_4 Vdout1_4ck92 = 1.0 time = 465
.meas tran vdout1_4ck92 FIND v(dout1_4) AT=465.025n

* CHECK dout1_5 Vdout1_5ck92 = 1.0 time = 465
.meas tran vdout1_5ck92 FIND v(dout1_5) AT=465.025n

* CHECK dout1_6 Vdout1_6ck92 = 0 time = 465
.meas tran vdout1_6ck92 FIND v(dout1_6) AT=465.025n

* CHECK dout1_7 Vdout1_7ck92 = 1.0 time = 465
.meas tran vdout1_7ck92 FIND v(dout1_7) AT=465.025n

* CHECK dout1_8 Vdout1_8ck92 = 1.0 time = 465
.meas tran vdout1_8ck92 FIND v(dout1_8) AT=465.025n

* CHECK dout1_9 Vdout1_9ck92 = 1.0 time = 465
.meas tran vdout1_9ck92 FIND v(dout1_9) AT=465.025n

* CHECK dout1_10 Vdout1_10ck92 = 0 time = 465
.meas tran vdout1_10ck92 FIND v(dout1_10) AT=465.025n

* CHECK dout1_11 Vdout1_11ck92 = 0 time = 465
.meas tran vdout1_11ck92 FIND v(dout1_11) AT=465.025n

* CHECK dout1_0 Vdout1_0ck93 = 1.0 time = 470
.meas tran vdout1_0ck93 FIND v(dout1_0) AT=470.025n

* CHECK dout1_1 Vdout1_1ck93 = 0 time = 470
.meas tran vdout1_1ck93 FIND v(dout1_1) AT=470.025n

* CHECK dout1_2 Vdout1_2ck93 = 1.0 time = 470
.meas tran vdout1_2ck93 FIND v(dout1_2) AT=470.025n

* CHECK dout1_3 Vdout1_3ck93 = 0 time = 470
.meas tran vdout1_3ck93 FIND v(dout1_3) AT=470.025n

* CHECK dout1_4 Vdout1_4ck93 = 1.0 time = 470
.meas tran vdout1_4ck93 FIND v(dout1_4) AT=470.025n

* CHECK dout1_5 Vdout1_5ck93 = 0 time = 470
.meas tran vdout1_5ck93 FIND v(dout1_5) AT=470.025n

* CHECK dout1_6 Vdout1_6ck93 = 0 time = 470
.meas tran vdout1_6ck93 FIND v(dout1_6) AT=470.025n

* CHECK dout1_7 Vdout1_7ck93 = 1.0 time = 470
.meas tran vdout1_7ck93 FIND v(dout1_7) AT=470.025n

* CHECK dout1_8 Vdout1_8ck93 = 0 time = 470
.meas tran vdout1_8ck93 FIND v(dout1_8) AT=470.025n

* CHECK dout1_9 Vdout1_9ck93 = 1.0 time = 470
.meas tran vdout1_9ck93 FIND v(dout1_9) AT=470.025n

* CHECK dout1_10 Vdout1_10ck93 = 0 time = 470
.meas tran vdout1_10ck93 FIND v(dout1_10) AT=470.025n

* CHECK dout1_11 Vdout1_11ck93 = 1.0 time = 470
.meas tran vdout1_11ck93 FIND v(dout1_11) AT=470.025n

* CHECK dout1_0 Vdout1_0ck96 = 0 time = 485
.meas tran vdout1_0ck96 FIND v(dout1_0) AT=485.025n

* CHECK dout1_1 Vdout1_1ck96 = 1.0 time = 485
.meas tran vdout1_1ck96 FIND v(dout1_1) AT=485.025n

* CHECK dout1_2 Vdout1_2ck96 = 0 time = 485
.meas tran vdout1_2ck96 FIND v(dout1_2) AT=485.025n

* CHECK dout1_3 Vdout1_3ck96 = 0 time = 485
.meas tran vdout1_3ck96 FIND v(dout1_3) AT=485.025n

* CHECK dout1_4 Vdout1_4ck96 = 0 time = 485
.meas tran vdout1_4ck96 FIND v(dout1_4) AT=485.025n

* CHECK dout1_5 Vdout1_5ck96 = 1.0 time = 485
.meas tran vdout1_5ck96 FIND v(dout1_5) AT=485.025n

* CHECK dout1_6 Vdout1_6ck96 = 1.0 time = 485
.meas tran vdout1_6ck96 FIND v(dout1_6) AT=485.025n

* CHECK dout1_7 Vdout1_7ck96 = 1.0 time = 485
.meas tran vdout1_7ck96 FIND v(dout1_7) AT=485.025n

* CHECK dout1_8 Vdout1_8ck96 = 1.0 time = 485
.meas tran vdout1_8ck96 FIND v(dout1_8) AT=485.025n

* CHECK dout1_9 Vdout1_9ck96 = 0 time = 485
.meas tran vdout1_9ck96 FIND v(dout1_9) AT=485.025n

* CHECK dout1_10 Vdout1_10ck96 = 0 time = 485
.meas tran vdout1_10ck96 FIND v(dout1_10) AT=485.025n

* CHECK dout1_11 Vdout1_11ck96 = 1.0 time = 485
.meas tran vdout1_11ck96 FIND v(dout1_11) AT=485.025n

* CHECK dout1_0 Vdout1_0ck97 = 1.0 time = 490
.meas tran vdout1_0ck97 FIND v(dout1_0) AT=490.025n

* CHECK dout1_1 Vdout1_1ck97 = 1.0 time = 490
.meas tran vdout1_1ck97 FIND v(dout1_1) AT=490.025n

* CHECK dout1_2 Vdout1_2ck97 = 1.0 time = 490
.meas tran vdout1_2ck97 FIND v(dout1_2) AT=490.025n

* CHECK dout1_3 Vdout1_3ck97 = 0 time = 490
.meas tran vdout1_3ck97 FIND v(dout1_3) AT=490.025n

* CHECK dout1_4 Vdout1_4ck97 = 1.0 time = 490
.meas tran vdout1_4ck97 FIND v(dout1_4) AT=490.025n

* CHECK dout1_5 Vdout1_5ck97 = 0 time = 490
.meas tran vdout1_5ck97 FIND v(dout1_5) AT=490.025n

* CHECK dout1_6 Vdout1_6ck97 = 1.0 time = 490
.meas tran vdout1_6ck97 FIND v(dout1_6) AT=490.025n

* CHECK dout1_7 Vdout1_7ck97 = 1.0 time = 490
.meas tran vdout1_7ck97 FIND v(dout1_7) AT=490.025n

* CHECK dout1_8 Vdout1_8ck97 = 1.0 time = 490
.meas tran vdout1_8ck97 FIND v(dout1_8) AT=490.025n

* CHECK dout1_9 Vdout1_9ck97 = 0 time = 490
.meas tran vdout1_9ck97 FIND v(dout1_9) AT=490.025n

* CHECK dout1_10 Vdout1_10ck97 = 0 time = 490
.meas tran vdout1_10ck97 FIND v(dout1_10) AT=490.025n

* CHECK dout1_11 Vdout1_11ck97 = 0 time = 490
.meas tran vdout1_11ck97 FIND v(dout1_11) AT=490.025n

* CHECK dout1_0 Vdout1_0ck100 = 0 time = 505
.meas tran vdout1_0ck100 FIND v(dout1_0) AT=505.025n

* CHECK dout1_1 Vdout1_1ck100 = 1.0 time = 505
.meas tran vdout1_1ck100 FIND v(dout1_1) AT=505.025n

* CHECK dout1_2 Vdout1_2ck100 = 0 time = 505
.meas tran vdout1_2ck100 FIND v(dout1_2) AT=505.025n

* CHECK dout1_3 Vdout1_3ck100 = 0 time = 505
.meas tran vdout1_3ck100 FIND v(dout1_3) AT=505.025n

* CHECK dout1_4 Vdout1_4ck100 = 0 time = 505
.meas tran vdout1_4ck100 FIND v(dout1_4) AT=505.025n

* CHECK dout1_5 Vdout1_5ck100 = 1.0 time = 505
.meas tran vdout1_5ck100 FIND v(dout1_5) AT=505.025n

* CHECK dout1_6 Vdout1_6ck100 = 1.0 time = 505
.meas tran vdout1_6ck100 FIND v(dout1_6) AT=505.025n

* CHECK dout1_7 Vdout1_7ck100 = 1.0 time = 505
.meas tran vdout1_7ck100 FIND v(dout1_7) AT=505.025n

* CHECK dout1_8 Vdout1_8ck100 = 1.0 time = 505
.meas tran vdout1_8ck100 FIND v(dout1_8) AT=505.025n

* CHECK dout1_9 Vdout1_9ck100 = 0 time = 505
.meas tran vdout1_9ck100 FIND v(dout1_9) AT=505.025n

* CHECK dout1_10 Vdout1_10ck100 = 0 time = 505
.meas tran vdout1_10ck100 FIND v(dout1_10) AT=505.025n

* CHECK dout1_11 Vdout1_11ck100 = 1.0 time = 505
.meas tran vdout1_11ck100 FIND v(dout1_11) AT=505.025n

* CHECK dout1_0 Vdout1_0ck101 = 1.0 time = 510
.meas tran vdout1_0ck101 FIND v(dout1_0) AT=510.025n

* CHECK dout1_1 Vdout1_1ck101 = 1.0 time = 510
.meas tran vdout1_1ck101 FIND v(dout1_1) AT=510.025n

* CHECK dout1_2 Vdout1_2ck101 = 1.0 time = 510
.meas tran vdout1_2ck101 FIND v(dout1_2) AT=510.025n

* CHECK dout1_3 Vdout1_3ck101 = 0 time = 510
.meas tran vdout1_3ck101 FIND v(dout1_3) AT=510.025n

* CHECK dout1_4 Vdout1_4ck101 = 1.0 time = 510
.meas tran vdout1_4ck101 FIND v(dout1_4) AT=510.025n

* CHECK dout1_5 Vdout1_5ck101 = 0 time = 510
.meas tran vdout1_5ck101 FIND v(dout1_5) AT=510.025n

* CHECK dout1_6 Vdout1_6ck101 = 1.0 time = 510
.meas tran vdout1_6ck101 FIND v(dout1_6) AT=510.025n

* CHECK dout1_7 Vdout1_7ck101 = 1.0 time = 510
.meas tran vdout1_7ck101 FIND v(dout1_7) AT=510.025n

* CHECK dout1_8 Vdout1_8ck101 = 1.0 time = 510
.meas tran vdout1_8ck101 FIND v(dout1_8) AT=510.025n

* CHECK dout1_9 Vdout1_9ck101 = 0 time = 510
.meas tran vdout1_9ck101 FIND v(dout1_9) AT=510.025n

* CHECK dout1_10 Vdout1_10ck101 = 0 time = 510
.meas tran vdout1_10ck101 FIND v(dout1_10) AT=510.025n

* CHECK dout1_11 Vdout1_11ck101 = 0 time = 510
.meas tran vdout1_11ck101 FIND v(dout1_11) AT=510.025n

* CHECK dout1_0 Vdout1_0ck102 = 0 time = 515
.meas tran vdout1_0ck102 FIND v(dout1_0) AT=515.025n

* CHECK dout1_1 Vdout1_1ck102 = 0 time = 515
.meas tran vdout1_1ck102 FIND v(dout1_1) AT=515.025n

* CHECK dout1_2 Vdout1_2ck102 = 0 time = 515
.meas tran vdout1_2ck102 FIND v(dout1_2) AT=515.025n

* CHECK dout1_3 Vdout1_3ck102 = 0 time = 515
.meas tran vdout1_3ck102 FIND v(dout1_3) AT=515.025n

* CHECK dout1_4 Vdout1_4ck102 = 0 time = 515
.meas tran vdout1_4ck102 FIND v(dout1_4) AT=515.025n

* CHECK dout1_5 Vdout1_5ck102 = 1.0 time = 515
.meas tran vdout1_5ck102 FIND v(dout1_5) AT=515.025n

* CHECK dout1_6 Vdout1_6ck102 = 1.0 time = 515
.meas tran vdout1_6ck102 FIND v(dout1_6) AT=515.025n

* CHECK dout1_7 Vdout1_7ck102 = 0 time = 515
.meas tran vdout1_7ck102 FIND v(dout1_7) AT=515.025n

* CHECK dout1_8 Vdout1_8ck102 = 1.0 time = 515
.meas tran vdout1_8ck102 FIND v(dout1_8) AT=515.025n

* CHECK dout1_9 Vdout1_9ck102 = 0 time = 515
.meas tran vdout1_9ck102 FIND v(dout1_9) AT=515.025n

* CHECK dout1_10 Vdout1_10ck102 = 0 time = 515
.meas tran vdout1_10ck102 FIND v(dout1_10) AT=515.025n

* CHECK dout1_11 Vdout1_11ck102 = 0 time = 515
.meas tran vdout1_11ck102 FIND v(dout1_11) AT=515.025n

* CHECK dout1_0 Vdout1_0ck105 = 0 time = 530
.meas tran vdout1_0ck105 FIND v(dout1_0) AT=530.025n

* CHECK dout1_1 Vdout1_1ck105 = 1.0 time = 530
.meas tran vdout1_1ck105 FIND v(dout1_1) AT=530.025n

* CHECK dout1_2 Vdout1_2ck105 = 0 time = 530
.meas tran vdout1_2ck105 FIND v(dout1_2) AT=530.025n

* CHECK dout1_3 Vdout1_3ck105 = 0 time = 530
.meas tran vdout1_3ck105 FIND v(dout1_3) AT=530.025n

* CHECK dout1_4 Vdout1_4ck105 = 0 time = 530
.meas tran vdout1_4ck105 FIND v(dout1_4) AT=530.025n

* CHECK dout1_5 Vdout1_5ck105 = 1.0 time = 530
.meas tran vdout1_5ck105 FIND v(dout1_5) AT=530.025n

* CHECK dout1_6 Vdout1_6ck105 = 1.0 time = 530
.meas tran vdout1_6ck105 FIND v(dout1_6) AT=530.025n

* CHECK dout1_7 Vdout1_7ck105 = 1.0 time = 530
.meas tran vdout1_7ck105 FIND v(dout1_7) AT=530.025n

* CHECK dout1_8 Vdout1_8ck105 = 1.0 time = 530
.meas tran vdout1_8ck105 FIND v(dout1_8) AT=530.025n

* CHECK dout1_9 Vdout1_9ck105 = 0 time = 530
.meas tran vdout1_9ck105 FIND v(dout1_9) AT=530.025n

* CHECK dout1_10 Vdout1_10ck105 = 0 time = 530
.meas tran vdout1_10ck105 FIND v(dout1_10) AT=530.025n

* CHECK dout1_11 Vdout1_11ck105 = 1.0 time = 530
.meas tran vdout1_11ck105 FIND v(dout1_11) AT=530.025n

* CHECK dout1_0 Vdout1_0ck108 = 0 time = 545
.meas tran vdout1_0ck108 FIND v(dout1_0) AT=545.025n

* CHECK dout1_1 Vdout1_1ck108 = 1.0 time = 545
.meas tran vdout1_1ck108 FIND v(dout1_1) AT=545.025n

* CHECK dout1_2 Vdout1_2ck108 = 1.0 time = 545
.meas tran vdout1_2ck108 FIND v(dout1_2) AT=545.025n

* CHECK dout1_3 Vdout1_3ck108 = 0 time = 545
.meas tran vdout1_3ck108 FIND v(dout1_3) AT=545.025n

* CHECK dout1_4 Vdout1_4ck108 = 0 time = 545
.meas tran vdout1_4ck108 FIND v(dout1_4) AT=545.025n

* CHECK dout1_5 Vdout1_5ck108 = 0 time = 545
.meas tran vdout1_5ck108 FIND v(dout1_5) AT=545.025n

* CHECK dout1_6 Vdout1_6ck108 = 0 time = 545
.meas tran vdout1_6ck108 FIND v(dout1_6) AT=545.025n

* CHECK dout1_7 Vdout1_7ck108 = 1.0 time = 545
.meas tran vdout1_7ck108 FIND v(dout1_7) AT=545.025n

* CHECK dout1_8 Vdout1_8ck108 = 0 time = 545
.meas tran vdout1_8ck108 FIND v(dout1_8) AT=545.025n

* CHECK dout1_9 Vdout1_9ck108 = 1.0 time = 545
.meas tran vdout1_9ck108 FIND v(dout1_9) AT=545.025n

* CHECK dout1_10 Vdout1_10ck108 = 0 time = 545
.meas tran vdout1_10ck108 FIND v(dout1_10) AT=545.025n

* CHECK dout1_11 Vdout1_11ck108 = 0 time = 545
.meas tran vdout1_11ck108 FIND v(dout1_11) AT=545.025n

* CHECK dout1_0 Vdout1_0ck110 = 1.0 time = 555
.meas tran vdout1_0ck110 FIND v(dout1_0) AT=555.025n

* CHECK dout1_1 Vdout1_1ck110 = 1.0 time = 555
.meas tran vdout1_1ck110 FIND v(dout1_1) AT=555.025n

* CHECK dout1_2 Vdout1_2ck110 = 1.0 time = 555
.meas tran vdout1_2ck110 FIND v(dout1_2) AT=555.025n

* CHECK dout1_3 Vdout1_3ck110 = 0 time = 555
.meas tran vdout1_3ck110 FIND v(dout1_3) AT=555.025n

* CHECK dout1_4 Vdout1_4ck110 = 1.0 time = 555
.meas tran vdout1_4ck110 FIND v(dout1_4) AT=555.025n

* CHECK dout1_5 Vdout1_5ck110 = 0 time = 555
.meas tran vdout1_5ck110 FIND v(dout1_5) AT=555.025n

* CHECK dout1_6 Vdout1_6ck110 = 1.0 time = 555
.meas tran vdout1_6ck110 FIND v(dout1_6) AT=555.025n

* CHECK dout1_7 Vdout1_7ck110 = 1.0 time = 555
.meas tran vdout1_7ck110 FIND v(dout1_7) AT=555.025n

* CHECK dout1_8 Vdout1_8ck110 = 1.0 time = 555
.meas tran vdout1_8ck110 FIND v(dout1_8) AT=555.025n

* CHECK dout1_9 Vdout1_9ck110 = 0 time = 555
.meas tran vdout1_9ck110 FIND v(dout1_9) AT=555.025n

* CHECK dout1_10 Vdout1_10ck110 = 0 time = 555
.meas tran vdout1_10ck110 FIND v(dout1_10) AT=555.025n

* CHECK dout1_11 Vdout1_11ck110 = 0 time = 555
.meas tran vdout1_11ck110 FIND v(dout1_11) AT=555.025n

* CHECK dout1_0 Vdout1_0ck115 = 1.0 time = 580
.meas tran vdout1_0ck115 FIND v(dout1_0) AT=580.025n

* CHECK dout1_1 Vdout1_1ck115 = 1.0 time = 580
.meas tran vdout1_1ck115 FIND v(dout1_1) AT=580.025n

* CHECK dout1_2 Vdout1_2ck115 = 1.0 time = 580
.meas tran vdout1_2ck115 FIND v(dout1_2) AT=580.025n

* CHECK dout1_3 Vdout1_3ck115 = 0 time = 580
.meas tran vdout1_3ck115 FIND v(dout1_3) AT=580.025n

* CHECK dout1_4 Vdout1_4ck115 = 1.0 time = 580
.meas tran vdout1_4ck115 FIND v(dout1_4) AT=580.025n

* CHECK dout1_5 Vdout1_5ck115 = 0 time = 580
.meas tran vdout1_5ck115 FIND v(dout1_5) AT=580.025n

* CHECK dout1_6 Vdout1_6ck115 = 1.0 time = 580
.meas tran vdout1_6ck115 FIND v(dout1_6) AT=580.025n

* CHECK dout1_7 Vdout1_7ck115 = 1.0 time = 580
.meas tran vdout1_7ck115 FIND v(dout1_7) AT=580.025n

* CHECK dout1_8 Vdout1_8ck115 = 1.0 time = 580
.meas tran vdout1_8ck115 FIND v(dout1_8) AT=580.025n

* CHECK dout1_9 Vdout1_9ck115 = 0 time = 580
.meas tran vdout1_9ck115 FIND v(dout1_9) AT=580.025n

* CHECK dout1_10 Vdout1_10ck115 = 0 time = 580
.meas tran vdout1_10ck115 FIND v(dout1_10) AT=580.025n

* CHECK dout1_11 Vdout1_11ck115 = 0 time = 580
.meas tran vdout1_11ck115 FIND v(dout1_11) AT=580.025n

* CHECK dout1_0 Vdout1_0ck117 = 0 time = 590
.meas tran vdout1_0ck117 FIND v(dout1_0) AT=590.025n

* CHECK dout1_1 Vdout1_1ck117 = 1.0 time = 590
.meas tran vdout1_1ck117 FIND v(dout1_1) AT=590.025n

* CHECK dout1_2 Vdout1_2ck117 = 0 time = 590
.meas tran vdout1_2ck117 FIND v(dout1_2) AT=590.025n

* CHECK dout1_3 Vdout1_3ck117 = 1.0 time = 590
.meas tran vdout1_3ck117 FIND v(dout1_3) AT=590.025n

* CHECK dout1_4 Vdout1_4ck117 = 1.0 time = 590
.meas tran vdout1_4ck117 FIND v(dout1_4) AT=590.025n

* CHECK dout1_5 Vdout1_5ck117 = 0 time = 590
.meas tran vdout1_5ck117 FIND v(dout1_5) AT=590.025n

* CHECK dout1_6 Vdout1_6ck117 = 1.0 time = 590
.meas tran vdout1_6ck117 FIND v(dout1_6) AT=590.025n

* CHECK dout1_7 Vdout1_7ck117 = 1.0 time = 590
.meas tran vdout1_7ck117 FIND v(dout1_7) AT=590.025n

* CHECK dout1_8 Vdout1_8ck117 = 0 time = 590
.meas tran vdout1_8ck117 FIND v(dout1_8) AT=590.025n

* CHECK dout1_9 Vdout1_9ck117 = 1.0 time = 590
.meas tran vdout1_9ck117 FIND v(dout1_9) AT=590.025n

* CHECK dout1_10 Vdout1_10ck117 = 1.0 time = 590
.meas tran vdout1_10ck117 FIND v(dout1_10) AT=590.025n

* CHECK dout1_11 Vdout1_11ck117 = 1.0 time = 590
.meas tran vdout1_11ck117 FIND v(dout1_11) AT=590.025n

* CHECK dout1_0 Vdout1_0ck118 = 0 time = 595
.meas tran vdout1_0ck118 FIND v(dout1_0) AT=595.025n

* CHECK dout1_1 Vdout1_1ck118 = 1.0 time = 595
.meas tran vdout1_1ck118 FIND v(dout1_1) AT=595.025n

* CHECK dout1_2 Vdout1_2ck118 = 1.0 time = 595
.meas tran vdout1_2ck118 FIND v(dout1_2) AT=595.025n

* CHECK dout1_3 Vdout1_3ck118 = 0 time = 595
.meas tran vdout1_3ck118 FIND v(dout1_3) AT=595.025n

* CHECK dout1_4 Vdout1_4ck118 = 0 time = 595
.meas tran vdout1_4ck118 FIND v(dout1_4) AT=595.025n

* CHECK dout1_5 Vdout1_5ck118 = 1.0 time = 595
.meas tran vdout1_5ck118 FIND v(dout1_5) AT=595.025n

* CHECK dout1_6 Vdout1_6ck118 = 1.0 time = 595
.meas tran vdout1_6ck118 FIND v(dout1_6) AT=595.025n

* CHECK dout1_7 Vdout1_7ck118 = 0 time = 595
.meas tran vdout1_7ck118 FIND v(dout1_7) AT=595.025n

* CHECK dout1_8 Vdout1_8ck118 = 1.0 time = 595
.meas tran vdout1_8ck118 FIND v(dout1_8) AT=595.025n

* CHECK dout1_9 Vdout1_9ck118 = 1.0 time = 595
.meas tran vdout1_9ck118 FIND v(dout1_9) AT=595.025n

* CHECK dout1_10 Vdout1_10ck118 = 0 time = 595
.meas tran vdout1_10ck118 FIND v(dout1_10) AT=595.025n

* CHECK dout1_11 Vdout1_11ck118 = 0 time = 595
.meas tran vdout1_11ck118 FIND v(dout1_11) AT=595.025n

* CHECK dout1_0 Vdout1_0ck119 = 0 time = 600
.meas tran vdout1_0ck119 FIND v(dout1_0) AT=600.025n

* CHECK dout1_1 Vdout1_1ck119 = 1.0 time = 600
.meas tran vdout1_1ck119 FIND v(dout1_1) AT=600.025n

* CHECK dout1_2 Vdout1_2ck119 = 0 time = 600
.meas tran vdout1_2ck119 FIND v(dout1_2) AT=600.025n

* CHECK dout1_3 Vdout1_3ck119 = 1.0 time = 600
.meas tran vdout1_3ck119 FIND v(dout1_3) AT=600.025n

* CHECK dout1_4 Vdout1_4ck119 = 1.0 time = 600
.meas tran vdout1_4ck119 FIND v(dout1_4) AT=600.025n

* CHECK dout1_5 Vdout1_5ck119 = 0 time = 600
.meas tran vdout1_5ck119 FIND v(dout1_5) AT=600.025n

* CHECK dout1_6 Vdout1_6ck119 = 1.0 time = 600
.meas tran vdout1_6ck119 FIND v(dout1_6) AT=600.025n

* CHECK dout1_7 Vdout1_7ck119 = 1.0 time = 600
.meas tran vdout1_7ck119 FIND v(dout1_7) AT=600.025n

* CHECK dout1_8 Vdout1_8ck119 = 0 time = 600
.meas tran vdout1_8ck119 FIND v(dout1_8) AT=600.025n

* CHECK dout1_9 Vdout1_9ck119 = 1.0 time = 600
.meas tran vdout1_9ck119 FIND v(dout1_9) AT=600.025n

* CHECK dout1_10 Vdout1_10ck119 = 1.0 time = 600
.meas tran vdout1_10ck119 FIND v(dout1_10) AT=600.025n

* CHECK dout1_11 Vdout1_11ck119 = 1.0 time = 600
.meas tran vdout1_11ck119 FIND v(dout1_11) AT=600.025n

* CHECK dout1_0 Vdout1_0ck125 = 1.0 time = 630
.meas tran vdout1_0ck125 FIND v(dout1_0) AT=630.025n

* CHECK dout1_1 Vdout1_1ck125 = 0 time = 630
.meas tran vdout1_1ck125 FIND v(dout1_1) AT=630.025n

* CHECK dout1_2 Vdout1_2ck125 = 0 time = 630
.meas tran vdout1_2ck125 FIND v(dout1_2) AT=630.025n

* CHECK dout1_3 Vdout1_3ck125 = 0 time = 630
.meas tran vdout1_3ck125 FIND v(dout1_3) AT=630.025n

* CHECK dout1_4 Vdout1_4ck125 = 0 time = 630
.meas tran vdout1_4ck125 FIND v(dout1_4) AT=630.025n

* CHECK dout1_5 Vdout1_5ck125 = 0 time = 630
.meas tran vdout1_5ck125 FIND v(dout1_5) AT=630.025n

* CHECK dout1_6 Vdout1_6ck125 = 1.0 time = 630
.meas tran vdout1_6ck125 FIND v(dout1_6) AT=630.025n

* CHECK dout1_7 Vdout1_7ck125 = 0 time = 630
.meas tran vdout1_7ck125 FIND v(dout1_7) AT=630.025n

* CHECK dout1_8 Vdout1_8ck125 = 1.0 time = 630
.meas tran vdout1_8ck125 FIND v(dout1_8) AT=630.025n

* CHECK dout1_9 Vdout1_9ck125 = 0 time = 630
.meas tran vdout1_9ck125 FIND v(dout1_9) AT=630.025n

* CHECK dout1_10 Vdout1_10ck125 = 1.0 time = 630
.meas tran vdout1_10ck125 FIND v(dout1_10) AT=630.025n

* CHECK dout1_11 Vdout1_11ck125 = 0 time = 630
.meas tran vdout1_11ck125 FIND v(dout1_11) AT=630.025n

* CHECK dout1_0 Vdout1_0ck126 = 0 time = 635
.meas tran vdout1_0ck126 FIND v(dout1_0) AT=635.025n

* CHECK dout1_1 Vdout1_1ck126 = 0 time = 635
.meas tran vdout1_1ck126 FIND v(dout1_1) AT=635.025n

* CHECK dout1_2 Vdout1_2ck126 = 1.0 time = 635
.meas tran vdout1_2ck126 FIND v(dout1_2) AT=635.025n

* CHECK dout1_3 Vdout1_3ck126 = 0 time = 635
.meas tran vdout1_3ck126 FIND v(dout1_3) AT=635.025n

* CHECK dout1_4 Vdout1_4ck126 = 1.0 time = 635
.meas tran vdout1_4ck126 FIND v(dout1_4) AT=635.025n

* CHECK dout1_5 Vdout1_5ck126 = 0 time = 635
.meas tran vdout1_5ck126 FIND v(dout1_5) AT=635.025n

* CHECK dout1_6 Vdout1_6ck126 = 0 time = 635
.meas tran vdout1_6ck126 FIND v(dout1_6) AT=635.025n

* CHECK dout1_7 Vdout1_7ck126 = 1.0 time = 635
.meas tran vdout1_7ck126 FIND v(dout1_7) AT=635.025n

* CHECK dout1_8 Vdout1_8ck126 = 1.0 time = 635
.meas tran vdout1_8ck126 FIND v(dout1_8) AT=635.025n

* CHECK dout1_9 Vdout1_9ck126 = 0 time = 635
.meas tran vdout1_9ck126 FIND v(dout1_9) AT=635.025n

* CHECK dout1_10 Vdout1_10ck126 = 0 time = 635
.meas tran vdout1_10ck126 FIND v(dout1_10) AT=635.025n

* CHECK dout1_11 Vdout1_11ck126 = 1.0 time = 635
.meas tran vdout1_11ck126 FIND v(dout1_11) AT=635.025n

* CHECK dout1_0 Vdout1_0ck127 = 0 time = 640
.meas tran vdout1_0ck127 FIND v(dout1_0) AT=640.025n

* CHECK dout1_1 Vdout1_1ck127 = 1.0 time = 640
.meas tran vdout1_1ck127 FIND v(dout1_1) AT=640.025n

* CHECK dout1_2 Vdout1_2ck127 = 1.0 time = 640
.meas tran vdout1_2ck127 FIND v(dout1_2) AT=640.025n

* CHECK dout1_3 Vdout1_3ck127 = 0 time = 640
.meas tran vdout1_3ck127 FIND v(dout1_3) AT=640.025n

* CHECK dout1_4 Vdout1_4ck127 = 0 time = 640
.meas tran vdout1_4ck127 FIND v(dout1_4) AT=640.025n

* CHECK dout1_5 Vdout1_5ck127 = 1.0 time = 640
.meas tran vdout1_5ck127 FIND v(dout1_5) AT=640.025n

* CHECK dout1_6 Vdout1_6ck127 = 1.0 time = 640
.meas tran vdout1_6ck127 FIND v(dout1_6) AT=640.025n

* CHECK dout1_7 Vdout1_7ck127 = 0 time = 640
.meas tran vdout1_7ck127 FIND v(dout1_7) AT=640.025n

* CHECK dout1_8 Vdout1_8ck127 = 1.0 time = 640
.meas tran vdout1_8ck127 FIND v(dout1_8) AT=640.025n

* CHECK dout1_9 Vdout1_9ck127 = 1.0 time = 640
.meas tran vdout1_9ck127 FIND v(dout1_9) AT=640.025n

* CHECK dout1_10 Vdout1_10ck127 = 0 time = 640
.meas tran vdout1_10ck127 FIND v(dout1_10) AT=640.025n

* CHECK dout1_11 Vdout1_11ck127 = 0 time = 640
.meas tran vdout1_11ck127 FIND v(dout1_11) AT=640.025n

* CHECK dout1_0 Vdout1_0ck129 = 0 time = 650
.meas tran vdout1_0ck129 FIND v(dout1_0) AT=650.025n

* CHECK dout1_1 Vdout1_1ck129 = 0 time = 650
.meas tran vdout1_1ck129 FIND v(dout1_1) AT=650.025n

* CHECK dout1_2 Vdout1_2ck129 = 0 time = 650
.meas tran vdout1_2ck129 FIND v(dout1_2) AT=650.025n

* CHECK dout1_3 Vdout1_3ck129 = 0 time = 650
.meas tran vdout1_3ck129 FIND v(dout1_3) AT=650.025n

* CHECK dout1_4 Vdout1_4ck129 = 0 time = 650
.meas tran vdout1_4ck129 FIND v(dout1_4) AT=650.025n

* CHECK dout1_5 Vdout1_5ck129 = 1.0 time = 650
.meas tran vdout1_5ck129 FIND v(dout1_5) AT=650.025n

* CHECK dout1_6 Vdout1_6ck129 = 1.0 time = 650
.meas tran vdout1_6ck129 FIND v(dout1_6) AT=650.025n

* CHECK dout1_7 Vdout1_7ck129 = 0 time = 650
.meas tran vdout1_7ck129 FIND v(dout1_7) AT=650.025n

* CHECK dout1_8 Vdout1_8ck129 = 1.0 time = 650
.meas tran vdout1_8ck129 FIND v(dout1_8) AT=650.025n

* CHECK dout1_9 Vdout1_9ck129 = 0 time = 650
.meas tran vdout1_9ck129 FIND v(dout1_9) AT=650.025n

* CHECK dout1_10 Vdout1_10ck129 = 0 time = 650
.meas tran vdout1_10ck129 FIND v(dout1_10) AT=650.025n

* CHECK dout1_11 Vdout1_11ck129 = 0 time = 650
.meas tran vdout1_11ck129 FIND v(dout1_11) AT=650.025n

* CHECK dout1_0 Vdout1_0ck134 = 1.0 time = 675
.meas tran vdout1_0ck134 FIND v(dout1_0) AT=675.025n

* CHECK dout1_1 Vdout1_1ck134 = 1.0 time = 675
.meas tran vdout1_1ck134 FIND v(dout1_1) AT=675.025n

* CHECK dout1_2 Vdout1_2ck134 = 1.0 time = 675
.meas tran vdout1_2ck134 FIND v(dout1_2) AT=675.025n

* CHECK dout1_3 Vdout1_3ck134 = 1.0 time = 675
.meas tran vdout1_3ck134 FIND v(dout1_3) AT=675.025n

* CHECK dout1_4 Vdout1_4ck134 = 1.0 time = 675
.meas tran vdout1_4ck134 FIND v(dout1_4) AT=675.025n

* CHECK dout1_5 Vdout1_5ck134 = 1.0 time = 675
.meas tran vdout1_5ck134 FIND v(dout1_5) AT=675.025n

* CHECK dout1_6 Vdout1_6ck134 = 0 time = 675
.meas tran vdout1_6ck134 FIND v(dout1_6) AT=675.025n

* CHECK dout1_7 Vdout1_7ck134 = 0 time = 675
.meas tran vdout1_7ck134 FIND v(dout1_7) AT=675.025n

* CHECK dout1_8 Vdout1_8ck134 = 1.0 time = 675
.meas tran vdout1_8ck134 FIND v(dout1_8) AT=675.025n

* CHECK dout1_9 Vdout1_9ck134 = 1.0 time = 675
.meas tran vdout1_9ck134 FIND v(dout1_9) AT=675.025n

* CHECK dout1_10 Vdout1_10ck134 = 0 time = 675
.meas tran vdout1_10ck134 FIND v(dout1_10) AT=675.025n

* CHECK dout1_11 Vdout1_11ck134 = 0 time = 675
.meas tran vdout1_11ck134 FIND v(dout1_11) AT=675.025n

* CHECK dout1_0 Vdout1_0ck138 = 0 time = 695
.meas tran vdout1_0ck138 FIND v(dout1_0) AT=695.025n

* CHECK dout1_1 Vdout1_1ck138 = 1.0 time = 695
.meas tran vdout1_1ck138 FIND v(dout1_1) AT=695.025n

* CHECK dout1_2 Vdout1_2ck138 = 0 time = 695
.meas tran vdout1_2ck138 FIND v(dout1_2) AT=695.025n

* CHECK dout1_3 Vdout1_3ck138 = 1.0 time = 695
.meas tran vdout1_3ck138 FIND v(dout1_3) AT=695.025n

* CHECK dout1_4 Vdout1_4ck138 = 1.0 time = 695
.meas tran vdout1_4ck138 FIND v(dout1_4) AT=695.025n

* CHECK dout1_5 Vdout1_5ck138 = 0 time = 695
.meas tran vdout1_5ck138 FIND v(dout1_5) AT=695.025n

* CHECK dout1_6 Vdout1_6ck138 = 1.0 time = 695
.meas tran vdout1_6ck138 FIND v(dout1_6) AT=695.025n

* CHECK dout1_7 Vdout1_7ck138 = 1.0 time = 695
.meas tran vdout1_7ck138 FIND v(dout1_7) AT=695.025n

* CHECK dout1_8 Vdout1_8ck138 = 0 time = 695
.meas tran vdout1_8ck138 FIND v(dout1_8) AT=695.025n

* CHECK dout1_9 Vdout1_9ck138 = 1.0 time = 695
.meas tran vdout1_9ck138 FIND v(dout1_9) AT=695.025n

* CHECK dout1_10 Vdout1_10ck138 = 1.0 time = 695
.meas tran vdout1_10ck138 FIND v(dout1_10) AT=695.025n

* CHECK dout1_11 Vdout1_11ck138 = 1.0 time = 695
.meas tran vdout1_11ck138 FIND v(dout1_11) AT=695.025n

* CHECK dout1_0 Vdout1_0ck142 = 0 time = 715
.meas tran vdout1_0ck142 FIND v(dout1_0) AT=715.025n

* CHECK dout1_1 Vdout1_1ck142 = 1.0 time = 715
.meas tran vdout1_1ck142 FIND v(dout1_1) AT=715.025n

* CHECK dout1_2 Vdout1_2ck142 = 1.0 time = 715
.meas tran vdout1_2ck142 FIND v(dout1_2) AT=715.025n

* CHECK dout1_3 Vdout1_3ck142 = 0 time = 715
.meas tran vdout1_3ck142 FIND v(dout1_3) AT=715.025n

* CHECK dout1_4 Vdout1_4ck142 = 1.0 time = 715
.meas tran vdout1_4ck142 FIND v(dout1_4) AT=715.025n

* CHECK dout1_5 Vdout1_5ck142 = 1.0 time = 715
.meas tran vdout1_5ck142 FIND v(dout1_5) AT=715.025n

* CHECK dout1_6 Vdout1_6ck142 = 1.0 time = 715
.meas tran vdout1_6ck142 FIND v(dout1_6) AT=715.025n

* CHECK dout1_7 Vdout1_7ck142 = 0 time = 715
.meas tran vdout1_7ck142 FIND v(dout1_7) AT=715.025n

* CHECK dout1_8 Vdout1_8ck142 = 1.0 time = 715
.meas tran vdout1_8ck142 FIND v(dout1_8) AT=715.025n

* CHECK dout1_9 Vdout1_9ck142 = 1.0 time = 715
.meas tran vdout1_9ck142 FIND v(dout1_9) AT=715.025n

* CHECK dout1_10 Vdout1_10ck142 = 1.0 time = 715
.meas tran vdout1_10ck142 FIND v(dout1_10) AT=715.025n

* CHECK dout1_11 Vdout1_11ck142 = 1.0 time = 715
.meas tran vdout1_11ck142 FIND v(dout1_11) AT=715.025n

* CHECK dout1_0 Vdout1_0ck144 = 0 time = 725
.meas tran vdout1_0ck144 FIND v(dout1_0) AT=725.025n

* CHECK dout1_1 Vdout1_1ck144 = 1.0 time = 725
.meas tran vdout1_1ck144 FIND v(dout1_1) AT=725.025n

* CHECK dout1_2 Vdout1_2ck144 = 1.0 time = 725
.meas tran vdout1_2ck144 FIND v(dout1_2) AT=725.025n

* CHECK dout1_3 Vdout1_3ck144 = 0 time = 725
.meas tran vdout1_3ck144 FIND v(dout1_3) AT=725.025n

* CHECK dout1_4 Vdout1_4ck144 = 1.0 time = 725
.meas tran vdout1_4ck144 FIND v(dout1_4) AT=725.025n

* CHECK dout1_5 Vdout1_5ck144 = 1.0 time = 725
.meas tran vdout1_5ck144 FIND v(dout1_5) AT=725.025n

* CHECK dout1_6 Vdout1_6ck144 = 1.0 time = 725
.meas tran vdout1_6ck144 FIND v(dout1_6) AT=725.025n

* CHECK dout1_7 Vdout1_7ck144 = 0 time = 725
.meas tran vdout1_7ck144 FIND v(dout1_7) AT=725.025n

* CHECK dout1_8 Vdout1_8ck144 = 1.0 time = 725
.meas tran vdout1_8ck144 FIND v(dout1_8) AT=725.025n

* CHECK dout1_9 Vdout1_9ck144 = 1.0 time = 725
.meas tran vdout1_9ck144 FIND v(dout1_9) AT=725.025n

* CHECK dout1_10 Vdout1_10ck144 = 1.0 time = 725
.meas tran vdout1_10ck144 FIND v(dout1_10) AT=725.025n

* CHECK dout1_11 Vdout1_11ck144 = 1.0 time = 725
.meas tran vdout1_11ck144 FIND v(dout1_11) AT=725.025n

* CHECK dout1_0 Vdout1_0ck145 = 0 time = 730
.meas tran vdout1_0ck145 FIND v(dout1_0) AT=730.025n

* CHECK dout1_1 Vdout1_1ck145 = 1.0 time = 730
.meas tran vdout1_1ck145 FIND v(dout1_1) AT=730.025n

* CHECK dout1_2 Vdout1_2ck145 = 1.0 time = 730
.meas tran vdout1_2ck145 FIND v(dout1_2) AT=730.025n

* CHECK dout1_3 Vdout1_3ck145 = 0 time = 730
.meas tran vdout1_3ck145 FIND v(dout1_3) AT=730.025n

* CHECK dout1_4 Vdout1_4ck145 = 0 time = 730
.meas tran vdout1_4ck145 FIND v(dout1_4) AT=730.025n

* CHECK dout1_5 Vdout1_5ck145 = 0 time = 730
.meas tran vdout1_5ck145 FIND v(dout1_5) AT=730.025n

* CHECK dout1_6 Vdout1_6ck145 = 1.0 time = 730
.meas tran vdout1_6ck145 FIND v(dout1_6) AT=730.025n

* CHECK dout1_7 Vdout1_7ck145 = 1.0 time = 730
.meas tran vdout1_7ck145 FIND v(dout1_7) AT=730.025n

* CHECK dout1_8 Vdout1_8ck145 = 1.0 time = 730
.meas tran vdout1_8ck145 FIND v(dout1_8) AT=730.025n

* CHECK dout1_9 Vdout1_9ck145 = 0 time = 730
.meas tran vdout1_9ck145 FIND v(dout1_9) AT=730.025n

* CHECK dout1_10 Vdout1_10ck145 = 0 time = 730
.meas tran vdout1_10ck145 FIND v(dout1_10) AT=730.025n

* CHECK dout1_11 Vdout1_11ck145 = 0 time = 730
.meas tran vdout1_11ck145 FIND v(dout1_11) AT=730.025n

* CHECK dout1_0 Vdout1_0ck151 = 0 time = 760
.meas tran vdout1_0ck151 FIND v(dout1_0) AT=760.025n

* CHECK dout1_1 Vdout1_1ck151 = 1.0 time = 760
.meas tran vdout1_1ck151 FIND v(dout1_1) AT=760.025n

* CHECK dout1_2 Vdout1_2ck151 = 0 time = 760
.meas tran vdout1_2ck151 FIND v(dout1_2) AT=760.025n

* CHECK dout1_3 Vdout1_3ck151 = 1.0 time = 760
.meas tran vdout1_3ck151 FIND v(dout1_3) AT=760.025n

* CHECK dout1_4 Vdout1_4ck151 = 1.0 time = 760
.meas tran vdout1_4ck151 FIND v(dout1_4) AT=760.025n

* CHECK dout1_5 Vdout1_5ck151 = 0 time = 760
.meas tran vdout1_5ck151 FIND v(dout1_5) AT=760.025n

* CHECK dout1_6 Vdout1_6ck151 = 1.0 time = 760
.meas tran vdout1_6ck151 FIND v(dout1_6) AT=760.025n

* CHECK dout1_7 Vdout1_7ck151 = 1.0 time = 760
.meas tran vdout1_7ck151 FIND v(dout1_7) AT=760.025n

* CHECK dout1_8 Vdout1_8ck151 = 0 time = 760
.meas tran vdout1_8ck151 FIND v(dout1_8) AT=760.025n

* CHECK dout1_9 Vdout1_9ck151 = 1.0 time = 760
.meas tran vdout1_9ck151 FIND v(dout1_9) AT=760.025n

* CHECK dout1_10 Vdout1_10ck151 = 1.0 time = 760
.meas tran vdout1_10ck151 FIND v(dout1_10) AT=760.025n

* CHECK dout1_11 Vdout1_11ck151 = 1.0 time = 760
.meas tran vdout1_11ck151 FIND v(dout1_11) AT=760.025n

* CHECK dout1_0 Vdout1_0ck155 = 1.0 time = 780
.meas tran vdout1_0ck155 FIND v(dout1_0) AT=780.025n

* CHECK dout1_1 Vdout1_1ck155 = 0 time = 780
.meas tran vdout1_1ck155 FIND v(dout1_1) AT=780.025n

* CHECK dout1_2 Vdout1_2ck155 = 1.0 time = 780
.meas tran vdout1_2ck155 FIND v(dout1_2) AT=780.025n

* CHECK dout1_3 Vdout1_3ck155 = 1.0 time = 780
.meas tran vdout1_3ck155 FIND v(dout1_3) AT=780.025n

* CHECK dout1_4 Vdout1_4ck155 = 0 time = 780
.meas tran vdout1_4ck155 FIND v(dout1_4) AT=780.025n

* CHECK dout1_5 Vdout1_5ck155 = 1.0 time = 780
.meas tran vdout1_5ck155 FIND v(dout1_5) AT=780.025n

* CHECK dout1_6 Vdout1_6ck155 = 0 time = 780
.meas tran vdout1_6ck155 FIND v(dout1_6) AT=780.025n

* CHECK dout1_7 Vdout1_7ck155 = 1.0 time = 780
.meas tran vdout1_7ck155 FIND v(dout1_7) AT=780.025n

* CHECK dout1_8 Vdout1_8ck155 = 0 time = 780
.meas tran vdout1_8ck155 FIND v(dout1_8) AT=780.025n

* CHECK dout1_9 Vdout1_9ck155 = 0 time = 780
.meas tran vdout1_9ck155 FIND v(dout1_9) AT=780.025n

* CHECK dout1_10 Vdout1_10ck155 = 1.0 time = 780
.meas tran vdout1_10ck155 FIND v(dout1_10) AT=780.025n

* CHECK dout1_11 Vdout1_11ck155 = 0 time = 780
.meas tran vdout1_11ck155 FIND v(dout1_11) AT=780.025n

* CHECK dout1_0 Vdout1_0ck160 = 1.0 time = 805
.meas tran vdout1_0ck160 FIND v(dout1_0) AT=805.025n

* CHECK dout1_1 Vdout1_1ck160 = 1.0 time = 805
.meas tran vdout1_1ck160 FIND v(dout1_1) AT=805.025n

* CHECK dout1_2 Vdout1_2ck160 = 1.0 time = 805
.meas tran vdout1_2ck160 FIND v(dout1_2) AT=805.025n

* CHECK dout1_3 Vdout1_3ck160 = 1.0 time = 805
.meas tran vdout1_3ck160 FIND v(dout1_3) AT=805.025n

* CHECK dout1_4 Vdout1_4ck160 = 1.0 time = 805
.meas tran vdout1_4ck160 FIND v(dout1_4) AT=805.025n

* CHECK dout1_5 Vdout1_5ck160 = 1.0 time = 805
.meas tran vdout1_5ck160 FIND v(dout1_5) AT=805.025n

* CHECK dout1_6 Vdout1_6ck160 = 0 time = 805
.meas tran vdout1_6ck160 FIND v(dout1_6) AT=805.025n

* CHECK dout1_7 Vdout1_7ck160 = 1.0 time = 805
.meas tran vdout1_7ck160 FIND v(dout1_7) AT=805.025n

* CHECK dout1_8 Vdout1_8ck160 = 0 time = 805
.meas tran vdout1_8ck160 FIND v(dout1_8) AT=805.025n

* CHECK dout1_9 Vdout1_9ck160 = 0 time = 805
.meas tran vdout1_9ck160 FIND v(dout1_9) AT=805.025n

* CHECK dout1_10 Vdout1_10ck160 = 1.0 time = 805
.meas tran vdout1_10ck160 FIND v(dout1_10) AT=805.025n

* CHECK dout1_11 Vdout1_11ck160 = 1.0 time = 805
.meas tran vdout1_11ck160 FIND v(dout1_11) AT=805.025n

* CHECK dout1_0 Vdout1_0ck162 = 0 time = 815
.meas tran vdout1_0ck162 FIND v(dout1_0) AT=815.025n

* CHECK dout1_1 Vdout1_1ck162 = 1.0 time = 815
.meas tran vdout1_1ck162 FIND v(dout1_1) AT=815.025n

* CHECK dout1_2 Vdout1_2ck162 = 1.0 time = 815
.meas tran vdout1_2ck162 FIND v(dout1_2) AT=815.025n

* CHECK dout1_3 Vdout1_3ck162 = 0 time = 815
.meas tran vdout1_3ck162 FIND v(dout1_3) AT=815.025n

* CHECK dout1_4 Vdout1_4ck162 = 0 time = 815
.meas tran vdout1_4ck162 FIND v(dout1_4) AT=815.025n

* CHECK dout1_5 Vdout1_5ck162 = 1.0 time = 815
.meas tran vdout1_5ck162 FIND v(dout1_5) AT=815.025n

* CHECK dout1_6 Vdout1_6ck162 = 1.0 time = 815
.meas tran vdout1_6ck162 FIND v(dout1_6) AT=815.025n

* CHECK dout1_7 Vdout1_7ck162 = 0 time = 815
.meas tran vdout1_7ck162 FIND v(dout1_7) AT=815.025n

* CHECK dout1_8 Vdout1_8ck162 = 0 time = 815
.meas tran vdout1_8ck162 FIND v(dout1_8) AT=815.025n

* CHECK dout1_9 Vdout1_9ck162 = 1.0 time = 815
.meas tran vdout1_9ck162 FIND v(dout1_9) AT=815.025n

* CHECK dout1_10 Vdout1_10ck162 = 0 time = 815
.meas tran vdout1_10ck162 FIND v(dout1_10) AT=815.025n

* CHECK dout1_11 Vdout1_11ck162 = 1.0 time = 815
.meas tran vdout1_11ck162 FIND v(dout1_11) AT=815.025n

* CHECK dout1_0 Vdout1_0ck164 = 0 time = 825
.meas tran vdout1_0ck164 FIND v(dout1_0) AT=825.025n

* CHECK dout1_1 Vdout1_1ck164 = 1.0 time = 825
.meas tran vdout1_1ck164 FIND v(dout1_1) AT=825.025n

* CHECK dout1_2 Vdout1_2ck164 = 1.0 time = 825
.meas tran vdout1_2ck164 FIND v(dout1_2) AT=825.025n

* CHECK dout1_3 Vdout1_3ck164 = 0 time = 825
.meas tran vdout1_3ck164 FIND v(dout1_3) AT=825.025n

* CHECK dout1_4 Vdout1_4ck164 = 0 time = 825
.meas tran vdout1_4ck164 FIND v(dout1_4) AT=825.025n

* CHECK dout1_5 Vdout1_5ck164 = 1.0 time = 825
.meas tran vdout1_5ck164 FIND v(dout1_5) AT=825.025n

* CHECK dout1_6 Vdout1_6ck164 = 1.0 time = 825
.meas tran vdout1_6ck164 FIND v(dout1_6) AT=825.025n

* CHECK dout1_7 Vdout1_7ck164 = 0 time = 825
.meas tran vdout1_7ck164 FIND v(dout1_7) AT=825.025n

* CHECK dout1_8 Vdout1_8ck164 = 0 time = 825
.meas tran vdout1_8ck164 FIND v(dout1_8) AT=825.025n

* CHECK dout1_9 Vdout1_9ck164 = 1.0 time = 825
.meas tran vdout1_9ck164 FIND v(dout1_9) AT=825.025n

* CHECK dout1_10 Vdout1_10ck164 = 0 time = 825
.meas tran vdout1_10ck164 FIND v(dout1_10) AT=825.025n

* CHECK dout1_11 Vdout1_11ck164 = 1.0 time = 825
.meas tran vdout1_11ck164 FIND v(dout1_11) AT=825.025n

* CHECK dout1_0 Vdout1_0ck166 = 1.0 time = 835
.meas tran vdout1_0ck166 FIND v(dout1_0) AT=835.025n

* CHECK dout1_1 Vdout1_1ck166 = 1.0 time = 835
.meas tran vdout1_1ck166 FIND v(dout1_1) AT=835.025n

* CHECK dout1_2 Vdout1_2ck166 = 1.0 time = 835
.meas tran vdout1_2ck166 FIND v(dout1_2) AT=835.025n

* CHECK dout1_3 Vdout1_3ck166 = 1.0 time = 835
.meas tran vdout1_3ck166 FIND v(dout1_3) AT=835.025n

* CHECK dout1_4 Vdout1_4ck166 = 1.0 time = 835
.meas tran vdout1_4ck166 FIND v(dout1_4) AT=835.025n

* CHECK dout1_5 Vdout1_5ck166 = 1.0 time = 835
.meas tran vdout1_5ck166 FIND v(dout1_5) AT=835.025n

* CHECK dout1_6 Vdout1_6ck166 = 0 time = 835
.meas tran vdout1_6ck166 FIND v(dout1_6) AT=835.025n

* CHECK dout1_7 Vdout1_7ck166 = 1.0 time = 835
.meas tran vdout1_7ck166 FIND v(dout1_7) AT=835.025n

* CHECK dout1_8 Vdout1_8ck166 = 0 time = 835
.meas tran vdout1_8ck166 FIND v(dout1_8) AT=835.025n

* CHECK dout1_9 Vdout1_9ck166 = 0 time = 835
.meas tran vdout1_9ck166 FIND v(dout1_9) AT=835.025n

* CHECK dout1_10 Vdout1_10ck166 = 1.0 time = 835
.meas tran vdout1_10ck166 FIND v(dout1_10) AT=835.025n

* CHECK dout1_11 Vdout1_11ck166 = 1.0 time = 835
.meas tran vdout1_11ck166 FIND v(dout1_11) AT=835.025n

* CHECK dout1_0 Vdout1_0ck167 = 0 time = 840
.meas tran vdout1_0ck167 FIND v(dout1_0) AT=840.025n

* CHECK dout1_1 Vdout1_1ck167 = 0 time = 840
.meas tran vdout1_1ck167 FIND v(dout1_1) AT=840.025n

* CHECK dout1_2 Vdout1_2ck167 = 1.0 time = 840
.meas tran vdout1_2ck167 FIND v(dout1_2) AT=840.025n

* CHECK dout1_3 Vdout1_3ck167 = 0 time = 840
.meas tran vdout1_3ck167 FIND v(dout1_3) AT=840.025n

* CHECK dout1_4 Vdout1_4ck167 = 1.0 time = 840
.meas tran vdout1_4ck167 FIND v(dout1_4) AT=840.025n

* CHECK dout1_5 Vdout1_5ck167 = 1.0 time = 840
.meas tran vdout1_5ck167 FIND v(dout1_5) AT=840.025n

* CHECK dout1_6 Vdout1_6ck167 = 1.0 time = 840
.meas tran vdout1_6ck167 FIND v(dout1_6) AT=840.025n

* CHECK dout1_7 Vdout1_7ck167 = 0 time = 840
.meas tran vdout1_7ck167 FIND v(dout1_7) AT=840.025n

* CHECK dout1_8 Vdout1_8ck167 = 1.0 time = 840
.meas tran vdout1_8ck167 FIND v(dout1_8) AT=840.025n

* CHECK dout1_9 Vdout1_9ck167 = 1.0 time = 840
.meas tran vdout1_9ck167 FIND v(dout1_9) AT=840.025n

* CHECK dout1_10 Vdout1_10ck167 = 0 time = 840
.meas tran vdout1_10ck167 FIND v(dout1_10) AT=840.025n

* CHECK dout1_11 Vdout1_11ck167 = 0 time = 840
.meas tran vdout1_11ck167 FIND v(dout1_11) AT=840.025n

* CHECK dout1_0 Vdout1_0ck171 = 0 time = 860
.meas tran vdout1_0ck171 FIND v(dout1_0) AT=860.025n

* CHECK dout1_1 Vdout1_1ck171 = 1.0 time = 860
.meas tran vdout1_1ck171 FIND v(dout1_1) AT=860.025n

* CHECK dout1_2 Vdout1_2ck171 = 0 time = 860
.meas tran vdout1_2ck171 FIND v(dout1_2) AT=860.025n

* CHECK dout1_3 Vdout1_3ck171 = 0 time = 860
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

* CHECK dout1_10 Vdout1_10ck171 = 0 time = 860
.meas tran vdout1_10ck171 FIND v(dout1_10) AT=860.025n

* CHECK dout1_11 Vdout1_11ck171 = 0 time = 860
.meas tran vdout1_11ck171 FIND v(dout1_11) AT=860.025n

* CHECK dout1_0 Vdout1_0ck175 = 1.0 time = 880
.meas tran vdout1_0ck175 FIND v(dout1_0) AT=880.025n

* CHECK dout1_1 Vdout1_1ck175 = 0 time = 880
.meas tran vdout1_1ck175 FIND v(dout1_1) AT=880.025n

* CHECK dout1_2 Vdout1_2ck175 = 1.0 time = 880
.meas tran vdout1_2ck175 FIND v(dout1_2) AT=880.025n

* CHECK dout1_3 Vdout1_3ck175 = 1.0 time = 880
.meas tran vdout1_3ck175 FIND v(dout1_3) AT=880.025n

* CHECK dout1_4 Vdout1_4ck175 = 0 time = 880
.meas tran vdout1_4ck175 FIND v(dout1_4) AT=880.025n

* CHECK dout1_5 Vdout1_5ck175 = 0 time = 880
.meas tran vdout1_5ck175 FIND v(dout1_5) AT=880.025n

* CHECK dout1_6 Vdout1_6ck175 = 1.0 time = 880
.meas tran vdout1_6ck175 FIND v(dout1_6) AT=880.025n

* CHECK dout1_7 Vdout1_7ck175 = 1.0 time = 880
.meas tran vdout1_7ck175 FIND v(dout1_7) AT=880.025n

* CHECK dout1_8 Vdout1_8ck175 = 1.0 time = 880
.meas tran vdout1_8ck175 FIND v(dout1_8) AT=880.025n

* CHECK dout1_9 Vdout1_9ck175 = 0 time = 880
.meas tran vdout1_9ck175 FIND v(dout1_9) AT=880.025n

* CHECK dout1_10 Vdout1_10ck175 = 0 time = 880
.meas tran vdout1_10ck175 FIND v(dout1_10) AT=880.025n

* CHECK dout1_11 Vdout1_11ck175 = 0 time = 880
.meas tran vdout1_11ck175 FIND v(dout1_11) AT=880.025n

* CHECK dout1_0 Vdout1_0ck176 = 0 time = 885
.meas tran vdout1_0ck176 FIND v(dout1_0) AT=885.025n

* CHECK dout1_1 Vdout1_1ck176 = 1.0 time = 885
.meas tran vdout1_1ck176 FIND v(dout1_1) AT=885.025n

* CHECK dout1_2 Vdout1_2ck176 = 0 time = 885
.meas tran vdout1_2ck176 FIND v(dout1_2) AT=885.025n

* CHECK dout1_3 Vdout1_3ck176 = 0 time = 885
.meas tran vdout1_3ck176 FIND v(dout1_3) AT=885.025n

* CHECK dout1_4 Vdout1_4ck176 = 0 time = 885
.meas tran vdout1_4ck176 FIND v(dout1_4) AT=885.025n

* CHECK dout1_5 Vdout1_5ck176 = 0 time = 885
.meas tran vdout1_5ck176 FIND v(dout1_5) AT=885.025n

* CHECK dout1_6 Vdout1_6ck176 = 0 time = 885
.meas tran vdout1_6ck176 FIND v(dout1_6) AT=885.025n

* CHECK dout1_7 Vdout1_7ck176 = 0 time = 885
.meas tran vdout1_7ck176 FIND v(dout1_7) AT=885.025n

* CHECK dout1_8 Vdout1_8ck176 = 0 time = 885
.meas tran vdout1_8ck176 FIND v(dout1_8) AT=885.025n

* CHECK dout1_9 Vdout1_9ck176 = 1.0 time = 885
.meas tran vdout1_9ck176 FIND v(dout1_9) AT=885.025n

* CHECK dout1_10 Vdout1_10ck176 = 0 time = 885
.meas tran vdout1_10ck176 FIND v(dout1_10) AT=885.025n

* CHECK dout1_11 Vdout1_11ck176 = 0 time = 885
.meas tran vdout1_11ck176 FIND v(dout1_11) AT=885.025n

* CHECK dout1_0 Vdout1_0ck178 = 1.0 time = 895
.meas tran vdout1_0ck178 FIND v(dout1_0) AT=895.025n

* CHECK dout1_1 Vdout1_1ck178 = 0 time = 895
.meas tran vdout1_1ck178 FIND v(dout1_1) AT=895.025n

* CHECK dout1_2 Vdout1_2ck178 = 1.0 time = 895
.meas tran vdout1_2ck178 FIND v(dout1_2) AT=895.025n

* CHECK dout1_3 Vdout1_3ck178 = 1.0 time = 895
.meas tran vdout1_3ck178 FIND v(dout1_3) AT=895.025n

* CHECK dout1_4 Vdout1_4ck178 = 0 time = 895
.meas tran vdout1_4ck178 FIND v(dout1_4) AT=895.025n

* CHECK dout1_5 Vdout1_5ck178 = 0 time = 895
.meas tran vdout1_5ck178 FIND v(dout1_5) AT=895.025n

* CHECK dout1_6 Vdout1_6ck178 = 1.0 time = 895
.meas tran vdout1_6ck178 FIND v(dout1_6) AT=895.025n

* CHECK dout1_7 Vdout1_7ck178 = 1.0 time = 895
.meas tran vdout1_7ck178 FIND v(dout1_7) AT=895.025n

* CHECK dout1_8 Vdout1_8ck178 = 1.0 time = 895
.meas tran vdout1_8ck178 FIND v(dout1_8) AT=895.025n

* CHECK dout1_9 Vdout1_9ck178 = 0 time = 895
.meas tran vdout1_9ck178 FIND v(dout1_9) AT=895.025n

* CHECK dout1_10 Vdout1_10ck178 = 0 time = 895
.meas tran vdout1_10ck178 FIND v(dout1_10) AT=895.025n

* CHECK dout1_11 Vdout1_11ck178 = 0 time = 895
.meas tran vdout1_11ck178 FIND v(dout1_11) AT=895.025n

* CHECK dout1_0 Vdout1_0ck179 = 1.0 time = 900
.meas tran vdout1_0ck179 FIND v(dout1_0) AT=900.025n

* CHECK dout1_1 Vdout1_1ck179 = 1.0 time = 900
.meas tran vdout1_1ck179 FIND v(dout1_1) AT=900.025n

* CHECK dout1_2 Vdout1_2ck179 = 0 time = 900
.meas tran vdout1_2ck179 FIND v(dout1_2) AT=900.025n

* CHECK dout1_3 Vdout1_3ck179 = 1.0 time = 900
.meas tran vdout1_3ck179 FIND v(dout1_3) AT=900.025n

* CHECK dout1_4 Vdout1_4ck179 = 0 time = 900
.meas tran vdout1_4ck179 FIND v(dout1_4) AT=900.025n

* CHECK dout1_5 Vdout1_5ck179 = 0 time = 900
.meas tran vdout1_5ck179 FIND v(dout1_5) AT=900.025n

* CHECK dout1_6 Vdout1_6ck179 = 0 time = 900
.meas tran vdout1_6ck179 FIND v(dout1_6) AT=900.025n

* CHECK dout1_7 Vdout1_7ck179 = 0 time = 900
.meas tran vdout1_7ck179 FIND v(dout1_7) AT=900.025n

* CHECK dout1_8 Vdout1_8ck179 = 0 time = 900
.meas tran vdout1_8ck179 FIND v(dout1_8) AT=900.025n

* CHECK dout1_9 Vdout1_9ck179 = 1.0 time = 900
.meas tran vdout1_9ck179 FIND v(dout1_9) AT=900.025n

* CHECK dout1_10 Vdout1_10ck179 = 1.0 time = 900
.meas tran vdout1_10ck179 FIND v(dout1_10) AT=900.025n

* CHECK dout1_11 Vdout1_11ck179 = 1.0 time = 900
.meas tran vdout1_11ck179 FIND v(dout1_11) AT=900.025n

* CHECK dout1_0 Vdout1_0ck181 = 1.0 time = 910
.meas tran vdout1_0ck181 FIND v(dout1_0) AT=910.025n

* CHECK dout1_1 Vdout1_1ck181 = 0 time = 910
.meas tran vdout1_1ck181 FIND v(dout1_1) AT=910.025n

* CHECK dout1_2 Vdout1_2ck181 = 1.0 time = 910
.meas tran vdout1_2ck181 FIND v(dout1_2) AT=910.025n

* CHECK dout1_3 Vdout1_3ck181 = 1.0 time = 910
.meas tran vdout1_3ck181 FIND v(dout1_3) AT=910.025n

* CHECK dout1_4 Vdout1_4ck181 = 0 time = 910
.meas tran vdout1_4ck181 FIND v(dout1_4) AT=910.025n

* CHECK dout1_5 Vdout1_5ck181 = 0 time = 910
.meas tran vdout1_5ck181 FIND v(dout1_5) AT=910.025n

* CHECK dout1_6 Vdout1_6ck181 = 1.0 time = 910
.meas tran vdout1_6ck181 FIND v(dout1_6) AT=910.025n

* CHECK dout1_7 Vdout1_7ck181 = 1.0 time = 910
.meas tran vdout1_7ck181 FIND v(dout1_7) AT=910.025n

* CHECK dout1_8 Vdout1_8ck181 = 1.0 time = 910
.meas tran vdout1_8ck181 FIND v(dout1_8) AT=910.025n

* CHECK dout1_9 Vdout1_9ck181 = 0 time = 910
.meas tran vdout1_9ck181 FIND v(dout1_9) AT=910.025n

* CHECK dout1_10 Vdout1_10ck181 = 0 time = 910
.meas tran vdout1_10ck181 FIND v(dout1_10) AT=910.025n

* CHECK dout1_11 Vdout1_11ck181 = 0 time = 910
.meas tran vdout1_11ck181 FIND v(dout1_11) AT=910.025n

* CHECK dout1_0 Vdout1_0ck183 = 1.0 time = 920
.meas tran vdout1_0ck183 FIND v(dout1_0) AT=920.025n

* CHECK dout1_1 Vdout1_1ck183 = 1.0 time = 920
.meas tran vdout1_1ck183 FIND v(dout1_1) AT=920.025n

* CHECK dout1_2 Vdout1_2ck183 = 1.0 time = 920
.meas tran vdout1_2ck183 FIND v(dout1_2) AT=920.025n

* CHECK dout1_3 Vdout1_3ck183 = 1.0 time = 920
.meas tran vdout1_3ck183 FIND v(dout1_3) AT=920.025n

* CHECK dout1_4 Vdout1_4ck183 = 1.0 time = 920
.meas tran vdout1_4ck183 FIND v(dout1_4) AT=920.025n

* CHECK dout1_5 Vdout1_5ck183 = 1.0 time = 920
.meas tran vdout1_5ck183 FIND v(dout1_5) AT=920.025n

* CHECK dout1_6 Vdout1_6ck183 = 0 time = 920
.meas tran vdout1_6ck183 FIND v(dout1_6) AT=920.025n

* CHECK dout1_7 Vdout1_7ck183 = 1.0 time = 920
.meas tran vdout1_7ck183 FIND v(dout1_7) AT=920.025n

* CHECK dout1_8 Vdout1_8ck183 = 0 time = 920
.meas tran vdout1_8ck183 FIND v(dout1_8) AT=920.025n

* CHECK dout1_9 Vdout1_9ck183 = 0 time = 920
.meas tran vdout1_9ck183 FIND v(dout1_9) AT=920.025n

* CHECK dout1_10 Vdout1_10ck183 = 1.0 time = 920
.meas tran vdout1_10ck183 FIND v(dout1_10) AT=920.025n

* CHECK dout1_11 Vdout1_11ck183 = 1.0 time = 920
.meas tran vdout1_11ck183 FIND v(dout1_11) AT=920.025n

* CHECK dout1_0 Vdout1_0ck184 = 1.0 time = 925
.meas tran vdout1_0ck184 FIND v(dout1_0) AT=925.025n

* CHECK dout1_1 Vdout1_1ck184 = 0 time = 925
.meas tran vdout1_1ck184 FIND v(dout1_1) AT=925.025n

* CHECK dout1_2 Vdout1_2ck184 = 0 time = 925
.meas tran vdout1_2ck184 FIND v(dout1_2) AT=925.025n

* CHECK dout1_3 Vdout1_3ck184 = 0 time = 925
.meas tran vdout1_3ck184 FIND v(dout1_3) AT=925.025n

* CHECK dout1_4 Vdout1_4ck184 = 0 time = 925
.meas tran vdout1_4ck184 FIND v(dout1_4) AT=925.025n

* CHECK dout1_5 Vdout1_5ck184 = 1.0 time = 925
.meas tran vdout1_5ck184 FIND v(dout1_5) AT=925.025n

* CHECK dout1_6 Vdout1_6ck184 = 1.0 time = 925
.meas tran vdout1_6ck184 FIND v(dout1_6) AT=925.025n

* CHECK dout1_7 Vdout1_7ck184 = 1.0 time = 925
.meas tran vdout1_7ck184 FIND v(dout1_7) AT=925.025n

* CHECK dout1_8 Vdout1_8ck184 = 1.0 time = 925
.meas tran vdout1_8ck184 FIND v(dout1_8) AT=925.025n

* CHECK dout1_9 Vdout1_9ck184 = 1.0 time = 925
.meas tran vdout1_9ck184 FIND v(dout1_9) AT=925.025n

* CHECK dout1_10 Vdout1_10ck184 = 1.0 time = 925
.meas tran vdout1_10ck184 FIND v(dout1_10) AT=925.025n

* CHECK dout1_11 Vdout1_11ck184 = 0 time = 925
.meas tran vdout1_11ck184 FIND v(dout1_11) AT=925.025n

* CHECK dout1_0 Vdout1_0ck185 = 1.0 time = 930
.meas tran vdout1_0ck185 FIND v(dout1_0) AT=930.025n

* CHECK dout1_1 Vdout1_1ck185 = 1.0 time = 930
.meas tran vdout1_1ck185 FIND v(dout1_1) AT=930.025n

* CHECK dout1_2 Vdout1_2ck185 = 0 time = 930
.meas tran vdout1_2ck185 FIND v(dout1_2) AT=930.025n

* CHECK dout1_3 Vdout1_3ck185 = 1.0 time = 930
.meas tran vdout1_3ck185 FIND v(dout1_3) AT=930.025n

* CHECK dout1_4 Vdout1_4ck185 = 1.0 time = 930
.meas tran vdout1_4ck185 FIND v(dout1_4) AT=930.025n

* CHECK dout1_5 Vdout1_5ck185 = 0 time = 930
.meas tran vdout1_5ck185 FIND v(dout1_5) AT=930.025n

* CHECK dout1_6 Vdout1_6ck185 = 1.0 time = 930
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

* CHECK dout1_0 Vdout1_0ck191 = 0 time = 960
.meas tran vdout1_0ck191 FIND v(dout1_0) AT=960.025n

* CHECK dout1_1 Vdout1_1ck191 = 1.0 time = 960
.meas tran vdout1_1ck191 FIND v(dout1_1) AT=960.025n

* CHECK dout1_2 Vdout1_2ck191 = 0 time = 960
.meas tran vdout1_2ck191 FIND v(dout1_2) AT=960.025n

* CHECK dout1_3 Vdout1_3ck191 = 0 time = 960
.meas tran vdout1_3ck191 FIND v(dout1_3) AT=960.025n

* CHECK dout1_4 Vdout1_4ck191 = 1.0 time = 960
.meas tran vdout1_4ck191 FIND v(dout1_4) AT=960.025n

* CHECK dout1_5 Vdout1_5ck191 = 1.0 time = 960
.meas tran vdout1_5ck191 FIND v(dout1_5) AT=960.025n

* CHECK dout1_6 Vdout1_6ck191 = 0 time = 960
.meas tran vdout1_6ck191 FIND v(dout1_6) AT=960.025n

* CHECK dout1_7 Vdout1_7ck191 = 0 time = 960
.meas tran vdout1_7ck191 FIND v(dout1_7) AT=960.025n

* CHECK dout1_8 Vdout1_8ck191 = 0 time = 960
.meas tran vdout1_8ck191 FIND v(dout1_8) AT=960.025n

* CHECK dout1_9 Vdout1_9ck191 = 1.0 time = 960
.meas tran vdout1_9ck191 FIND v(dout1_9) AT=960.025n

* CHECK dout1_10 Vdout1_10ck191 = 0 time = 960
.meas tran vdout1_10ck191 FIND v(dout1_10) AT=960.025n

* CHECK dout1_11 Vdout1_11ck191 = 1.0 time = 960
.meas tran vdout1_11ck191 FIND v(dout1_11) AT=960.025n

* CHECK dout1_0 Vdout1_0ck192 = 1.0 time = 965
.meas tran vdout1_0ck192 FIND v(dout1_0) AT=965.025n

* CHECK dout1_1 Vdout1_1ck192 = 1.0 time = 965
.meas tran vdout1_1ck192 FIND v(dout1_1) AT=965.025n

* CHECK dout1_2 Vdout1_2ck192 = 1.0 time = 965
.meas tran vdout1_2ck192 FIND v(dout1_2) AT=965.025n

* CHECK dout1_3 Vdout1_3ck192 = 1.0 time = 965
.meas tran vdout1_3ck192 FIND v(dout1_3) AT=965.025n

* CHECK dout1_4 Vdout1_4ck192 = 1.0 time = 965
.meas tran vdout1_4ck192 FIND v(dout1_4) AT=965.025n

* CHECK dout1_5 Vdout1_5ck192 = 0 time = 965
.meas tran vdout1_5ck192 FIND v(dout1_5) AT=965.025n

* CHECK dout1_6 Vdout1_6ck192 = 1.0 time = 965
.meas tran vdout1_6ck192 FIND v(dout1_6) AT=965.025n

* CHECK dout1_7 Vdout1_7ck192 = 1.0 time = 965
.meas tran vdout1_7ck192 FIND v(dout1_7) AT=965.025n

* CHECK dout1_8 Vdout1_8ck192 = 0 time = 965
.meas tran vdout1_8ck192 FIND v(dout1_8) AT=965.025n

* CHECK dout1_9 Vdout1_9ck192 = 1.0 time = 965
.meas tran vdout1_9ck192 FIND v(dout1_9) AT=965.025n

* CHECK dout1_10 Vdout1_10ck192 = 0 time = 965
.meas tran vdout1_10ck192 FIND v(dout1_10) AT=965.025n

* CHECK dout1_11 Vdout1_11ck192 = 1.0 time = 965
.meas tran vdout1_11ck192 FIND v(dout1_11) AT=965.025n

* CHECK dout1_0 Vdout1_0ck194 = 1.0 time = 975
.meas tran vdout1_0ck194 FIND v(dout1_0) AT=975.025n

* CHECK dout1_1 Vdout1_1ck194 = 1.0 time = 975
.meas tran vdout1_1ck194 FIND v(dout1_1) AT=975.025n

* CHECK dout1_2 Vdout1_2ck194 = 1.0 time = 975
.meas tran vdout1_2ck194 FIND v(dout1_2) AT=975.025n

* CHECK dout1_3 Vdout1_3ck194 = 1.0 time = 975
.meas tran vdout1_3ck194 FIND v(dout1_3) AT=975.025n

* CHECK dout1_4 Vdout1_4ck194 = 1.0 time = 975
.meas tran vdout1_4ck194 FIND v(dout1_4) AT=975.025n

* CHECK dout1_5 Vdout1_5ck194 = 0 time = 975
.meas tran vdout1_5ck194 FIND v(dout1_5) AT=975.025n

* CHECK dout1_6 Vdout1_6ck194 = 1.0 time = 975
.meas tran vdout1_6ck194 FIND v(dout1_6) AT=975.025n

* CHECK dout1_7 Vdout1_7ck194 = 1.0 time = 975
.meas tran vdout1_7ck194 FIND v(dout1_7) AT=975.025n

* CHECK dout1_8 Vdout1_8ck194 = 0 time = 975
.meas tran vdout1_8ck194 FIND v(dout1_8) AT=975.025n

* CHECK dout1_9 Vdout1_9ck194 = 1.0 time = 975
.meas tran vdout1_9ck194 FIND v(dout1_9) AT=975.025n

* CHECK dout1_10 Vdout1_10ck194 = 0 time = 975
.meas tran vdout1_10ck194 FIND v(dout1_10) AT=975.025n

* CHECK dout1_11 Vdout1_11ck194 = 1.0 time = 975
.meas tran vdout1_11ck194 FIND v(dout1_11) AT=975.025n

* CHECK dout1_0 Vdout1_0ck195 = 1.0 time = 980
.meas tran vdout1_0ck195 FIND v(dout1_0) AT=980.025n

* CHECK dout1_1 Vdout1_1ck195 = 1.0 time = 980
.meas tran vdout1_1ck195 FIND v(dout1_1) AT=980.025n

* CHECK dout1_2 Vdout1_2ck195 = 0 time = 980
.meas tran vdout1_2ck195 FIND v(dout1_2) AT=980.025n

* CHECK dout1_3 Vdout1_3ck195 = 1.0 time = 980
.meas tran vdout1_3ck195 FIND v(dout1_3) AT=980.025n

* CHECK dout1_4 Vdout1_4ck195 = 0 time = 980
.meas tran vdout1_4ck195 FIND v(dout1_4) AT=980.025n

* CHECK dout1_5 Vdout1_5ck195 = 0 time = 980
.meas tran vdout1_5ck195 FIND v(dout1_5) AT=980.025n

* CHECK dout1_6 Vdout1_6ck195 = 0 time = 980
.meas tran vdout1_6ck195 FIND v(dout1_6) AT=980.025n

* CHECK dout1_7 Vdout1_7ck195 = 0 time = 980
.meas tran vdout1_7ck195 FIND v(dout1_7) AT=980.025n

* CHECK dout1_8 Vdout1_8ck195 = 0 time = 980
.meas tran vdout1_8ck195 FIND v(dout1_8) AT=980.025n

* CHECK dout1_9 Vdout1_9ck195 = 1.0 time = 980
.meas tran vdout1_9ck195 FIND v(dout1_9) AT=980.025n

* CHECK dout1_10 Vdout1_10ck195 = 1.0 time = 980
.meas tran vdout1_10ck195 FIND v(dout1_10) AT=980.025n

* CHECK dout1_11 Vdout1_11ck195 = 1.0 time = 980
.meas tran vdout1_11ck195 FIND v(dout1_11) AT=980.025n

* CHECK dout1_0 Vdout1_0ck197 = 1.0 time = 990
.meas tran vdout1_0ck197 FIND v(dout1_0) AT=990.025n

* CHECK dout1_1 Vdout1_1ck197 = 1.0 time = 990
.meas tran vdout1_1ck197 FIND v(dout1_1) AT=990.025n

* CHECK dout1_2 Vdout1_2ck197 = 0 time = 990
.meas tran vdout1_2ck197 FIND v(dout1_2) AT=990.025n

* CHECK dout1_3 Vdout1_3ck197 = 0 time = 990
.meas tran vdout1_3ck197 FIND v(dout1_3) AT=990.025n

* CHECK dout1_4 Vdout1_4ck197 = 1.0 time = 990
.meas tran vdout1_4ck197 FIND v(dout1_4) AT=990.025n

* CHECK dout1_5 Vdout1_5ck197 = 1.0 time = 990
.meas tran vdout1_5ck197 FIND v(dout1_5) AT=990.025n

* CHECK dout1_6 Vdout1_6ck197 = 0 time = 990
.meas tran vdout1_6ck197 FIND v(dout1_6) AT=990.025n

* CHECK dout1_7 Vdout1_7ck197 = 1.0 time = 990
.meas tran vdout1_7ck197 FIND v(dout1_7) AT=990.025n

* CHECK dout1_8 Vdout1_8ck197 = 0 time = 990
.meas tran vdout1_8ck197 FIND v(dout1_8) AT=990.025n

* CHECK dout1_9 Vdout1_9ck197 = 1.0 time = 990
.meas tran vdout1_9ck197 FIND v(dout1_9) AT=990.025n

* CHECK dout1_10 Vdout1_10ck197 = 1.0 time = 990
.meas tran vdout1_10ck197 FIND v(dout1_10) AT=990.025n

* CHECK dout1_11 Vdout1_11ck197 = 0 time = 990
.meas tran vdout1_11ck197 FIND v(dout1_11) AT=990.025n

* CHECK dout1_0 Vdout1_0ck199 = 1.0 time = 1000
.meas tran vdout1_0ck199 FIND v(dout1_0) AT=1000.025n

* CHECK dout1_1 Vdout1_1ck199 = 0 time = 1000
.meas tran vdout1_1ck199 FIND v(dout1_1) AT=1000.025n

* CHECK dout1_2 Vdout1_2ck199 = 1.0 time = 1000
.meas tran vdout1_2ck199 FIND v(dout1_2) AT=1000.025n

* CHECK dout1_3 Vdout1_3ck199 = 1.0 time = 1000
.meas tran vdout1_3ck199 FIND v(dout1_3) AT=1000.025n

* CHECK dout1_4 Vdout1_4ck199 = 1.0 time = 1000
.meas tran vdout1_4ck199 FIND v(dout1_4) AT=1000.025n

* CHECK dout1_5 Vdout1_5ck199 = 1.0 time = 1000
.meas tran vdout1_5ck199 FIND v(dout1_5) AT=1000.025n

* CHECK dout1_6 Vdout1_6ck199 = 1.0 time = 1000
.meas tran vdout1_6ck199 FIND v(dout1_6) AT=1000.025n

* CHECK dout1_7 Vdout1_7ck199 = 0 time = 1000
.meas tran vdout1_7ck199 FIND v(dout1_7) AT=1000.025n

* CHECK dout1_8 Vdout1_8ck199 = 1.0 time = 1000
.meas tran vdout1_8ck199 FIND v(dout1_8) AT=1000.025n

* CHECK dout1_9 Vdout1_9ck199 = 1.0 time = 1000
.meas tran vdout1_9ck199 FIND v(dout1_9) AT=1000.025n

* CHECK dout1_10 Vdout1_10ck199 = 0 time = 1000
.meas tran vdout1_10ck199 FIND v(dout1_10) AT=1000.025n

* CHECK dout1_11 Vdout1_11ck199 = 0 time = 1000
.meas tran vdout1_11ck199 FIND v(dout1_11) AT=1000.025n

* CHECK dout1_0 Vdout1_0ck202 = 0 time = 1015
.meas tran vdout1_0ck202 FIND v(dout1_0) AT=1015.025n

* CHECK dout1_1 Vdout1_1ck202 = 1.0 time = 1015
.meas tran vdout1_1ck202 FIND v(dout1_1) AT=1015.025n

* CHECK dout1_2 Vdout1_2ck202 = 0 time = 1015
.meas tran vdout1_2ck202 FIND v(dout1_2) AT=1015.025n

* CHECK dout1_3 Vdout1_3ck202 = 0 time = 1015
.meas tran vdout1_3ck202 FIND v(dout1_3) AT=1015.025n

* CHECK dout1_4 Vdout1_4ck202 = 0 time = 1015
.meas tran vdout1_4ck202 FIND v(dout1_4) AT=1015.025n

* CHECK dout1_5 Vdout1_5ck202 = 0 time = 1015
.meas tran vdout1_5ck202 FIND v(dout1_5) AT=1015.025n

* CHECK dout1_6 Vdout1_6ck202 = 0 time = 1015
.meas tran vdout1_6ck202 FIND v(dout1_6) AT=1015.025n

* CHECK dout1_7 Vdout1_7ck202 = 0 time = 1015
.meas tran vdout1_7ck202 FIND v(dout1_7) AT=1015.025n

* CHECK dout1_8 Vdout1_8ck202 = 0 time = 1015
.meas tran vdout1_8ck202 FIND v(dout1_8) AT=1015.025n

* CHECK dout1_9 Vdout1_9ck202 = 1.0 time = 1015
.meas tran vdout1_9ck202 FIND v(dout1_9) AT=1015.025n

* CHECK dout1_10 Vdout1_10ck202 = 0 time = 1015
.meas tran vdout1_10ck202 FIND v(dout1_10) AT=1015.025n

* CHECK dout1_11 Vdout1_11ck202 = 0 time = 1015
.meas tran vdout1_11ck202 FIND v(dout1_11) AT=1015.025n

* probe is used for hspice/xa, while plot is used in ngspice
.plot V(*)
.end

