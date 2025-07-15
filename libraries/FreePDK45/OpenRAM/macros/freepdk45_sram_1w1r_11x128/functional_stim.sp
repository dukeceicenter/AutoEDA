* Functional test stimulus file for 5ns period

* TT process corner
.include "/freepdk45/ncsu_basekit/models/hspice/tran_models/models_nom/PMOS_VTG.inc"
.include "/freepdk45/ncsu_basekit/models/hspice/tran_models/models_nom/NMOS_VTG.inc"
.include "freepdk45_sram_1w1r_11x128.sp"

* Global Power Supplies
Vvdd vdd 0 1.0

*Nodes gnd and 0 are the same global ground node in ngspice/hspice/xa. Otherwise, this source may be needed.
*Vgnd gnd 0 0.0

* Instantiation of the SRAM
Xfreepdk45_sram_1w1r_11x128 din0_0 din0_1 din0_2 din0_3 din0_4 din0_5 din0_6 din0_7 din0_8 din0_9 din0_10 a0_0 a0_1 a0_2 a0_3 a0_4 a0_5 a0_6 a1_0 a1_1 a1_2 a1_3 a1_4 a1_5 a1_6 CSB0 CSB1 clk0 clk1 dout1_0 dout1_1 dout1_2 dout1_3 dout1_4 dout1_5 dout1_6 dout1_7 dout1_8 dout1_9 dout1_10 vdd gnd freepdk45_sram_1w1r_11x128

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


* Important signals for debug
* bl:	xfreepdk45_sram_1w1r_11x128.xbank0.bl_1_0
* br:	xfreepdk45_sram_1w1r_11x128.xbank0.br_1_0
* s_en:	xfreepdk45_sram_1w1r_11x128.s_en
* q:	xfreepdk45_sram_1w1r_11x128.xbank0.xbitcell_array.xbitcell_array.xbit_r0_c0.Q
* qbar:	xfreepdk45_sram_1w1r_11x128.xbank0.xbitcell_array.xbitcell_array.xbit_r0_c0.Q_bar


* Sequence of operations
*	Idle during cycle 0 (0ns - 5ns)
*	Writing 10101101111  to  address 0000000 (from port 0) during cycle 1 (5ns - 10ns)
*	Writing 10111001110  to  address 1111011 (from port 0) during cycle 2 (10ns - 15ns)
*	Writing 00111011111  to  address 0000001 (from port 0) during cycle 3 (15ns - 20ns)
*	Reading 10101101111 from address 0000000 (from port 1) during cycle 4 (20ns - 25ns)
*	Writing 00111000110  to  address 1111100 (from port 0) during cycle 5 (25ns - 30ns)
*	Reading 00111011111 from address 0000001 (from port 1) during cycle 6 (30ns - 35ns)
*	Writing 11101110100  to  address 1111101 (from port 0) during cycle 7 (35ns - 40ns)
*	Reading 00111011111 from address 0000001 (from port 1) during cycle 7 (35ns - 40ns)
*	Writing 10101100100  to  address 0000010 (from port 0) during cycle 8 (40ns - 45ns)
*	Writing 10101100000  to  address 1111011 (from port 0) during cycle 9 (45ns - 50ns)
*	Reading 00111011111 from address 0000001 (from port 1) during cycle 9 (45ns - 50ns)
*	Reading 00111011111 from address 0000001 (from port 1) during cycle 10 (50ns - 55ns)
*	Writing 00101111100  to  address 0000000 (from port 0) during cycle 12 (60ns - 65ns)
*	Reading 10101100000 from address 1111011 (from port 1) during cycle 12 (60ns - 65ns)
*	Writing 11111010001  to  address 0000000 (from port 0) during cycle 13 (65ns - 70ns)
*	Writing 01011010101  to  address 1111100 (from port 0) during cycle 14 (70ns - 75ns)
*	Reading 11101110100 from address 1111101 (from port 1) during cycle 14 (70ns - 75ns)
*	Writing 10011110000  to  address 0000000 (from port 0) during cycle 16 (80ns - 85ns)
*	Writing 10000110011  to  address 1111100 (from port 0) during cycle 17 (85ns - 90ns)
*	Reading 10000110011 from address 1111100 (from port 1) during cycle 18 (90ns - 95ns)
*	Writing 00001101000  to  address 0000000 (from port 0) during cycle 19 (95ns - 100ns)
*	Writing 01011101101  to  address 0000011 (from port 0) during cycle 20 (100ns - 105ns)
*	Reading 00001101000 from address 0000000 (from port 1) during cycle 20 (100ns - 105ns)
*	Writing 01110000101  to  address 0000000 (from port 0) during cycle 21 (105ns - 110ns)
*	Reading 11101110100 from address 1111101 (from port 1) during cycle 23 (115ns - 120ns)
*	Writing 00000001110  to  address 0000011 (from port 0) during cycle 24 (120ns - 125ns)
*	Reading 00111011111 from address 0000001 (from port 1) during cycle 24 (120ns - 125ns)
*	Writing 00010001011  to  address 0000001 (from port 0) during cycle 25 (125ns - 130ns)
*	Writing 01000001010  to  address 0000010 (from port 0) during cycle 27 (135ns - 140ns)
*	Reading 11101110100 from address 1111101 (from port 1) during cycle 27 (135ns - 140ns)
*	Reading 00010001011 from address 0000001 (from port 1) during cycle 28 (140ns - 145ns)
*	Reading 10101100000 from address 1111011 (from port 1) during cycle 30 (150ns - 155ns)
*	Writing 01101001000  to  address 0000011 (from port 0) during cycle 31 (155ns - 160ns)
*	Writing 11111110001  to  address 1111100 (from port 0) during cycle 32 (160ns - 165ns)
*	Writing 00000101000  to  address 0000001 (from port 0) during cycle 33 (165ns - 170ns)
*	Reading 01101001000 from address 0000011 (from port 1) during cycle 35 (175ns - 180ns)
*	Writing 11101010110  to  address 0000010 (from port 0) during cycle 36 (180ns - 185ns)
*	Writing 00111100011  to  address 1111100 (from port 0) during cycle 38 (190ns - 195ns)
*	Writing 00100101001  to  address 0000010 (from port 0) during cycle 39 (195ns - 200ns)
*	Reading 01110000101 from address 0000000 (from port 1) during cycle 39 (195ns - 200ns)
*	Reading 00000101000 from address 0000001 (from port 1) during cycle 40 (200ns - 205ns)
*	Writing 01000100010  to  address 0000000 (from port 0) during cycle 41 (205ns - 210ns)
*	Writing 00110010110  to  address 1111100 (from port 0) during cycle 42 (210ns - 215ns)
*	Writing 11101111001  to  address 0000000 (from port 0) during cycle 44 (220ns - 225ns)
*	Reading 00100101001 from address 0000010 (from port 1) during cycle 46 (230ns - 235ns)
*	Writing 01101001011  to  address 0000000 (from port 0) during cycle 47 (235ns - 240ns)
*	Writing 00000000101  to  address 1111110 (from port 0) during cycle 48 (240ns - 245ns)
*	Reading 10101100000 from address 1111011 (from port 1) during cycle 51 (255ns - 260ns)
*	Writing 00111111100  to  address 0000010 (from port 0) during cycle 52 (260ns - 265ns)
*	Reading 01101001000 from address 0000011 (from port 1) during cycle 52 (260ns - 265ns)
*	Writing 00011100010  to  address 0000011 (from port 0) during cycle 53 (265ns - 270ns)
*	Writing 01101100010  to  address 1111101 (from port 0) during cycle 54 (270ns - 275ns)
*	Reading 01101001011 from address 0000000 (from port 1) during cycle 54 (270ns - 275ns)
*	Writing 10011001110  to  address 0000011 (from port 0) during cycle 55 (275ns - 280ns)
*	Writing 10001001100  to  address 0000011 (from port 0) during cycle 56 (280ns - 285ns)
*	Writing 11010100111  to  address 0000001 (from port 0) during cycle 57 (285ns - 290ns)
*	Reading 10101100000 from address 1111011 (from port 1) during cycle 58 (290ns - 295ns)
*	Writing 11110001010  to  address 1111100 (from port 0) during cycle 59 (295ns - 300ns)
*	Reading 00111111100 from address 0000010 (from port 1) during cycle 59 (295ns - 300ns)
*	Writing 10000010111  to  address 0000011 (from port 0) during cycle 60 (300ns - 305ns)
*	Reading 00000000101 from address 1111110 (from port 1) during cycle 60 (300ns - 305ns)
*	Reading 01101001011 from address 0000000 (from port 1) during cycle 61 (305ns - 310ns)
*	Writing 01000101110  to  address 0000000 (from port 0) during cycle 63 (315ns - 320ns)
*	Writing 00000111010  to  address 0000010 (from port 0) during cycle 64 (320ns - 325ns)
*	Writing 01101101001  to  address 0000000 (from port 0) during cycle 65 (325ns - 330ns)
*	Reading 01101100010 from address 1111101 (from port 1) during cycle 65 (325ns - 330ns)
*	Reading 11110001010 from address 1111100 (from port 1) during cycle 66 (330ns - 335ns)
*	Reading 11010100111 from address 0000001 (from port 1) during cycle 68 (340ns - 345ns)
*	Reading 00000111010 from address 0000010 (from port 1) during cycle 69 (345ns - 350ns)
*	Writing 01110101010  to  address 1111011 (from port 0) during cycle 70 (350ns - 355ns)
*	Writing 00110101100  to  address 0000011 (from port 0) during cycle 72 (360ns - 365ns)
*	Writing 10000100110  to  address 1111110 (from port 0) during cycle 73 (365ns - 370ns)
*	Writing 01001101111  to  address 0000001 (from port 0) during cycle 74 (370ns - 375ns)
*	Writing 10011110011  to  address 0000000 (from port 0) during cycle 76 (380ns - 385ns)
*	Reading 01110101010 from address 1111011 (from port 1) during cycle 76 (380ns - 385ns)
*	Writing 10111110011  to  address 1111011 (from port 0) during cycle 77 (385ns - 390ns)
*	Reading 11110001010 from address 1111100 (from port 1) during cycle 77 (385ns - 390ns)
*	Writing 11111100000  to  address 1111101 (from port 0) during cycle 79 (395ns - 400ns)
*	Writing 00110011001  to  address 0000000 (from port 0) during cycle 81 (405ns - 410ns)
*	Reading 11110001010 from address 1111100 (from port 1) during cycle 81 (405ns - 410ns)
*	Writing 11100100100  to  address 1111101 (from port 0) during cycle 82 (410ns - 415ns)
*	Writing 11001011100  to  address 0000010 (from port 0) during cycle 83 (415ns - 420ns)
*	Reading 00110101100 from address 0000011 (from port 1) during cycle 83 (415ns - 420ns)
*	Writing 00000110011  to  address 1111101 (from port 0) during cycle 84 (420ns - 425ns)
*	Reading 11110001010 from address 1111100 (from port 1) during cycle 85 (425ns - 430ns)
*	Writing 01000000101  to  address 1111100 (from port 0) during cycle 88 (440ns - 445ns)
*	Writing 00100101011  to  address 0000000 (from port 0) during cycle 90 (450ns - 455ns)
*	Reading 00000110011 from address 1111101 (from port 1) during cycle 90 (450ns - 455ns)
*	Writing 11101100111  to  address 0000011 (from port 0) during cycle 91 (455ns - 460ns)
*	Reading 01001101111 from address 0000001 (from port 1) during cycle 92 (460ns - 465ns)
*	Reading 11001011100 from address 0000010 (from port 1) during cycle 93 (465ns - 470ns)
*	Reading 11101100111 from address 0000011 (from port 1) during cycle 94 (470ns - 475ns)
*	Writing 10111000001  to  address 1111101 (from port 0) during cycle 95 (475ns - 480ns)
*	Reading 00100101011 from address 0000000 (from port 1) during cycle 95 (475ns - 480ns)
*	Reading 01001101111 from address 0000001 (from port 1) during cycle 96 (480ns - 485ns)
*	Reading 00100101011 from address 0000000 (from port 1) during cycle 99 (495ns - 500ns)
*	Reading 00100101011 from address 0000000 (from port 1) during cycle 100 (500ns - 505ns)
*	Writing 00001001000  to  address 0000000 (from port 0) during cycle 101 (505ns - 510ns)
*	Reading 10111000001 from address 1111101 (from port 1) during cycle 102 (510ns - 515ns)
*	Reading 10111000001 from address 1111101 (from port 1) during cycle 103 (515ns - 520ns)
*	Reading 10000100110 from address 1111110 (from port 1) during cycle 104 (520ns - 525ns)
*	Reading 11001011100 from address 0000010 (from port 1) during cycle 105 (525ns - 530ns)
*	Writing 00000101000  to  address 0000000 (from port 0) during cycle 106 (530ns - 535ns)
*	Reading 11001011100 from address 0000010 (from port 1) during cycle 106 (530ns - 535ns)
*	Reading 10000100110 from address 1111110 (from port 1) during cycle 108 (540ns - 545ns)
*	Writing 11101010101  to  address 0000011 (from port 0) during cycle 109 (545ns - 550ns)
*	Writing 01011001100  to  address 0000011 (from port 0) during cycle 110 (550ns - 555ns)
*	Reading 10111110011 from address 1111011 (from port 1) during cycle 110 (550ns - 555ns)
*	Reading 01011001100 from address 0000011 (from port 1) during cycle 111 (555ns - 560ns)
*	Writing 11011010001  to  address 0000010 (from port 0) during cycle 112 (560ns - 565ns)
*	Writing 00111101100  to  address 1111101 (from port 0) during cycle 113 (565ns - 570ns)
*	Writing 00111101111  to  address 0000000 (from port 0) during cycle 114 (570ns - 575ns)
*	Writing 10001000100  to  address 1111011 (from port 0) during cycle 115 (575ns - 580ns)
*	Writing 11011000110  to  address 1111101 (from port 0) during cycle 116 (580ns - 585ns)
*	Reading 10000100110 from address 1111110 (from port 1) during cycle 116 (580ns - 585ns)
*	Writing 11000001010  to  address 1111100 (from port 0) during cycle 117 (585ns - 590ns)
*	Writing 00111100101  to  address 1111101 (from port 0) during cycle 118 (590ns - 595ns)
*	Reading 01001101111 from address 0000001 (from port 1) during cycle 118 (590ns - 595ns)
*	Writing 00000111001  to  address 0000010 (from port 0) during cycle 119 (595ns - 600ns)
*	Writing 11100011011  to  address 1111100 (from port 0) during cycle 120 (600ns - 605ns)
*	Reading 00111101111 from address 0000000 (from port 1) during cycle 121 (605ns - 610ns)
*	Writing 11111000011  to  address 0000011 (from port 0) during cycle 122 (610ns - 615ns)
*	Reading 10001000100 from address 1111011 (from port 1) during cycle 124 (620ns - 625ns)
*	Writing 00011110010  to  address 0000001 (from port 0) during cycle 125 (625ns - 630ns)
*	Reading 11111000011 from address 0000011 (from port 1) during cycle 125 (625ns - 630ns)
*	Writing 00111011010  to  address 1111101 (from port 0) during cycle 128 (640ns - 645ns)
*	Writing 01101001101  to  address 0000011 (from port 0) during cycle 129 (645ns - 650ns)
*	Reading 10001000100 from address 1111011 (from port 1) during cycle 129 (645ns - 650ns)
*	Writing 11001110111  to  address 0000000 (from port 0) during cycle 130 (650ns - 655ns)
*	Writing 10001000001  to  address 1111101 (from port 0) during cycle 131 (655ns - 660ns)
*	Writing 10000100101  to  address 0000001 (from port 0) during cycle 132 (660ns - 665ns)
*	Reading 11001110111 from address 0000000 (from port 1) during cycle 132 (660ns - 665ns)
*	Writing 01100110010  to  address 0000000 (from port 0) during cycle 134 (670ns - 675ns)
*	Writing 00101110000  to  address 1111110 (from port 0) during cycle 136 (680ns - 685ns)
*	Reading 01100110010 from address 0000000 (from port 1) during cycle 137 (685ns - 690ns)
*	Writing 11101010110  to  address 0000000 (from port 0) during cycle 139 (695ns - 700ns)
*	Reading 11100011011 from address 1111100 (from port 1) during cycle 139 (695ns - 700ns)
*	Writing 00100101100  to  address 0000001 (from port 0) during cycle 140 (700ns - 705ns)
*	Reading 11100011011 from address 1111100 (from port 1) during cycle 141 (705ns - 710ns)
*	Reading 00000111001 from address 0000010 (from port 1) during cycle 142 (710ns - 715ns)
*	Reading 00000111001 from address 0000010 (from port 1) during cycle 143 (715ns - 720ns)
*	Writing 11100101101  to  address 1111011 (from port 0) during cycle 144 (720ns - 725ns)
*	Writing 10101100101  to  address 1111101 (from port 0) during cycle 145 (725ns - 730ns)
*	Writing 00000111101  to  address 0000000 (from port 0) during cycle 146 (730ns - 735ns)
*	Reading 11100101101 from address 1111011 (from port 1) during cycle 146 (730ns - 735ns)
*	Reading 00100101100 from address 0000001 (from port 1) during cycle 147 (735ns - 740ns)
*	Reading 00100101100 from address 0000001 (from port 1) during cycle 148 (740ns - 745ns)
*	Writing 10000000101  to  address 0000011 (from port 0) during cycle 149 (745ns - 750ns)
*	Reading 11100011011 from address 1111100 (from port 1) during cycle 151 (755ns - 760ns)
*	Writing 01101101100  to  address 1111101 (from port 0) during cycle 152 (760ns - 765ns)
*	Reading 00101110000 from address 1111110 (from port 1) during cycle 152 (760ns - 765ns)
*	Reading 11100011011 from address 1111100 (from port 1) during cycle 153 (765ns - 770ns)
*	Writing 11010011110  to  address 0000001 (from port 0) during cycle 155 (775ns - 780ns)
*	Writing 01100000110  to  address 1111011 (from port 0) during cycle 156 (780ns - 785ns)
*	Reading 00000111001 from address 0000010 (from port 1) during cycle 156 (780ns - 785ns)
*	Reading 00000111001 from address 0000010 (from port 1) during cycle 157 (785ns - 790ns)
*	Reading 11100011011 from address 1111100 (from port 1) during cycle 158 (790ns - 795ns)
*	Writing 11001010000  to  address 1111100 (from port 0) during cycle 160 (800ns - 805ns)
*	Reading 00101110000 from address 1111110 (from port 1) during cycle 165 (825ns - 830ns)
*	Reading 11010011110 from address 0000001 (from port 1) during cycle 166 (830ns - 835ns)
*	Writing 00001001001  to  address 1111100 (from port 0) during cycle 168 (840ns - 845ns)
*	Reading 00000111001 from address 0000010 (from port 1) during cycle 168 (840ns - 845ns)
*	Reading 10000000101 from address 0000011 (from port 1) during cycle 169 (845ns - 850ns)
*	Reading 01101101100 from address 1111101 (from port 1) during cycle 170 (850ns - 855ns)
*	Reading 01101101100 from address 1111101 (from port 1) during cycle 171 (855ns - 860ns)
*	Reading 00000111001 from address 0000010 (from port 1) during cycle 172 (860ns - 865ns)
*	Writing 00001110000  to  address 0000000 (from port 0) during cycle 173 (865ns - 870ns)
*	Reading 01100000110 from address 1111011 (from port 1) during cycle 173 (865ns - 870ns)
*	Writing 10101110101  to  address 0000010 (from port 0) during cycle 174 (870ns - 875ns)
*	Reading 00001001001 from address 1111100 (from port 1) during cycle 175 (875ns - 880ns)
*	Reading 00101110000 from address 1111110 (from port 1) during cycle 176 (880ns - 885ns)
*	Writing 01110110111  to  address 1111011 (from port 0) during cycle 177 (885ns - 890ns)
*	Reading 00101110000 from address 1111110 (from port 1) during cycle 177 (885ns - 890ns)
*	Writing 01101001010  to  address 0000011 (from port 0) during cycle 178 (890ns - 895ns)
*	Reading 00001110000 from address 0000000 (from port 1) during cycle 178 (890ns - 895ns)
*	Writing 10011010111  to  address 0000001 (from port 0) during cycle 179 (895ns - 900ns)
*	Writing 10010001011  to  address 1111110 (from port 0) during cycle 180 (900ns - 905ns)
*	Writing 10110001010  to  address 1111100 (from port 0) during cycle 181 (905ns - 910ns)
*	Reading 10101110101 from address 0000010 (from port 1) during cycle 182 (910ns - 915ns)
*	Writing 01101001001  to  address 1111100 (from port 0) during cycle 185 (925ns - 930ns)
*	Reading 00001110000 from address 0000000 (from port 1) during cycle 185 (925ns - 930ns)
*	Writing 10101111001  to  address 1111110 (from port 0) during cycle 186 (930ns - 935ns)
*	Writing 00100100111  to  address 1111100 (from port 0) during cycle 189 (945ns - 950ns)
*	Reading 00001110000 from address 0000000 (from port 1) during cycle 190 (950ns - 955ns)
*	Writing 00011011100  to  address 1111011 (from port 0) during cycle 191 (955ns - 960ns)
*	Writing 00100100100  to  address 0000010 (from port 0) during cycle 192 (960ns - 965ns)
*	Reading 00001110000 from address 0000000 (from port 1) during cycle 192 (960ns - 965ns)
*	Writing 00100000010  to  address 0000011 (from port 0) during cycle 193 (965ns - 970ns)
*	Reading 10011010111 from address 0000001 (from port 1) during cycle 194 (970ns - 975ns)
*	Writing 10111111111  to  address 1111100 (from port 0) during cycle 196 (980ns - 985ns)
*	Writing 11000010010  to  address 1111011 (from port 0) during cycle 199 (995ns - 1000ns)
*	Reading 00001110000 from address 0000000 (from port 1) during cycle 200 (1000ns - 1005ns)
*	Writing 01100110111  to  address 0000010 (from port 0) during cycle 201 (1005ns - 1010ns)
*	Reading 00001110000 from address 0000000 (from port 1) during cycle 202 (1010ns - 1015ns)
*	Reading 00001110000 from address 0000000 (from port 1) during cycle 203 (1015ns - 1020ns)
*	Writing 00011000000  to  address 1111100 (from port 0) during cycle 204 (1020ns - 1025ns)
*	Reading 10011010111 from address 0000001 (from port 1) during cycle 204 (1020ns - 1025ns)
*	Idle during cycle 205 (1025ns - 1030ns)

* Generation of data and address signals
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 1), (20, 1), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 1), (70, 1), (75, 1), (80, 0), (85, 1), (90, 1), (95, 0), (100, 1), (105, 1), (110, 1), (115, 1), (120, 0), (125, 1), (130, 1), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 1), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 1), (195, 1), (200, 1), (205, 0), (210, 0), (215, 0), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 1), (290, 1), (295, 0), (300, 1), (305, 1), (310, 1), (315, 0), (320, 0), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 0), (355, 0), (360, 0), (365, 0), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 0), (400, 0), (405, 1), (410, 0), (415, 0), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 1), (550, 0), (555, 0), (560, 1), (565, 0), (570, 1), (575, 0), (580, 0), (585, 0), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 0), (630, 0), (635, 0), (640, 0), (645, 1), (650, 1), (655, 1), (660, 1), (665, 1), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 1), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 1), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 0), (870, 1), (875, 1), (880, 1), (885, 1), (890, 0), (895, 1), (900, 1), (905, 0), (910, 0), (915, 0), (920, 0), (925, 1), (930, 1), (935, 1), (940, 1), (945, 1), (950, 1), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 1), (985, 1), (990, 1), (995, 0), (1000, 0), (1005, 1), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Vdin0_0  din0_0  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 0.0v 14.745n 0.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 0.0v 99.745n 0.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 0.0v 124.745n 0.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 1.0v 164.745n 1.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 0.0v 299.745n 0.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 1.0v 409.745n 1.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 1.0v 549.745n 1.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 1.0v 574.745n 1.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 0.0v 869.745n 0.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 0.0v 894.745n 0.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 1), (90, 1), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 1), (185, 1), (190, 1), (195, 0), (200, 0), (205, 1), (210, 1), (215, 1), (220, 0), (225, 0), (230, 0), (235, 1), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 1), (270, 1), (275, 1), (280, 0), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 1), (355, 1), (360, 0), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 1), (425, 1), (430, 1), (435, 1), (440, 0), (445, 0), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 1), (575, 0), (580, 1), (585, 1), (590, 0), (595, 0), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 0), (650, 1), (655, 0), (660, 0), (665, 0), (670, 1), (675, 1), (680, 0), (685, 0), (690, 0), (695, 1), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 0), (930, 0), (935, 0), (940, 0), (945, 1), (950, 1), (955, 0), (960, 0), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Vdin0_1  din0_1  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 1.0v 239.745n 1.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 0.0v 284.745n 0.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 0.0v 364.745n 0.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 1.0v 574.745n 1.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 1.0v 654.745n 1.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 0), (50, 0), (55, 0), (60, 1), (65, 0), (70, 1), (75, 1), (80, 0), (85, 0), (90, 0), (95, 0), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 1), (185, 1), (190, 0), (195, 0), (200, 0), (205, 0), (210, 1), (215, 1), (220, 0), (225, 0), (230, 0), (235, 0), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 0), (270, 0), (275, 1), (280, 1), (285, 1), (290, 1), (295, 0), (300, 1), (305, 1), (310, 1), (315, 1), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 1), (365, 1), (370, 1), (375, 1), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 1), (415, 1), (420, 0), (425, 0), (430, 0), (435, 0), (440, 1), (445, 1), (450, 0), (455, 1), (460, 1), (465, 1), (470, 1), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 1), (550, 1), (555, 1), (560, 0), (565, 1), (570, 1), (575, 1), (580, 1), (585, 0), (590, 1), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 1), (650, 1), (655, 0), (660, 1), (665, 1), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 1), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 1), (875, 1), (880, 1), (885, 1), (890, 0), (895, 1), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 1), (950, 1), (955, 1), (960, 1), (965, 0), (970, 0), (975, 0), (980, 1), (985, 1), (990, 1), (995, 0), (1000, 0), (1005, 1), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Vdin0_2  din0_2  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 1.0v 64.745n 1.0v 64.755n 0.0v 69.745n 0.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 0.0v 299.745n 0.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 0.0v 454.745n 0.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 0.0v 589.745n 0.0v 589.755n 1.0v 594.745n 1.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 0.0v 894.745n 0.0v 894.755n 1.0v 899.745n 1.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 1), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 1), (100, 1), (105, 0), (110, 0), (115, 0), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 0), (165, 1), (170, 1), (175, 1), (180, 0), (185, 0), (190, 0), (195, 1), (200, 1), (205, 0), (210, 0), (215, 0), (220, 1), (225, 1), (230, 1), (235, 1), (240, 0), (245, 0), (250, 0), (255, 0), (260, 1), (265, 0), (270, 0), (275, 1), (280, 1), (285, 0), (290, 0), (295, 1), (300, 0), (305, 0), (310, 0), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 0), (370, 1), (375, 1), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 1), (410, 0), (415, 1), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 1), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 0), (550, 1), (555, 1), (560, 0), (565, 1), (570, 1), (575, 0), (580, 0), (585, 1), (590, 0), (595, 1), (600, 1), (605, 1), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 1), (645, 1), (650, 0), (655, 0), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 0), (730, 1), (735, 1), (740, 1), (745, 0), (750, 0), (755, 0), (760, 1), (765, 1), (770, 1), (775, 1), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 1), (895, 0), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 1), (945, 0), (950, 0), (955, 1), (960, 0), (965, 0), (970, 0), (975, 0), (980, 1), (985, 1), (990, 1), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_3  din0_3  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 1.0v 64.745n 1.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 0.0v 164.745n 0.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 1.0v 264.745n 1.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 1.0v 299.745n 1.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 0.0v 369.745n 0.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 1.0v 409.745n 1.0v 409.755n 0.0v 414.745n 0.0v 414.755n 1.0v 419.745n 1.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.0v 454.745n 1.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 0.0v 549.745n 0.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 0.0v 729.745n 0.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 1.0v 894.745n 1.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 1.0v 959.745n 1.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 1), (20, 1), (25, 0), (30, 0), (35, 1), (40, 0), (45, 0), (50, 0), (55, 0), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 1), (165, 0), (170, 0), (175, 0), (180, 1), (185, 1), (190, 0), (195, 0), (200, 0), (205, 0), (210, 1), (215, 1), (220, 1), (225, 1), (230, 1), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 1), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 1), (305, 1), (310, 1), (315, 0), (320, 1), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 1), (385, 1), (390, 1), (395, 0), (400, 0), (405, 1), (410, 0), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 1), (550, 0), (555, 0), (560, 1), (565, 0), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 1), (600, 1), (605, 1), (610, 0), (615, 0), (620, 0), (625, 1), (630, 1), (635, 1), (640, 1), (645, 0), (650, 1), (655, 0), (660, 0), (665, 0), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 1), (735, 1), (740, 1), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 1), (780, 0), (785, 0), (790, 0), (795, 0), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 0), (895, 1), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 1), (935, 1), (940, 1), (945, 0), (950, 0), (955, 1), (960, 0), (965, 0), (970, 0), (975, 0), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Vdin0_4  din0_4  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 1.0v 39.745n 1.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 1.0v 164.745n 1.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 1.0v 264.745n 1.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 0.0v 319.745n 0.0v 319.755n 1.0v 324.745n 1.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 1.0v 409.745n 1.0v 409.755n 0.0v 414.745n 0.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 1.0v 549.745n 1.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 1.0v 654.745n 1.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 1.0v 779.745n 1.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 0.0v 894.745n 0.0v 894.755n 1.0v 899.745n 1.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 1.0v 959.745n 1.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 0), (70, 0), (75, 0), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 1), (165, 1), (170, 1), (175, 1), (180, 0), (185, 0), (190, 1), (195, 1), (200, 1), (205, 1), (210, 0), (215, 0), (220, 1), (225, 1), (230, 1), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 1), (265, 1), (270, 1), (275, 0), (280, 0), (285, 1), (290, 1), (295, 0), (300, 0), (305, 0), (310, 0), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 0), (410, 1), (415, 0), (420, 1), (425, 1), (430, 1), (435, 1), (440, 0), (445, 0), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 1), (535, 1), (540, 1), (545, 0), (550, 0), (555, 0), (560, 0), (565, 1), (570, 1), (575, 0), (580, 0), (585, 0), (590, 1), (595, 1), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 1), (630, 1), (635, 1), (640, 0), (645, 0), (650, 1), (655, 0), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 0), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 1), (745, 0), (750, 0), (755, 0), (760, 1), (765, 1), (770, 1), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 1), (935, 1), (940, 1), (945, 1), (950, 1), (955, 0), (960, 1), (965, 0), (970, 0), (975, 0), (980, 1), (985, 1), (990, 1), (995, 0), (1000, 0), (1005, 1), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Vdin0_5  din0_5  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.0v 414.745n 1.0v 414.755n 0.0v 419.745n 0.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 1.0v 654.745n 1.0v 654.755n 0.0v 659.745n 0.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 0.0v 959.745n 0.0v 959.755n 1.0v 964.745n 1.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 0), (90, 0), (95, 1), (100, 1), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 1), (160, 1), (165, 0), (170, 0), (175, 0), (180, 1), (185, 1), (190, 1), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 1), (225, 1), (230, 1), (235, 1), (240, 0), (245, 0), (250, 0), (255, 0), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 0), (355, 0), (360, 0), (365, 0), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 0), (410, 0), (415, 1), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 0), (535, 0), (540, 0), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 1), (585, 0), (590, 1), (595, 0), (600, 0), (605, 0), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 0), (665, 0), (670, 0), (675, 0), (680, 1), (685, 1), (690, 1), (695, 1), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 1), (765, 1), (770, 1), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 0), (890, 1), (895, 1), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 1), (930, 1), (935, 1), (940, 1), (945, 0), (950, 0), (955, 1), (960, 0), (965, 0), (970, 0), (975, 0), (980, 1), (985, 1), (990, 1), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Vdin0_6  din0_6  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 1.0v 99.745n 1.0v 99.755n 1.0v 104.745n 1.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 1.0v 419.745n 1.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 1.0v 509.745n 1.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 0.0v 589.745n 0.0v 589.755n 1.0v 594.745n 1.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.0v 729.745n 1.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 0.0v 889.745n 0.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 1.0v 959.745n 1.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 1), (70, 1), (75, 1), (80, 1), (85, 0), (90, 0), (95, 0), (100, 1), (105, 1), (110, 1), (115, 1), (120, 0), (125, 1), (130, 1), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 1), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 1), (195, 0), (200, 0), (205, 0), (210, 1), (215, 1), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 1), (265, 1), (270, 0), (275, 1), (280, 0), (285, 1), (290, 1), (295, 1), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 1), (355, 1), (360, 1), (365, 0), (370, 0), (375, 0), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 0), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 0), (580, 1), (585, 0), (590, 1), (595, 0), (600, 0), (605, 0), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 1), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 1), (890, 0), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 1), (960, 0), (965, 0), (970, 0), (975, 0), (980, 1), (985, 1), (990, 1), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Vdin0_7  din0_7  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 0.0v 124.745n 0.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 1.0v 164.745n 1.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 1.0v 194.745n 1.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 0.0v 274.745n 0.0v 274.755n 1.0v 279.745n 1.0v 279.755n 0.0v 284.745n 0.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 0.0v 589.745n 0.0v 589.755n 1.0v 594.745n 1.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 1.0v 779.745n 1.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 1.0v 889.745n 1.0v 889.755n 0.0v 894.745n 0.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 1.0v 959.745n 1.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 1), (110, 1), (115, 1), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 1), (160, 1), (165, 0), (170, 0), (175, 0), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 0), (210, 1), (215, 1), (220, 1), (225, 1), (230, 1), (235, 1), (240, 0), (245, 0), (250, 0), (255, 0), (260, 1), (265, 0), (270, 1), (275, 0), (280, 0), (285, 0), (290, 0), (295, 1), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 0), (370, 0), (375, 0), (380, 0), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 1), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 1), (550, 0), (555, 0), (560, 0), (565, 1), (570, 1), (575, 0), (580, 0), (585, 0), (590, 1), (595, 0), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 0), (630, 0), (635, 0), (640, 1), (645, 1), (650, 0), (655, 0), (660, 0), (665, 0), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 1), (765, 1), (770, 1), (775, 0), (780, 1), (785, 1), (790, 1), (795, 1), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 0), (900, 0), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 1), (945, 1), (950, 1), (955, 0), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 1), (995, 0), (1000, 0), (1005, 1), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Vdin0_8  din0_8  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 0.0v 209.745n 0.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 1.0v 264.745n 1.0v 264.755n 0.0v 269.745n 0.0v 269.755n 1.0v 274.745n 1.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 1.0v 299.745n 1.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 1.0v 549.745n 1.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 1.0v 594.745n 1.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 0.0v 779.745n 0.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 0.0v 959.745n 0.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 1), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 1), (70, 1), (75, 1), (80, 0), (85, 0), (90, 0), (95, 0), (100, 1), (105, 1), (110, 1), (115, 1), (120, 0), (125, 0), (130, 0), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 0), (170, 0), (175, 0), (180, 1), (185, 1), (190, 0), (195, 0), (200, 0), (205, 1), (210, 0), (215, 0), (220, 1), (225, 1), (230, 1), (235, 1), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 1), (275, 0), (280, 0), (285, 1), (290, 1), (295, 1), (300, 0), (305, 0), (310, 0), (315, 1), (320, 0), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 0), (365, 0), (370, 1), (375, 1), (380, 0), (385, 0), (390, 0), (395, 1), (400, 1), (405, 0), (410, 1), (415, 1), (420, 0), (425, 0), (430, 0), (435, 0), (440, 1), (445, 1), (450, 0), (455, 1), (460, 1), (465, 1), (470, 1), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 1), (550, 1), (555, 1), (560, 1), (565, 0), (570, 0), (575, 0), (580, 1), (585, 1), (590, 0), (595, 0), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 0), (630, 0), (635, 0), (640, 0), (645, 1), (650, 1), (655, 0), (660, 0), (665, 0), (670, 1), (675, 1), (680, 0), (685, 0), (690, 0), (695, 1), (700, 0), (705, 0), (710, 0), (715, 0), (720, 1), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 1), (765, 1), (770, 1), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 1), (890, 1), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 1), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Vdin0_9  din0_9  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 1.0v 39.745n 1.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 1.0v 104.745n 1.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 1.0v 209.745n 1.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 1.0v 274.745n 1.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 1.0v 319.745n 1.0v 319.755n 0.0v 324.745n 0.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 0.0v 454.745n 0.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 1.0v 724.745n 1.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 1.0v 929.745n 1.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 0), (20, 0), (25, 0), (30, 0), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 0), (65, 1), (70, 0), (75, 0), (80, 1), (85, 1), (90, 1), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 1), (165, 0), (170, 0), (175, 0), (180, 1), (185, 1), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 1), (225, 1), (230, 1), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 1), (370, 0), (375, 0), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 0), (410, 1), (415, 1), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 1), (550, 0), (555, 0), (560, 1), (565, 0), (570, 0), (575, 1), (580, 1), (585, 1), (590, 0), (595, 0), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 1), (655, 1), (660, 1), (665, 1), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 1), (700, 0), (705, 0), (710, 0), (715, 0), (720, 1), (725, 1), (730, 0), (735, 0), (740, 0), (745, 1), (750, 1), (755, 1), (760, 0), (765, 0), (770, 0), (775, 1), (780, 0), (785, 0), (790, 0), (795, 0), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 1), (875, 1), (880, 1), (885, 0), (890, 0), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 0), (930, 1), (935, 1), (940, 1), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_10  din0_10  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 0.0v 64.745n 0.0v 64.755n 1.0v 69.745n 1.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 1.0v 164.745n 1.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 1.0v 369.745n 1.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.0v 414.745n 1.0v 414.755n 1.0v 419.745n 1.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 1.0v 549.745n 1.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 1.0v 779.745n 1.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 0.0v 929.745n 0.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 1), (20, 1), (25, 0), (30, 0), (35, 1), (40, 0), (45, 1), (50, 1), (55, 1), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 1), (105, 0), (110, 0), (115, 0), (120, 1), (125, 1), (130, 1), (135, 0), (140, 0), (145, 0), (150, 0), (155, 1), (160, 0), (165, 1), (170, 1), (175, 1), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 0), (300, 1), (305, 1), (310, 1), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 1), (355, 1), (360, 1), (365, 0), (370, 1), (375, 1), (380, 0), (385, 1), (390, 1), (395, 1), (400, 1), (405, 0), (410, 1), (415, 0), (420, 1), (425, 1), (430, 1), (435, 1), (440, 0), (445, 0), (450, 0), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 1), (550, 1), (555, 1), (560, 0), (565, 1), (570, 0), (575, 1), (580, 1), (585, 0), (590, 1), (595, 0), (600, 0), (605, 0), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 1), (650, 0), (655, 1), (660, 1), (665, 1), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 0), (735, 0), (740, 0), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 1), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 1), (890, 1), (895, 1), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 1), (960, 0), (965, 1), (970, 1), (975, 1), (980, 0), (985, 0), (990, 0), (995, 1), (1000, 1), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va0_0  a0_0  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 1.0v 24.745n 1.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 1.0v 39.745n 1.0v 39.755n 0.0v 44.745n 0.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 1.0v 104.745n 1.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 1.0v 159.745n 1.0v 159.755n 0.0v 164.745n 0.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 1.0v 269.745n 1.0v 269.755n 1.0v 274.745n 1.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 1.0v 294.745n 1.0v 294.755n 0.0v 299.745n 0.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 0.0v 369.745n 0.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 0.0v 384.745n 0.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.0v 414.745n 1.0v 414.755n 0.0v 419.745n 0.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.0v 569.745n 1.0v 569.755n 0.0v 574.745n 0.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 0.0v 589.745n 0.0v 589.755n 1.0v 594.745n 1.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 0.0v 654.745n 0.0v 654.755n 1.0v 659.745n 1.0v 659.755n 1.0v 664.745n 1.0v 664.755n 1.0v 669.745n 1.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 1.0v 899.745n 1.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 1.0v 959.745n 1.0v 959.755n 0.0v 964.745n 0.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 1), (45, 1), (50, 1), (55, 1), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 1), (105, 0), (110, 0), (115, 0), (120, 1), (125, 0), (130, 0), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 0), (165, 0), (170, 0), (175, 0), (180, 1), (185, 1), (190, 0), (195, 1), (200, 1), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 0), (275, 1), (280, 1), (285, 0), (290, 0), (295, 0), (300, 1), (305, 1), (310, 1), (315, 0), (320, 1), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 1), (355, 1), (360, 1), (365, 1), (370, 0), (375, 0), (380, 0), (385, 1), (390, 1), (395, 0), (400, 0), (405, 0), (410, 0), (415, 1), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 1), (460, 1), (465, 1), (470, 1), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 1), (550, 1), (555, 1), (560, 1), (565, 0), (570, 0), (575, 1), (580, 0), (585, 0), (590, 0), (595, 1), (600, 0), (605, 0), (610, 1), (615, 1), (620, 1), (625, 0), (630, 0), (635, 0), (640, 0), (645, 1), (650, 0), (655, 0), (660, 0), (665, 0), (670, 0), (675, 0), (680, 1), (685, 1), (690, 1), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 1), (725, 0), (730, 0), (735, 0), (740, 0), (745, 1), (750, 1), (755, 1), (760, 0), (765, 0), (770, 0), (775, 0), (780, 1), (785, 1), (790, 1), (795, 1), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 0), (900, 1), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 1), (935, 1), (940, 1), (945, 0), (950, 0), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 0), (985, 0), (990, 0), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Va0_1  a0_1  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.0v 14.745n 1.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 1.0v 104.745n 1.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 1.0v 124.745n 1.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 0.0v 194.745n 0.0v 194.755n 1.0v 199.745n 1.0v 199.755n 1.0v 204.745n 1.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 0.0v 274.745n 0.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 1.0v 304.745n 1.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 0.0v 319.745n 0.0v 319.755n 1.0v 324.745n 1.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 1.0v 419.745n 1.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 1.0v 579.745n 1.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 1.0v 599.745n 1.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 1.0v 649.745n 1.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 1.0v 724.745n 1.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 1.0v 894.745n 1.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.0v 904.745n 1.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 1.0v 959.745n 1.0v 959.755n 1.0v 964.745n 1.0v 964.755n 1.0v 969.745n 1.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 1), (30, 1), (35, 1), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 1), (75, 1), (80, 0), (85, 1), (90, 1), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 1), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 1), (195, 0), (200, 0), (205, 0), (210, 1), (215, 1), (220, 0), (225, 0), (230, 0), (235, 0), (240, 1), (245, 1), (250, 1), (255, 1), (260, 0), (265, 0), (270, 1), (275, 0), (280, 0), (285, 0), (290, 0), (295, 1), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 1), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 1), (400, 1), (405, 0), (410, 1), (415, 0), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 0), (455, 0), (460, 0), (465, 0), (470, 0), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 1), (570, 0), (575, 0), (580, 1), (585, 1), (590, 1), (595, 0), (600, 1), (605, 1), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 1), (645, 0), (650, 0), (655, 1), (660, 0), (665, 0), (670, 0), (675, 0), (680, 1), (685, 1), (690, 1), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 1), (765, 1), (770, 1), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 1), (945, 1), (950, 1), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 1), (985, 1), (990, 1), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Va0_2  a0_2  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 1.0v 164.745n 1.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 1.0v 194.745n 1.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 1.0v 274.745n 1.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 1.0v 299.745n 1.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 1.0v 369.745n 1.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.0v 414.745n 1.0v 414.755n 0.0v 419.745n 0.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.0v 569.745n 1.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 1.0v 659.745n 1.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 1.0v 729.745n 1.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 0), (20, 0), (25, 1), (30, 1), (35, 1), (40, 0), (45, 1), (50, 1), (55, 1), (60, 0), (65, 0), (70, 1), (75, 1), (80, 0), (85, 1), (90, 1), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 1), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 1), (195, 0), (200, 0), (205, 0), (210, 1), (215, 1), (220, 0), (225, 0), (230, 0), (235, 0), (240, 1), (245, 1), (250, 1), (255, 1), (260, 0), (265, 0), (270, 1), (275, 0), (280, 0), (285, 0), (290, 0), (295, 1), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 1), (355, 1), (360, 0), (365, 1), (370, 0), (375, 0), (380, 0), (385, 1), (390, 1), (395, 1), (400, 1), (405, 0), (410, 1), (415, 0), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 0), (455, 0), (460, 0), (465, 0), (470, 0), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 1), (570, 0), (575, 1), (580, 1), (585, 1), (590, 1), (595, 0), (600, 1), (605, 1), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 1), (645, 0), (650, 0), (655, 1), (660, 0), (665, 0), (670, 0), (675, 0), (680, 1), (685, 1), (690, 1), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 1), (725, 1), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 1), (765, 1), (770, 1), (775, 0), (780, 1), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 0), (870, 0), (875, 0), (880, 0), (885, 1), (890, 0), (895, 0), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 1), (945, 1), (950, 1), (955, 1), (960, 0), (965, 0), (970, 0), (975, 0), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 0), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Va0_3  a0_3  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.0v 14.745n 1.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 0.0v 44.745n 0.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 1.0v 164.745n 1.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 1.0v 194.745n 1.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 1.0v 274.745n 1.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 1.0v 299.745n 1.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 0.0v 364.745n 0.0v 364.755n 1.0v 369.745n 1.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.0v 414.745n 1.0v 414.755n 0.0v 419.745n 0.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.0v 569.745n 1.0v 569.755n 0.0v 574.745n 0.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 1.0v 659.745n 1.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 0.0v 779.745n 0.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 1.0v 889.745n 1.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 0), (20, 0), (25, 1), (30, 1), (35, 1), (40, 0), (45, 1), (50, 1), (55, 1), (60, 0), (65, 0), (70, 1), (75, 1), (80, 0), (85, 1), (90, 1), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 1), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 1), (195, 0), (200, 0), (205, 0), (210, 1), (215, 1), (220, 0), (225, 0), (230, 0), (235, 0), (240, 1), (245, 1), (250, 1), (255, 1), (260, 0), (265, 0), (270, 1), (275, 0), (280, 0), (285, 0), (290, 0), (295, 1), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 1), (355, 1), (360, 0), (365, 1), (370, 0), (375, 0), (380, 0), (385, 1), (390, 1), (395, 1), (400, 1), (405, 0), (410, 1), (415, 0), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 0), (455, 0), (460, 0), (465, 0), (470, 0), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 1), (570, 0), (575, 1), (580, 1), (585, 1), (590, 1), (595, 0), (600, 1), (605, 1), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 1), (645, 0), (650, 0), (655, 1), (660, 0), (665, 0), (670, 0), (675, 0), (680, 1), (685, 1), (690, 1), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 1), (725, 1), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 1), (765, 1), (770, 1), (775, 0), (780, 1), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 0), (870, 0), (875, 0), (880, 0), (885, 1), (890, 0), (895, 0), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 1), (945, 1), (950, 1), (955, 1), (960, 0), (965, 0), (970, 0), (975, 0), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 0), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Va0_4  a0_4  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.0v 14.745n 1.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 0.0v 44.745n 0.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 1.0v 164.745n 1.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 1.0v 194.745n 1.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 1.0v 274.745n 1.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 1.0v 299.745n 1.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 0.0v 364.745n 0.0v 364.755n 1.0v 369.745n 1.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.0v 414.745n 1.0v 414.755n 0.0v 419.745n 0.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.0v 569.745n 1.0v 569.755n 0.0v 574.745n 0.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 1.0v 659.745n 1.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 0.0v 779.745n 0.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 1.0v 889.745n 1.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 0), (20, 0), (25, 1), (30, 1), (35, 1), (40, 0), (45, 1), (50, 1), (55, 1), (60, 0), (65, 0), (70, 1), (75, 1), (80, 0), (85, 1), (90, 1), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 1), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 1), (195, 0), (200, 0), (205, 0), (210, 1), (215, 1), (220, 0), (225, 0), (230, 0), (235, 0), (240, 1), (245, 1), (250, 1), (255, 1), (260, 0), (265, 0), (270, 1), (275, 0), (280, 0), (285, 0), (290, 0), (295, 1), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 1), (355, 1), (360, 0), (365, 1), (370, 0), (375, 0), (380, 0), (385, 1), (390, 1), (395, 1), (400, 1), (405, 0), (410, 1), (415, 0), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 0), (455, 0), (460, 0), (465, 0), (470, 0), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 1), (570, 0), (575, 1), (580, 1), (585, 1), (590, 1), (595, 0), (600, 1), (605, 1), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 1), (645, 0), (650, 0), (655, 1), (660, 0), (665, 0), (670, 0), (675, 0), (680, 1), (685, 1), (690, 1), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 1), (725, 1), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 1), (765, 1), (770, 1), (775, 0), (780, 1), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 0), (870, 0), (875, 0), (880, 0), (885, 1), (890, 0), (895, 0), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 1), (945, 1), (950, 1), (955, 1), (960, 0), (965, 0), (970, 0), (975, 0), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 0), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Va0_5  a0_5  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.0v 14.745n 1.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 0.0v 44.745n 0.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 1.0v 164.745n 1.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 1.0v 194.745n 1.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 1.0v 274.745n 1.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 1.0v 299.745n 1.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 0.0v 364.745n 0.0v 364.755n 1.0v 369.745n 1.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.0v 414.745n 1.0v 414.755n 0.0v 419.745n 0.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.0v 569.745n 1.0v 569.755n 0.0v 574.745n 0.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 1.0v 659.745n 1.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 0.0v 779.745n 0.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 1.0v 889.745n 1.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 0), (20, 0), (25, 1), (30, 1), (35, 1), (40, 0), (45, 1), (50, 1), (55, 1), (60, 0), (65, 0), (70, 1), (75, 1), (80, 0), (85, 1), (90, 1), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 1), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 1), (195, 0), (200, 0), (205, 0), (210, 1), (215, 1), (220, 0), (225, 0), (230, 0), (235, 0), (240, 1), (245, 1), (250, 1), (255, 1), (260, 0), (265, 0), (270, 1), (275, 0), (280, 0), (285, 0), (290, 0), (295, 1), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 1), (355, 1), (360, 0), (365, 1), (370, 0), (375, 0), (380, 0), (385, 1), (390, 1), (395, 1), (400, 1), (405, 0), (410, 1), (415, 0), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 0), (455, 0), (460, 0), (465, 0), (470, 0), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 1), (570, 0), (575, 1), (580, 1), (585, 1), (590, 1), (595, 0), (600, 1), (605, 1), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 1), (645, 0), (650, 0), (655, 1), (660, 0), (665, 0), (670, 0), (675, 0), (680, 1), (685, 1), (690, 1), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 1), (725, 1), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 1), (765, 1), (770, 1), (775, 0), (780, 1), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 0), (870, 0), (875, 0), (880, 0), (885, 1), (890, 0), (895, 0), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 1), (945, 1), (950, 1), (955, 1), (960, 0), (965, 0), (970, 0), (975, 0), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 0), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Va0_6  a0_6  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 1.0v 14.745n 1.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 1.0v 29.745n 1.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 0.0v 44.745n 0.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 1.0v 164.745n 1.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 1.0v 194.745n 1.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 1.0v 274.745n 1.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 1.0v 299.745n 1.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 0.0v 364.745n 0.0v 364.755n 1.0v 369.745n 1.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.0v 414.745n 1.0v 414.755n 0.0v 419.745n 0.0v 419.755n 1.0v 424.745n 1.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 1.0v 479.745n 1.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 1.0v 569.745n 1.0v 569.755n 0.0v 574.745n 0.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 1.0v 594.745n 1.0v 594.755n 0.0v 599.745n 0.0v 599.755n 1.0v 604.745n 1.0v 604.755n 1.0v 609.745n 1.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 1.0v 659.745n 1.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 1.0v 684.745n 1.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 0.0v 779.745n 0.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 1.0v 889.745n 1.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 1.0v 929.745n 1.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 1.0v 954.745n 1.0v 954.755n 1.0v 959.745n 1.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 0), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 1), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 1), (260, 1), (265, 1), (270, 0), (275, 0), (280, 0), (285, 0), (290, 1), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 1), (330, 0), (335, 0), (340, 1), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 1), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 1), (420, 1), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 1), (455, 1), (460, 1), (465, 0), (470, 1), (475, 0), (480, 1), (485, 1), (490, 1), (495, 0), (500, 0), (505, 0), (510, 1), (515, 1), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 0), (585, 0), (590, 1), (595, 1), (600, 1), (605, 0), (610, 0), (615, 0), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 1), (835, 1), (840, 0), (845, 1), (850, 1), (855, 1), (860, 0), (865, 1), (870, 1), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 1), (975, 1), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Va1_0  a1_0  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 1.0v 34.745n 1.0v 34.755n 1.0v 39.745n 1.0v 39.755n 1.0v 44.745n 1.0v 44.755n 1.0v 49.745n 1.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.0v 119.745n 1.0v 119.755n 1.0v 124.745n 1.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 1.0v 139.745n 1.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 0.0v 199.745n 0.0v 199.755n 1.0v 204.745n 1.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 1.0v 294.745n 1.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 1.0v 329.745n 1.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 1.0v 344.745n 1.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 1.0v 384.745n 1.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 1.0v 464.745n 1.0v 464.755n 0.0v 469.745n 0.0v 469.755n 1.0v 474.745n 1.0v 474.755n 0.0v 479.745n 0.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 1.0v 594.745n 1.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 1.0v 734.745n 1.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 0.0v 844.745n 0.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 0.0v 864.745n 0.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 1.0v 1024.745n 1.0v 1024.755n 1.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 1), (65, 1), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 0), (275, 0), (280, 0), (285, 0), (290, 1), (295, 1), (300, 1), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 1), (420, 1), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 1), (470, 1), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 1), (585, 1), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 1), (765, 0), (770, 0), (775, 0), (780, 1), (785, 1), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 1), (830, 0), (835, 0), (840, 1), (845, 1), (850, 0), (855, 0), (860, 1), (865, 1), (870, 1), (875, 0), (880, 1), (885, 1), (890, 0), (895, 0), (900, 0), (905, 0), (910, 1), (915, 1), (920, 1), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va1_1  a1_1  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 1.0v 234.745n 1.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 1.0v 264.745n 1.0v 264.755n 1.0v 269.745n 1.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 1.0v 294.745n 1.0v 294.755n 1.0v 299.745n 1.0v 299.755n 1.0v 304.745n 1.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 1.0v 349.745n 1.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 1.0v 384.745n 1.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 1.0v 419.745n 1.0v 419.755n 1.0v 424.745n 1.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 1.0v 534.745n 1.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 1.0v 559.745n 1.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 1.0v 624.745n 1.0v 624.755n 1.0v 629.745n 1.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 1.0v 734.745n 1.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 1.0v 764.745n 1.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 1.0v 784.745n 1.0v 784.755n 1.0v 789.745n 1.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 1.0v 829.745n 1.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 1.0v 844.745n 1.0v 844.755n 1.0v 849.745n 1.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 1.0v 864.745n 1.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 0.0v 879.745n 0.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 0), (105, 0), (110, 0), (115, 1), (120, 0), (125, 0), (130, 0), (135, 1), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 1), (305, 0), (310, 0), (315, 0), (320, 0), (325, 1), (330, 1), (335, 1), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 1), (415, 0), (420, 0), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 1), (515, 1), (520, 1), (525, 0), (530, 0), (535, 0), (540, 1), (545, 1), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 1), (585, 1), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 1), (700, 1), (705, 1), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 1), (760, 1), (765, 1), (770, 1), (775, 1), (780, 0), (785, 0), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 0), (835, 0), (840, 0), (845, 0), (850, 1), (855, 1), (860, 0), (865, 0), (870, 0), (875, 1), (880, 1), (885, 1), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va1_2  a1_2  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.0v 119.745n 1.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.0v 139.745n 1.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 1.0v 304.745n 1.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 0), (105, 0), (110, 0), (115, 1), (120, 0), (125, 0), (130, 0), (135, 1), (140, 0), (145, 0), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 1), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 1), (295, 0), (300, 1), (305, 0), (310, 0), (315, 0), (320, 0), (325, 1), (330, 1), (335, 1), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 1), (415, 0), (420, 0), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 1), (515, 1), (520, 1), (525, 0), (530, 0), (535, 0), (540, 1), (545, 1), (550, 1), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 1), (585, 1), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 1), (625, 0), (630, 0), (635, 0), (640, 0), (645, 1), (650, 1), (655, 1), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 1), (700, 1), (705, 1), (710, 0), (715, 0), (720, 0), (725, 0), (730, 1), (735, 0), (740, 0), (745, 0), (750, 0), (755, 1), (760, 1), (765, 1), (770, 1), (775, 1), (780, 0), (785, 0), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 0), (835, 0), (840, 0), (845, 0), (850, 1), (855, 1), (860, 0), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va1_3  a1_3  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.0v 119.745n 1.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.0v 139.745n 1.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 1.0v 259.745n 1.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 1.0v 294.745n 1.0v 294.755n 0.0v 299.745n 0.0v 299.755n 1.0v 304.745n 1.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 1.0v 624.745n 1.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 1.0v 734.745n 1.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 0.0v 864.745n 0.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 0), (105, 0), (110, 0), (115, 1), (120, 0), (125, 0), (130, 0), (135, 1), (140, 0), (145, 0), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 1), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 1), (295, 0), (300, 1), (305, 0), (310, 0), (315, 0), (320, 0), (325, 1), (330, 1), (335, 1), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 1), (415, 0), (420, 0), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 1), (515, 1), (520, 1), (525, 0), (530, 0), (535, 0), (540, 1), (545, 1), (550, 1), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 1), (585, 1), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 1), (625, 0), (630, 0), (635, 0), (640, 0), (645, 1), (650, 1), (655, 1), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 1), (700, 1), (705, 1), (710, 0), (715, 0), (720, 0), (725, 0), (730, 1), (735, 0), (740, 0), (745, 0), (750, 0), (755, 1), (760, 1), (765, 1), (770, 1), (775, 1), (780, 0), (785, 0), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 0), (835, 0), (840, 0), (845, 0), (850, 1), (855, 1), (860, 0), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va1_4  a1_4  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.0v 119.745n 1.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.0v 139.745n 1.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 1.0v 259.745n 1.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 1.0v 294.745n 1.0v 294.755n 0.0v 299.745n 0.0v 299.755n 1.0v 304.745n 1.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 1.0v 624.745n 1.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 1.0v 734.745n 1.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 0.0v 864.745n 0.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 0), (105, 0), (110, 0), (115, 1), (120, 0), (125, 0), (130, 0), (135, 1), (140, 0), (145, 0), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 1), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 1), (295, 0), (300, 1), (305, 0), (310, 0), (315, 0), (320, 0), (325, 1), (330, 1), (335, 1), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 1), (415, 0), (420, 0), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 1), (515, 1), (520, 1), (525, 0), (530, 0), (535, 0), (540, 1), (545, 1), (550, 1), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 1), (585, 1), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 1), (625, 0), (630, 0), (635, 0), (640, 0), (645, 1), (650, 1), (655, 1), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 1), (700, 1), (705, 1), (710, 0), (715, 0), (720, 0), (725, 0), (730, 1), (735, 0), (740, 0), (745, 0), (750, 0), (755, 1), (760, 1), (765, 1), (770, 1), (775, 1), (780, 0), (785, 0), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 0), (835, 0), (840, 0), (845, 0), (850, 1), (855, 1), (860, 0), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va1_5  a1_5  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.0v 119.745n 1.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.0v 139.745n 1.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 1.0v 259.745n 1.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 1.0v 294.745n 1.0v 294.755n 0.0v 299.745n 0.0v 299.755n 1.0v 304.745n 1.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 1.0v 624.745n 1.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 1.0v 734.745n 1.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 0.0v 864.745n 0.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 0), (105, 0), (110, 0), (115, 1), (120, 0), (125, 0), (130, 0), (135, 1), (140, 0), (145, 0), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 1), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 1), (295, 0), (300, 1), (305, 0), (310, 0), (315, 0), (320, 0), (325, 1), (330, 1), (335, 1), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 1), (415, 0), (420, 0), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 1), (515, 1), (520, 1), (525, 0), (530, 0), (535, 0), (540, 1), (545, 1), (550, 1), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 1), (585, 1), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 1), (625, 0), (630, 0), (635, 0), (640, 0), (645, 1), (650, 1), (655, 1), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 1), (700, 1), (705, 1), (710, 0), (715, 0), (720, 0), (725, 0), (730, 1), (735, 0), (740, 0), (745, 0), (750, 0), (755, 1), (760, 1), (765, 1), (770, 1), (775, 1), (780, 0), (785, 0), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 0), (835, 0), (840, 0), (845, 0), (850, 1), (855, 1), (860, 0), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va1_6  a1_6  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 1.0v 64.745n 1.0v 64.755n 1.0v 69.745n 1.0v 69.755n 1.0v 74.745n 1.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 1.0v 94.745n 1.0v 94.755n 1.0v 99.745n 1.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 1.0v 119.745n 1.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 1.0v 139.745n 1.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 1.0v 154.745n 1.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 1.0v 259.745n 1.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 1.0v 294.745n 1.0v 294.755n 0.0v 299.745n 0.0v 299.755n 1.0v 304.745n 1.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 1.0v 329.745n 1.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 1.0v 384.745n 1.0v 384.755n 1.0v 389.745n 1.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 1.0v 409.745n 1.0v 409.755n 1.0v 414.745n 1.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 1.0v 454.745n 1.0v 454.755n 1.0v 459.745n 1.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 1.0v 544.745n 1.0v 544.755n 1.0v 549.745n 1.0v 549.755n 1.0v 554.745n 1.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 1.0v 584.745n 1.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 1.0v 624.745n 1.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 1.0v 649.745n 1.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 1.0v 699.745n 1.0v 699.755n 1.0v 704.745n 1.0v 704.755n 1.0v 709.745n 1.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 1.0v 734.745n 1.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 1.0v 759.745n 1.0v 759.755n 1.0v 764.745n 1.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 0.0v 864.745n 0.0v 864.755n 1.0v 869.745n 1.0v 869.755n 1.0v 874.745n 1.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 1.0v 889.745n 1.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )

 * Generation of control signals
* (time, data): [(0, 1), (5, 0), (10, 0), (15, 0), (20, 1), (25, 0), (30, 1), (35, 0), (40, 0), (45, 0), (50, 1), (55, 1), (60, 0), (65, 0), (70, 0), (75, 1), (80, 0), (85, 0), (90, 1), (95, 0), (100, 0), (105, 0), (110, 1), (115, 1), (120, 0), (125, 0), (130, 1), (135, 0), (140, 1), (145, 1), (150, 1), (155, 0), (160, 0), (165, 0), (170, 1), (175, 1), (180, 0), (185, 1), (190, 0), (195, 0), (200, 1), (205, 0), (210, 0), (215, 1), (220, 0), (225, 1), (230, 1), (235, 0), (240, 0), (245, 1), (250, 1), (255, 1), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 1), (295, 0), (300, 0), (305, 1), (310, 1), (315, 0), (320, 0), (325, 0), (330, 1), (335, 1), (340, 1), (345, 1), (350, 0), (355, 1), (360, 0), (365, 0), (370, 0), (375, 1), (380, 0), (385, 0), (390, 1), (395, 0), (400, 1), (405, 0), (410, 0), (415, 0), (420, 0), (425, 1), (430, 1), (435, 1), (440, 0), (445, 1), (450, 0), (455, 0), (460, 1), (465, 1), (470, 1), (475, 0), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 0), (510, 1), (515, 1), (520, 1), (525, 1), (530, 0), (535, 1), (540, 1), (545, 0), (550, 0), (555, 1), (560, 0), (565, 0), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 0), (605, 1), (610, 0), (615, 1), (620, 1), (625, 0), (630, 1), (635, 1), (640, 0), (645, 0), (650, 0), (655, 0), (660, 0), (665, 1), (670, 0), (675, 1), (680, 0), (685, 1), (690, 1), (695, 0), (700, 0), (705, 1), (710, 1), (715, 1), (720, 0), (725, 0), (730, 0), (735, 1), (740, 1), (745, 0), (750, 1), (755, 1), (760, 0), (765, 1), (770, 1), (775, 0), (780, 0), (785, 1), (790, 1), (795, 1), (800, 0), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 0), (845, 1), (850, 1), (855, 1), (860, 1), (865, 0), (870, 0), (875, 1), (880, 1), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 1), (915, 1), (920, 1), (925, 0), (930, 0), (935, 1), (940, 1), (945, 0), (950, 1), (955, 0), (960, 0), (965, 0), (970, 1), (975, 1), (980, 0), (985, 1), (990, 1), (995, 0), (1000, 1), (1005, 0), (1010, 1), (1015, 1), (1020, 0), (1025, 1)]
VCSB0 CSB0 0 PWL (0n 1.0v 4.745n 1.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 1.0v 24.745n 1.0v 24.755n 0.0v 29.745n 0.0v 29.755n 1.0v 34.745n 1.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 1.0v 54.745n 1.0v 54.755n 1.0v 59.745n 1.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 1.0v 79.745n 1.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 1.0v 94.745n 1.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 1.0v 114.745n 1.0v 114.755n 1.0v 119.745n 1.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 1.0v 134.745n 1.0v 134.755n 0.0v 139.745n 0.0v 139.755n 1.0v 144.745n 1.0v 144.755n 1.0v 149.745n 1.0v 149.755n 1.0v 154.745n 1.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 1.0v 174.745n 1.0v 174.755n 1.0v 179.745n 1.0v 179.755n 0.0v 184.745n 0.0v 184.755n 1.0v 189.745n 1.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 1.0v 204.745n 1.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 1.0v 219.745n 1.0v 219.755n 0.0v 224.745n 0.0v 224.755n 1.0v 229.745n 1.0v 229.755n 1.0v 234.745n 1.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 1.0v 259.745n 1.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 1.0v 294.745n 1.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 1.0v 309.745n 1.0v 309.755n 1.0v 314.745n 1.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 1.0v 334.745n 1.0v 334.755n 1.0v 339.745n 1.0v 339.755n 1.0v 344.745n 1.0v 344.755n 1.0v 349.745n 1.0v 349.755n 0.0v 354.745n 0.0v 354.755n 1.0v 359.745n 1.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 1.0v 379.745n 1.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 1.0v 394.745n 1.0v 394.755n 0.0v 399.745n 0.0v 399.755n 1.0v 404.745n 1.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 1.0v 429.745n 1.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 0.0v 444.745n 0.0v 444.755n 1.0v 449.745n 1.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 1.0v 464.745n 1.0v 464.755n 1.0v 469.745n 1.0v 469.755n 1.0v 474.745n 1.0v 474.755n 0.0v 479.745n 0.0v 479.755n 1.0v 484.745n 1.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 1.0v 499.745n 1.0v 499.755n 1.0v 504.745n 1.0v 504.755n 0.0v 509.745n 0.0v 509.755n 1.0v 514.745n 1.0v 514.755n 1.0v 519.745n 1.0v 519.755n 1.0v 524.745n 1.0v 524.755n 1.0v 529.745n 1.0v 529.755n 0.0v 534.745n 0.0v 534.755n 1.0v 539.745n 1.0v 539.755n 1.0v 544.745n 1.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 1.0v 559.745n 1.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 1.0v 609.745n 1.0v 609.755n 0.0v 614.745n 0.0v 614.755n 1.0v 619.745n 1.0v 619.755n 1.0v 624.745n 1.0v 624.755n 0.0v 629.745n 0.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 1.0v 669.745n 1.0v 669.755n 0.0v 674.745n 0.0v 674.755n 1.0v 679.745n 1.0v 679.755n 0.0v 684.745n 0.0v 684.755n 1.0v 689.745n 1.0v 689.755n 1.0v 694.745n 1.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 1.0v 709.745n 1.0v 709.755n 1.0v 714.745n 1.0v 714.755n 1.0v 719.745n 1.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 1.0v 739.745n 1.0v 739.755n 1.0v 744.745n 1.0v 744.755n 0.0v 749.745n 0.0v 749.755n 1.0v 754.745n 1.0v 754.755n 1.0v 759.745n 1.0v 759.755n 0.0v 764.745n 0.0v 764.755n 1.0v 769.745n 1.0v 769.755n 1.0v 774.745n 1.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 1.0v 789.745n 1.0v 789.755n 1.0v 794.745n 1.0v 794.755n 1.0v 799.745n 1.0v 799.755n 0.0v 804.745n 0.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 1.0v 829.745n 1.0v 829.755n 1.0v 834.745n 1.0v 834.755n 1.0v 839.745n 1.0v 839.755n 0.0v 844.745n 0.0v 844.755n 1.0v 849.745n 1.0v 849.755n 1.0v 854.745n 1.0v 854.755n 1.0v 859.745n 1.0v 859.755n 1.0v 864.745n 1.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 1.0v 879.745n 1.0v 879.755n 1.0v 884.745n 1.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 1.0v 914.745n 1.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 0.0v 949.745n 0.0v 949.755n 1.0v 954.745n 1.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 1.0v 974.745n 1.0v 974.755n 1.0v 979.745n 1.0v 979.755n 0.0v 984.745n 0.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 0.0v 999.745n 0.0v 999.755n 1.0v 1004.745n 1.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 1.0v 1014.745n 1.0v 1014.755n 1.0v 1019.745n 1.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 1.0v )
* (time, data): [(0, 1), (5, 1), (10, 1), (15, 1), (20, 0), (25, 1), (30, 0), (35, 0), (40, 1), (45, 0), (50, 0), (55, 1), (60, 0), (65, 1), (70, 0), (75, 1), (80, 1), (85, 1), (90, 0), (95, 1), (100, 0), (105, 1), (110, 1), (115, 0), (120, 0), (125, 1), (130, 1), (135, 0), (140, 0), (145, 1), (150, 0), (155, 1), (160, 1), (165, 1), (170, 1), (175, 0), (180, 1), (185, 1), (190, 1), (195, 0), (200, 0), (205, 1), (210, 1), (215, 1), (220, 1), (225, 1), (230, 0), (235, 1), (240, 1), (245, 1), (250, 1), (255, 0), (260, 0), (265, 1), (270, 0), (275, 1), (280, 1), (285, 1), (290, 0), (295, 0), (300, 0), (305, 0), (310, 1), (315, 1), (320, 1), (325, 0), (330, 0), (335, 1), (340, 0), (345, 0), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 0), (385, 0), (390, 1), (395, 1), (400, 1), (405, 0), (410, 1), (415, 0), (420, 1), (425, 0), (430, 1), (435, 1), (440, 1), (445, 1), (450, 0), (455, 1), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 1), (490, 1), (495, 0), (500, 0), (505, 1), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 1), (540, 0), (545, 1), (550, 0), (555, 0), (560, 1), (565, 1), (570, 1), (575, 1), (580, 0), (585, 1), (590, 0), (595, 1), (600, 1), (605, 0), (610, 1), (615, 1), (620, 0), (625, 0), (630, 1), (635, 1), (640, 1), (645, 0), (650, 1), (655, 1), (660, 0), (665, 1), (670, 1), (675, 1), (680, 1), (685, 0), (690, 1), (695, 0), (700, 1), (705, 0), (710, 0), (715, 0), (720, 1), (725, 1), (730, 0), (735, 0), (740, 0), (745, 1), (750, 1), (755, 0), (760, 0), (765, 0), (770, 1), (775, 1), (780, 0), (785, 0), (790, 0), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 0), (830, 0), (835, 1), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 1), (875, 0), (880, 0), (885, 0), (890, 0), (895, 1), (900, 1), (905, 1), (910, 0), (915, 1), (920, 1), (925, 0), (930, 1), (935, 1), (940, 1), (945, 1), (950, 0), (955, 1), (960, 0), (965, 1), (970, 0), (975, 1), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 0), (1005, 1), (1010, 0), (1015, 0), (1020, 0), (1025, 1)]
VCSB1 CSB1 0 PWL (0n 1.0v 4.745n 1.0v 4.755n 1.0v 9.745n 1.0v 9.755n 1.0v 14.745n 1.0v 14.755n 1.0v 19.745n 1.0v 19.755n 0.0v 24.745n 0.0v 24.755n 1.0v 29.745n 1.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 1.0v 44.745n 1.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 1.0v 59.745n 1.0v 59.755n 0.0v 64.745n 0.0v 64.755n 1.0v 69.745n 1.0v 69.755n 0.0v 74.745n 0.0v 74.755n 1.0v 79.745n 1.0v 79.755n 1.0v 84.745n 1.0v 84.755n 1.0v 89.745n 1.0v 89.755n 0.0v 94.745n 0.0v 94.755n 1.0v 99.745n 1.0v 99.755n 0.0v 104.745n 0.0v 104.755n 1.0v 109.745n 1.0v 109.755n 1.0v 114.745n 1.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 1.0v 129.745n 1.0v 129.755n 1.0v 134.745n 1.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 1.0v 149.745n 1.0v 149.755n 0.0v 154.745n 0.0v 154.755n 1.0v 159.745n 1.0v 159.755n 1.0v 164.745n 1.0v 164.755n 1.0v 169.745n 1.0v 169.755n 1.0v 174.745n 1.0v 174.755n 0.0v 179.745n 0.0v 179.755n 1.0v 184.745n 1.0v 184.755n 1.0v 189.745n 1.0v 189.755n 1.0v 194.745n 1.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 1.0v 209.745n 1.0v 209.755n 1.0v 214.745n 1.0v 214.755n 1.0v 219.745n 1.0v 219.755n 1.0v 224.745n 1.0v 224.755n 1.0v 229.745n 1.0v 229.755n 0.0v 234.745n 0.0v 234.755n 1.0v 239.745n 1.0v 239.755n 1.0v 244.745n 1.0v 244.755n 1.0v 249.745n 1.0v 249.755n 1.0v 254.745n 1.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 1.0v 269.745n 1.0v 269.755n 0.0v 274.745n 0.0v 274.755n 1.0v 279.745n 1.0v 279.755n 1.0v 284.745n 1.0v 284.755n 1.0v 289.745n 1.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 1.0v 314.745n 1.0v 314.755n 1.0v 319.745n 1.0v 319.755n 1.0v 324.745n 1.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 1.0v 339.745n 1.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 1.0v 354.745n 1.0v 354.755n 1.0v 359.745n 1.0v 359.755n 1.0v 364.745n 1.0v 364.755n 1.0v 369.745n 1.0v 369.755n 1.0v 374.745n 1.0v 374.755n 1.0v 379.745n 1.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 1.0v 394.745n 1.0v 394.755n 1.0v 399.745n 1.0v 399.755n 1.0v 404.745n 1.0v 404.755n 0.0v 409.745n 0.0v 409.755n 1.0v 414.745n 1.0v 414.755n 0.0v 419.745n 0.0v 419.755n 1.0v 424.745n 1.0v 424.755n 0.0v 429.745n 0.0v 429.755n 1.0v 434.745n 1.0v 434.755n 1.0v 439.745n 1.0v 439.755n 1.0v 444.745n 1.0v 444.755n 1.0v 449.745n 1.0v 449.755n 0.0v 454.745n 0.0v 454.755n 1.0v 459.745n 1.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 1.0v 489.745n 1.0v 489.755n 1.0v 494.745n 1.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 1.0v 509.745n 1.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 1.0v 539.745n 1.0v 539.755n 0.0v 544.745n 0.0v 544.755n 1.0v 549.745n 1.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 1.0v 564.745n 1.0v 564.755n 1.0v 569.745n 1.0v 569.755n 1.0v 574.745n 1.0v 574.755n 1.0v 579.745n 1.0v 579.755n 0.0v 584.745n 0.0v 584.755n 1.0v 589.745n 1.0v 589.755n 0.0v 594.745n 0.0v 594.755n 1.0v 599.745n 1.0v 599.755n 1.0v 604.745n 1.0v 604.755n 0.0v 609.745n 0.0v 609.755n 1.0v 614.745n 1.0v 614.755n 1.0v 619.745n 1.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 1.0v 634.745n 1.0v 634.755n 1.0v 639.745n 1.0v 639.755n 1.0v 644.745n 1.0v 644.755n 0.0v 649.745n 0.0v 649.755n 1.0v 654.745n 1.0v 654.755n 1.0v 659.745n 1.0v 659.755n 0.0v 664.745n 0.0v 664.755n 1.0v 669.745n 1.0v 669.755n 1.0v 674.745n 1.0v 674.755n 1.0v 679.745n 1.0v 679.755n 1.0v 684.745n 1.0v 684.755n 0.0v 689.745n 0.0v 689.755n 1.0v 694.745n 1.0v 694.755n 0.0v 699.745n 0.0v 699.755n 1.0v 704.745n 1.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 1.0v 724.745n 1.0v 724.755n 1.0v 729.745n 1.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 1.0v 749.745n 1.0v 749.755n 1.0v 754.745n 1.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 1.0v 774.745n 1.0v 774.755n 1.0v 779.745n 1.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 1.0v 799.745n 1.0v 799.755n 1.0v 804.745n 1.0v 804.755n 1.0v 809.745n 1.0v 809.755n 1.0v 814.745n 1.0v 814.755n 1.0v 819.745n 1.0v 819.755n 1.0v 824.745n 1.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 1.0v 839.745n 1.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 1.0v 874.745n 1.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 1.0v 899.745n 1.0v 899.755n 1.0v 904.745n 1.0v 904.755n 1.0v 909.745n 1.0v 909.755n 0.0v 914.745n 0.0v 914.755n 1.0v 919.745n 1.0v 919.755n 1.0v 924.745n 1.0v 924.755n 0.0v 929.745n 0.0v 929.755n 1.0v 934.745n 1.0v 934.755n 1.0v 939.745n 1.0v 939.755n 1.0v 944.745n 1.0v 944.755n 1.0v 949.745n 1.0v 949.755n 0.0v 954.745n 0.0v 954.755n 1.0v 959.745n 1.0v 959.755n 0.0v 964.745n 0.0v 964.755n 1.0v 969.745n 1.0v 969.755n 0.0v 974.745n 0.0v 974.755n 1.0v 979.745n 1.0v 979.755n 1.0v 984.745n 1.0v 984.755n 1.0v 989.745n 1.0v 989.755n 1.0v 994.745n 1.0v 994.755n 1.0v 999.745n 1.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 1.0v 1009.745n 1.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 1.0v )
* PULSE: period=5
Vclk0 clk0 0 PULSE (0 1.0 4.995n 0.01n 0.01n 2.49n 5n)
* PULSE: period=5
Vclk1 clk1 0 PULSE (0 1.0 4.995n 0.01n 0.01n 2.49n 5n)

 * Generation of dout measurements
* CHECK dout1_0 Vdout1_0ck4 = 1.0 time = 25
.meas tran vdout1_0ck4 FIND v(dout1_0) AT=25.025n

* CHECK dout1_1 Vdout1_1ck4 = 1.0 time = 25
.meas tran vdout1_1ck4 FIND v(dout1_1) AT=25.025n

* CHECK dout1_2 Vdout1_2ck4 = 1.0 time = 25
.meas tran vdout1_2ck4 FIND v(dout1_2) AT=25.025n

* CHECK dout1_3 Vdout1_3ck4 = 1.0 time = 25
.meas tran vdout1_3ck4 FIND v(dout1_3) AT=25.025n

* CHECK dout1_4 Vdout1_4ck4 = 0 time = 25
.meas tran vdout1_4ck4 FIND v(dout1_4) AT=25.025n

* CHECK dout1_5 Vdout1_5ck4 = 1.0 time = 25
.meas tran vdout1_5ck4 FIND v(dout1_5) AT=25.025n

* CHECK dout1_6 Vdout1_6ck4 = 1.0 time = 25
.meas tran vdout1_6ck4 FIND v(dout1_6) AT=25.025n

* CHECK dout1_7 Vdout1_7ck4 = 0 time = 25
.meas tran vdout1_7ck4 FIND v(dout1_7) AT=25.025n

* CHECK dout1_8 Vdout1_8ck4 = 1.0 time = 25
.meas tran vdout1_8ck4 FIND v(dout1_8) AT=25.025n

* CHECK dout1_9 Vdout1_9ck4 = 0 time = 25
.meas tran vdout1_9ck4 FIND v(dout1_9) AT=25.025n

* CHECK dout1_10 Vdout1_10ck4 = 1.0 time = 25
.meas tran vdout1_10ck4 FIND v(dout1_10) AT=25.025n

* CHECK dout1_0 Vdout1_0ck6 = 1.0 time = 35
.meas tran vdout1_0ck6 FIND v(dout1_0) AT=35.025n

* CHECK dout1_1 Vdout1_1ck6 = 1.0 time = 35
.meas tran vdout1_1ck6 FIND v(dout1_1) AT=35.025n

* CHECK dout1_2 Vdout1_2ck6 = 1.0 time = 35
.meas tran vdout1_2ck6 FIND v(dout1_2) AT=35.025n

* CHECK dout1_3 Vdout1_3ck6 = 1.0 time = 35
.meas tran vdout1_3ck6 FIND v(dout1_3) AT=35.025n

* CHECK dout1_4 Vdout1_4ck6 = 1.0 time = 35
.meas tran vdout1_4ck6 FIND v(dout1_4) AT=35.025n

* CHECK dout1_5 Vdout1_5ck6 = 0 time = 35
.meas tran vdout1_5ck6 FIND v(dout1_5) AT=35.025n

* CHECK dout1_6 Vdout1_6ck6 = 1.0 time = 35
.meas tran vdout1_6ck6 FIND v(dout1_6) AT=35.025n

* CHECK dout1_7 Vdout1_7ck6 = 1.0 time = 35
.meas tran vdout1_7ck6 FIND v(dout1_7) AT=35.025n

* CHECK dout1_8 Vdout1_8ck6 = 1.0 time = 35
.meas tran vdout1_8ck6 FIND v(dout1_8) AT=35.025n

* CHECK dout1_9 Vdout1_9ck6 = 0 time = 35
.meas tran vdout1_9ck6 FIND v(dout1_9) AT=35.025n

* CHECK dout1_10 Vdout1_10ck6 = 0 time = 35
.meas tran vdout1_10ck6 FIND v(dout1_10) AT=35.025n

* CHECK dout1_0 Vdout1_0ck7 = 1.0 time = 40
.meas tran vdout1_0ck7 FIND v(dout1_0) AT=40.025n

* CHECK dout1_1 Vdout1_1ck7 = 1.0 time = 40
.meas tran vdout1_1ck7 FIND v(dout1_1) AT=40.025n

* CHECK dout1_2 Vdout1_2ck7 = 1.0 time = 40
.meas tran vdout1_2ck7 FIND v(dout1_2) AT=40.025n

* CHECK dout1_3 Vdout1_3ck7 = 1.0 time = 40
.meas tran vdout1_3ck7 FIND v(dout1_3) AT=40.025n

* CHECK dout1_4 Vdout1_4ck7 = 1.0 time = 40
.meas tran vdout1_4ck7 FIND v(dout1_4) AT=40.025n

* CHECK dout1_5 Vdout1_5ck7 = 0 time = 40
.meas tran vdout1_5ck7 FIND v(dout1_5) AT=40.025n

* CHECK dout1_6 Vdout1_6ck7 = 1.0 time = 40
.meas tran vdout1_6ck7 FIND v(dout1_6) AT=40.025n

* CHECK dout1_7 Vdout1_7ck7 = 1.0 time = 40
.meas tran vdout1_7ck7 FIND v(dout1_7) AT=40.025n

* CHECK dout1_8 Vdout1_8ck7 = 1.0 time = 40
.meas tran vdout1_8ck7 FIND v(dout1_8) AT=40.025n

* CHECK dout1_9 Vdout1_9ck7 = 0 time = 40
.meas tran vdout1_9ck7 FIND v(dout1_9) AT=40.025n

* CHECK dout1_10 Vdout1_10ck7 = 0 time = 40
.meas tran vdout1_10ck7 FIND v(dout1_10) AT=40.025n

* CHECK dout1_0 Vdout1_0ck9 = 1.0 time = 50
.meas tran vdout1_0ck9 FIND v(dout1_0) AT=50.025n

* CHECK dout1_1 Vdout1_1ck9 = 1.0 time = 50
.meas tran vdout1_1ck9 FIND v(dout1_1) AT=50.025n

* CHECK dout1_2 Vdout1_2ck9 = 1.0 time = 50
.meas tran vdout1_2ck9 FIND v(dout1_2) AT=50.025n

* CHECK dout1_3 Vdout1_3ck9 = 1.0 time = 50
.meas tran vdout1_3ck9 FIND v(dout1_3) AT=50.025n

* CHECK dout1_4 Vdout1_4ck9 = 1.0 time = 50
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

* CHECK dout1_0 Vdout1_0ck10 = 1.0 time = 55
.meas tran vdout1_0ck10 FIND v(dout1_0) AT=55.025n

* CHECK dout1_1 Vdout1_1ck10 = 1.0 time = 55
.meas tran vdout1_1ck10 FIND v(dout1_1) AT=55.025n

* CHECK dout1_2 Vdout1_2ck10 = 1.0 time = 55
.meas tran vdout1_2ck10 FIND v(dout1_2) AT=55.025n

* CHECK dout1_3 Vdout1_3ck10 = 1.0 time = 55
.meas tran vdout1_3ck10 FIND v(dout1_3) AT=55.025n

* CHECK dout1_4 Vdout1_4ck10 = 1.0 time = 55
.meas tran vdout1_4ck10 FIND v(dout1_4) AT=55.025n

* CHECK dout1_5 Vdout1_5ck10 = 0 time = 55
.meas tran vdout1_5ck10 FIND v(dout1_5) AT=55.025n

* CHECK dout1_6 Vdout1_6ck10 = 1.0 time = 55
.meas tran vdout1_6ck10 FIND v(dout1_6) AT=55.025n

* CHECK dout1_7 Vdout1_7ck10 = 1.0 time = 55
.meas tran vdout1_7ck10 FIND v(dout1_7) AT=55.025n

* CHECK dout1_8 Vdout1_8ck10 = 1.0 time = 55
.meas tran vdout1_8ck10 FIND v(dout1_8) AT=55.025n

* CHECK dout1_9 Vdout1_9ck10 = 0 time = 55
.meas tran vdout1_9ck10 FIND v(dout1_9) AT=55.025n

* CHECK dout1_10 Vdout1_10ck10 = 0 time = 55
.meas tran vdout1_10ck10 FIND v(dout1_10) AT=55.025n

* CHECK dout1_0 Vdout1_0ck12 = 0 time = 65
.meas tran vdout1_0ck12 FIND v(dout1_0) AT=65.025n

* CHECK dout1_1 Vdout1_1ck12 = 0 time = 65
.meas tran vdout1_1ck12 FIND v(dout1_1) AT=65.025n

* CHECK dout1_2 Vdout1_2ck12 = 0 time = 65
.meas tran vdout1_2ck12 FIND v(dout1_2) AT=65.025n

* CHECK dout1_3 Vdout1_3ck12 = 0 time = 65
.meas tran vdout1_3ck12 FIND v(dout1_3) AT=65.025n

* CHECK dout1_4 Vdout1_4ck12 = 0 time = 65
.meas tran vdout1_4ck12 FIND v(dout1_4) AT=65.025n

* CHECK dout1_5 Vdout1_5ck12 = 1.0 time = 65
.meas tran vdout1_5ck12 FIND v(dout1_5) AT=65.025n

* CHECK dout1_6 Vdout1_6ck12 = 1.0 time = 65
.meas tran vdout1_6ck12 FIND v(dout1_6) AT=65.025n

* CHECK dout1_7 Vdout1_7ck12 = 0 time = 65
.meas tran vdout1_7ck12 FIND v(dout1_7) AT=65.025n

* CHECK dout1_8 Vdout1_8ck12 = 1.0 time = 65
.meas tran vdout1_8ck12 FIND v(dout1_8) AT=65.025n

* CHECK dout1_9 Vdout1_9ck12 = 0 time = 65
.meas tran vdout1_9ck12 FIND v(dout1_9) AT=65.025n

* CHECK dout1_10 Vdout1_10ck12 = 1.0 time = 65
.meas tran vdout1_10ck12 FIND v(dout1_10) AT=65.025n

* CHECK dout1_0 Vdout1_0ck14 = 0 time = 75
.meas tran vdout1_0ck14 FIND v(dout1_0) AT=75.025n

* CHECK dout1_1 Vdout1_1ck14 = 0 time = 75
.meas tran vdout1_1ck14 FIND v(dout1_1) AT=75.025n

* CHECK dout1_2 Vdout1_2ck14 = 1.0 time = 75
.meas tran vdout1_2ck14 FIND v(dout1_2) AT=75.025n

* CHECK dout1_3 Vdout1_3ck14 = 0 time = 75
.meas tran vdout1_3ck14 FIND v(dout1_3) AT=75.025n

* CHECK dout1_4 Vdout1_4ck14 = 1.0 time = 75
.meas tran vdout1_4ck14 FIND v(dout1_4) AT=75.025n

* CHECK dout1_5 Vdout1_5ck14 = 1.0 time = 75
.meas tran vdout1_5ck14 FIND v(dout1_5) AT=75.025n

* CHECK dout1_6 Vdout1_6ck14 = 1.0 time = 75
.meas tran vdout1_6ck14 FIND v(dout1_6) AT=75.025n

* CHECK dout1_7 Vdout1_7ck14 = 0 time = 75
.meas tran vdout1_7ck14 FIND v(dout1_7) AT=75.025n

* CHECK dout1_8 Vdout1_8ck14 = 1.0 time = 75
.meas tran vdout1_8ck14 FIND v(dout1_8) AT=75.025n

* CHECK dout1_9 Vdout1_9ck14 = 1.0 time = 75
.meas tran vdout1_9ck14 FIND v(dout1_9) AT=75.025n

* CHECK dout1_10 Vdout1_10ck14 = 1.0 time = 75
.meas tran vdout1_10ck14 FIND v(dout1_10) AT=75.025n

* CHECK dout1_0 Vdout1_0ck18 = 1.0 time = 95
.meas tran vdout1_0ck18 FIND v(dout1_0) AT=95.025n

* CHECK dout1_1 Vdout1_1ck18 = 1.0 time = 95
.meas tran vdout1_1ck18 FIND v(dout1_1) AT=95.025n

* CHECK dout1_2 Vdout1_2ck18 = 0 time = 95
.meas tran vdout1_2ck18 FIND v(dout1_2) AT=95.025n

* CHECK dout1_3 Vdout1_3ck18 = 0 time = 95
.meas tran vdout1_3ck18 FIND v(dout1_3) AT=95.025n

* CHECK dout1_4 Vdout1_4ck18 = 1.0 time = 95
.meas tran vdout1_4ck18 FIND v(dout1_4) AT=95.025n

* CHECK dout1_5 Vdout1_5ck18 = 1.0 time = 95
.meas tran vdout1_5ck18 FIND v(dout1_5) AT=95.025n

* CHECK dout1_6 Vdout1_6ck18 = 0 time = 95
.meas tran vdout1_6ck18 FIND v(dout1_6) AT=95.025n

* CHECK dout1_7 Vdout1_7ck18 = 0 time = 95
.meas tran vdout1_7ck18 FIND v(dout1_7) AT=95.025n

* CHECK dout1_8 Vdout1_8ck18 = 0 time = 95
.meas tran vdout1_8ck18 FIND v(dout1_8) AT=95.025n

* CHECK dout1_9 Vdout1_9ck18 = 0 time = 95
.meas tran vdout1_9ck18 FIND v(dout1_9) AT=95.025n

* CHECK dout1_10 Vdout1_10ck18 = 1.0 time = 95
.meas tran vdout1_10ck18 FIND v(dout1_10) AT=95.025n

* CHECK dout1_0 Vdout1_0ck20 = 0 time = 105
.meas tran vdout1_0ck20 FIND v(dout1_0) AT=105.025n

* CHECK dout1_1 Vdout1_1ck20 = 0 time = 105
.meas tran vdout1_1ck20 FIND v(dout1_1) AT=105.025n

* CHECK dout1_2 Vdout1_2ck20 = 0 time = 105
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

* CHECK dout1_9 Vdout1_9ck20 = 0 time = 105
.meas tran vdout1_9ck20 FIND v(dout1_9) AT=105.025n

* CHECK dout1_10 Vdout1_10ck20 = 0 time = 105
.meas tran vdout1_10ck20 FIND v(dout1_10) AT=105.025n

* CHECK dout1_0 Vdout1_0ck23 = 0 time = 120
.meas tran vdout1_0ck23 FIND v(dout1_0) AT=120.025n

* CHECK dout1_1 Vdout1_1ck23 = 0 time = 120
.meas tran vdout1_1ck23 FIND v(dout1_1) AT=120.025n

* CHECK dout1_2 Vdout1_2ck23 = 1.0 time = 120
.meas tran vdout1_2ck23 FIND v(dout1_2) AT=120.025n

* CHECK dout1_3 Vdout1_3ck23 = 0 time = 120
.meas tran vdout1_3ck23 FIND v(dout1_3) AT=120.025n

* CHECK dout1_4 Vdout1_4ck23 = 1.0 time = 120
.meas tran vdout1_4ck23 FIND v(dout1_4) AT=120.025n

* CHECK dout1_5 Vdout1_5ck23 = 1.0 time = 120
.meas tran vdout1_5ck23 FIND v(dout1_5) AT=120.025n

* CHECK dout1_6 Vdout1_6ck23 = 1.0 time = 120
.meas tran vdout1_6ck23 FIND v(dout1_6) AT=120.025n

* CHECK dout1_7 Vdout1_7ck23 = 0 time = 120
.meas tran vdout1_7ck23 FIND v(dout1_7) AT=120.025n

* CHECK dout1_8 Vdout1_8ck23 = 1.0 time = 120
.meas tran vdout1_8ck23 FIND v(dout1_8) AT=120.025n

* CHECK dout1_9 Vdout1_9ck23 = 1.0 time = 120
.meas tran vdout1_9ck23 FIND v(dout1_9) AT=120.025n

* CHECK dout1_10 Vdout1_10ck23 = 1.0 time = 120
.meas tran vdout1_10ck23 FIND v(dout1_10) AT=120.025n

* CHECK dout1_0 Vdout1_0ck24 = 1.0 time = 125
.meas tran vdout1_0ck24 FIND v(dout1_0) AT=125.025n

* CHECK dout1_1 Vdout1_1ck24 = 1.0 time = 125
.meas tran vdout1_1ck24 FIND v(dout1_1) AT=125.025n

* CHECK dout1_2 Vdout1_2ck24 = 1.0 time = 125
.meas tran vdout1_2ck24 FIND v(dout1_2) AT=125.025n

* CHECK dout1_3 Vdout1_3ck24 = 1.0 time = 125
.meas tran vdout1_3ck24 FIND v(dout1_3) AT=125.025n

* CHECK dout1_4 Vdout1_4ck24 = 1.0 time = 125
.meas tran vdout1_4ck24 FIND v(dout1_4) AT=125.025n

* CHECK dout1_5 Vdout1_5ck24 = 0 time = 125
.meas tran vdout1_5ck24 FIND v(dout1_5) AT=125.025n

* CHECK dout1_6 Vdout1_6ck24 = 1.0 time = 125
.meas tran vdout1_6ck24 FIND v(dout1_6) AT=125.025n

* CHECK dout1_7 Vdout1_7ck24 = 1.0 time = 125
.meas tran vdout1_7ck24 FIND v(dout1_7) AT=125.025n

* CHECK dout1_8 Vdout1_8ck24 = 1.0 time = 125
.meas tran vdout1_8ck24 FIND v(dout1_8) AT=125.025n

* CHECK dout1_9 Vdout1_9ck24 = 0 time = 125
.meas tran vdout1_9ck24 FIND v(dout1_9) AT=125.025n

* CHECK dout1_10 Vdout1_10ck24 = 0 time = 125
.meas tran vdout1_10ck24 FIND v(dout1_10) AT=125.025n

* CHECK dout1_0 Vdout1_0ck27 = 0 time = 140
.meas tran vdout1_0ck27 FIND v(dout1_0) AT=140.025n

* CHECK dout1_1 Vdout1_1ck27 = 0 time = 140
.meas tran vdout1_1ck27 FIND v(dout1_1) AT=140.025n

* CHECK dout1_2 Vdout1_2ck27 = 1.0 time = 140
.meas tran vdout1_2ck27 FIND v(dout1_2) AT=140.025n

* CHECK dout1_3 Vdout1_3ck27 = 0 time = 140
.meas tran vdout1_3ck27 FIND v(dout1_3) AT=140.025n

* CHECK dout1_4 Vdout1_4ck27 = 1.0 time = 140
.meas tran vdout1_4ck27 FIND v(dout1_4) AT=140.025n

* CHECK dout1_5 Vdout1_5ck27 = 1.0 time = 140
.meas tran vdout1_5ck27 FIND v(dout1_5) AT=140.025n

* CHECK dout1_6 Vdout1_6ck27 = 1.0 time = 140
.meas tran vdout1_6ck27 FIND v(dout1_6) AT=140.025n

* CHECK dout1_7 Vdout1_7ck27 = 0 time = 140
.meas tran vdout1_7ck27 FIND v(dout1_7) AT=140.025n

* CHECK dout1_8 Vdout1_8ck27 = 1.0 time = 140
.meas tran vdout1_8ck27 FIND v(dout1_8) AT=140.025n

* CHECK dout1_9 Vdout1_9ck27 = 1.0 time = 140
.meas tran vdout1_9ck27 FIND v(dout1_9) AT=140.025n

* CHECK dout1_10 Vdout1_10ck27 = 1.0 time = 140
.meas tran vdout1_10ck27 FIND v(dout1_10) AT=140.025n

* CHECK dout1_0 Vdout1_0ck28 = 1.0 time = 145
.meas tran vdout1_0ck28 FIND v(dout1_0) AT=145.025n

* CHECK dout1_1 Vdout1_1ck28 = 1.0 time = 145
.meas tran vdout1_1ck28 FIND v(dout1_1) AT=145.025n

* CHECK dout1_2 Vdout1_2ck28 = 0 time = 145
.meas tran vdout1_2ck28 FIND v(dout1_2) AT=145.025n

* CHECK dout1_3 Vdout1_3ck28 = 1.0 time = 145
.meas tran vdout1_3ck28 FIND v(dout1_3) AT=145.025n

* CHECK dout1_4 Vdout1_4ck28 = 0 time = 145
.meas tran vdout1_4ck28 FIND v(dout1_4) AT=145.025n

* CHECK dout1_5 Vdout1_5ck28 = 0 time = 145
.meas tran vdout1_5ck28 FIND v(dout1_5) AT=145.025n

* CHECK dout1_6 Vdout1_6ck28 = 0 time = 145
.meas tran vdout1_6ck28 FIND v(dout1_6) AT=145.025n

* CHECK dout1_7 Vdout1_7ck28 = 1.0 time = 145
.meas tran vdout1_7ck28 FIND v(dout1_7) AT=145.025n

* CHECK dout1_8 Vdout1_8ck28 = 0 time = 145
.meas tran vdout1_8ck28 FIND v(dout1_8) AT=145.025n

* CHECK dout1_9 Vdout1_9ck28 = 0 time = 145
.meas tran vdout1_9ck28 FIND v(dout1_9) AT=145.025n

* CHECK dout1_10 Vdout1_10ck28 = 0 time = 145
.meas tran vdout1_10ck28 FIND v(dout1_10) AT=145.025n

* CHECK dout1_0 Vdout1_0ck30 = 0 time = 155
.meas tran vdout1_0ck30 FIND v(dout1_0) AT=155.025n

* CHECK dout1_1 Vdout1_1ck30 = 0 time = 155
.meas tran vdout1_1ck30 FIND v(dout1_1) AT=155.025n

* CHECK dout1_2 Vdout1_2ck30 = 0 time = 155
.meas tran vdout1_2ck30 FIND v(dout1_2) AT=155.025n

* CHECK dout1_3 Vdout1_3ck30 = 0 time = 155
.meas tran vdout1_3ck30 FIND v(dout1_3) AT=155.025n

* CHECK dout1_4 Vdout1_4ck30 = 0 time = 155
.meas tran vdout1_4ck30 FIND v(dout1_4) AT=155.025n

* CHECK dout1_5 Vdout1_5ck30 = 1.0 time = 155
.meas tran vdout1_5ck30 FIND v(dout1_5) AT=155.025n

* CHECK dout1_6 Vdout1_6ck30 = 1.0 time = 155
.meas tran vdout1_6ck30 FIND v(dout1_6) AT=155.025n

* CHECK dout1_7 Vdout1_7ck30 = 0 time = 155
.meas tran vdout1_7ck30 FIND v(dout1_7) AT=155.025n

* CHECK dout1_8 Vdout1_8ck30 = 1.0 time = 155
.meas tran vdout1_8ck30 FIND v(dout1_8) AT=155.025n

* CHECK dout1_9 Vdout1_9ck30 = 0 time = 155
.meas tran vdout1_9ck30 FIND v(dout1_9) AT=155.025n

* CHECK dout1_10 Vdout1_10ck30 = 1.0 time = 155
.meas tran vdout1_10ck30 FIND v(dout1_10) AT=155.025n

* CHECK dout1_0 Vdout1_0ck35 = 0 time = 180
.meas tran vdout1_0ck35 FIND v(dout1_0) AT=180.025n

* CHECK dout1_1 Vdout1_1ck35 = 0 time = 180
.meas tran vdout1_1ck35 FIND v(dout1_1) AT=180.025n

* CHECK dout1_2 Vdout1_2ck35 = 0 time = 180
.meas tran vdout1_2ck35 FIND v(dout1_2) AT=180.025n

* CHECK dout1_3 Vdout1_3ck35 = 1.0 time = 180
.meas tran vdout1_3ck35 FIND v(dout1_3) AT=180.025n

* CHECK dout1_4 Vdout1_4ck35 = 0 time = 180
.meas tran vdout1_4ck35 FIND v(dout1_4) AT=180.025n

* CHECK dout1_5 Vdout1_5ck35 = 0 time = 180
.meas tran vdout1_5ck35 FIND v(dout1_5) AT=180.025n

* CHECK dout1_6 Vdout1_6ck35 = 1.0 time = 180
.meas tran vdout1_6ck35 FIND v(dout1_6) AT=180.025n

* CHECK dout1_7 Vdout1_7ck35 = 0 time = 180
.meas tran vdout1_7ck35 FIND v(dout1_7) AT=180.025n

* CHECK dout1_8 Vdout1_8ck35 = 1.0 time = 180
.meas tran vdout1_8ck35 FIND v(dout1_8) AT=180.025n

* CHECK dout1_9 Vdout1_9ck35 = 1.0 time = 180
.meas tran vdout1_9ck35 FIND v(dout1_9) AT=180.025n

* CHECK dout1_10 Vdout1_10ck35 = 0 time = 180
.meas tran vdout1_10ck35 FIND v(dout1_10) AT=180.025n

* CHECK dout1_0 Vdout1_0ck39 = 1.0 time = 200
.meas tran vdout1_0ck39 FIND v(dout1_0) AT=200.025n

* CHECK dout1_1 Vdout1_1ck39 = 0 time = 200
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

* CHECK dout1_7 Vdout1_7ck39 = 1.0 time = 200
.meas tran vdout1_7ck39 FIND v(dout1_7) AT=200.025n

* CHECK dout1_8 Vdout1_8ck39 = 1.0 time = 200
.meas tran vdout1_8ck39 FIND v(dout1_8) AT=200.025n

* CHECK dout1_9 Vdout1_9ck39 = 1.0 time = 200
.meas tran vdout1_9ck39 FIND v(dout1_9) AT=200.025n

* CHECK dout1_10 Vdout1_10ck39 = 0 time = 200
.meas tran vdout1_10ck39 FIND v(dout1_10) AT=200.025n

* CHECK dout1_0 Vdout1_0ck40 = 0 time = 205
.meas tran vdout1_0ck40 FIND v(dout1_0) AT=205.025n

* CHECK dout1_1 Vdout1_1ck40 = 0 time = 205
.meas tran vdout1_1ck40 FIND v(dout1_1) AT=205.025n

* CHECK dout1_2 Vdout1_2ck40 = 0 time = 205
.meas tran vdout1_2ck40 FIND v(dout1_2) AT=205.025n

* CHECK dout1_3 Vdout1_3ck40 = 1.0 time = 205
.meas tran vdout1_3ck40 FIND v(dout1_3) AT=205.025n

* CHECK dout1_4 Vdout1_4ck40 = 0 time = 205
.meas tran vdout1_4ck40 FIND v(dout1_4) AT=205.025n

* CHECK dout1_5 Vdout1_5ck40 = 1.0 time = 205
.meas tran vdout1_5ck40 FIND v(dout1_5) AT=205.025n

* CHECK dout1_6 Vdout1_6ck40 = 0 time = 205
.meas tran vdout1_6ck40 FIND v(dout1_6) AT=205.025n

* CHECK dout1_7 Vdout1_7ck40 = 0 time = 205
.meas tran vdout1_7ck40 FIND v(dout1_7) AT=205.025n

* CHECK dout1_8 Vdout1_8ck40 = 0 time = 205
.meas tran vdout1_8ck40 FIND v(dout1_8) AT=205.025n

* CHECK dout1_9 Vdout1_9ck40 = 0 time = 205
.meas tran vdout1_9ck40 FIND v(dout1_9) AT=205.025n

* CHECK dout1_10 Vdout1_10ck40 = 0 time = 205
.meas tran vdout1_10ck40 FIND v(dout1_10) AT=205.025n

* CHECK dout1_0 Vdout1_0ck46 = 1.0 time = 235
.meas tran vdout1_0ck46 FIND v(dout1_0) AT=235.025n

* CHECK dout1_1 Vdout1_1ck46 = 0 time = 235
.meas tran vdout1_1ck46 FIND v(dout1_1) AT=235.025n

* CHECK dout1_2 Vdout1_2ck46 = 0 time = 235
.meas tran vdout1_2ck46 FIND v(dout1_2) AT=235.025n

* CHECK dout1_3 Vdout1_3ck46 = 1.0 time = 235
.meas tran vdout1_3ck46 FIND v(dout1_3) AT=235.025n

* CHECK dout1_4 Vdout1_4ck46 = 0 time = 235
.meas tran vdout1_4ck46 FIND v(dout1_4) AT=235.025n

* CHECK dout1_5 Vdout1_5ck46 = 1.0 time = 235
.meas tran vdout1_5ck46 FIND v(dout1_5) AT=235.025n

* CHECK dout1_6 Vdout1_6ck46 = 0 time = 235
.meas tran vdout1_6ck46 FIND v(dout1_6) AT=235.025n

* CHECK dout1_7 Vdout1_7ck46 = 0 time = 235
.meas tran vdout1_7ck46 FIND v(dout1_7) AT=235.025n

* CHECK dout1_8 Vdout1_8ck46 = 1.0 time = 235
.meas tran vdout1_8ck46 FIND v(dout1_8) AT=235.025n

* CHECK dout1_9 Vdout1_9ck46 = 0 time = 235
.meas tran vdout1_9ck46 FIND v(dout1_9) AT=235.025n

* CHECK dout1_10 Vdout1_10ck46 = 0 time = 235
.meas tran vdout1_10ck46 FIND v(dout1_10) AT=235.025n

* CHECK dout1_0 Vdout1_0ck51 = 0 time = 260
.meas tran vdout1_0ck51 FIND v(dout1_0) AT=260.025n

* CHECK dout1_1 Vdout1_1ck51 = 0 time = 260
.meas tran vdout1_1ck51 FIND v(dout1_1) AT=260.025n

* CHECK dout1_2 Vdout1_2ck51 = 0 time = 260
.meas tran vdout1_2ck51 FIND v(dout1_2) AT=260.025n

* CHECK dout1_3 Vdout1_3ck51 = 0 time = 260
.meas tran vdout1_3ck51 FIND v(dout1_3) AT=260.025n

* CHECK dout1_4 Vdout1_4ck51 = 0 time = 260
.meas tran vdout1_4ck51 FIND v(dout1_4) AT=260.025n

* CHECK dout1_5 Vdout1_5ck51 = 1.0 time = 260
.meas tran vdout1_5ck51 FIND v(dout1_5) AT=260.025n

* CHECK dout1_6 Vdout1_6ck51 = 1.0 time = 260
.meas tran vdout1_6ck51 FIND v(dout1_6) AT=260.025n

* CHECK dout1_7 Vdout1_7ck51 = 0 time = 260
.meas tran vdout1_7ck51 FIND v(dout1_7) AT=260.025n

* CHECK dout1_8 Vdout1_8ck51 = 1.0 time = 260
.meas tran vdout1_8ck51 FIND v(dout1_8) AT=260.025n

* CHECK dout1_9 Vdout1_9ck51 = 0 time = 260
.meas tran vdout1_9ck51 FIND v(dout1_9) AT=260.025n

* CHECK dout1_10 Vdout1_10ck51 = 1.0 time = 260
.meas tran vdout1_10ck51 FIND v(dout1_10) AT=260.025n

* CHECK dout1_0 Vdout1_0ck52 = 0 time = 265
.meas tran vdout1_0ck52 FIND v(dout1_0) AT=265.025n

* CHECK dout1_1 Vdout1_1ck52 = 0 time = 265
.meas tran vdout1_1ck52 FIND v(dout1_1) AT=265.025n

* CHECK dout1_2 Vdout1_2ck52 = 0 time = 265
.meas tran vdout1_2ck52 FIND v(dout1_2) AT=265.025n

* CHECK dout1_3 Vdout1_3ck52 = 1.0 time = 265
.meas tran vdout1_3ck52 FIND v(dout1_3) AT=265.025n

* CHECK dout1_4 Vdout1_4ck52 = 0 time = 265
.meas tran vdout1_4ck52 FIND v(dout1_4) AT=265.025n

* CHECK dout1_5 Vdout1_5ck52 = 0 time = 265
.meas tran vdout1_5ck52 FIND v(dout1_5) AT=265.025n

* CHECK dout1_6 Vdout1_6ck52 = 1.0 time = 265
.meas tran vdout1_6ck52 FIND v(dout1_6) AT=265.025n

* CHECK dout1_7 Vdout1_7ck52 = 0 time = 265
.meas tran vdout1_7ck52 FIND v(dout1_7) AT=265.025n

* CHECK dout1_8 Vdout1_8ck52 = 1.0 time = 265
.meas tran vdout1_8ck52 FIND v(dout1_8) AT=265.025n

* CHECK dout1_9 Vdout1_9ck52 = 1.0 time = 265
.meas tran vdout1_9ck52 FIND v(dout1_9) AT=265.025n

* CHECK dout1_10 Vdout1_10ck52 = 0 time = 265
.meas tran vdout1_10ck52 FIND v(dout1_10) AT=265.025n

* CHECK dout1_0 Vdout1_0ck54 = 1.0 time = 275
.meas tran vdout1_0ck54 FIND v(dout1_0) AT=275.025n

* CHECK dout1_1 Vdout1_1ck54 = 1.0 time = 275
.meas tran vdout1_1ck54 FIND v(dout1_1) AT=275.025n

* CHECK dout1_2 Vdout1_2ck54 = 0 time = 275
.meas tran vdout1_2ck54 FIND v(dout1_2) AT=275.025n

* CHECK dout1_3 Vdout1_3ck54 = 1.0 time = 275
.meas tran vdout1_3ck54 FIND v(dout1_3) AT=275.025n

* CHECK dout1_4 Vdout1_4ck54 = 0 time = 275
.meas tran vdout1_4ck54 FIND v(dout1_4) AT=275.025n

* CHECK dout1_5 Vdout1_5ck54 = 0 time = 275
.meas tran vdout1_5ck54 FIND v(dout1_5) AT=275.025n

* CHECK dout1_6 Vdout1_6ck54 = 1.0 time = 275
.meas tran vdout1_6ck54 FIND v(dout1_6) AT=275.025n

* CHECK dout1_7 Vdout1_7ck54 = 0 time = 275
.meas tran vdout1_7ck54 FIND v(dout1_7) AT=275.025n

* CHECK dout1_8 Vdout1_8ck54 = 1.0 time = 275
.meas tran vdout1_8ck54 FIND v(dout1_8) AT=275.025n

* CHECK dout1_9 Vdout1_9ck54 = 1.0 time = 275
.meas tran vdout1_9ck54 FIND v(dout1_9) AT=275.025n

* CHECK dout1_10 Vdout1_10ck54 = 0 time = 275
.meas tran vdout1_10ck54 FIND v(dout1_10) AT=275.025n

* CHECK dout1_0 Vdout1_0ck58 = 0 time = 295
.meas tran vdout1_0ck58 FIND v(dout1_0) AT=295.025n

* CHECK dout1_1 Vdout1_1ck58 = 0 time = 295
.meas tran vdout1_1ck58 FIND v(dout1_1) AT=295.025n

* CHECK dout1_2 Vdout1_2ck58 = 0 time = 295
.meas tran vdout1_2ck58 FIND v(dout1_2) AT=295.025n

* CHECK dout1_3 Vdout1_3ck58 = 0 time = 295
.meas tran vdout1_3ck58 FIND v(dout1_3) AT=295.025n

* CHECK dout1_4 Vdout1_4ck58 = 0 time = 295
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

* CHECK dout1_0 Vdout1_0ck59 = 0 time = 300
.meas tran vdout1_0ck59 FIND v(dout1_0) AT=300.025n

* CHECK dout1_1 Vdout1_1ck59 = 0 time = 300
.meas tran vdout1_1ck59 FIND v(dout1_1) AT=300.025n

* CHECK dout1_2 Vdout1_2ck59 = 1.0 time = 300
.meas tran vdout1_2ck59 FIND v(dout1_2) AT=300.025n

* CHECK dout1_3 Vdout1_3ck59 = 1.0 time = 300
.meas tran vdout1_3ck59 FIND v(dout1_3) AT=300.025n

* CHECK dout1_4 Vdout1_4ck59 = 1.0 time = 300
.meas tran vdout1_4ck59 FIND v(dout1_4) AT=300.025n

* CHECK dout1_5 Vdout1_5ck59 = 1.0 time = 300
.meas tran vdout1_5ck59 FIND v(dout1_5) AT=300.025n

* CHECK dout1_6 Vdout1_6ck59 = 1.0 time = 300
.meas tran vdout1_6ck59 FIND v(dout1_6) AT=300.025n

* CHECK dout1_7 Vdout1_7ck59 = 1.0 time = 300
.meas tran vdout1_7ck59 FIND v(dout1_7) AT=300.025n

* CHECK dout1_8 Vdout1_8ck59 = 1.0 time = 300
.meas tran vdout1_8ck59 FIND v(dout1_8) AT=300.025n

* CHECK dout1_9 Vdout1_9ck59 = 0 time = 300
.meas tran vdout1_9ck59 FIND v(dout1_9) AT=300.025n

* CHECK dout1_10 Vdout1_10ck59 = 0 time = 300
.meas tran vdout1_10ck59 FIND v(dout1_10) AT=300.025n

* CHECK dout1_0 Vdout1_0ck60 = 1.0 time = 305
.meas tran vdout1_0ck60 FIND v(dout1_0) AT=305.025n

* CHECK dout1_1 Vdout1_1ck60 = 0 time = 305
.meas tran vdout1_1ck60 FIND v(dout1_1) AT=305.025n

* CHECK dout1_2 Vdout1_2ck60 = 1.0 time = 305
.meas tran vdout1_2ck60 FIND v(dout1_2) AT=305.025n

* CHECK dout1_3 Vdout1_3ck60 = 0 time = 305
.meas tran vdout1_3ck60 FIND v(dout1_3) AT=305.025n

* CHECK dout1_4 Vdout1_4ck60 = 0 time = 305
.meas tran vdout1_4ck60 FIND v(dout1_4) AT=305.025n

* CHECK dout1_5 Vdout1_5ck60 = 0 time = 305
.meas tran vdout1_5ck60 FIND v(dout1_5) AT=305.025n

* CHECK dout1_6 Vdout1_6ck60 = 0 time = 305
.meas tran vdout1_6ck60 FIND v(dout1_6) AT=305.025n

* CHECK dout1_7 Vdout1_7ck60 = 0 time = 305
.meas tran vdout1_7ck60 FIND v(dout1_7) AT=305.025n

* CHECK dout1_8 Vdout1_8ck60 = 0 time = 305
.meas tran vdout1_8ck60 FIND v(dout1_8) AT=305.025n

* CHECK dout1_9 Vdout1_9ck60 = 0 time = 305
.meas tran vdout1_9ck60 FIND v(dout1_9) AT=305.025n

* CHECK dout1_10 Vdout1_10ck60 = 0 time = 305
.meas tran vdout1_10ck60 FIND v(dout1_10) AT=305.025n

* CHECK dout1_0 Vdout1_0ck61 = 1.0 time = 310
.meas tran vdout1_0ck61 FIND v(dout1_0) AT=310.025n

* CHECK dout1_1 Vdout1_1ck61 = 1.0 time = 310
.meas tran vdout1_1ck61 FIND v(dout1_1) AT=310.025n

* CHECK dout1_2 Vdout1_2ck61 = 0 time = 310
.meas tran vdout1_2ck61 FIND v(dout1_2) AT=310.025n

* CHECK dout1_3 Vdout1_3ck61 = 1.0 time = 310
.meas tran vdout1_3ck61 FIND v(dout1_3) AT=310.025n

* CHECK dout1_4 Vdout1_4ck61 = 0 time = 310
.meas tran vdout1_4ck61 FIND v(dout1_4) AT=310.025n

* CHECK dout1_5 Vdout1_5ck61 = 0 time = 310
.meas tran vdout1_5ck61 FIND v(dout1_5) AT=310.025n

* CHECK dout1_6 Vdout1_6ck61 = 1.0 time = 310
.meas tran vdout1_6ck61 FIND v(dout1_6) AT=310.025n

* CHECK dout1_7 Vdout1_7ck61 = 0 time = 310
.meas tran vdout1_7ck61 FIND v(dout1_7) AT=310.025n

* CHECK dout1_8 Vdout1_8ck61 = 1.0 time = 310
.meas tran vdout1_8ck61 FIND v(dout1_8) AT=310.025n

* CHECK dout1_9 Vdout1_9ck61 = 1.0 time = 310
.meas tran vdout1_9ck61 FIND v(dout1_9) AT=310.025n

* CHECK dout1_10 Vdout1_10ck61 = 0 time = 310
.meas tran vdout1_10ck61 FIND v(dout1_10) AT=310.025n

* CHECK dout1_0 Vdout1_0ck65 = 0 time = 330
.meas tran vdout1_0ck65 FIND v(dout1_0) AT=330.025n

* CHECK dout1_1 Vdout1_1ck65 = 1.0 time = 330
.meas tran vdout1_1ck65 FIND v(dout1_1) AT=330.025n

* CHECK dout1_2 Vdout1_2ck65 = 0 time = 330
.meas tran vdout1_2ck65 FIND v(dout1_2) AT=330.025n

* CHECK dout1_3 Vdout1_3ck65 = 0 time = 330
.meas tran vdout1_3ck65 FIND v(dout1_3) AT=330.025n

* CHECK dout1_4 Vdout1_4ck65 = 0 time = 330
.meas tran vdout1_4ck65 FIND v(dout1_4) AT=330.025n

* CHECK dout1_5 Vdout1_5ck65 = 1.0 time = 330
.meas tran vdout1_5ck65 FIND v(dout1_5) AT=330.025n

* CHECK dout1_6 Vdout1_6ck65 = 1.0 time = 330
.meas tran vdout1_6ck65 FIND v(dout1_6) AT=330.025n

* CHECK dout1_7 Vdout1_7ck65 = 0 time = 330
.meas tran vdout1_7ck65 FIND v(dout1_7) AT=330.025n

* CHECK dout1_8 Vdout1_8ck65 = 1.0 time = 330
.meas tran vdout1_8ck65 FIND v(dout1_8) AT=330.025n

* CHECK dout1_9 Vdout1_9ck65 = 1.0 time = 330
.meas tran vdout1_9ck65 FIND v(dout1_9) AT=330.025n

* CHECK dout1_10 Vdout1_10ck65 = 0 time = 330
.meas tran vdout1_10ck65 FIND v(dout1_10) AT=330.025n

* CHECK dout1_0 Vdout1_0ck66 = 0 time = 335
.meas tran vdout1_0ck66 FIND v(dout1_0) AT=335.025n

* CHECK dout1_1 Vdout1_1ck66 = 1.0 time = 335
.meas tran vdout1_1ck66 FIND v(dout1_1) AT=335.025n

* CHECK dout1_2 Vdout1_2ck66 = 0 time = 335
.meas tran vdout1_2ck66 FIND v(dout1_2) AT=335.025n

* CHECK dout1_3 Vdout1_3ck66 = 1.0 time = 335
.meas tran vdout1_3ck66 FIND v(dout1_3) AT=335.025n

* CHECK dout1_4 Vdout1_4ck66 = 0 time = 335
.meas tran vdout1_4ck66 FIND v(dout1_4) AT=335.025n

* CHECK dout1_5 Vdout1_5ck66 = 0 time = 335
.meas tran vdout1_5ck66 FIND v(dout1_5) AT=335.025n

* CHECK dout1_6 Vdout1_6ck66 = 0 time = 335
.meas tran vdout1_6ck66 FIND v(dout1_6) AT=335.025n

* CHECK dout1_7 Vdout1_7ck66 = 1.0 time = 335
.meas tran vdout1_7ck66 FIND v(dout1_7) AT=335.025n

* CHECK dout1_8 Vdout1_8ck66 = 1.0 time = 335
.meas tran vdout1_8ck66 FIND v(dout1_8) AT=335.025n

* CHECK dout1_9 Vdout1_9ck66 = 1.0 time = 335
.meas tran vdout1_9ck66 FIND v(dout1_9) AT=335.025n

* CHECK dout1_10 Vdout1_10ck66 = 1.0 time = 335
.meas tran vdout1_10ck66 FIND v(dout1_10) AT=335.025n

* CHECK dout1_0 Vdout1_0ck68 = 1.0 time = 345
.meas tran vdout1_0ck68 FIND v(dout1_0) AT=345.025n

* CHECK dout1_1 Vdout1_1ck68 = 1.0 time = 345
.meas tran vdout1_1ck68 FIND v(dout1_1) AT=345.025n

* CHECK dout1_2 Vdout1_2ck68 = 1.0 time = 345
.meas tran vdout1_2ck68 FIND v(dout1_2) AT=345.025n

* CHECK dout1_3 Vdout1_3ck68 = 0 time = 345
.meas tran vdout1_3ck68 FIND v(dout1_3) AT=345.025n

* CHECK dout1_4 Vdout1_4ck68 = 0 time = 345
.meas tran vdout1_4ck68 FIND v(dout1_4) AT=345.025n

* CHECK dout1_5 Vdout1_5ck68 = 1.0 time = 345
.meas tran vdout1_5ck68 FIND v(dout1_5) AT=345.025n

* CHECK dout1_6 Vdout1_6ck68 = 0 time = 345
.meas tran vdout1_6ck68 FIND v(dout1_6) AT=345.025n

* CHECK dout1_7 Vdout1_7ck68 = 1.0 time = 345
.meas tran vdout1_7ck68 FIND v(dout1_7) AT=345.025n

* CHECK dout1_8 Vdout1_8ck68 = 0 time = 345
.meas tran vdout1_8ck68 FIND v(dout1_8) AT=345.025n

* CHECK dout1_9 Vdout1_9ck68 = 1.0 time = 345
.meas tran vdout1_9ck68 FIND v(dout1_9) AT=345.025n

* CHECK dout1_10 Vdout1_10ck68 = 1.0 time = 345
.meas tran vdout1_10ck68 FIND v(dout1_10) AT=345.025n

* CHECK dout1_0 Vdout1_0ck69 = 0 time = 350
.meas tran vdout1_0ck69 FIND v(dout1_0) AT=350.025n

* CHECK dout1_1 Vdout1_1ck69 = 1.0 time = 350
.meas tran vdout1_1ck69 FIND v(dout1_1) AT=350.025n

* CHECK dout1_2 Vdout1_2ck69 = 0 time = 350
.meas tran vdout1_2ck69 FIND v(dout1_2) AT=350.025n

* CHECK dout1_3 Vdout1_3ck69 = 1.0 time = 350
.meas tran vdout1_3ck69 FIND v(dout1_3) AT=350.025n

* CHECK dout1_4 Vdout1_4ck69 = 1.0 time = 350
.meas tran vdout1_4ck69 FIND v(dout1_4) AT=350.025n

* CHECK dout1_5 Vdout1_5ck69 = 1.0 time = 350
.meas tran vdout1_5ck69 FIND v(dout1_5) AT=350.025n

* CHECK dout1_6 Vdout1_6ck69 = 0 time = 350
.meas tran vdout1_6ck69 FIND v(dout1_6) AT=350.025n

* CHECK dout1_7 Vdout1_7ck69 = 0 time = 350
.meas tran vdout1_7ck69 FIND v(dout1_7) AT=350.025n

* CHECK dout1_8 Vdout1_8ck69 = 0 time = 350
.meas tran vdout1_8ck69 FIND v(dout1_8) AT=350.025n

* CHECK dout1_9 Vdout1_9ck69 = 0 time = 350
.meas tran vdout1_9ck69 FIND v(dout1_9) AT=350.025n

* CHECK dout1_10 Vdout1_10ck69 = 0 time = 350
.meas tran vdout1_10ck69 FIND v(dout1_10) AT=350.025n

* CHECK dout1_0 Vdout1_0ck76 = 0 time = 385
.meas tran vdout1_0ck76 FIND v(dout1_0) AT=385.025n

* CHECK dout1_1 Vdout1_1ck76 = 1.0 time = 385
.meas tran vdout1_1ck76 FIND v(dout1_1) AT=385.025n

* CHECK dout1_2 Vdout1_2ck76 = 0 time = 385
.meas tran vdout1_2ck76 FIND v(dout1_2) AT=385.025n

* CHECK dout1_3 Vdout1_3ck76 = 1.0 time = 385
.meas tran vdout1_3ck76 FIND v(dout1_3) AT=385.025n

* CHECK dout1_4 Vdout1_4ck76 = 0 time = 385
.meas tran vdout1_4ck76 FIND v(dout1_4) AT=385.025n

* CHECK dout1_5 Vdout1_5ck76 = 1.0 time = 385
.meas tran vdout1_5ck76 FIND v(dout1_5) AT=385.025n

* CHECK dout1_6 Vdout1_6ck76 = 0 time = 385
.meas tran vdout1_6ck76 FIND v(dout1_6) AT=385.025n

* CHECK dout1_7 Vdout1_7ck76 = 1.0 time = 385
.meas tran vdout1_7ck76 FIND v(dout1_7) AT=385.025n

* CHECK dout1_8 Vdout1_8ck76 = 1.0 time = 385
.meas tran vdout1_8ck76 FIND v(dout1_8) AT=385.025n

* CHECK dout1_9 Vdout1_9ck76 = 1.0 time = 385
.meas tran vdout1_9ck76 FIND v(dout1_9) AT=385.025n

* CHECK dout1_10 Vdout1_10ck76 = 0 time = 385
.meas tran vdout1_10ck76 FIND v(dout1_10) AT=385.025n

* CHECK dout1_0 Vdout1_0ck77 = 0 time = 390
.meas tran vdout1_0ck77 FIND v(dout1_0) AT=390.025n

* CHECK dout1_1 Vdout1_1ck77 = 1.0 time = 390
.meas tran vdout1_1ck77 FIND v(dout1_1) AT=390.025n

* CHECK dout1_2 Vdout1_2ck77 = 0 time = 390
.meas tran vdout1_2ck77 FIND v(dout1_2) AT=390.025n

* CHECK dout1_3 Vdout1_3ck77 = 1.0 time = 390
.meas tran vdout1_3ck77 FIND v(dout1_3) AT=390.025n

* CHECK dout1_4 Vdout1_4ck77 = 0 time = 390
.meas tran vdout1_4ck77 FIND v(dout1_4) AT=390.025n

* CHECK dout1_5 Vdout1_5ck77 = 0 time = 390
.meas tran vdout1_5ck77 FIND v(dout1_5) AT=390.025n

* CHECK dout1_6 Vdout1_6ck77 = 0 time = 390
.meas tran vdout1_6ck77 FIND v(dout1_6) AT=390.025n

* CHECK dout1_7 Vdout1_7ck77 = 1.0 time = 390
.meas tran vdout1_7ck77 FIND v(dout1_7) AT=390.025n

* CHECK dout1_8 Vdout1_8ck77 = 1.0 time = 390
.meas tran vdout1_8ck77 FIND v(dout1_8) AT=390.025n

* CHECK dout1_9 Vdout1_9ck77 = 1.0 time = 390
.meas tran vdout1_9ck77 FIND v(dout1_9) AT=390.025n

* CHECK dout1_10 Vdout1_10ck77 = 1.0 time = 390
.meas tran vdout1_10ck77 FIND v(dout1_10) AT=390.025n

* CHECK dout1_0 Vdout1_0ck81 = 0 time = 410
.meas tran vdout1_0ck81 FIND v(dout1_0) AT=410.025n

* CHECK dout1_1 Vdout1_1ck81 = 1.0 time = 410
.meas tran vdout1_1ck81 FIND v(dout1_1) AT=410.025n

* CHECK dout1_2 Vdout1_2ck81 = 0 time = 410
.meas tran vdout1_2ck81 FIND v(dout1_2) AT=410.025n

* CHECK dout1_3 Vdout1_3ck81 = 1.0 time = 410
.meas tran vdout1_3ck81 FIND v(dout1_3) AT=410.025n

* CHECK dout1_4 Vdout1_4ck81 = 0 time = 410
.meas tran vdout1_4ck81 FIND v(dout1_4) AT=410.025n

* CHECK dout1_5 Vdout1_5ck81 = 0 time = 410
.meas tran vdout1_5ck81 FIND v(dout1_5) AT=410.025n

* CHECK dout1_6 Vdout1_6ck81 = 0 time = 410
.meas tran vdout1_6ck81 FIND v(dout1_6) AT=410.025n

* CHECK dout1_7 Vdout1_7ck81 = 1.0 time = 410
.meas tran vdout1_7ck81 FIND v(dout1_7) AT=410.025n

* CHECK dout1_8 Vdout1_8ck81 = 1.0 time = 410
.meas tran vdout1_8ck81 FIND v(dout1_8) AT=410.025n

* CHECK dout1_9 Vdout1_9ck81 = 1.0 time = 410
.meas tran vdout1_9ck81 FIND v(dout1_9) AT=410.025n

* CHECK dout1_10 Vdout1_10ck81 = 1.0 time = 410
.meas tran vdout1_10ck81 FIND v(dout1_10) AT=410.025n

* CHECK dout1_0 Vdout1_0ck83 = 0 time = 420
.meas tran vdout1_0ck83 FIND v(dout1_0) AT=420.025n

* CHECK dout1_1 Vdout1_1ck83 = 0 time = 420
.meas tran vdout1_1ck83 FIND v(dout1_1) AT=420.025n

* CHECK dout1_2 Vdout1_2ck83 = 1.0 time = 420
.meas tran vdout1_2ck83 FIND v(dout1_2) AT=420.025n

* CHECK dout1_3 Vdout1_3ck83 = 1.0 time = 420
.meas tran vdout1_3ck83 FIND v(dout1_3) AT=420.025n

* CHECK dout1_4 Vdout1_4ck83 = 0 time = 420
.meas tran vdout1_4ck83 FIND v(dout1_4) AT=420.025n

* CHECK dout1_5 Vdout1_5ck83 = 1.0 time = 420
.meas tran vdout1_5ck83 FIND v(dout1_5) AT=420.025n

* CHECK dout1_6 Vdout1_6ck83 = 0 time = 420
.meas tran vdout1_6ck83 FIND v(dout1_6) AT=420.025n

* CHECK dout1_7 Vdout1_7ck83 = 1.0 time = 420
.meas tran vdout1_7ck83 FIND v(dout1_7) AT=420.025n

* CHECK dout1_8 Vdout1_8ck83 = 1.0 time = 420
.meas tran vdout1_8ck83 FIND v(dout1_8) AT=420.025n

* CHECK dout1_9 Vdout1_9ck83 = 0 time = 420
.meas tran vdout1_9ck83 FIND v(dout1_9) AT=420.025n

* CHECK dout1_10 Vdout1_10ck83 = 0 time = 420
.meas tran vdout1_10ck83 FIND v(dout1_10) AT=420.025n

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

* CHECK dout1_5 Vdout1_5ck85 = 0 time = 430
.meas tran vdout1_5ck85 FIND v(dout1_5) AT=430.025n

* CHECK dout1_6 Vdout1_6ck85 = 0 time = 430
.meas tran vdout1_6ck85 FIND v(dout1_6) AT=430.025n

* CHECK dout1_7 Vdout1_7ck85 = 1.0 time = 430
.meas tran vdout1_7ck85 FIND v(dout1_7) AT=430.025n

* CHECK dout1_8 Vdout1_8ck85 = 1.0 time = 430
.meas tran vdout1_8ck85 FIND v(dout1_8) AT=430.025n

* CHECK dout1_9 Vdout1_9ck85 = 1.0 time = 430
.meas tran vdout1_9ck85 FIND v(dout1_9) AT=430.025n

* CHECK dout1_10 Vdout1_10ck85 = 1.0 time = 430
.meas tran vdout1_10ck85 FIND v(dout1_10) AT=430.025n

* CHECK dout1_0 Vdout1_0ck90 = 1.0 time = 455
.meas tran vdout1_0ck90 FIND v(dout1_0) AT=455.025n

* CHECK dout1_1 Vdout1_1ck90 = 1.0 time = 455
.meas tran vdout1_1ck90 FIND v(dout1_1) AT=455.025n

* CHECK dout1_2 Vdout1_2ck90 = 0 time = 455
.meas tran vdout1_2ck90 FIND v(dout1_2) AT=455.025n

* CHECK dout1_3 Vdout1_3ck90 = 0 time = 455
.meas tran vdout1_3ck90 FIND v(dout1_3) AT=455.025n

* CHECK dout1_4 Vdout1_4ck90 = 1.0 time = 455
.meas tran vdout1_4ck90 FIND v(dout1_4) AT=455.025n

* CHECK dout1_5 Vdout1_5ck90 = 1.0 time = 455
.meas tran vdout1_5ck90 FIND v(dout1_5) AT=455.025n

* CHECK dout1_6 Vdout1_6ck90 = 0 time = 455
.meas tran vdout1_6ck90 FIND v(dout1_6) AT=455.025n

* CHECK dout1_7 Vdout1_7ck90 = 0 time = 455
.meas tran vdout1_7ck90 FIND v(dout1_7) AT=455.025n

* CHECK dout1_8 Vdout1_8ck90 = 0 time = 455
.meas tran vdout1_8ck90 FIND v(dout1_8) AT=455.025n

* CHECK dout1_9 Vdout1_9ck90 = 0 time = 455
.meas tran vdout1_9ck90 FIND v(dout1_9) AT=455.025n

* CHECK dout1_10 Vdout1_10ck90 = 0 time = 455
.meas tran vdout1_10ck90 FIND v(dout1_10) AT=455.025n

* CHECK dout1_0 Vdout1_0ck92 = 1.0 time = 465
.meas tran vdout1_0ck92 FIND v(dout1_0) AT=465.025n

* CHECK dout1_1 Vdout1_1ck92 = 1.0 time = 465
.meas tran vdout1_1ck92 FIND v(dout1_1) AT=465.025n

* CHECK dout1_2 Vdout1_2ck92 = 1.0 time = 465
.meas tran vdout1_2ck92 FIND v(dout1_2) AT=465.025n

* CHECK dout1_3 Vdout1_3ck92 = 1.0 time = 465
.meas tran vdout1_3ck92 FIND v(dout1_3) AT=465.025n

* CHECK dout1_4 Vdout1_4ck92 = 0 time = 465
.meas tran vdout1_4ck92 FIND v(dout1_4) AT=465.025n

* CHECK dout1_5 Vdout1_5ck92 = 1.0 time = 465
.meas tran vdout1_5ck92 FIND v(dout1_5) AT=465.025n

* CHECK dout1_6 Vdout1_6ck92 = 1.0 time = 465
.meas tran vdout1_6ck92 FIND v(dout1_6) AT=465.025n

* CHECK dout1_7 Vdout1_7ck92 = 0 time = 465
.meas tran vdout1_7ck92 FIND v(dout1_7) AT=465.025n

* CHECK dout1_8 Vdout1_8ck92 = 0 time = 465
.meas tran vdout1_8ck92 FIND v(dout1_8) AT=465.025n

* CHECK dout1_9 Vdout1_9ck92 = 1.0 time = 465
.meas tran vdout1_9ck92 FIND v(dout1_9) AT=465.025n

* CHECK dout1_10 Vdout1_10ck92 = 0 time = 465
.meas tran vdout1_10ck92 FIND v(dout1_10) AT=465.025n

* CHECK dout1_0 Vdout1_0ck93 = 0 time = 470
.meas tran vdout1_0ck93 FIND v(dout1_0) AT=470.025n

* CHECK dout1_1 Vdout1_1ck93 = 0 time = 470
.meas tran vdout1_1ck93 FIND v(dout1_1) AT=470.025n

* CHECK dout1_2 Vdout1_2ck93 = 1.0 time = 470
.meas tran vdout1_2ck93 FIND v(dout1_2) AT=470.025n

* CHECK dout1_3 Vdout1_3ck93 = 1.0 time = 470
.meas tran vdout1_3ck93 FIND v(dout1_3) AT=470.025n

* CHECK dout1_4 Vdout1_4ck93 = 1.0 time = 470
.meas tran vdout1_4ck93 FIND v(dout1_4) AT=470.025n

* CHECK dout1_5 Vdout1_5ck93 = 0 time = 470
.meas tran vdout1_5ck93 FIND v(dout1_5) AT=470.025n

* CHECK dout1_6 Vdout1_6ck93 = 1.0 time = 470
.meas tran vdout1_6ck93 FIND v(dout1_6) AT=470.025n

* CHECK dout1_7 Vdout1_7ck93 = 0 time = 470
.meas tran vdout1_7ck93 FIND v(dout1_7) AT=470.025n

* CHECK dout1_8 Vdout1_8ck93 = 0 time = 470
.meas tran vdout1_8ck93 FIND v(dout1_8) AT=470.025n

* CHECK dout1_9 Vdout1_9ck93 = 1.0 time = 470
.meas tran vdout1_9ck93 FIND v(dout1_9) AT=470.025n

* CHECK dout1_10 Vdout1_10ck93 = 1.0 time = 470
.meas tran vdout1_10ck93 FIND v(dout1_10) AT=470.025n

* CHECK dout1_0 Vdout1_0ck94 = 1.0 time = 475
.meas tran vdout1_0ck94 FIND v(dout1_0) AT=475.025n

* CHECK dout1_1 Vdout1_1ck94 = 1.0 time = 475
.meas tran vdout1_1ck94 FIND v(dout1_1) AT=475.025n

* CHECK dout1_2 Vdout1_2ck94 = 1.0 time = 475
.meas tran vdout1_2ck94 FIND v(dout1_2) AT=475.025n

* CHECK dout1_3 Vdout1_3ck94 = 0 time = 475
.meas tran vdout1_3ck94 FIND v(dout1_3) AT=475.025n

* CHECK dout1_4 Vdout1_4ck94 = 0 time = 475
.meas tran vdout1_4ck94 FIND v(dout1_4) AT=475.025n

* CHECK dout1_5 Vdout1_5ck94 = 1.0 time = 475
.meas tran vdout1_5ck94 FIND v(dout1_5) AT=475.025n

* CHECK dout1_6 Vdout1_6ck94 = 1.0 time = 475
.meas tran vdout1_6ck94 FIND v(dout1_6) AT=475.025n

* CHECK dout1_7 Vdout1_7ck94 = 0 time = 475
.meas tran vdout1_7ck94 FIND v(dout1_7) AT=475.025n

* CHECK dout1_8 Vdout1_8ck94 = 1.0 time = 475
.meas tran vdout1_8ck94 FIND v(dout1_8) AT=475.025n

* CHECK dout1_9 Vdout1_9ck94 = 1.0 time = 475
.meas tran vdout1_9ck94 FIND v(dout1_9) AT=475.025n

* CHECK dout1_10 Vdout1_10ck94 = 1.0 time = 475
.meas tran vdout1_10ck94 FIND v(dout1_10) AT=475.025n

* CHECK dout1_0 Vdout1_0ck95 = 1.0 time = 480
.meas tran vdout1_0ck95 FIND v(dout1_0) AT=480.025n

* CHECK dout1_1 Vdout1_1ck95 = 1.0 time = 480
.meas tran vdout1_1ck95 FIND v(dout1_1) AT=480.025n

* CHECK dout1_2 Vdout1_2ck95 = 0 time = 480
.meas tran vdout1_2ck95 FIND v(dout1_2) AT=480.025n

* CHECK dout1_3 Vdout1_3ck95 = 1.0 time = 480
.meas tran vdout1_3ck95 FIND v(dout1_3) AT=480.025n

* CHECK dout1_4 Vdout1_4ck95 = 0 time = 480
.meas tran vdout1_4ck95 FIND v(dout1_4) AT=480.025n

* CHECK dout1_5 Vdout1_5ck95 = 1.0 time = 480
.meas tran vdout1_5ck95 FIND v(dout1_5) AT=480.025n

* CHECK dout1_6 Vdout1_6ck95 = 0 time = 480
.meas tran vdout1_6ck95 FIND v(dout1_6) AT=480.025n

* CHECK dout1_7 Vdout1_7ck95 = 0 time = 480
.meas tran vdout1_7ck95 FIND v(dout1_7) AT=480.025n

* CHECK dout1_8 Vdout1_8ck95 = 1.0 time = 480
.meas tran vdout1_8ck95 FIND v(dout1_8) AT=480.025n

* CHECK dout1_9 Vdout1_9ck95 = 0 time = 480
.meas tran vdout1_9ck95 FIND v(dout1_9) AT=480.025n

* CHECK dout1_10 Vdout1_10ck95 = 0 time = 480
.meas tran vdout1_10ck95 FIND v(dout1_10) AT=480.025n

* CHECK dout1_0 Vdout1_0ck96 = 1.0 time = 485
.meas tran vdout1_0ck96 FIND v(dout1_0) AT=485.025n

* CHECK dout1_1 Vdout1_1ck96 = 1.0 time = 485
.meas tran vdout1_1ck96 FIND v(dout1_1) AT=485.025n

* CHECK dout1_2 Vdout1_2ck96 = 1.0 time = 485
.meas tran vdout1_2ck96 FIND v(dout1_2) AT=485.025n

* CHECK dout1_3 Vdout1_3ck96 = 1.0 time = 485
.meas tran vdout1_3ck96 FIND v(dout1_3) AT=485.025n

* CHECK dout1_4 Vdout1_4ck96 = 0 time = 485
.meas tran vdout1_4ck96 FIND v(dout1_4) AT=485.025n

* CHECK dout1_5 Vdout1_5ck96 = 1.0 time = 485
.meas tran vdout1_5ck96 FIND v(dout1_5) AT=485.025n

* CHECK dout1_6 Vdout1_6ck96 = 1.0 time = 485
.meas tran vdout1_6ck96 FIND v(dout1_6) AT=485.025n

* CHECK dout1_7 Vdout1_7ck96 = 0 time = 485
.meas tran vdout1_7ck96 FIND v(dout1_7) AT=485.025n

* CHECK dout1_8 Vdout1_8ck96 = 0 time = 485
.meas tran vdout1_8ck96 FIND v(dout1_8) AT=485.025n

* CHECK dout1_9 Vdout1_9ck96 = 1.0 time = 485
.meas tran vdout1_9ck96 FIND v(dout1_9) AT=485.025n

* CHECK dout1_10 Vdout1_10ck96 = 0 time = 485
.meas tran vdout1_10ck96 FIND v(dout1_10) AT=485.025n

* CHECK dout1_0 Vdout1_0ck99 = 1.0 time = 500
.meas tran vdout1_0ck99 FIND v(dout1_0) AT=500.025n

* CHECK dout1_1 Vdout1_1ck99 = 1.0 time = 500
.meas tran vdout1_1ck99 FIND v(dout1_1) AT=500.025n

* CHECK dout1_2 Vdout1_2ck99 = 0 time = 500
.meas tran vdout1_2ck99 FIND v(dout1_2) AT=500.025n

* CHECK dout1_3 Vdout1_3ck99 = 1.0 time = 500
.meas tran vdout1_3ck99 FIND v(dout1_3) AT=500.025n

* CHECK dout1_4 Vdout1_4ck99 = 0 time = 500
.meas tran vdout1_4ck99 FIND v(dout1_4) AT=500.025n

* CHECK dout1_5 Vdout1_5ck99 = 1.0 time = 500
.meas tran vdout1_5ck99 FIND v(dout1_5) AT=500.025n

* CHECK dout1_6 Vdout1_6ck99 = 0 time = 500
.meas tran vdout1_6ck99 FIND v(dout1_6) AT=500.025n

* CHECK dout1_7 Vdout1_7ck99 = 0 time = 500
.meas tran vdout1_7ck99 FIND v(dout1_7) AT=500.025n

* CHECK dout1_8 Vdout1_8ck99 = 1.0 time = 500
.meas tran vdout1_8ck99 FIND v(dout1_8) AT=500.025n

* CHECK dout1_9 Vdout1_9ck99 = 0 time = 500
.meas tran vdout1_9ck99 FIND v(dout1_9) AT=500.025n

* CHECK dout1_10 Vdout1_10ck99 = 0 time = 500
.meas tran vdout1_10ck99 FIND v(dout1_10) AT=500.025n

* CHECK dout1_0 Vdout1_0ck100 = 1.0 time = 505
.meas tran vdout1_0ck100 FIND v(dout1_0) AT=505.025n

* CHECK dout1_1 Vdout1_1ck100 = 1.0 time = 505
.meas tran vdout1_1ck100 FIND v(dout1_1) AT=505.025n

* CHECK dout1_2 Vdout1_2ck100 = 0 time = 505
.meas tran vdout1_2ck100 FIND v(dout1_2) AT=505.025n

* CHECK dout1_3 Vdout1_3ck100 = 1.0 time = 505
.meas tran vdout1_3ck100 FIND v(dout1_3) AT=505.025n

* CHECK dout1_4 Vdout1_4ck100 = 0 time = 505
.meas tran vdout1_4ck100 FIND v(dout1_4) AT=505.025n

* CHECK dout1_5 Vdout1_5ck100 = 1.0 time = 505
.meas tran vdout1_5ck100 FIND v(dout1_5) AT=505.025n

* CHECK dout1_6 Vdout1_6ck100 = 0 time = 505
.meas tran vdout1_6ck100 FIND v(dout1_6) AT=505.025n

* CHECK dout1_7 Vdout1_7ck100 = 0 time = 505
.meas tran vdout1_7ck100 FIND v(dout1_7) AT=505.025n

* CHECK dout1_8 Vdout1_8ck100 = 1.0 time = 505
.meas tran vdout1_8ck100 FIND v(dout1_8) AT=505.025n

* CHECK dout1_9 Vdout1_9ck100 = 0 time = 505
.meas tran vdout1_9ck100 FIND v(dout1_9) AT=505.025n

* CHECK dout1_10 Vdout1_10ck100 = 0 time = 505
.meas tran vdout1_10ck100 FIND v(dout1_10) AT=505.025n

* CHECK dout1_0 Vdout1_0ck102 = 1.0 time = 515
.meas tran vdout1_0ck102 FIND v(dout1_0) AT=515.025n

* CHECK dout1_1 Vdout1_1ck102 = 0 time = 515
.meas tran vdout1_1ck102 FIND v(dout1_1) AT=515.025n

* CHECK dout1_2 Vdout1_2ck102 = 0 time = 515
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

* CHECK dout1_8 Vdout1_8ck102 = 1.0 time = 515
.meas tran vdout1_8ck102 FIND v(dout1_8) AT=515.025n

* CHECK dout1_9 Vdout1_9ck102 = 0 time = 515
.meas tran vdout1_9ck102 FIND v(dout1_9) AT=515.025n

* CHECK dout1_10 Vdout1_10ck102 = 1.0 time = 515
.meas tran vdout1_10ck102 FIND v(dout1_10) AT=515.025n

* CHECK dout1_0 Vdout1_0ck103 = 1.0 time = 520
.meas tran vdout1_0ck103 FIND v(dout1_0) AT=520.025n

* CHECK dout1_1 Vdout1_1ck103 = 0 time = 520
.meas tran vdout1_1ck103 FIND v(dout1_1) AT=520.025n

* CHECK dout1_2 Vdout1_2ck103 = 0 time = 520
.meas tran vdout1_2ck103 FIND v(dout1_2) AT=520.025n

* CHECK dout1_3 Vdout1_3ck103 = 0 time = 520
.meas tran vdout1_3ck103 FIND v(dout1_3) AT=520.025n

* CHECK dout1_4 Vdout1_4ck103 = 0 time = 520
.meas tran vdout1_4ck103 FIND v(dout1_4) AT=520.025n

* CHECK dout1_5 Vdout1_5ck103 = 0 time = 520
.meas tran vdout1_5ck103 FIND v(dout1_5) AT=520.025n

* CHECK dout1_6 Vdout1_6ck103 = 1.0 time = 520
.meas tran vdout1_6ck103 FIND v(dout1_6) AT=520.025n

* CHECK dout1_7 Vdout1_7ck103 = 1.0 time = 520
.meas tran vdout1_7ck103 FIND v(dout1_7) AT=520.025n

* CHECK dout1_8 Vdout1_8ck103 = 1.0 time = 520
.meas tran vdout1_8ck103 FIND v(dout1_8) AT=520.025n

* CHECK dout1_9 Vdout1_9ck103 = 0 time = 520
.meas tran vdout1_9ck103 FIND v(dout1_9) AT=520.025n

* CHECK dout1_10 Vdout1_10ck103 = 1.0 time = 520
.meas tran vdout1_10ck103 FIND v(dout1_10) AT=520.025n

* CHECK dout1_0 Vdout1_0ck104 = 0 time = 525
.meas tran vdout1_0ck104 FIND v(dout1_0) AT=525.025n

* CHECK dout1_1 Vdout1_1ck104 = 1.0 time = 525
.meas tran vdout1_1ck104 FIND v(dout1_1) AT=525.025n

* CHECK dout1_2 Vdout1_2ck104 = 1.0 time = 525
.meas tran vdout1_2ck104 FIND v(dout1_2) AT=525.025n

* CHECK dout1_3 Vdout1_3ck104 = 0 time = 525
.meas tran vdout1_3ck104 FIND v(dout1_3) AT=525.025n

* CHECK dout1_4 Vdout1_4ck104 = 0 time = 525
.meas tran vdout1_4ck104 FIND v(dout1_4) AT=525.025n

* CHECK dout1_5 Vdout1_5ck104 = 1.0 time = 525
.meas tran vdout1_5ck104 FIND v(dout1_5) AT=525.025n

* CHECK dout1_6 Vdout1_6ck104 = 0 time = 525
.meas tran vdout1_6ck104 FIND v(dout1_6) AT=525.025n

* CHECK dout1_7 Vdout1_7ck104 = 0 time = 525
.meas tran vdout1_7ck104 FIND v(dout1_7) AT=525.025n

* CHECK dout1_8 Vdout1_8ck104 = 0 time = 525
.meas tran vdout1_8ck104 FIND v(dout1_8) AT=525.025n

* CHECK dout1_9 Vdout1_9ck104 = 0 time = 525
.meas tran vdout1_9ck104 FIND v(dout1_9) AT=525.025n

* CHECK dout1_10 Vdout1_10ck104 = 1.0 time = 525
.meas tran vdout1_10ck104 FIND v(dout1_10) AT=525.025n

* CHECK dout1_0 Vdout1_0ck105 = 0 time = 530
.meas tran vdout1_0ck105 FIND v(dout1_0) AT=530.025n

* CHECK dout1_1 Vdout1_1ck105 = 0 time = 530
.meas tran vdout1_1ck105 FIND v(dout1_1) AT=530.025n

* CHECK dout1_2 Vdout1_2ck105 = 1.0 time = 530
.meas tran vdout1_2ck105 FIND v(dout1_2) AT=530.025n

* CHECK dout1_3 Vdout1_3ck105 = 1.0 time = 530
.meas tran vdout1_3ck105 FIND v(dout1_3) AT=530.025n

* CHECK dout1_4 Vdout1_4ck105 = 1.0 time = 530
.meas tran vdout1_4ck105 FIND v(dout1_4) AT=530.025n

* CHECK dout1_5 Vdout1_5ck105 = 0 time = 530
.meas tran vdout1_5ck105 FIND v(dout1_5) AT=530.025n

* CHECK dout1_6 Vdout1_6ck105 = 1.0 time = 530
.meas tran vdout1_6ck105 FIND v(dout1_6) AT=530.025n

* CHECK dout1_7 Vdout1_7ck105 = 0 time = 530
.meas tran vdout1_7ck105 FIND v(dout1_7) AT=530.025n

* CHECK dout1_8 Vdout1_8ck105 = 0 time = 530
.meas tran vdout1_8ck105 FIND v(dout1_8) AT=530.025n

* CHECK dout1_9 Vdout1_9ck105 = 1.0 time = 530
.meas tran vdout1_9ck105 FIND v(dout1_9) AT=530.025n

* CHECK dout1_10 Vdout1_10ck105 = 1.0 time = 530
.meas tran vdout1_10ck105 FIND v(dout1_10) AT=530.025n

* CHECK dout1_0 Vdout1_0ck106 = 0 time = 535
.meas tran vdout1_0ck106 FIND v(dout1_0) AT=535.025n

* CHECK dout1_1 Vdout1_1ck106 = 0 time = 535
.meas tran vdout1_1ck106 FIND v(dout1_1) AT=535.025n

* CHECK dout1_2 Vdout1_2ck106 = 1.0 time = 535
.meas tran vdout1_2ck106 FIND v(dout1_2) AT=535.025n

* CHECK dout1_3 Vdout1_3ck106 = 1.0 time = 535
.meas tran vdout1_3ck106 FIND v(dout1_3) AT=535.025n

* CHECK dout1_4 Vdout1_4ck106 = 1.0 time = 535
.meas tran vdout1_4ck106 FIND v(dout1_4) AT=535.025n

* CHECK dout1_5 Vdout1_5ck106 = 0 time = 535
.meas tran vdout1_5ck106 FIND v(dout1_5) AT=535.025n

* CHECK dout1_6 Vdout1_6ck106 = 1.0 time = 535
.meas tran vdout1_6ck106 FIND v(dout1_6) AT=535.025n

* CHECK dout1_7 Vdout1_7ck106 = 0 time = 535
.meas tran vdout1_7ck106 FIND v(dout1_7) AT=535.025n

* CHECK dout1_8 Vdout1_8ck106 = 0 time = 535
.meas tran vdout1_8ck106 FIND v(dout1_8) AT=535.025n

* CHECK dout1_9 Vdout1_9ck106 = 1.0 time = 535
.meas tran vdout1_9ck106 FIND v(dout1_9) AT=535.025n

* CHECK dout1_10 Vdout1_10ck106 = 1.0 time = 535
.meas tran vdout1_10ck106 FIND v(dout1_10) AT=535.025n

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

* CHECK dout1_5 Vdout1_5ck108 = 1.0 time = 545
.meas tran vdout1_5ck108 FIND v(dout1_5) AT=545.025n

* CHECK dout1_6 Vdout1_6ck108 = 0 time = 545
.meas tran vdout1_6ck108 FIND v(dout1_6) AT=545.025n

* CHECK dout1_7 Vdout1_7ck108 = 0 time = 545
.meas tran vdout1_7ck108 FIND v(dout1_7) AT=545.025n

* CHECK dout1_8 Vdout1_8ck108 = 0 time = 545
.meas tran vdout1_8ck108 FIND v(dout1_8) AT=545.025n

* CHECK dout1_9 Vdout1_9ck108 = 0 time = 545
.meas tran vdout1_9ck108 FIND v(dout1_9) AT=545.025n

* CHECK dout1_10 Vdout1_10ck108 = 1.0 time = 545
.meas tran vdout1_10ck108 FIND v(dout1_10) AT=545.025n

* CHECK dout1_0 Vdout1_0ck110 = 1.0 time = 555
.meas tran vdout1_0ck110 FIND v(dout1_0) AT=555.025n

* CHECK dout1_1 Vdout1_1ck110 = 1.0 time = 555
.meas tran vdout1_1ck110 FIND v(dout1_1) AT=555.025n

* CHECK dout1_2 Vdout1_2ck110 = 0 time = 555
.meas tran vdout1_2ck110 FIND v(dout1_2) AT=555.025n

* CHECK dout1_3 Vdout1_3ck110 = 0 time = 555
.meas tran vdout1_3ck110 FIND v(dout1_3) AT=555.025n

* CHECK dout1_4 Vdout1_4ck110 = 1.0 time = 555
.meas tran vdout1_4ck110 FIND v(dout1_4) AT=555.025n

* CHECK dout1_5 Vdout1_5ck110 = 1.0 time = 555
.meas tran vdout1_5ck110 FIND v(dout1_5) AT=555.025n

* CHECK dout1_6 Vdout1_6ck110 = 1.0 time = 555
.meas tran vdout1_6ck110 FIND v(dout1_6) AT=555.025n

* CHECK dout1_7 Vdout1_7ck110 = 1.0 time = 555
.meas tran vdout1_7ck110 FIND v(dout1_7) AT=555.025n

* CHECK dout1_8 Vdout1_8ck110 = 1.0 time = 555
.meas tran vdout1_8ck110 FIND v(dout1_8) AT=555.025n

* CHECK dout1_9 Vdout1_9ck110 = 0 time = 555
.meas tran vdout1_9ck110 FIND v(dout1_9) AT=555.025n

* CHECK dout1_10 Vdout1_10ck110 = 1.0 time = 555
.meas tran vdout1_10ck110 FIND v(dout1_10) AT=555.025n

* CHECK dout1_0 Vdout1_0ck111 = 0 time = 560
.meas tran vdout1_0ck111 FIND v(dout1_0) AT=560.025n

* CHECK dout1_1 Vdout1_1ck111 = 0 time = 560
.meas tran vdout1_1ck111 FIND v(dout1_1) AT=560.025n

* CHECK dout1_2 Vdout1_2ck111 = 1.0 time = 560
.meas tran vdout1_2ck111 FIND v(dout1_2) AT=560.025n

* CHECK dout1_3 Vdout1_3ck111 = 1.0 time = 560
.meas tran vdout1_3ck111 FIND v(dout1_3) AT=560.025n

* CHECK dout1_4 Vdout1_4ck111 = 0 time = 560
.meas tran vdout1_4ck111 FIND v(dout1_4) AT=560.025n

* CHECK dout1_5 Vdout1_5ck111 = 0 time = 560
.meas tran vdout1_5ck111 FIND v(dout1_5) AT=560.025n

* CHECK dout1_6 Vdout1_6ck111 = 1.0 time = 560
.meas tran vdout1_6ck111 FIND v(dout1_6) AT=560.025n

* CHECK dout1_7 Vdout1_7ck111 = 1.0 time = 560
.meas tran vdout1_7ck111 FIND v(dout1_7) AT=560.025n

* CHECK dout1_8 Vdout1_8ck111 = 0 time = 560
.meas tran vdout1_8ck111 FIND v(dout1_8) AT=560.025n

* CHECK dout1_9 Vdout1_9ck111 = 1.0 time = 560
.meas tran vdout1_9ck111 FIND v(dout1_9) AT=560.025n

* CHECK dout1_10 Vdout1_10ck111 = 0 time = 560
.meas tran vdout1_10ck111 FIND v(dout1_10) AT=560.025n

* CHECK dout1_0 Vdout1_0ck116 = 0 time = 585
.meas tran vdout1_0ck116 FIND v(dout1_0) AT=585.025n

* CHECK dout1_1 Vdout1_1ck116 = 1.0 time = 585
.meas tran vdout1_1ck116 FIND v(dout1_1) AT=585.025n

* CHECK dout1_2 Vdout1_2ck116 = 1.0 time = 585
.meas tran vdout1_2ck116 FIND v(dout1_2) AT=585.025n

* CHECK dout1_3 Vdout1_3ck116 = 0 time = 585
.meas tran vdout1_3ck116 FIND v(dout1_3) AT=585.025n

* CHECK dout1_4 Vdout1_4ck116 = 0 time = 585
.meas tran vdout1_4ck116 FIND v(dout1_4) AT=585.025n

* CHECK dout1_5 Vdout1_5ck116 = 1.0 time = 585
.meas tran vdout1_5ck116 FIND v(dout1_5) AT=585.025n

* CHECK dout1_6 Vdout1_6ck116 = 0 time = 585
.meas tran vdout1_6ck116 FIND v(dout1_6) AT=585.025n

* CHECK dout1_7 Vdout1_7ck116 = 0 time = 585
.meas tran vdout1_7ck116 FIND v(dout1_7) AT=585.025n

* CHECK dout1_8 Vdout1_8ck116 = 0 time = 585
.meas tran vdout1_8ck116 FIND v(dout1_8) AT=585.025n

* CHECK dout1_9 Vdout1_9ck116 = 0 time = 585
.meas tran vdout1_9ck116 FIND v(dout1_9) AT=585.025n

* CHECK dout1_10 Vdout1_10ck116 = 1.0 time = 585
.meas tran vdout1_10ck116 FIND v(dout1_10) AT=585.025n

* CHECK dout1_0 Vdout1_0ck118 = 1.0 time = 595
.meas tran vdout1_0ck118 FIND v(dout1_0) AT=595.025n

* CHECK dout1_1 Vdout1_1ck118 = 1.0 time = 595
.meas tran vdout1_1ck118 FIND v(dout1_1) AT=595.025n

* CHECK dout1_2 Vdout1_2ck118 = 1.0 time = 595
.meas tran vdout1_2ck118 FIND v(dout1_2) AT=595.025n

* CHECK dout1_3 Vdout1_3ck118 = 1.0 time = 595
.meas tran vdout1_3ck118 FIND v(dout1_3) AT=595.025n

* CHECK dout1_4 Vdout1_4ck118 = 0 time = 595
.meas tran vdout1_4ck118 FIND v(dout1_4) AT=595.025n

* CHECK dout1_5 Vdout1_5ck118 = 1.0 time = 595
.meas tran vdout1_5ck118 FIND v(dout1_5) AT=595.025n

* CHECK dout1_6 Vdout1_6ck118 = 1.0 time = 595
.meas tran vdout1_6ck118 FIND v(dout1_6) AT=595.025n

* CHECK dout1_7 Vdout1_7ck118 = 0 time = 595
.meas tran vdout1_7ck118 FIND v(dout1_7) AT=595.025n

* CHECK dout1_8 Vdout1_8ck118 = 0 time = 595
.meas tran vdout1_8ck118 FIND v(dout1_8) AT=595.025n

* CHECK dout1_9 Vdout1_9ck118 = 1.0 time = 595
.meas tran vdout1_9ck118 FIND v(dout1_9) AT=595.025n

* CHECK dout1_10 Vdout1_10ck118 = 0 time = 595
.meas tran vdout1_10ck118 FIND v(dout1_10) AT=595.025n

* CHECK dout1_0 Vdout1_0ck121 = 1.0 time = 610
.meas tran vdout1_0ck121 FIND v(dout1_0) AT=610.025n

* CHECK dout1_1 Vdout1_1ck121 = 1.0 time = 610
.meas tran vdout1_1ck121 FIND v(dout1_1) AT=610.025n

* CHECK dout1_2 Vdout1_2ck121 = 1.0 time = 610
.meas tran vdout1_2ck121 FIND v(dout1_2) AT=610.025n

* CHECK dout1_3 Vdout1_3ck121 = 1.0 time = 610
.meas tran vdout1_3ck121 FIND v(dout1_3) AT=610.025n

* CHECK dout1_4 Vdout1_4ck121 = 0 time = 610
.meas tran vdout1_4ck121 FIND v(dout1_4) AT=610.025n

* CHECK dout1_5 Vdout1_5ck121 = 1.0 time = 610
.meas tran vdout1_5ck121 FIND v(dout1_5) AT=610.025n

* CHECK dout1_6 Vdout1_6ck121 = 1.0 time = 610
.meas tran vdout1_6ck121 FIND v(dout1_6) AT=610.025n

* CHECK dout1_7 Vdout1_7ck121 = 1.0 time = 610
.meas tran vdout1_7ck121 FIND v(dout1_7) AT=610.025n

* CHECK dout1_8 Vdout1_8ck121 = 1.0 time = 610
.meas tran vdout1_8ck121 FIND v(dout1_8) AT=610.025n

* CHECK dout1_9 Vdout1_9ck121 = 0 time = 610
.meas tran vdout1_9ck121 FIND v(dout1_9) AT=610.025n

* CHECK dout1_10 Vdout1_10ck121 = 0 time = 610
.meas tran vdout1_10ck121 FIND v(dout1_10) AT=610.025n

* CHECK dout1_0 Vdout1_0ck124 = 0 time = 625
.meas tran vdout1_0ck124 FIND v(dout1_0) AT=625.025n

* CHECK dout1_1 Vdout1_1ck124 = 0 time = 625
.meas tran vdout1_1ck124 FIND v(dout1_1) AT=625.025n

* CHECK dout1_2 Vdout1_2ck124 = 1.0 time = 625
.meas tran vdout1_2ck124 FIND v(dout1_2) AT=625.025n

* CHECK dout1_3 Vdout1_3ck124 = 0 time = 625
.meas tran vdout1_3ck124 FIND v(dout1_3) AT=625.025n

* CHECK dout1_4 Vdout1_4ck124 = 0 time = 625
.meas tran vdout1_4ck124 FIND v(dout1_4) AT=625.025n

* CHECK dout1_5 Vdout1_5ck124 = 0 time = 625
.meas tran vdout1_5ck124 FIND v(dout1_5) AT=625.025n

* CHECK dout1_6 Vdout1_6ck124 = 1.0 time = 625
.meas tran vdout1_6ck124 FIND v(dout1_6) AT=625.025n

* CHECK dout1_7 Vdout1_7ck124 = 0 time = 625
.meas tran vdout1_7ck124 FIND v(dout1_7) AT=625.025n

* CHECK dout1_8 Vdout1_8ck124 = 0 time = 625
.meas tran vdout1_8ck124 FIND v(dout1_8) AT=625.025n

* CHECK dout1_9 Vdout1_9ck124 = 0 time = 625
.meas tran vdout1_9ck124 FIND v(dout1_9) AT=625.025n

* CHECK dout1_10 Vdout1_10ck124 = 1.0 time = 625
.meas tran vdout1_10ck124 FIND v(dout1_10) AT=625.025n

* CHECK dout1_0 Vdout1_0ck125 = 1.0 time = 630
.meas tran vdout1_0ck125 FIND v(dout1_0) AT=630.025n

* CHECK dout1_1 Vdout1_1ck125 = 1.0 time = 630
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

* CHECK dout1_7 Vdout1_7ck125 = 1.0 time = 630
.meas tran vdout1_7ck125 FIND v(dout1_7) AT=630.025n

* CHECK dout1_8 Vdout1_8ck125 = 1.0 time = 630
.meas tran vdout1_8ck125 FIND v(dout1_8) AT=630.025n

* CHECK dout1_9 Vdout1_9ck125 = 1.0 time = 630
.meas tran vdout1_9ck125 FIND v(dout1_9) AT=630.025n

* CHECK dout1_10 Vdout1_10ck125 = 1.0 time = 630
.meas tran vdout1_10ck125 FIND v(dout1_10) AT=630.025n

* CHECK dout1_0 Vdout1_0ck129 = 0 time = 650
.meas tran vdout1_0ck129 FIND v(dout1_0) AT=650.025n

* CHECK dout1_1 Vdout1_1ck129 = 0 time = 650
.meas tran vdout1_1ck129 FIND v(dout1_1) AT=650.025n

* CHECK dout1_2 Vdout1_2ck129 = 1.0 time = 650
.meas tran vdout1_2ck129 FIND v(dout1_2) AT=650.025n

* CHECK dout1_3 Vdout1_3ck129 = 0 time = 650
.meas tran vdout1_3ck129 FIND v(dout1_3) AT=650.025n

* CHECK dout1_4 Vdout1_4ck129 = 0 time = 650
.meas tran vdout1_4ck129 FIND v(dout1_4) AT=650.025n

* CHECK dout1_5 Vdout1_5ck129 = 0 time = 650
.meas tran vdout1_5ck129 FIND v(dout1_5) AT=650.025n

* CHECK dout1_6 Vdout1_6ck129 = 1.0 time = 650
.meas tran vdout1_6ck129 FIND v(dout1_6) AT=650.025n

* CHECK dout1_7 Vdout1_7ck129 = 0 time = 650
.meas tran vdout1_7ck129 FIND v(dout1_7) AT=650.025n

* CHECK dout1_8 Vdout1_8ck129 = 0 time = 650
.meas tran vdout1_8ck129 FIND v(dout1_8) AT=650.025n

* CHECK dout1_9 Vdout1_9ck129 = 0 time = 650
.meas tran vdout1_9ck129 FIND v(dout1_9) AT=650.025n

* CHECK dout1_10 Vdout1_10ck129 = 1.0 time = 650
.meas tran vdout1_10ck129 FIND v(dout1_10) AT=650.025n

* CHECK dout1_0 Vdout1_0ck132 = 1.0 time = 665
.meas tran vdout1_0ck132 FIND v(dout1_0) AT=665.025n

* CHECK dout1_1 Vdout1_1ck132 = 1.0 time = 665
.meas tran vdout1_1ck132 FIND v(dout1_1) AT=665.025n

* CHECK dout1_2 Vdout1_2ck132 = 1.0 time = 665
.meas tran vdout1_2ck132 FIND v(dout1_2) AT=665.025n

* CHECK dout1_3 Vdout1_3ck132 = 0 time = 665
.meas tran vdout1_3ck132 FIND v(dout1_3) AT=665.025n

* CHECK dout1_4 Vdout1_4ck132 = 1.0 time = 665
.meas tran vdout1_4ck132 FIND v(dout1_4) AT=665.025n

* CHECK dout1_5 Vdout1_5ck132 = 1.0 time = 665
.meas tran vdout1_5ck132 FIND v(dout1_5) AT=665.025n

* CHECK dout1_6 Vdout1_6ck132 = 1.0 time = 665
.meas tran vdout1_6ck132 FIND v(dout1_6) AT=665.025n

* CHECK dout1_7 Vdout1_7ck132 = 0 time = 665
.meas tran vdout1_7ck132 FIND v(dout1_7) AT=665.025n

* CHECK dout1_8 Vdout1_8ck132 = 0 time = 665
.meas tran vdout1_8ck132 FIND v(dout1_8) AT=665.025n

* CHECK dout1_9 Vdout1_9ck132 = 1.0 time = 665
.meas tran vdout1_9ck132 FIND v(dout1_9) AT=665.025n

* CHECK dout1_10 Vdout1_10ck132 = 1.0 time = 665
.meas tran vdout1_10ck132 FIND v(dout1_10) AT=665.025n

* CHECK dout1_0 Vdout1_0ck137 = 0 time = 690
.meas tran vdout1_0ck137 FIND v(dout1_0) AT=690.025n

* CHECK dout1_1 Vdout1_1ck137 = 1.0 time = 690
.meas tran vdout1_1ck137 FIND v(dout1_1) AT=690.025n

* CHECK dout1_2 Vdout1_2ck137 = 0 time = 690
.meas tran vdout1_2ck137 FIND v(dout1_2) AT=690.025n

* CHECK dout1_3 Vdout1_3ck137 = 0 time = 690
.meas tran vdout1_3ck137 FIND v(dout1_3) AT=690.025n

* CHECK dout1_4 Vdout1_4ck137 = 1.0 time = 690
.meas tran vdout1_4ck137 FIND v(dout1_4) AT=690.025n

* CHECK dout1_5 Vdout1_5ck137 = 1.0 time = 690
.meas tran vdout1_5ck137 FIND v(dout1_5) AT=690.025n

* CHECK dout1_6 Vdout1_6ck137 = 0 time = 690
.meas tran vdout1_6ck137 FIND v(dout1_6) AT=690.025n

* CHECK dout1_7 Vdout1_7ck137 = 0 time = 690
.meas tran vdout1_7ck137 FIND v(dout1_7) AT=690.025n

* CHECK dout1_8 Vdout1_8ck137 = 1.0 time = 690
.meas tran vdout1_8ck137 FIND v(dout1_8) AT=690.025n

* CHECK dout1_9 Vdout1_9ck137 = 1.0 time = 690
.meas tran vdout1_9ck137 FIND v(dout1_9) AT=690.025n

* CHECK dout1_10 Vdout1_10ck137 = 0 time = 690
.meas tran vdout1_10ck137 FIND v(dout1_10) AT=690.025n

* CHECK dout1_0 Vdout1_0ck139 = 1.0 time = 700
.meas tran vdout1_0ck139 FIND v(dout1_0) AT=700.025n

* CHECK dout1_1 Vdout1_1ck139 = 1.0 time = 700
.meas tran vdout1_1ck139 FIND v(dout1_1) AT=700.025n

* CHECK dout1_2 Vdout1_2ck139 = 0 time = 700
.meas tran vdout1_2ck139 FIND v(dout1_2) AT=700.025n

* CHECK dout1_3 Vdout1_3ck139 = 1.0 time = 700
.meas tran vdout1_3ck139 FIND v(dout1_3) AT=700.025n

* CHECK dout1_4 Vdout1_4ck139 = 1.0 time = 700
.meas tran vdout1_4ck139 FIND v(dout1_4) AT=700.025n

* CHECK dout1_5 Vdout1_5ck139 = 0 time = 700
.meas tran vdout1_5ck139 FIND v(dout1_5) AT=700.025n

* CHECK dout1_6 Vdout1_6ck139 = 0 time = 700
.meas tran vdout1_6ck139 FIND v(dout1_6) AT=700.025n

* CHECK dout1_7 Vdout1_7ck139 = 0 time = 700
.meas tran vdout1_7ck139 FIND v(dout1_7) AT=700.025n

* CHECK dout1_8 Vdout1_8ck139 = 1.0 time = 700
.meas tran vdout1_8ck139 FIND v(dout1_8) AT=700.025n

* CHECK dout1_9 Vdout1_9ck139 = 1.0 time = 700
.meas tran vdout1_9ck139 FIND v(dout1_9) AT=700.025n

* CHECK dout1_10 Vdout1_10ck139 = 1.0 time = 700
.meas tran vdout1_10ck139 FIND v(dout1_10) AT=700.025n

* CHECK dout1_0 Vdout1_0ck141 = 1.0 time = 710
.meas tran vdout1_0ck141 FIND v(dout1_0) AT=710.025n

* CHECK dout1_1 Vdout1_1ck141 = 1.0 time = 710
.meas tran vdout1_1ck141 FIND v(dout1_1) AT=710.025n

* CHECK dout1_2 Vdout1_2ck141 = 0 time = 710
.meas tran vdout1_2ck141 FIND v(dout1_2) AT=710.025n

* CHECK dout1_3 Vdout1_3ck141 = 1.0 time = 710
.meas tran vdout1_3ck141 FIND v(dout1_3) AT=710.025n

* CHECK dout1_4 Vdout1_4ck141 = 1.0 time = 710
.meas tran vdout1_4ck141 FIND v(dout1_4) AT=710.025n

* CHECK dout1_5 Vdout1_5ck141 = 0 time = 710
.meas tran vdout1_5ck141 FIND v(dout1_5) AT=710.025n

* CHECK dout1_6 Vdout1_6ck141 = 0 time = 710
.meas tran vdout1_6ck141 FIND v(dout1_6) AT=710.025n

* CHECK dout1_7 Vdout1_7ck141 = 0 time = 710
.meas tran vdout1_7ck141 FIND v(dout1_7) AT=710.025n

* CHECK dout1_8 Vdout1_8ck141 = 1.0 time = 710
.meas tran vdout1_8ck141 FIND v(dout1_8) AT=710.025n

* CHECK dout1_9 Vdout1_9ck141 = 1.0 time = 710
.meas tran vdout1_9ck141 FIND v(dout1_9) AT=710.025n

* CHECK dout1_10 Vdout1_10ck141 = 1.0 time = 710
.meas tran vdout1_10ck141 FIND v(dout1_10) AT=710.025n

* CHECK dout1_0 Vdout1_0ck142 = 1.0 time = 715
.meas tran vdout1_0ck142 FIND v(dout1_0) AT=715.025n

* CHECK dout1_1 Vdout1_1ck142 = 0 time = 715
.meas tran vdout1_1ck142 FIND v(dout1_1) AT=715.025n

* CHECK dout1_2 Vdout1_2ck142 = 0 time = 715
.meas tran vdout1_2ck142 FIND v(dout1_2) AT=715.025n

* CHECK dout1_3 Vdout1_3ck142 = 1.0 time = 715
.meas tran vdout1_3ck142 FIND v(dout1_3) AT=715.025n

* CHECK dout1_4 Vdout1_4ck142 = 1.0 time = 715
.meas tran vdout1_4ck142 FIND v(dout1_4) AT=715.025n

* CHECK dout1_5 Vdout1_5ck142 = 1.0 time = 715
.meas tran vdout1_5ck142 FIND v(dout1_5) AT=715.025n

* CHECK dout1_6 Vdout1_6ck142 = 0 time = 715
.meas tran vdout1_6ck142 FIND v(dout1_6) AT=715.025n

* CHECK dout1_7 Vdout1_7ck142 = 0 time = 715
.meas tran vdout1_7ck142 FIND v(dout1_7) AT=715.025n

* CHECK dout1_8 Vdout1_8ck142 = 0 time = 715
.meas tran vdout1_8ck142 FIND v(dout1_8) AT=715.025n

* CHECK dout1_9 Vdout1_9ck142 = 0 time = 715
.meas tran vdout1_9ck142 FIND v(dout1_9) AT=715.025n

* CHECK dout1_10 Vdout1_10ck142 = 0 time = 715
.meas tran vdout1_10ck142 FIND v(dout1_10) AT=715.025n

* CHECK dout1_0 Vdout1_0ck143 = 1.0 time = 720
.meas tran vdout1_0ck143 FIND v(dout1_0) AT=720.025n

* CHECK dout1_1 Vdout1_1ck143 = 0 time = 720
.meas tran vdout1_1ck143 FIND v(dout1_1) AT=720.025n

* CHECK dout1_2 Vdout1_2ck143 = 0 time = 720
.meas tran vdout1_2ck143 FIND v(dout1_2) AT=720.025n

* CHECK dout1_3 Vdout1_3ck143 = 1.0 time = 720
.meas tran vdout1_3ck143 FIND v(dout1_3) AT=720.025n

* CHECK dout1_4 Vdout1_4ck143 = 1.0 time = 720
.meas tran vdout1_4ck143 FIND v(dout1_4) AT=720.025n

* CHECK dout1_5 Vdout1_5ck143 = 1.0 time = 720
.meas tran vdout1_5ck143 FIND v(dout1_5) AT=720.025n

* CHECK dout1_6 Vdout1_6ck143 = 0 time = 720
.meas tran vdout1_6ck143 FIND v(dout1_6) AT=720.025n

* CHECK dout1_7 Vdout1_7ck143 = 0 time = 720
.meas tran vdout1_7ck143 FIND v(dout1_7) AT=720.025n

* CHECK dout1_8 Vdout1_8ck143 = 0 time = 720
.meas tran vdout1_8ck143 FIND v(dout1_8) AT=720.025n

* CHECK dout1_9 Vdout1_9ck143 = 0 time = 720
.meas tran vdout1_9ck143 FIND v(dout1_9) AT=720.025n

* CHECK dout1_10 Vdout1_10ck143 = 0 time = 720
.meas tran vdout1_10ck143 FIND v(dout1_10) AT=720.025n

* CHECK dout1_0 Vdout1_0ck146 = 1.0 time = 735
.meas tran vdout1_0ck146 FIND v(dout1_0) AT=735.025n

* CHECK dout1_1 Vdout1_1ck146 = 0 time = 735
.meas tran vdout1_1ck146 FIND v(dout1_1) AT=735.025n

* CHECK dout1_2 Vdout1_2ck146 = 1.0 time = 735
.meas tran vdout1_2ck146 FIND v(dout1_2) AT=735.025n

* CHECK dout1_3 Vdout1_3ck146 = 1.0 time = 735
.meas tran vdout1_3ck146 FIND v(dout1_3) AT=735.025n

* CHECK dout1_4 Vdout1_4ck146 = 0 time = 735
.meas tran vdout1_4ck146 FIND v(dout1_4) AT=735.025n

* CHECK dout1_5 Vdout1_5ck146 = 1.0 time = 735
.meas tran vdout1_5ck146 FIND v(dout1_5) AT=735.025n

* CHECK dout1_6 Vdout1_6ck146 = 0 time = 735
.meas tran vdout1_6ck146 FIND v(dout1_6) AT=735.025n

* CHECK dout1_7 Vdout1_7ck146 = 0 time = 735
.meas tran vdout1_7ck146 FIND v(dout1_7) AT=735.025n

* CHECK dout1_8 Vdout1_8ck146 = 1.0 time = 735
.meas tran vdout1_8ck146 FIND v(dout1_8) AT=735.025n

* CHECK dout1_9 Vdout1_9ck146 = 1.0 time = 735
.meas tran vdout1_9ck146 FIND v(dout1_9) AT=735.025n

* CHECK dout1_10 Vdout1_10ck146 = 1.0 time = 735
.meas tran vdout1_10ck146 FIND v(dout1_10) AT=735.025n

* CHECK dout1_0 Vdout1_0ck147 = 0 time = 740
.meas tran vdout1_0ck147 FIND v(dout1_0) AT=740.025n

* CHECK dout1_1 Vdout1_1ck147 = 0 time = 740
.meas tran vdout1_1ck147 FIND v(dout1_1) AT=740.025n

* CHECK dout1_2 Vdout1_2ck147 = 1.0 time = 740
.meas tran vdout1_2ck147 FIND v(dout1_2) AT=740.025n

* CHECK dout1_3 Vdout1_3ck147 = 1.0 time = 740
.meas tran vdout1_3ck147 FIND v(dout1_3) AT=740.025n

* CHECK dout1_4 Vdout1_4ck147 = 0 time = 740
.meas tran vdout1_4ck147 FIND v(dout1_4) AT=740.025n

* CHECK dout1_5 Vdout1_5ck147 = 1.0 time = 740
.meas tran vdout1_5ck147 FIND v(dout1_5) AT=740.025n

* CHECK dout1_6 Vdout1_6ck147 = 0 time = 740
.meas tran vdout1_6ck147 FIND v(dout1_6) AT=740.025n

* CHECK dout1_7 Vdout1_7ck147 = 0 time = 740
.meas tran vdout1_7ck147 FIND v(dout1_7) AT=740.025n

* CHECK dout1_8 Vdout1_8ck147 = 1.0 time = 740
.meas tran vdout1_8ck147 FIND v(dout1_8) AT=740.025n

* CHECK dout1_9 Vdout1_9ck147 = 0 time = 740
.meas tran vdout1_9ck147 FIND v(dout1_9) AT=740.025n

* CHECK dout1_10 Vdout1_10ck147 = 0 time = 740
.meas tran vdout1_10ck147 FIND v(dout1_10) AT=740.025n

* CHECK dout1_0 Vdout1_0ck148 = 0 time = 745
.meas tran vdout1_0ck148 FIND v(dout1_0) AT=745.025n

* CHECK dout1_1 Vdout1_1ck148 = 0 time = 745
.meas tran vdout1_1ck148 FIND v(dout1_1) AT=745.025n

* CHECK dout1_2 Vdout1_2ck148 = 1.0 time = 745
.meas tran vdout1_2ck148 FIND v(dout1_2) AT=745.025n

* CHECK dout1_3 Vdout1_3ck148 = 1.0 time = 745
.meas tran vdout1_3ck148 FIND v(dout1_3) AT=745.025n

* CHECK dout1_4 Vdout1_4ck148 = 0 time = 745
.meas tran vdout1_4ck148 FIND v(dout1_4) AT=745.025n

* CHECK dout1_5 Vdout1_5ck148 = 1.0 time = 745
.meas tran vdout1_5ck148 FIND v(dout1_5) AT=745.025n

* CHECK dout1_6 Vdout1_6ck148 = 0 time = 745
.meas tran vdout1_6ck148 FIND v(dout1_6) AT=745.025n

* CHECK dout1_7 Vdout1_7ck148 = 0 time = 745
.meas tran vdout1_7ck148 FIND v(dout1_7) AT=745.025n

* CHECK dout1_8 Vdout1_8ck148 = 1.0 time = 745
.meas tran vdout1_8ck148 FIND v(dout1_8) AT=745.025n

* CHECK dout1_9 Vdout1_9ck148 = 0 time = 745
.meas tran vdout1_9ck148 FIND v(dout1_9) AT=745.025n

* CHECK dout1_10 Vdout1_10ck148 = 0 time = 745
.meas tran vdout1_10ck148 FIND v(dout1_10) AT=745.025n

* CHECK dout1_0 Vdout1_0ck151 = 1.0 time = 760
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

* CHECK dout1_6 Vdout1_6ck151 = 0 time = 760
.meas tran vdout1_6ck151 FIND v(dout1_6) AT=760.025n

* CHECK dout1_7 Vdout1_7ck151 = 0 time = 760
.meas tran vdout1_7ck151 FIND v(dout1_7) AT=760.025n

* CHECK dout1_8 Vdout1_8ck151 = 1.0 time = 760
.meas tran vdout1_8ck151 FIND v(dout1_8) AT=760.025n

* CHECK dout1_9 Vdout1_9ck151 = 1.0 time = 760
.meas tran vdout1_9ck151 FIND v(dout1_9) AT=760.025n

* CHECK dout1_10 Vdout1_10ck151 = 1.0 time = 760
.meas tran vdout1_10ck151 FIND v(dout1_10) AT=760.025n

* CHECK dout1_0 Vdout1_0ck152 = 0 time = 765
.meas tran vdout1_0ck152 FIND v(dout1_0) AT=765.025n

* CHECK dout1_1 Vdout1_1ck152 = 0 time = 765
.meas tran vdout1_1ck152 FIND v(dout1_1) AT=765.025n

* CHECK dout1_2 Vdout1_2ck152 = 0 time = 765
.meas tran vdout1_2ck152 FIND v(dout1_2) AT=765.025n

* CHECK dout1_3 Vdout1_3ck152 = 0 time = 765
.meas tran vdout1_3ck152 FIND v(dout1_3) AT=765.025n

* CHECK dout1_4 Vdout1_4ck152 = 1.0 time = 765
.meas tran vdout1_4ck152 FIND v(dout1_4) AT=765.025n

* CHECK dout1_5 Vdout1_5ck152 = 1.0 time = 765
.meas tran vdout1_5ck152 FIND v(dout1_5) AT=765.025n

* CHECK dout1_6 Vdout1_6ck152 = 1.0 time = 765
.meas tran vdout1_6ck152 FIND v(dout1_6) AT=765.025n

* CHECK dout1_7 Vdout1_7ck152 = 0 time = 765
.meas tran vdout1_7ck152 FIND v(dout1_7) AT=765.025n

* CHECK dout1_8 Vdout1_8ck152 = 1.0 time = 765
.meas tran vdout1_8ck152 FIND v(dout1_8) AT=765.025n

* CHECK dout1_9 Vdout1_9ck152 = 0 time = 765
.meas tran vdout1_9ck152 FIND v(dout1_9) AT=765.025n

* CHECK dout1_10 Vdout1_10ck152 = 0 time = 765
.meas tran vdout1_10ck152 FIND v(dout1_10) AT=765.025n

* CHECK dout1_0 Vdout1_0ck153 = 1.0 time = 770
.meas tran vdout1_0ck153 FIND v(dout1_0) AT=770.025n

* CHECK dout1_1 Vdout1_1ck153 = 1.0 time = 770
.meas tran vdout1_1ck153 FIND v(dout1_1) AT=770.025n

* CHECK dout1_2 Vdout1_2ck153 = 0 time = 770
.meas tran vdout1_2ck153 FIND v(dout1_2) AT=770.025n

* CHECK dout1_3 Vdout1_3ck153 = 1.0 time = 770
.meas tran vdout1_3ck153 FIND v(dout1_3) AT=770.025n

* CHECK dout1_4 Vdout1_4ck153 = 1.0 time = 770
.meas tran vdout1_4ck153 FIND v(dout1_4) AT=770.025n

* CHECK dout1_5 Vdout1_5ck153 = 0 time = 770
.meas tran vdout1_5ck153 FIND v(dout1_5) AT=770.025n

* CHECK dout1_6 Vdout1_6ck153 = 0 time = 770
.meas tran vdout1_6ck153 FIND v(dout1_6) AT=770.025n

* CHECK dout1_7 Vdout1_7ck153 = 0 time = 770
.meas tran vdout1_7ck153 FIND v(dout1_7) AT=770.025n

* CHECK dout1_8 Vdout1_8ck153 = 1.0 time = 770
.meas tran vdout1_8ck153 FIND v(dout1_8) AT=770.025n

* CHECK dout1_9 Vdout1_9ck153 = 1.0 time = 770
.meas tran vdout1_9ck153 FIND v(dout1_9) AT=770.025n

* CHECK dout1_10 Vdout1_10ck153 = 1.0 time = 770
.meas tran vdout1_10ck153 FIND v(dout1_10) AT=770.025n

* CHECK dout1_0 Vdout1_0ck156 = 1.0 time = 785
.meas tran vdout1_0ck156 FIND v(dout1_0) AT=785.025n

* CHECK dout1_1 Vdout1_1ck156 = 0 time = 785
.meas tran vdout1_1ck156 FIND v(dout1_1) AT=785.025n

* CHECK dout1_2 Vdout1_2ck156 = 0 time = 785
.meas tran vdout1_2ck156 FIND v(dout1_2) AT=785.025n

* CHECK dout1_3 Vdout1_3ck156 = 1.0 time = 785
.meas tran vdout1_3ck156 FIND v(dout1_3) AT=785.025n

* CHECK dout1_4 Vdout1_4ck156 = 1.0 time = 785
.meas tran vdout1_4ck156 FIND v(dout1_4) AT=785.025n

* CHECK dout1_5 Vdout1_5ck156 = 1.0 time = 785
.meas tran vdout1_5ck156 FIND v(dout1_5) AT=785.025n

* CHECK dout1_6 Vdout1_6ck156 = 0 time = 785
.meas tran vdout1_6ck156 FIND v(dout1_6) AT=785.025n

* CHECK dout1_7 Vdout1_7ck156 = 0 time = 785
.meas tran vdout1_7ck156 FIND v(dout1_7) AT=785.025n

* CHECK dout1_8 Vdout1_8ck156 = 0 time = 785
.meas tran vdout1_8ck156 FIND v(dout1_8) AT=785.025n

* CHECK dout1_9 Vdout1_9ck156 = 0 time = 785
.meas tran vdout1_9ck156 FIND v(dout1_9) AT=785.025n

* CHECK dout1_10 Vdout1_10ck156 = 0 time = 785
.meas tran vdout1_10ck156 FIND v(dout1_10) AT=785.025n

* CHECK dout1_0 Vdout1_0ck157 = 1.0 time = 790
.meas tran vdout1_0ck157 FIND v(dout1_0) AT=790.025n

* CHECK dout1_1 Vdout1_1ck157 = 0 time = 790
.meas tran vdout1_1ck157 FIND v(dout1_1) AT=790.025n

* CHECK dout1_2 Vdout1_2ck157 = 0 time = 790
.meas tran vdout1_2ck157 FIND v(dout1_2) AT=790.025n

* CHECK dout1_3 Vdout1_3ck157 = 1.0 time = 790
.meas tran vdout1_3ck157 FIND v(dout1_3) AT=790.025n

* CHECK dout1_4 Vdout1_4ck157 = 1.0 time = 790
.meas tran vdout1_4ck157 FIND v(dout1_4) AT=790.025n

* CHECK dout1_5 Vdout1_5ck157 = 1.0 time = 790
.meas tran vdout1_5ck157 FIND v(dout1_5) AT=790.025n

* CHECK dout1_6 Vdout1_6ck157 = 0 time = 790
.meas tran vdout1_6ck157 FIND v(dout1_6) AT=790.025n

* CHECK dout1_7 Vdout1_7ck157 = 0 time = 790
.meas tran vdout1_7ck157 FIND v(dout1_7) AT=790.025n

* CHECK dout1_8 Vdout1_8ck157 = 0 time = 790
.meas tran vdout1_8ck157 FIND v(dout1_8) AT=790.025n

* CHECK dout1_9 Vdout1_9ck157 = 0 time = 790
.meas tran vdout1_9ck157 FIND v(dout1_9) AT=790.025n

* CHECK dout1_10 Vdout1_10ck157 = 0 time = 790
.meas tran vdout1_10ck157 FIND v(dout1_10) AT=790.025n

* CHECK dout1_0 Vdout1_0ck158 = 1.0 time = 795
.meas tran vdout1_0ck158 FIND v(dout1_0) AT=795.025n

* CHECK dout1_1 Vdout1_1ck158 = 1.0 time = 795
.meas tran vdout1_1ck158 FIND v(dout1_1) AT=795.025n

* CHECK dout1_2 Vdout1_2ck158 = 0 time = 795
.meas tran vdout1_2ck158 FIND v(dout1_2) AT=795.025n

* CHECK dout1_3 Vdout1_3ck158 = 1.0 time = 795
.meas tran vdout1_3ck158 FIND v(dout1_3) AT=795.025n

* CHECK dout1_4 Vdout1_4ck158 = 1.0 time = 795
.meas tran vdout1_4ck158 FIND v(dout1_4) AT=795.025n

* CHECK dout1_5 Vdout1_5ck158 = 0 time = 795
.meas tran vdout1_5ck158 FIND v(dout1_5) AT=795.025n

* CHECK dout1_6 Vdout1_6ck158 = 0 time = 795
.meas tran vdout1_6ck158 FIND v(dout1_6) AT=795.025n

* CHECK dout1_7 Vdout1_7ck158 = 0 time = 795
.meas tran vdout1_7ck158 FIND v(dout1_7) AT=795.025n

* CHECK dout1_8 Vdout1_8ck158 = 1.0 time = 795
.meas tran vdout1_8ck158 FIND v(dout1_8) AT=795.025n

* CHECK dout1_9 Vdout1_9ck158 = 1.0 time = 795
.meas tran vdout1_9ck158 FIND v(dout1_9) AT=795.025n

* CHECK dout1_10 Vdout1_10ck158 = 1.0 time = 795
.meas tran vdout1_10ck158 FIND v(dout1_10) AT=795.025n

* CHECK dout1_0 Vdout1_0ck165 = 0 time = 830
.meas tran vdout1_0ck165 FIND v(dout1_0) AT=830.025n

* CHECK dout1_1 Vdout1_1ck165 = 0 time = 830
.meas tran vdout1_1ck165 FIND v(dout1_1) AT=830.025n

* CHECK dout1_2 Vdout1_2ck165 = 0 time = 830
.meas tran vdout1_2ck165 FIND v(dout1_2) AT=830.025n

* CHECK dout1_3 Vdout1_3ck165 = 0 time = 830
.meas tran vdout1_3ck165 FIND v(dout1_3) AT=830.025n

* CHECK dout1_4 Vdout1_4ck165 = 1.0 time = 830
.meas tran vdout1_4ck165 FIND v(dout1_4) AT=830.025n

* CHECK dout1_5 Vdout1_5ck165 = 1.0 time = 830
.meas tran vdout1_5ck165 FIND v(dout1_5) AT=830.025n

* CHECK dout1_6 Vdout1_6ck165 = 1.0 time = 830
.meas tran vdout1_6ck165 FIND v(dout1_6) AT=830.025n

* CHECK dout1_7 Vdout1_7ck165 = 0 time = 830
.meas tran vdout1_7ck165 FIND v(dout1_7) AT=830.025n

* CHECK dout1_8 Vdout1_8ck165 = 1.0 time = 830
.meas tran vdout1_8ck165 FIND v(dout1_8) AT=830.025n

* CHECK dout1_9 Vdout1_9ck165 = 0 time = 830
.meas tran vdout1_9ck165 FIND v(dout1_9) AT=830.025n

* CHECK dout1_10 Vdout1_10ck165 = 0 time = 830
.meas tran vdout1_10ck165 FIND v(dout1_10) AT=830.025n

* CHECK dout1_0 Vdout1_0ck166 = 0 time = 835
.meas tran vdout1_0ck166 FIND v(dout1_0) AT=835.025n

* CHECK dout1_1 Vdout1_1ck166 = 1.0 time = 835
.meas tran vdout1_1ck166 FIND v(dout1_1) AT=835.025n

* CHECK dout1_2 Vdout1_2ck166 = 1.0 time = 835
.meas tran vdout1_2ck166 FIND v(dout1_2) AT=835.025n

* CHECK dout1_3 Vdout1_3ck166 = 1.0 time = 835
.meas tran vdout1_3ck166 FIND v(dout1_3) AT=835.025n

* CHECK dout1_4 Vdout1_4ck166 = 1.0 time = 835
.meas tran vdout1_4ck166 FIND v(dout1_4) AT=835.025n

* CHECK dout1_5 Vdout1_5ck166 = 0 time = 835
.meas tran vdout1_5ck166 FIND v(dout1_5) AT=835.025n

* CHECK dout1_6 Vdout1_6ck166 = 0 time = 835
.meas tran vdout1_6ck166 FIND v(dout1_6) AT=835.025n

* CHECK dout1_7 Vdout1_7ck166 = 1.0 time = 835
.meas tran vdout1_7ck166 FIND v(dout1_7) AT=835.025n

* CHECK dout1_8 Vdout1_8ck166 = 0 time = 835
.meas tran vdout1_8ck166 FIND v(dout1_8) AT=835.025n

* CHECK dout1_9 Vdout1_9ck166 = 1.0 time = 835
.meas tran vdout1_9ck166 FIND v(dout1_9) AT=835.025n

* CHECK dout1_10 Vdout1_10ck166 = 1.0 time = 835
.meas tran vdout1_10ck166 FIND v(dout1_10) AT=835.025n

* CHECK dout1_0 Vdout1_0ck168 = 1.0 time = 845
.meas tran vdout1_0ck168 FIND v(dout1_0) AT=845.025n

* CHECK dout1_1 Vdout1_1ck168 = 0 time = 845
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

* CHECK dout1_10 Vdout1_10ck168 = 0 time = 845
.meas tran vdout1_10ck168 FIND v(dout1_10) AT=845.025n

* CHECK dout1_0 Vdout1_0ck169 = 1.0 time = 850
.meas tran vdout1_0ck169 FIND v(dout1_0) AT=850.025n

* CHECK dout1_1 Vdout1_1ck169 = 0 time = 850
.meas tran vdout1_1ck169 FIND v(dout1_1) AT=850.025n

* CHECK dout1_2 Vdout1_2ck169 = 1.0 time = 850
.meas tran vdout1_2ck169 FIND v(dout1_2) AT=850.025n

* CHECK dout1_3 Vdout1_3ck169 = 0 time = 850
.meas tran vdout1_3ck169 FIND v(dout1_3) AT=850.025n

* CHECK dout1_4 Vdout1_4ck169 = 0 time = 850
.meas tran vdout1_4ck169 FIND v(dout1_4) AT=850.025n

* CHECK dout1_5 Vdout1_5ck169 = 0 time = 850
.meas tran vdout1_5ck169 FIND v(dout1_5) AT=850.025n

* CHECK dout1_6 Vdout1_6ck169 = 0 time = 850
.meas tran vdout1_6ck169 FIND v(dout1_6) AT=850.025n

* CHECK dout1_7 Vdout1_7ck169 = 0 time = 850
.meas tran vdout1_7ck169 FIND v(dout1_7) AT=850.025n

* CHECK dout1_8 Vdout1_8ck169 = 0 time = 850
.meas tran vdout1_8ck169 FIND v(dout1_8) AT=850.025n

* CHECK dout1_9 Vdout1_9ck169 = 0 time = 850
.meas tran vdout1_9ck169 FIND v(dout1_9) AT=850.025n

* CHECK dout1_10 Vdout1_10ck169 = 1.0 time = 850
.meas tran vdout1_10ck169 FIND v(dout1_10) AT=850.025n

* CHECK dout1_0 Vdout1_0ck170 = 0 time = 855
.meas tran vdout1_0ck170 FIND v(dout1_0) AT=855.025n

* CHECK dout1_1 Vdout1_1ck170 = 0 time = 855
.meas tran vdout1_1ck170 FIND v(dout1_1) AT=855.025n

* CHECK dout1_2 Vdout1_2ck170 = 1.0 time = 855
.meas tran vdout1_2ck170 FIND v(dout1_2) AT=855.025n

* CHECK dout1_3 Vdout1_3ck170 = 1.0 time = 855
.meas tran vdout1_3ck170 FIND v(dout1_3) AT=855.025n

* CHECK dout1_4 Vdout1_4ck170 = 0 time = 855
.meas tran vdout1_4ck170 FIND v(dout1_4) AT=855.025n

* CHECK dout1_5 Vdout1_5ck170 = 1.0 time = 855
.meas tran vdout1_5ck170 FIND v(dout1_5) AT=855.025n

* CHECK dout1_6 Vdout1_6ck170 = 1.0 time = 855
.meas tran vdout1_6ck170 FIND v(dout1_6) AT=855.025n

* CHECK dout1_7 Vdout1_7ck170 = 0 time = 855
.meas tran vdout1_7ck170 FIND v(dout1_7) AT=855.025n

* CHECK dout1_8 Vdout1_8ck170 = 1.0 time = 855
.meas tran vdout1_8ck170 FIND v(dout1_8) AT=855.025n

* CHECK dout1_9 Vdout1_9ck170 = 1.0 time = 855
.meas tran vdout1_9ck170 FIND v(dout1_9) AT=855.025n

* CHECK dout1_10 Vdout1_10ck170 = 0 time = 855
.meas tran vdout1_10ck170 FIND v(dout1_10) AT=855.025n

* CHECK dout1_0 Vdout1_0ck171 = 0 time = 860
.meas tran vdout1_0ck171 FIND v(dout1_0) AT=860.025n

* CHECK dout1_1 Vdout1_1ck171 = 0 time = 860
.meas tran vdout1_1ck171 FIND v(dout1_1) AT=860.025n

* CHECK dout1_2 Vdout1_2ck171 = 1.0 time = 860
.meas tran vdout1_2ck171 FIND v(dout1_2) AT=860.025n

* CHECK dout1_3 Vdout1_3ck171 = 1.0 time = 860
.meas tran vdout1_3ck171 FIND v(dout1_3) AT=860.025n

* CHECK dout1_4 Vdout1_4ck171 = 0 time = 860
.meas tran vdout1_4ck171 FIND v(dout1_4) AT=860.025n

* CHECK dout1_5 Vdout1_5ck171 = 1.0 time = 860
.meas tran vdout1_5ck171 FIND v(dout1_5) AT=860.025n

* CHECK dout1_6 Vdout1_6ck171 = 1.0 time = 860
.meas tran vdout1_6ck171 FIND v(dout1_6) AT=860.025n

* CHECK dout1_7 Vdout1_7ck171 = 0 time = 860
.meas tran vdout1_7ck171 FIND v(dout1_7) AT=860.025n

* CHECK dout1_8 Vdout1_8ck171 = 1.0 time = 860
.meas tran vdout1_8ck171 FIND v(dout1_8) AT=860.025n

* CHECK dout1_9 Vdout1_9ck171 = 1.0 time = 860
.meas tran vdout1_9ck171 FIND v(dout1_9) AT=860.025n

* CHECK dout1_10 Vdout1_10ck171 = 0 time = 860
.meas tran vdout1_10ck171 FIND v(dout1_10) AT=860.025n

* CHECK dout1_0 Vdout1_0ck172 = 1.0 time = 865
.meas tran vdout1_0ck172 FIND v(dout1_0) AT=865.025n

* CHECK dout1_1 Vdout1_1ck172 = 0 time = 865
.meas tran vdout1_1ck172 FIND v(dout1_1) AT=865.025n

* CHECK dout1_2 Vdout1_2ck172 = 0 time = 865
.meas tran vdout1_2ck172 FIND v(dout1_2) AT=865.025n

* CHECK dout1_3 Vdout1_3ck172 = 1.0 time = 865
.meas tran vdout1_3ck172 FIND v(dout1_3) AT=865.025n

* CHECK dout1_4 Vdout1_4ck172 = 1.0 time = 865
.meas tran vdout1_4ck172 FIND v(dout1_4) AT=865.025n

* CHECK dout1_5 Vdout1_5ck172 = 1.0 time = 865
.meas tran vdout1_5ck172 FIND v(dout1_5) AT=865.025n

* CHECK dout1_6 Vdout1_6ck172 = 0 time = 865
.meas tran vdout1_6ck172 FIND v(dout1_6) AT=865.025n

* CHECK dout1_7 Vdout1_7ck172 = 0 time = 865
.meas tran vdout1_7ck172 FIND v(dout1_7) AT=865.025n

* CHECK dout1_8 Vdout1_8ck172 = 0 time = 865
.meas tran vdout1_8ck172 FIND v(dout1_8) AT=865.025n

* CHECK dout1_9 Vdout1_9ck172 = 0 time = 865
.meas tran vdout1_9ck172 FIND v(dout1_9) AT=865.025n

* CHECK dout1_10 Vdout1_10ck172 = 0 time = 865
.meas tran vdout1_10ck172 FIND v(dout1_10) AT=865.025n

* CHECK dout1_0 Vdout1_0ck173 = 0 time = 870
.meas tran vdout1_0ck173 FIND v(dout1_0) AT=870.025n

* CHECK dout1_1 Vdout1_1ck173 = 1.0 time = 870
.meas tran vdout1_1ck173 FIND v(dout1_1) AT=870.025n

* CHECK dout1_2 Vdout1_2ck173 = 1.0 time = 870
.meas tran vdout1_2ck173 FIND v(dout1_2) AT=870.025n

* CHECK dout1_3 Vdout1_3ck173 = 0 time = 870
.meas tran vdout1_3ck173 FIND v(dout1_3) AT=870.025n

* CHECK dout1_4 Vdout1_4ck173 = 0 time = 870
.meas tran vdout1_4ck173 FIND v(dout1_4) AT=870.025n

* CHECK dout1_5 Vdout1_5ck173 = 0 time = 870
.meas tran vdout1_5ck173 FIND v(dout1_5) AT=870.025n

* CHECK dout1_6 Vdout1_6ck173 = 0 time = 870
.meas tran vdout1_6ck173 FIND v(dout1_6) AT=870.025n

* CHECK dout1_7 Vdout1_7ck173 = 0 time = 870
.meas tran vdout1_7ck173 FIND v(dout1_7) AT=870.025n

* CHECK dout1_8 Vdout1_8ck173 = 1.0 time = 870
.meas tran vdout1_8ck173 FIND v(dout1_8) AT=870.025n

* CHECK dout1_9 Vdout1_9ck173 = 1.0 time = 870
.meas tran vdout1_9ck173 FIND v(dout1_9) AT=870.025n

* CHECK dout1_10 Vdout1_10ck173 = 0 time = 870
.meas tran vdout1_10ck173 FIND v(dout1_10) AT=870.025n

* CHECK dout1_0 Vdout1_0ck175 = 1.0 time = 880
.meas tran vdout1_0ck175 FIND v(dout1_0) AT=880.025n

* CHECK dout1_1 Vdout1_1ck175 = 0 time = 880
.meas tran vdout1_1ck175 FIND v(dout1_1) AT=880.025n

* CHECK dout1_2 Vdout1_2ck175 = 0 time = 880
.meas tran vdout1_2ck175 FIND v(dout1_2) AT=880.025n

* CHECK dout1_3 Vdout1_3ck175 = 1.0 time = 880
.meas tran vdout1_3ck175 FIND v(dout1_3) AT=880.025n

* CHECK dout1_4 Vdout1_4ck175 = 0 time = 880
.meas tran vdout1_4ck175 FIND v(dout1_4) AT=880.025n

* CHECK dout1_5 Vdout1_5ck175 = 0 time = 880
.meas tran vdout1_5ck175 FIND v(dout1_5) AT=880.025n

* CHECK dout1_6 Vdout1_6ck175 = 1.0 time = 880
.meas tran vdout1_6ck175 FIND v(dout1_6) AT=880.025n

* CHECK dout1_7 Vdout1_7ck175 = 0 time = 880
.meas tran vdout1_7ck175 FIND v(dout1_7) AT=880.025n

* CHECK dout1_8 Vdout1_8ck175 = 0 time = 880
.meas tran vdout1_8ck175 FIND v(dout1_8) AT=880.025n

* CHECK dout1_9 Vdout1_9ck175 = 0 time = 880
.meas tran vdout1_9ck175 FIND v(dout1_9) AT=880.025n

* CHECK dout1_10 Vdout1_10ck175 = 0 time = 880
.meas tran vdout1_10ck175 FIND v(dout1_10) AT=880.025n

* CHECK dout1_0 Vdout1_0ck176 = 0 time = 885
.meas tran vdout1_0ck176 FIND v(dout1_0) AT=885.025n

* CHECK dout1_1 Vdout1_1ck176 = 0 time = 885
.meas tran vdout1_1ck176 FIND v(dout1_1) AT=885.025n

* CHECK dout1_2 Vdout1_2ck176 = 0 time = 885
.meas tran vdout1_2ck176 FIND v(dout1_2) AT=885.025n

* CHECK dout1_3 Vdout1_3ck176 = 0 time = 885
.meas tran vdout1_3ck176 FIND v(dout1_3) AT=885.025n

* CHECK dout1_4 Vdout1_4ck176 = 1.0 time = 885
.meas tran vdout1_4ck176 FIND v(dout1_4) AT=885.025n

* CHECK dout1_5 Vdout1_5ck176 = 1.0 time = 885
.meas tran vdout1_5ck176 FIND v(dout1_5) AT=885.025n

* CHECK dout1_6 Vdout1_6ck176 = 1.0 time = 885
.meas tran vdout1_6ck176 FIND v(dout1_6) AT=885.025n

* CHECK dout1_7 Vdout1_7ck176 = 0 time = 885
.meas tran vdout1_7ck176 FIND v(dout1_7) AT=885.025n

* CHECK dout1_8 Vdout1_8ck176 = 1.0 time = 885
.meas tran vdout1_8ck176 FIND v(dout1_8) AT=885.025n

* CHECK dout1_9 Vdout1_9ck176 = 0 time = 885
.meas tran vdout1_9ck176 FIND v(dout1_9) AT=885.025n

* CHECK dout1_10 Vdout1_10ck176 = 0 time = 885
.meas tran vdout1_10ck176 FIND v(dout1_10) AT=885.025n

* CHECK dout1_0 Vdout1_0ck177 = 0 time = 890
.meas tran vdout1_0ck177 FIND v(dout1_0) AT=890.025n

* CHECK dout1_1 Vdout1_1ck177 = 0 time = 890
.meas tran vdout1_1ck177 FIND v(dout1_1) AT=890.025n

* CHECK dout1_2 Vdout1_2ck177 = 0 time = 890
.meas tran vdout1_2ck177 FIND v(dout1_2) AT=890.025n

* CHECK dout1_3 Vdout1_3ck177 = 0 time = 890
.meas tran vdout1_3ck177 FIND v(dout1_3) AT=890.025n

* CHECK dout1_4 Vdout1_4ck177 = 1.0 time = 890
.meas tran vdout1_4ck177 FIND v(dout1_4) AT=890.025n

* CHECK dout1_5 Vdout1_5ck177 = 1.0 time = 890
.meas tran vdout1_5ck177 FIND v(dout1_5) AT=890.025n

* CHECK dout1_6 Vdout1_6ck177 = 1.0 time = 890
.meas tran vdout1_6ck177 FIND v(dout1_6) AT=890.025n

* CHECK dout1_7 Vdout1_7ck177 = 0 time = 890
.meas tran vdout1_7ck177 FIND v(dout1_7) AT=890.025n

* CHECK dout1_8 Vdout1_8ck177 = 1.0 time = 890
.meas tran vdout1_8ck177 FIND v(dout1_8) AT=890.025n

* CHECK dout1_9 Vdout1_9ck177 = 0 time = 890
.meas tran vdout1_9ck177 FIND v(dout1_9) AT=890.025n

* CHECK dout1_10 Vdout1_10ck177 = 0 time = 890
.meas tran vdout1_10ck177 FIND v(dout1_10) AT=890.025n

* CHECK dout1_0 Vdout1_0ck178 = 0 time = 895
.meas tran vdout1_0ck178 FIND v(dout1_0) AT=895.025n

* CHECK dout1_1 Vdout1_1ck178 = 0 time = 895
.meas tran vdout1_1ck178 FIND v(dout1_1) AT=895.025n

* CHECK dout1_2 Vdout1_2ck178 = 0 time = 895
.meas tran vdout1_2ck178 FIND v(dout1_2) AT=895.025n

* CHECK dout1_3 Vdout1_3ck178 = 0 time = 895
.meas tran vdout1_3ck178 FIND v(dout1_3) AT=895.025n

* CHECK dout1_4 Vdout1_4ck178 = 1.0 time = 895
.meas tran vdout1_4ck178 FIND v(dout1_4) AT=895.025n

* CHECK dout1_5 Vdout1_5ck178 = 1.0 time = 895
.meas tran vdout1_5ck178 FIND v(dout1_5) AT=895.025n

* CHECK dout1_6 Vdout1_6ck178 = 1.0 time = 895
.meas tran vdout1_6ck178 FIND v(dout1_6) AT=895.025n

* CHECK dout1_7 Vdout1_7ck178 = 0 time = 895
.meas tran vdout1_7ck178 FIND v(dout1_7) AT=895.025n

* CHECK dout1_8 Vdout1_8ck178 = 0 time = 895
.meas tran vdout1_8ck178 FIND v(dout1_8) AT=895.025n

* CHECK dout1_9 Vdout1_9ck178 = 0 time = 895
.meas tran vdout1_9ck178 FIND v(dout1_9) AT=895.025n

* CHECK dout1_10 Vdout1_10ck178 = 0 time = 895
.meas tran vdout1_10ck178 FIND v(dout1_10) AT=895.025n

* CHECK dout1_0 Vdout1_0ck182 = 1.0 time = 915
.meas tran vdout1_0ck182 FIND v(dout1_0) AT=915.025n

* CHECK dout1_1 Vdout1_1ck182 = 0 time = 915
.meas tran vdout1_1ck182 FIND v(dout1_1) AT=915.025n

* CHECK dout1_2 Vdout1_2ck182 = 1.0 time = 915
.meas tran vdout1_2ck182 FIND v(dout1_2) AT=915.025n

* CHECK dout1_3 Vdout1_3ck182 = 0 time = 915
.meas tran vdout1_3ck182 FIND v(dout1_3) AT=915.025n

* CHECK dout1_4 Vdout1_4ck182 = 1.0 time = 915
.meas tran vdout1_4ck182 FIND v(dout1_4) AT=915.025n

* CHECK dout1_5 Vdout1_5ck182 = 1.0 time = 915
.meas tran vdout1_5ck182 FIND v(dout1_5) AT=915.025n

* CHECK dout1_6 Vdout1_6ck182 = 1.0 time = 915
.meas tran vdout1_6ck182 FIND v(dout1_6) AT=915.025n

* CHECK dout1_7 Vdout1_7ck182 = 0 time = 915
.meas tran vdout1_7ck182 FIND v(dout1_7) AT=915.025n

* CHECK dout1_8 Vdout1_8ck182 = 1.0 time = 915
.meas tran vdout1_8ck182 FIND v(dout1_8) AT=915.025n

* CHECK dout1_9 Vdout1_9ck182 = 0 time = 915
.meas tran vdout1_9ck182 FIND v(dout1_9) AT=915.025n

* CHECK dout1_10 Vdout1_10ck182 = 1.0 time = 915
.meas tran vdout1_10ck182 FIND v(dout1_10) AT=915.025n

* CHECK dout1_0 Vdout1_0ck185 = 0 time = 930
.meas tran vdout1_0ck185 FIND v(dout1_0) AT=930.025n

* CHECK dout1_1 Vdout1_1ck185 = 0 time = 930
.meas tran vdout1_1ck185 FIND v(dout1_1) AT=930.025n

* CHECK dout1_2 Vdout1_2ck185 = 0 time = 930
.meas tran vdout1_2ck185 FIND v(dout1_2) AT=930.025n

* CHECK dout1_3 Vdout1_3ck185 = 0 time = 930
.meas tran vdout1_3ck185 FIND v(dout1_3) AT=930.025n

* CHECK dout1_4 Vdout1_4ck185 = 1.0 time = 930
.meas tran vdout1_4ck185 FIND v(dout1_4) AT=930.025n

* CHECK dout1_5 Vdout1_5ck185 = 1.0 time = 930
.meas tran vdout1_5ck185 FIND v(dout1_5) AT=930.025n

* CHECK dout1_6 Vdout1_6ck185 = 1.0 time = 930
.meas tran vdout1_6ck185 FIND v(dout1_6) AT=930.025n

* CHECK dout1_7 Vdout1_7ck185 = 0 time = 930
.meas tran vdout1_7ck185 FIND v(dout1_7) AT=930.025n

* CHECK dout1_8 Vdout1_8ck185 = 0 time = 930
.meas tran vdout1_8ck185 FIND v(dout1_8) AT=930.025n

* CHECK dout1_9 Vdout1_9ck185 = 0 time = 930
.meas tran vdout1_9ck185 FIND v(dout1_9) AT=930.025n

* CHECK dout1_10 Vdout1_10ck185 = 0 time = 930
.meas tran vdout1_10ck185 FIND v(dout1_10) AT=930.025n

* CHECK dout1_0 Vdout1_0ck190 = 0 time = 955
.meas tran vdout1_0ck190 FIND v(dout1_0) AT=955.025n

* CHECK dout1_1 Vdout1_1ck190 = 0 time = 955
.meas tran vdout1_1ck190 FIND v(dout1_1) AT=955.025n

* CHECK dout1_2 Vdout1_2ck190 = 0 time = 955
.meas tran vdout1_2ck190 FIND v(dout1_2) AT=955.025n

* CHECK dout1_3 Vdout1_3ck190 = 0 time = 955
.meas tran vdout1_3ck190 FIND v(dout1_3) AT=955.025n

* CHECK dout1_4 Vdout1_4ck190 = 1.0 time = 955
.meas tran vdout1_4ck190 FIND v(dout1_4) AT=955.025n

* CHECK dout1_5 Vdout1_5ck190 = 1.0 time = 955
.meas tran vdout1_5ck190 FIND v(dout1_5) AT=955.025n

* CHECK dout1_6 Vdout1_6ck190 = 1.0 time = 955
.meas tran vdout1_6ck190 FIND v(dout1_6) AT=955.025n

* CHECK dout1_7 Vdout1_7ck190 = 0 time = 955
.meas tran vdout1_7ck190 FIND v(dout1_7) AT=955.025n

* CHECK dout1_8 Vdout1_8ck190 = 0 time = 955
.meas tran vdout1_8ck190 FIND v(dout1_8) AT=955.025n

* CHECK dout1_9 Vdout1_9ck190 = 0 time = 955
.meas tran vdout1_9ck190 FIND v(dout1_9) AT=955.025n

* CHECK dout1_10 Vdout1_10ck190 = 0 time = 955
.meas tran vdout1_10ck190 FIND v(dout1_10) AT=955.025n

* CHECK dout1_0 Vdout1_0ck192 = 0 time = 965
.meas tran vdout1_0ck192 FIND v(dout1_0) AT=965.025n

* CHECK dout1_1 Vdout1_1ck192 = 0 time = 965
.meas tran vdout1_1ck192 FIND v(dout1_1) AT=965.025n

* CHECK dout1_2 Vdout1_2ck192 = 0 time = 965
.meas tran vdout1_2ck192 FIND v(dout1_2) AT=965.025n

* CHECK dout1_3 Vdout1_3ck192 = 0 time = 965
.meas tran vdout1_3ck192 FIND v(dout1_3) AT=965.025n

* CHECK dout1_4 Vdout1_4ck192 = 1.0 time = 965
.meas tran vdout1_4ck192 FIND v(dout1_4) AT=965.025n

* CHECK dout1_5 Vdout1_5ck192 = 1.0 time = 965
.meas tran vdout1_5ck192 FIND v(dout1_5) AT=965.025n

* CHECK dout1_6 Vdout1_6ck192 = 1.0 time = 965
.meas tran vdout1_6ck192 FIND v(dout1_6) AT=965.025n

* CHECK dout1_7 Vdout1_7ck192 = 0 time = 965
.meas tran vdout1_7ck192 FIND v(dout1_7) AT=965.025n

* CHECK dout1_8 Vdout1_8ck192 = 0 time = 965
.meas tran vdout1_8ck192 FIND v(dout1_8) AT=965.025n

* CHECK dout1_9 Vdout1_9ck192 = 0 time = 965
.meas tran vdout1_9ck192 FIND v(dout1_9) AT=965.025n

* CHECK dout1_10 Vdout1_10ck192 = 0 time = 965
.meas tran vdout1_10ck192 FIND v(dout1_10) AT=965.025n

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

* CHECK dout1_5 Vdout1_5ck194 = 0 time = 975
.meas tran vdout1_5ck194 FIND v(dout1_5) AT=975.025n

* CHECK dout1_6 Vdout1_6ck194 = 1.0 time = 975
.meas tran vdout1_6ck194 FIND v(dout1_6) AT=975.025n

* CHECK dout1_7 Vdout1_7ck194 = 1.0 time = 975
.meas tran vdout1_7ck194 FIND v(dout1_7) AT=975.025n

* CHECK dout1_8 Vdout1_8ck194 = 0 time = 975
.meas tran vdout1_8ck194 FIND v(dout1_8) AT=975.025n

* CHECK dout1_9 Vdout1_9ck194 = 0 time = 975
.meas tran vdout1_9ck194 FIND v(dout1_9) AT=975.025n

* CHECK dout1_10 Vdout1_10ck194 = 1.0 time = 975
.meas tran vdout1_10ck194 FIND v(dout1_10) AT=975.025n

* CHECK dout1_0 Vdout1_0ck200 = 0 time = 1005
.meas tran vdout1_0ck200 FIND v(dout1_0) AT=1005.025n

* CHECK dout1_1 Vdout1_1ck200 = 0 time = 1005
.meas tran vdout1_1ck200 FIND v(dout1_1) AT=1005.025n

* CHECK dout1_2 Vdout1_2ck200 = 0 time = 1005
.meas tran vdout1_2ck200 FIND v(dout1_2) AT=1005.025n

* CHECK dout1_3 Vdout1_3ck200 = 0 time = 1005
.meas tran vdout1_3ck200 FIND v(dout1_3) AT=1005.025n

* CHECK dout1_4 Vdout1_4ck200 = 1.0 time = 1005
.meas tran vdout1_4ck200 FIND v(dout1_4) AT=1005.025n

* CHECK dout1_5 Vdout1_5ck200 = 1.0 time = 1005
.meas tran vdout1_5ck200 FIND v(dout1_5) AT=1005.025n

* CHECK dout1_6 Vdout1_6ck200 = 1.0 time = 1005
.meas tran vdout1_6ck200 FIND v(dout1_6) AT=1005.025n

* CHECK dout1_7 Vdout1_7ck200 = 0 time = 1005
.meas tran vdout1_7ck200 FIND v(dout1_7) AT=1005.025n

* CHECK dout1_8 Vdout1_8ck200 = 0 time = 1005
.meas tran vdout1_8ck200 FIND v(dout1_8) AT=1005.025n

* CHECK dout1_9 Vdout1_9ck200 = 0 time = 1005
.meas tran vdout1_9ck200 FIND v(dout1_9) AT=1005.025n

* CHECK dout1_10 Vdout1_10ck200 = 0 time = 1005
.meas tran vdout1_10ck200 FIND v(dout1_10) AT=1005.025n

* CHECK dout1_0 Vdout1_0ck202 = 0 time = 1015
.meas tran vdout1_0ck202 FIND v(dout1_0) AT=1015.025n

* CHECK dout1_1 Vdout1_1ck202 = 0 time = 1015
.meas tran vdout1_1ck202 FIND v(dout1_1) AT=1015.025n

* CHECK dout1_2 Vdout1_2ck202 = 0 time = 1015
.meas tran vdout1_2ck202 FIND v(dout1_2) AT=1015.025n

* CHECK dout1_3 Vdout1_3ck202 = 0 time = 1015
.meas tran vdout1_3ck202 FIND v(dout1_3) AT=1015.025n

* CHECK dout1_4 Vdout1_4ck202 = 1.0 time = 1015
.meas tran vdout1_4ck202 FIND v(dout1_4) AT=1015.025n

* CHECK dout1_5 Vdout1_5ck202 = 1.0 time = 1015
.meas tran vdout1_5ck202 FIND v(dout1_5) AT=1015.025n

* CHECK dout1_6 Vdout1_6ck202 = 1.0 time = 1015
.meas tran vdout1_6ck202 FIND v(dout1_6) AT=1015.025n

* CHECK dout1_7 Vdout1_7ck202 = 0 time = 1015
.meas tran vdout1_7ck202 FIND v(dout1_7) AT=1015.025n

* CHECK dout1_8 Vdout1_8ck202 = 0 time = 1015
.meas tran vdout1_8ck202 FIND v(dout1_8) AT=1015.025n

* CHECK dout1_9 Vdout1_9ck202 = 0 time = 1015
.meas tran vdout1_9ck202 FIND v(dout1_9) AT=1015.025n

* CHECK dout1_10 Vdout1_10ck202 = 0 time = 1015
.meas tran vdout1_10ck202 FIND v(dout1_10) AT=1015.025n

* CHECK dout1_0 Vdout1_0ck203 = 0 time = 1020
.meas tran vdout1_0ck203 FIND v(dout1_0) AT=1020.025n

* CHECK dout1_1 Vdout1_1ck203 = 0 time = 1020
.meas tran vdout1_1ck203 FIND v(dout1_1) AT=1020.025n

* CHECK dout1_2 Vdout1_2ck203 = 0 time = 1020
.meas tran vdout1_2ck203 FIND v(dout1_2) AT=1020.025n

* CHECK dout1_3 Vdout1_3ck203 = 0 time = 1020
.meas tran vdout1_3ck203 FIND v(dout1_3) AT=1020.025n

* CHECK dout1_4 Vdout1_4ck203 = 1.0 time = 1020
.meas tran vdout1_4ck203 FIND v(dout1_4) AT=1020.025n

* CHECK dout1_5 Vdout1_5ck203 = 1.0 time = 1020
.meas tran vdout1_5ck203 FIND v(dout1_5) AT=1020.025n

* CHECK dout1_6 Vdout1_6ck203 = 1.0 time = 1020
.meas tran vdout1_6ck203 FIND v(dout1_6) AT=1020.025n

* CHECK dout1_7 Vdout1_7ck203 = 0 time = 1020
.meas tran vdout1_7ck203 FIND v(dout1_7) AT=1020.025n

* CHECK dout1_8 Vdout1_8ck203 = 0 time = 1020
.meas tran vdout1_8ck203 FIND v(dout1_8) AT=1020.025n

* CHECK dout1_9 Vdout1_9ck203 = 0 time = 1020
.meas tran vdout1_9ck203 FIND v(dout1_9) AT=1020.025n

* CHECK dout1_10 Vdout1_10ck203 = 0 time = 1020
.meas tran vdout1_10ck203 FIND v(dout1_10) AT=1020.025n

* CHECK dout1_0 Vdout1_0ck204 = 1.0 time = 1025
.meas tran vdout1_0ck204 FIND v(dout1_0) AT=1025.025n

* CHECK dout1_1 Vdout1_1ck204 = 1.0 time = 1025
.meas tran vdout1_1ck204 FIND v(dout1_1) AT=1025.025n

* CHECK dout1_2 Vdout1_2ck204 = 1.0 time = 1025
.meas tran vdout1_2ck204 FIND v(dout1_2) AT=1025.025n

* CHECK dout1_3 Vdout1_3ck204 = 0 time = 1025
.meas tran vdout1_3ck204 FIND v(dout1_3) AT=1025.025n

* CHECK dout1_4 Vdout1_4ck204 = 1.0 time = 1025
.meas tran vdout1_4ck204 FIND v(dout1_4) AT=1025.025n

* CHECK dout1_5 Vdout1_5ck204 = 0 time = 1025
.meas tran vdout1_5ck204 FIND v(dout1_5) AT=1025.025n

* CHECK dout1_6 Vdout1_6ck204 = 1.0 time = 1025
.meas tran vdout1_6ck204 FIND v(dout1_6) AT=1025.025n

* CHECK dout1_7 Vdout1_7ck204 = 1.0 time = 1025
.meas tran vdout1_7ck204 FIND v(dout1_7) AT=1025.025n

* CHECK dout1_8 Vdout1_8ck204 = 0 time = 1025
.meas tran vdout1_8ck204 FIND v(dout1_8) AT=1025.025n

* CHECK dout1_9 Vdout1_9ck204 = 0 time = 1025
.meas tran vdout1_9ck204 FIND v(dout1_9) AT=1025.025n

* CHECK dout1_10 Vdout1_10ck204 = 1.0 time = 1025
.meas tran vdout1_10ck204 FIND v(dout1_10) AT=1025.025n

* probe is used for hspice/xa, while plot is used in ngspice
.plot V(*)
.end

