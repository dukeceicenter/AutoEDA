* Functional test stimulus file for 5ns period

* TT process corner
.include "/home/jp502/Projects/system-PPA/OpenRAM/technology/freepdk45/models/tran_models/models_nom/PMOS_VTG.inc"
.include "/home/jp502/Projects/system-PPA/OpenRAM/technology/freepdk45/models/tran_models/models_nom/NMOS_VTG.inc"
.include "freepdk45_sram_1w1r_16x32_32.sp"

* Global Power Supplies
Vvdd vdd 0 0.9

*Nodes gnd and 0 are the same global ground node in ngspice/hspice/xa. Otherwise, this source may be needed.
*Vgnd gnd 0 0.0

* Instantiation of the SRAM
Xfreepdk45_sram_1w1r_16x32_32 din0_0 din0_1 din0_2 din0_3 din0_4 din0_5 din0_6 din0_7 din0_8 din0_9 din0_10 din0_11 din0_12 din0_13 din0_14 din0_15 din0_16 din0_17 din0_18 din0_19 din0_20 din0_21 din0_22 din0_23 din0_24 din0_25 din0_26 din0_27 din0_28 din0_29 din0_30 din0_31 a0_0 a0_1 a0_2 a0_3 a1_0 a1_1 a1_2 a1_3 CSB0 CSB1 clk0 clk1 dout1_0 dout1_1 dout1_2 dout1_3 dout1_4 dout1_5 dout1_6 dout1_7 dout1_8 dout1_9 dout1_10 dout1_11 dout1_12 dout1_13 dout1_14 dout1_15 dout1_16 dout1_17 dout1_18 dout1_19 dout1_20 dout1_21 dout1_22 dout1_23 dout1_24 dout1_25 dout1_26 dout1_27 dout1_28 dout1_29 dout1_30 dout1_31 vdd gnd freepdk45_sram_1w1r_16x32_32

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
CD113 dout1_13  0 0.8364f
CD114 dout1_14  0 0.8364f
CD115 dout1_15  0 0.8364f
CD116 dout1_16  0 0.8364f
CD117 dout1_17  0 0.8364f
CD118 dout1_18  0 0.8364f
CD119 dout1_19  0 0.8364f
CD120 dout1_20  0 0.8364f
CD121 dout1_21  0 0.8364f
CD122 dout1_22  0 0.8364f
CD123 dout1_23  0 0.8364f
CD124 dout1_24  0 0.8364f
CD125 dout1_25  0 0.8364f
CD126 dout1_26  0 0.8364f
CD127 dout1_27  0 0.8364f
CD128 dout1_28  0 0.8364f
CD129 dout1_29  0 0.8364f
CD130 dout1_30  0 0.8364f
CD131 dout1_31  0 0.8364f


* Important signals for debug
* bl:	xfreepdk45_sram_1w1r_16x32_32.xbank0.bl_1_0
* br:	xfreepdk45_sram_1w1r_16x32_32.xbank0.br_1_0
* s_en:	xfreepdk45_sram_1w1r_16x32_32.s_en
* q:	xfreepdk45_sram_1w1r_16x32_32.xbank0.xbitcell_array.xreplica_bitcell_array.xbitcell_array.xbit_r0_c0.Q
* qbar:	xfreepdk45_sram_1w1r_16x32_32.xbank0.xbitcell_array.xreplica_bitcell_array.xbitcell_array.xbit_r0_c0.Q_bar


* Sequence of operations
*	Idle during cycle 0 (0ns - 5ns)
*	Writing 11001001110111001110100000011101  to  address 1110 (from port 0) during cycle 1 (5ns - 10ns)
*	Writing 00000011101110110110100110001010  to  address 1110 (from port 0) during cycle 2 (10ns - 15ns)
*	Writing 11000000100110011101101101101000  to  address 1110 (from port 0) during cycle 3 (15ns - 20ns)
*	Reading 11000000100110011101101101101000 from address 1110 (from port 1) during cycle 4 (20ns - 25ns)
*	Reading 11000000100110011101101101101000 from address 1110 (from port 1) during cycle 5 (25ns - 30ns)
*	Writing 11110111011010010011110111101010  to  address 1110 (from port 0) during cycle 6 (30ns - 35ns)
*	Reading 11110111011010010011110111101010 from address 1110 (from port 1) during cycle 7 (35ns - 40ns)
*	Writing 10000000010100011111001110000111  to  address 1110 (from port 0) during cycle 8 (40ns - 45ns)
*	Writing 01001001110001010101101011101111  to  address 0000 (from port 0) during cycle 9 (45ns - 50ns)
*	Reading 10000000010100011111001110000111 from address 1110 (from port 1) during cycle 9 (45ns - 50ns)
*	Writing 00010011110010111000100100100000  to  address 0000 (from port 0) during cycle 11 (55ns - 60ns)
*	Writing 01100001110100111011000111001111  to  address 0000 (from port 0) during cycle 14 (70ns - 75ns)
*	Writing 01110000110111010010101110101001  to  address 0000 (from port 0) during cycle 15 (75ns - 80ns)
*	Writing 11000111101101110001010111011111  to  address 0000 (from port 0) during cycle 17 (85ns - 90ns)
*	Writing 10101100101111110011111111100110  to  address 0000 (from port 0) during cycle 18 (90ns - 95ns)
*	Reading 10000000010100011111001110000111 from address 1110 (from port 1) during cycle 19 (95ns - 100ns)
*	Reading 10101100101111110011111111100110 from address 0000 (from port 1) during cycle 21 (105ns - 110ns)
*	Writing 01010010100000010111011110000001  to  address 0000 (from port 0) during cycle 23 (115ns - 120ns)
*	Writing 11011101100001000011010110111111  to  address 0000 (from port 0) during cycle 24 (120ns - 125ns)
*	Writing 10010001001100001110011100110101  to  address 1110 (from port 0) during cycle 25 (125ns - 130ns)
*	Reading 11011101100001000011010110111111 from address 0000 (from port 1) during cycle 25 (125ns - 130ns)
*	Writing 00110111100001011110000100110010  to  address 1110 (from port 0) during cycle 26 (130ns - 135ns)
*	Reading 00110111100001011110000100110010 from address 1110 (from port 1) during cycle 27 (135ns - 140ns)
*	Reading 11011101100001000011010110111111 from address 0000 (from port 1) during cycle 28 (140ns - 145ns)
*	Reading 11011101100001000011010110111111 from address 0000 (from port 1) during cycle 29 (145ns - 150ns)
*	Writing 00001000101110011000001101111011  to  address 0000 (from port 0) during cycle 30 (150ns - 155ns)
*	Writing 11110000111010101111010010011010  to  address 0000 (from port 0) during cycle 31 (155ns - 160ns)
*	Writing 11101000000010101111000001100101  to  address 1110 (from port 0) during cycle 32 (160ns - 165ns)
*	Writing 00100010000101001100010001011110  to  address 1110 (from port 0) during cycle 33 (165ns - 170ns)
*	Writing 00010001001001011000110111000101  to  address 0000 (from port 0) during cycle 35 (175ns - 180ns)
*	Reading 00100010000101001100010001011110 from address 1110 (from port 1) during cycle 35 (175ns - 180ns)
*	Reading 00100010000101001100010001011110 from address 1110 (from port 1) during cycle 36 (180ns - 185ns)
*	Reading 00010001001001011000110111000101 from address 0000 (from port 1) during cycle 39 (195ns - 200ns)
*	Writing 01111110010001011011111101110000  to  address 1110 (from port 0) during cycle 40 (200ns - 205ns)
*	Writing 10101111010111000000110100000111  to  address 0000 (from port 0) during cycle 41 (205ns - 210ns)
*	Reading 01111110010001011011111101110000 from address 1110 (from port 1) during cycle 41 (205ns - 210ns)
*	Reading 01111110010001011011111101110000 from address 1110 (from port 1) during cycle 44 (220ns - 225ns)
*	Writing 01001101111100110110110101111111  to  address 0000 (from port 0) during cycle 45 (225ns - 230ns)
*	Writing 11011011010000111001000011111101  to  address 0000 (from port 0) during cycle 46 (230ns - 235ns)
*	Reading 01111110010001011011111101110000 from address 1110 (from port 1) during cycle 46 (230ns - 235ns)
*	Writing 00011010101100001010101111001100  to  address 1110 (from port 0) during cycle 48 (240ns - 245ns)
*	Reading 11011011010000111001000011111101 from address 0000 (from port 1) during cycle 49 (245ns - 250ns)
*	Writing 00100101010111001101101100000001  to  address 0000 (from port 0) during cycle 50 (250ns - 255ns)
*	Reading 00011010101100001010101111001100 from address 1110 (from port 1) during cycle 52 (260ns - 265ns)
*	Writing 01001010110111101111001011111110  to  address 0000 (from port 0) during cycle 53 (265ns - 270ns)
*	Reading 00011010101100001010101111001100 from address 1110 (from port 1) during cycle 53 (265ns - 270ns)
*	Writing 11001010000100111110001010000000  to  address 1110 (from port 0) during cycle 55 (275ns - 280ns)
*	Reading 11001010000100111110001010000000 from address 1110 (from port 1) during cycle 57 (285ns - 290ns)
*	Reading 11001010000100111110001010000000 from address 1110 (from port 1) during cycle 58 (290ns - 295ns)
*	Reading 11001010000100111110001010000000 from address 1110 (from port 1) during cycle 59 (295ns - 300ns)
*	Reading 01001010110111101111001011111110 from address 0000 (from port 1) during cycle 61 (305ns - 310ns)
*	Reading 11001010000100111110001010000000 from address 1110 (from port 1) during cycle 62 (310ns - 315ns)
*	Reading 11001010000100111110001010000000 from address 1110 (from port 1) during cycle 63 (315ns - 320ns)
*	Writing 10001001101100001010001110001100  to  address 1110 (from port 0) during cycle 65 (325ns - 330ns)
*	Reading 10001001101100001010001110001100 from address 1110 (from port 1) during cycle 66 (330ns - 335ns)
*	Writing 00100100001011000001010111001110  to  address 1110 (from port 0) during cycle 70 (350ns - 355ns)
*	Reading 01001010110111101111001011111110 from address 0000 (from port 1) during cycle 70 (350ns - 355ns)
*	Reading 00100100001011000001010111001110 from address 1110 (from port 1) during cycle 71 (355ns - 360ns)
*	Writing 01100110111010100100001000001010  to  address 0000 (from port 0) during cycle 72 (360ns - 365ns)
*	Reading 00100100001011000001010111001110 from address 1110 (from port 1) during cycle 72 (360ns - 365ns)
*	Writing 01000100110111010011011001001110  to  address 1110 (from port 0) during cycle 74 (370ns - 375ns)
*	Writing 11111110001100011011010100111110  to  address 1110 (from port 0) during cycle 75 (375ns - 380ns)
*	Reading 01100110111010100100001000001010 from address 0000 (from port 1) during cycle 75 (375ns - 380ns)
*	Writing 10000010101110010111000010000001  to  address 1110 (from port 0) during cycle 76 (380ns - 385ns)
*	Reading 01100110111010100100001000001010 from address 0000 (from port 1) during cycle 78 (390ns - 395ns)
*	Writing 11010001110011111110101001101010  to  address 1110 (from port 0) during cycle 79 (395ns - 400ns)
*	Writing 01011001110010001011011000100001  to  address 0000 (from port 0) during cycle 80 (400ns - 405ns)
*	Writing 11010111101010111011011000000100  to  address 1110 (from port 0) during cycle 81 (405ns - 410ns)
*	Writing 10101010001111010100011011110011  to  address 0000 (from port 0) during cycle 82 (410ns - 415ns)
*	Writing 11111010110101100111010111011110  to  address 0000 (from port 0) during cycle 83 (415ns - 420ns)
*	Writing 01001101101010110001000000000111  to  address 1110 (from port 0) during cycle 84 (420ns - 425ns)
*	Reading 01001101101010110001000000000111 from address 1110 (from port 1) during cycle 85 (425ns - 430ns)
*	Writing 10111111001010001101011110011101  to  address 1110 (from port 0) during cycle 86 (430ns - 435ns)
*	Reading 11111010110101100111010111011110 from address 0000 (from port 1) during cycle 86 (430ns - 435ns)
*	Writing 11101100010110110100100100101100  to  address 0000 (from port 0) during cycle 87 (435ns - 440ns)
*	Reading 10111111001010001101011110011101 from address 1110 (from port 1) during cycle 88 (440ns - 445ns)
*	Writing 11010110001000100000111011001011  to  address 1110 (from port 0) during cycle 90 (450ns - 455ns)
*	Writing 00000110010110010100000110110110  to  address 0000 (from port 0) during cycle 91 (455ns - 460ns)
*	Writing 10010011110100101100110101100100  to  address 1110 (from port 0) during cycle 92 (460ns - 465ns)
*	Reading 10010011110100101100110101100100 from address 1110 (from port 1) during cycle 93 (465ns - 470ns)
*	Writing 10011010111011011000010000011000  to  address 1110 (from port 0) during cycle 94 (470ns - 475ns)
*	Writing 00111000101101111010000110010100  to  address 1110 (from port 0) during cycle 95 (475ns - 480ns)
*	Reading 00000110010110010100000110110110 from address 0000 (from port 1) during cycle 96 (480ns - 485ns)
*	Writing 01111010111100011010101110100110  to  address 1110 (from port 0) during cycle 97 (485ns - 490ns)
*	Writing 10111010001111000010100001011111  to  address 0000 (from port 0) during cycle 99 (495ns - 500ns)
*	Reading 01111010111100011010101110100110 from address 1110 (from port 1) during cycle 99 (495ns - 500ns)
*	Writing 01010000010010001000010110011110  to  address 0000 (from port 0) during cycle 100 (500ns - 505ns)
*	Writing 10110100011100101111111001110011  to  address 1110 (from port 0) during cycle 101 (505ns - 510ns)
*	Reading 01010000010010001000010110011110 from address 0000 (from port 1) during cycle 101 (505ns - 510ns)
*	Writing 01110010110111111010011000110100  to  address 0000 (from port 0) during cycle 102 (510ns - 515ns)
*	Writing 10011110011001111001110111111100  to  address 1110 (from port 0) during cycle 103 (515ns - 520ns)
*	Reading 01110010110111111010011000110100 from address 0000 (from port 1) during cycle 103 (515ns - 520ns)
*	Writing 01101110001111100100000101110000  to  address 1110 (from port 0) during cycle 104 (520ns - 525ns)
*	Writing 10110101111110111001110101000101  to  address 1110 (from port 0) during cycle 105 (525ns - 530ns)
*	Reading 01110010110111111010011000110100 from address 0000 (from port 1) during cycle 105 (525ns - 530ns)
*	Writing 01000010110000001101010110001100  to  address 0000 (from port 0) during cycle 106 (530ns - 535ns)
*	Reading 10110101111110111001110101000101 from address 1110 (from port 1) during cycle 107 (535ns - 540ns)
*	Writing 11111110100010000111010110010111  to  address 1110 (from port 0) during cycle 109 (545ns - 550ns)
*	Reading 01000010110000001101010110001100 from address 0000 (from port 1) during cycle 110 (550ns - 555ns)
*	Reading 11111110100010000111010110010111 from address 1110 (from port 1) during cycle 111 (555ns - 560ns)
*	Writing 10000010111010101001000101100101  to  address 0000 (from port 0) during cycle 112 (560ns - 565ns)
*	Writing 10111010010011111111110110110010  to  address 0000 (from port 0) during cycle 113 (565ns - 570ns)
*	Reading 11111110100010000111010110010111 from address 1110 (from port 1) during cycle 113 (565ns - 570ns)
*	Reading 10111010010011111111110110110010 from address 0000 (from port 1) during cycle 115 (575ns - 580ns)
*	Writing 00010011101111111011010101000000  to  address 1110 (from port 0) during cycle 116 (580ns - 585ns)
*	Writing 01110001110011000111000111110011  to  address 1110 (from port 0) during cycle 117 (585ns - 590ns)
*	Writing 11011100001010101111010001010000  to  address 1110 (from port 0) during cycle 118 (590ns - 595ns)
*	Writing 00011100011101010000101010001011  to  address 1110 (from port 0) during cycle 120 (600ns - 605ns)
*	Reading 10111010010011111111110110110010 from address 0000 (from port 1) during cycle 121 (605ns - 610ns)
*	Writing 11110111011000011000111101111010  to  address 0000 (from port 0) during cycle 123 (615ns - 620ns)
*	Writing 01101001001111100111111100000100  to  address 1110 (from port 0) during cycle 124 (620ns - 625ns)
*	Reading 11110111011000011000111101111010 from address 0000 (from port 1) during cycle 125 (625ns - 630ns)
*	Writing 00001010000011000000110110000010  to  address 1110 (from port 0) during cycle 126 (630ns - 635ns)
*	Reading 11110111011000011000111101111010 from address 0000 (from port 1) during cycle 126 (630ns - 635ns)
*	Reading 11110111011000011000111101111010 from address 0000 (from port 1) during cycle 127 (635ns - 640ns)
*	Writing 11010000111001110001101101100000  to  address 1110 (from port 0) during cycle 128 (640ns - 645ns)
*	Reading 11110111011000011000111101111010 from address 0000 (from port 1) during cycle 128 (640ns - 645ns)
*	Writing 00011000111011110110110000100010  to  address 0000 (from port 0) during cycle 129 (645ns - 650ns)
*	Reading 11010000111001110001101101100000 from address 1110 (from port 1) during cycle 129 (645ns - 650ns)
*	Writing 11011111111010101101110111100000  to  address 1110 (from port 0) during cycle 130 (650ns - 655ns)
*	Writing 01100010100001100011111110100000  to  address 1110 (from port 0) during cycle 131 (655ns - 660ns)
*	Reading 00011000111011110110110000100010 from address 0000 (from port 1) during cycle 131 (655ns - 660ns)
*	Reading 01100010100001100011111110100000 from address 1110 (from port 1) during cycle 132 (660ns - 665ns)
*	Writing 00010001010111011101001110010001  to  address 1110 (from port 0) during cycle 133 (665ns - 670ns)
*	Reading 00011000111011110110110000100010 from address 0000 (from port 1) during cycle 134 (670ns - 675ns)
*	Writing 11010001100101111100001111001110  to  address 1110 (from port 0) during cycle 135 (675ns - 680ns)
*	Reading 00011000111011110110110000100010 from address 0000 (from port 1) during cycle 135 (675ns - 680ns)
*	Writing 01100000001000111111000100111001  to  address 0000 (from port 0) during cycle 136 (680ns - 685ns)
*	Writing 01001101010001000100010101010001  to  address 1110 (from port 0) during cycle 137 (685ns - 690ns)
*	Reading 01100000001000111111000100111001 from address 0000 (from port 1) during cycle 137 (685ns - 690ns)
*	Writing 10111001110001010000101100111011  to  address 1110 (from port 0) during cycle 138 (690ns - 695ns)
*	Reading 01100000001000111111000100111001 from address 0000 (from port 1) during cycle 138 (690ns - 695ns)
*	Writing 00111110111101100010001110001101  to  address 1110 (from port 0) during cycle 140 (700ns - 705ns)
*	Reading 01100000001000111111000100111001 from address 0000 (from port 1) during cycle 143 (715ns - 720ns)
*	Writing 01001111110100010010101000000111  to  address 1110 (from port 0) during cycle 144 (720ns - 725ns)
*	Reading 01100000001000111111000100111001 from address 0000 (from port 1) during cycle 144 (720ns - 725ns)
*	Reading 01001111110100010010101000000111 from address 1110 (from port 1) during cycle 145 (725ns - 730ns)
*	Reading 01100000001000111111000100111001 from address 0000 (from port 1) during cycle 146 (730ns - 735ns)
*	Writing 00101111101001011000101100010000  to  address 0000 (from port 0) during cycle 147 (735ns - 740ns)
*	Writing 01010011111111101001100110000011  to  address 0000 (from port 0) during cycle 148 (740ns - 745ns)
*	Reading 01010011111111101001100110000011 from address 0000 (from port 1) during cycle 149 (745ns - 750ns)
*	Reading 01001111110100010010101000000111 from address 1110 (from port 1) during cycle 150 (750ns - 755ns)
*	Writing 00111100000011101000100010100110  to  address 1110 (from port 0) during cycle 151 (755ns - 760ns)
*	Reading 01010011111111101001100110000011 from address 0000 (from port 1) during cycle 151 (755ns - 760ns)
*	Writing 00000000010101110001101001100101  to  address 1110 (from port 0) during cycle 152 (760ns - 765ns)
*	Reading 01010011111111101001100110000011 from address 0000 (from port 1) during cycle 153 (765ns - 770ns)
*	Writing 01010100000101111000000010100010  to  address 0000 (from port 0) during cycle 154 (770ns - 775ns)
*	Reading 00000000010101110001101001100101 from address 1110 (from port 1) during cycle 154 (770ns - 775ns)
*	Reading 01010100000101111000000010100010 from address 0000 (from port 1) during cycle 155 (775ns - 780ns)
*	Writing 01011110010101010000100011001100  to  address 1110 (from port 0) during cycle 158 (790ns - 795ns)
*	Writing 01010010010001100010010110010010  to  address 1110 (from port 0) during cycle 160 (800ns - 805ns)
*	Writing 00000011010111101111101000110111  to  address 1110 (from port 0) during cycle 162 (810ns - 815ns)
*	Writing 10000110101111101001010011100100  to  address 1110 (from port 0) during cycle 163 (815ns - 820ns)
*	Reading 10000110101111101001010011100100 from address 1110 (from port 1) during cycle 164 (820ns - 825ns)
*	Reading 10000110101111101001010011100100 from address 1110 (from port 1) during cycle 165 (825ns - 830ns)
*	Reading 10000110101111101001010011100100 from address 1110 (from port 1) during cycle 170 (850ns - 855ns)
*	Writing 00000110001011100100010110000011  to  address 0000 (from port 0) during cycle 171 (855ns - 860ns)
*	Reading 10000110101111101001010011100100 from address 1110 (from port 1) during cycle 171 (855ns - 860ns)
*	Writing 10111011010111110101101110101011  to  address 1110 (from port 0) during cycle 172 (860ns - 865ns)
*	Reading 00000110001011100100010110000011 from address 0000 (from port 1) during cycle 172 (860ns - 865ns)
*	Writing 11000001010100001101000101000011  to  address 0000 (from port 0) during cycle 173 (865ns - 870ns)
*	Writing 11101010110110101000111101100011  to  address 1110 (from port 0) during cycle 174 (870ns - 875ns)
*	Reading 11000001010100001101000101000011 from address 0000 (from port 1) during cycle 174 (870ns - 875ns)
*	Reading 11000001010100001101000101000011 from address 0000 (from port 1) during cycle 175 (875ns - 880ns)
*	Writing 10111111100001000110100101111010  to  address 1110 (from port 0) during cycle 177 (885ns - 890ns)
*	Writing 11101111100101010010101011011111  to  address 1110 (from port 0) during cycle 178 (890ns - 895ns)
*	Writing 00000100000010011101101011011011  to  address 1110 (from port 0) during cycle 179 (895ns - 900ns)
*	Reading 11000001010100001101000101000011 from address 0000 (from port 1) during cycle 179 (895ns - 900ns)
*	Reading 00000100000010011101101011011011 from address 1110 (from port 1) during cycle 180 (900ns - 905ns)
*	Writing 11101010011000111101001010110000  to  address 1110 (from port 0) during cycle 181 (905ns - 910ns)
*	Writing 10111001100011000110000100011000  to  address 1110 (from port 0) during cycle 182 (910ns - 915ns)
*	Writing 01001000100001100101111010111100  to  address 1110 (from port 0) during cycle 183 (915ns - 920ns)
*	Writing 00100110011110001101000011010001  to  address 0000 (from port 0) during cycle 184 (920ns - 925ns)
*	Writing 00011011000001110111101011000111  to  address 1110 (from port 0) during cycle 185 (925ns - 930ns)
*	Writing 11100101111011111100001001110000  to  address 0000 (from port 0) during cycle 186 (930ns - 935ns)
*	Writing 01111111111001110010001101000111  to  address 0000 (from port 0) during cycle 187 (935ns - 940ns)
*	Reading 01111111111001110010001101000111 from address 0000 (from port 1) during cycle 188 (940ns - 945ns)
*	Reading 01111111111001110010001101000111 from address 0000 (from port 1) during cycle 189 (945ns - 950ns)
*	Writing 01011000100011110001101100111010  to  address 0000 (from port 0) during cycle 190 (950ns - 955ns)
*	Reading 00011011000001110111101011000111 from address 1110 (from port 1) during cycle 191 (955ns - 960ns)
*	Writing 00100010000111100111010001101110  to  address 1110 (from port 0) during cycle 192 (960ns - 965ns)
*	Reading 01011000100011110001101100111010 from address 0000 (from port 1) during cycle 193 (965ns - 970ns)
*	Writing 11010101000101111010101010100000  to  address 1110 (from port 0) during cycle 194 (970ns - 975ns)
*	Writing 00000010110010001110101100000100  to  address 0000 (from port 0) during cycle 195 (975ns - 980ns)
*	Reading 11010101000101111010101010100000 from address 1110 (from port 1) during cycle 195 (975ns - 980ns)
*	Writing 11110101100100011110011101001010  to  address 0000 (from port 0) during cycle 197 (985ns - 990ns)
*	Writing 00011001011110001101101111011100  to  address 0000 (from port 0) during cycle 198 (990ns - 995ns)
*	Reading 00011001011110001101101111011100 from address 0000 (from port 1) during cycle 200 (1000ns - 1005ns)
*	Writing 11010001100010010111101000110110  to  address 1110 (from port 0) during cycle 201 (1005ns - 1010ns)
*	Writing 10101010000100010101001010000101  to  address 1110 (from port 0) during cycle 202 (1010ns - 1015ns)
*	Reading 00011001011110001101101111011100 from address 0000 (from port 1) during cycle 202 (1010ns - 1015ns)
*	Writing 01010000011000011011111100010010  to  address 1110 (from port 0) during cycle 203 (1015ns - 1020ns)
*	Writing 10000110110001111010000001001110  to  address 0000 (from port 0) during cycle 204 (1020ns - 1025ns)
*	Idle during cycle 205 (1025ns - 1030ns)

* Generation of data and address signals
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 1), (45, 1), (50, 1), (55, 0), (60, 0), (65, 0), (70, 1), (75, 1), (80, 1), (85, 1), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 1), (120, 1), (125, 1), (130, 0), (135, 0), (140, 0), (145, 0), (150, 1), (155, 0), (160, 1), (165, 0), (170, 0), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 0), (205, 1), (210, 1), (215, 1), (220, 1), (225, 1), (230, 1), (235, 1), (240, 0), (245, 0), (250, 1), (255, 1), (260, 1), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 1), (385, 1), (390, 1), (395, 0), (400, 1), (405, 0), (410, 1), (415, 0), (420, 1), (425, 1), (430, 1), (435, 0), (440, 0), (445, 0), (450, 1), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 1), (500, 0), (505, 1), (510, 0), (515, 0), (520, 0), (525, 1), (530, 0), (535, 0), (540, 0), (545, 1), (550, 1), (555, 1), (560, 1), (565, 0), (570, 0), (575, 0), (580, 0), (585, 1), (590, 0), (595, 0), (600, 1), (605, 1), (610, 1), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 0), (665, 1), (670, 1), (675, 0), (680, 1), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 0), (740, 1), (745, 1), (750, 1), (755, 0), (760, 1), (765, 1), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 1), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 0), (890, 1), (895, 1), (900, 1), (905, 0), (910, 0), (915, 0), (920, 1), (925, 1), (930, 0), (935, 1), (940, 1), (945, 1), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 1), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_0  din0_0  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.9v 44.745n 0.9v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.9v 74.745n 0.9v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.9v 89.745n 0.9v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.9v 129.745n 0.9v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.9v 154.745n 0.9v 154.755n 0.0v 159.745n 0.0v 159.755n 0.9v 164.745n 0.9v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.9v 194.745n 0.9v 194.755n 0.9v 199.745n 0.9v 199.755n 0.0v 204.745n 0.0v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.9v 229.745n 0.9v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.0v 399.745n 0.0v 399.755n 0.9v 404.745n 0.9v 404.755n 0.0v 409.745n 0.0v 409.755n 0.9v 414.745n 0.9v 414.755n 0.0v 419.745n 0.0v 419.755n 0.9v 424.745n 0.9v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.9v 454.745n 0.9v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.9v 499.745n 0.9v 499.755n 0.0v 504.745n 0.0v 504.755n 0.9v 509.745n 0.9v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.9v 529.745n 0.9v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.9v 564.745n 0.9v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.9v 589.745n 0.9v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.0v 679.745n 0.0v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.0v 739.745n 0.0v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.0v 759.745n 0.0v 759.755n 0.9v 764.745n 0.9v 764.755n 0.9v 769.745n 0.9v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.9v 814.745n 0.9v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.9v 859.745n 0.9v 859.755n 0.9v 864.745n 0.9v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.0v 889.745n 0.0v 889.755n 0.9v 894.745n 0.9v 894.755n 0.9v 899.745n 0.9v 899.755n 0.9v 904.745n 0.9v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.0v 934.745n 0.0v 934.755n 0.9v 939.745n 0.9v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 0), (20, 0), (25, 0), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 0), (60, 0), (65, 0), (70, 1), (75, 0), (80, 0), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 0), (120, 1), (125, 0), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 0), (165, 1), (170, 1), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 1), (210, 1), (215, 1), (220, 1), (225, 1), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 1), (270, 1), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 0), (385, 0), (390, 0), (395, 1), (400, 0), (405, 0), (410, 1), (415, 1), (420, 1), (425, 1), (430, 0), (435, 0), (440, 0), (445, 0), (450, 1), (455, 1), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 1), (550, 1), (555, 1), (560, 0), (565, 1), (570, 1), (575, 1), (580, 0), (585, 1), (590, 0), (595, 0), (600, 1), (605, 1), (610, 1), (615, 1), (620, 0), (625, 0), (630, 1), (635, 1), (640, 0), (645, 1), (650, 0), (655, 0), (660, 0), (665, 0), (670, 0), (675, 1), (680, 0), (685, 0), (690, 1), (695, 1), (700, 0), (705, 0), (710, 0), (715, 0), (720, 1), (725, 1), (730, 1), (735, 0), (740, 1), (745, 1), (750, 1), (755, 1), (760, 0), (765, 0), (770, 1), (775, 1), (780, 1), (785, 1), (790, 0), (795, 0), (800, 1), (805, 1), (810, 1), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 0), (910, 0), (915, 0), (920, 0), (925, 1), (930, 0), (935, 1), (940, 1), (945, 1), (950, 1), (955, 1), (960, 1), (965, 1), (970, 0), (975, 0), (980, 0), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 1), (1010, 0), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_1  din0_1  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.9v 14.745n 0.9v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.9v 44.745n 0.9v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.9v 74.745n 0.9v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.0v 119.745n 0.0v 119.755n 0.9v 124.745n 0.9v 124.755n 0.0v 129.745n 0.0v 129.755n 0.9v 134.745n 0.9v 134.755n 0.9v 139.745n 0.9v 139.755n 0.9v 144.745n 0.9v 144.755n 0.9v 149.745n 0.9v 149.755n 0.9v 154.745n 0.9v 154.755n 0.9v 159.745n 0.9v 159.755n 0.0v 164.745n 0.0v 164.755n 0.9v 169.745n 0.9v 169.755n 0.9v 174.745n 0.9v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.9v 229.745n 0.9v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.9v 399.745n 0.9v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.9v 414.745n 0.9v 414.755n 0.9v 419.745n 0.9v 419.755n 0.9v 424.745n 0.9v 424.755n 0.9v 429.745n 0.9v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.9v 454.745n 0.9v 454.755n 0.9v 459.745n 0.9v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.9v 509.745n 0.9v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.0v 564.745n 0.0v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.0v 584.745n 0.0v 584.755n 0.9v 589.745n 0.9v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.9v 619.745n 0.9v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.9v 634.745n 0.9v 634.755n 0.9v 639.745n 0.9v 639.755n 0.0v 644.745n 0.0v 644.755n 0.9v 649.745n 0.9v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.9v 679.745n 0.9v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.9v 724.745n 0.9v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.0v 739.745n 0.0v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.9v 759.745n 0.9v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.9v 774.745n 0.9v 774.755n 0.9v 779.745n 0.9v 779.755n 0.9v 784.745n 0.9v 784.755n 0.9v 789.745n 0.9v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.9v 859.745n 0.9v 859.755n 0.9v 864.745n 0.9v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.9v 894.745n 0.9v 894.755n 0.9v 899.745n 0.9v 899.755n 0.9v 904.745n 0.9v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.9v 929.745n 0.9v 929.755n 0.0v 934.745n 0.0v 934.755n 0.9v 939.745n 0.9v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.9v 989.745n 0.9v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 1), (45, 1), (50, 1), (55, 0), (60, 0), (65, 0), (70, 1), (75, 0), (80, 0), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 0), (120, 1), (125, 1), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 0), (205, 1), (210, 1), (215, 1), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 0), (255, 0), (260, 0), (265, 1), (270, 1), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 0), (365, 0), (370, 1), (375, 1), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 1), (410, 0), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 0), (455, 1), (460, 1), (465, 1), (470, 0), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 0), (510, 1), (515, 1), (520, 0), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 0), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 1), (625, 1), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 0), (675, 1), (680, 0), (685, 0), (690, 0), (695, 0), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 0), (740, 0), (745, 0), (750, 0), (755, 1), (760, 1), (765, 1), (770, 0), (775, 0), (780, 0), (785, 0), (790, 1), (795, 1), (800, 0), (805, 0), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 1), (895, 0), (900, 0), (905, 0), (910, 0), (915, 1), (920, 0), (925, 1), (930, 0), (935, 1), (940, 1), (945, 1), (950, 0), (955, 0), (960, 1), (965, 1), (970, 0), (975, 1), (980, 1), (985, 0), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 0), (1020, 1), (1025, 1)]
Vdin0_2  din0_2  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.9v 44.745n 0.9v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.9v 74.745n 0.9v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.0v 119.745n 0.0v 119.755n 0.9v 124.745n 0.9v 124.755n 0.9v 129.745n 0.9v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.9v 164.745n 0.9v 164.755n 0.9v 169.745n 0.9v 169.755n 0.9v 174.745n 0.9v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.9v 194.745n 0.9v 194.755n 0.9v 199.745n 0.9v 199.755n 0.0v 204.745n 0.0v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.9v 229.745n 0.9v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.9v 409.745n 0.9v 409.755n 0.0v 414.745n 0.0v 414.755n 0.9v 419.745n 0.9v 419.755n 0.9v 424.745n 0.9v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.0v 454.745n 0.0v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.0v 474.745n 0.0v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.0v 509.745n 0.0v 509.755n 0.9v 514.745n 0.9v 514.755n 0.9v 519.745n 0.9v 519.755n 0.0v 524.745n 0.0v 524.755n 0.9v 529.745n 0.9v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.9v 564.745n 0.9v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.9v 679.745n 0.9v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.9v 759.745n 0.9v 759.755n 0.9v 764.745n 0.9v 764.755n 0.9v 769.745n 0.9v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.9v 854.745n 0.9v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.9v 894.745n 0.9v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.9v 919.745n 0.9v 919.755n 0.0v 924.745n 0.0v 924.755n 0.9v 929.745n 0.9v 929.755n 0.0v 934.745n 0.0v 934.755n 0.9v 939.745n 0.9v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.0v 974.745n 0.0v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.0v 989.745n 0.0v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 0), (45, 1), (50, 1), (55, 0), (60, 0), (65, 0), (70, 1), (75, 1), (80, 1), (85, 1), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 1), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 1), (155, 1), (160, 0), (165, 1), (170, 1), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 0), (255, 0), (260, 0), (265, 1), (270, 1), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 0), (385, 0), (390, 0), (395, 1), (400, 0), (405, 0), (410, 0), (415, 1), (420, 0), (425, 0), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 0), (460, 0), (465, 0), (470, 1), (475, 0), (480, 0), (485, 0), (490, 0), (495, 1), (500, 1), (505, 0), (510, 0), (515, 1), (520, 0), (525, 0), (530, 1), (535, 1), (540, 1), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 1), (605, 1), (610, 1), (615, 1), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 0), (675, 1), (680, 1), (685, 0), (690, 1), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 1), (795, 1), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 1), (865, 0), (870, 0), (875, 0), (880, 0), (885, 1), (890, 1), (895, 1), (900, 1), (905, 0), (910, 1), (915, 1), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 1), (955, 1), (960, 1), (965, 1), (970, 0), (975, 0), (980, 0), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 0), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Vdin0_3  din0_3  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.9v 14.745n 0.9v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.0v 44.745n 0.0v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.9v 74.745n 0.9v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.9v 89.745n 0.9v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.9v 124.745n 0.9v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.9v 154.745n 0.9v 154.755n 0.9v 159.745n 0.9v 159.755n 0.0v 164.745n 0.0v 164.755n 0.9v 169.745n 0.9v 169.755n 0.9v 174.745n 0.9v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.9v 229.745n 0.9v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.9v 399.745n 0.9v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.9v 419.745n 0.9v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.9v 474.745n 0.9v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.9v 519.745n 0.9v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.9v 619.745n 0.9v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.0v 689.745n 0.0v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.9v 864.745n 0.9v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.9v 889.745n 0.9v 889.755n 0.9v 894.745n 0.9v 894.755n 0.9v 899.745n 0.9v 899.755n 0.9v 904.745n 0.9v 904.755n 0.0v 909.745n 0.0v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.9v 989.745n 0.9v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 1), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 0), (165, 1), (170, 1), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 1), (205, 0), (210, 0), (215, 0), (220, 0), (225, 1), (230, 1), (235, 1), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 1), (270, 1), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 1), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 1), (415, 1), (420, 0), (425, 0), (430, 1), (435, 0), (440, 0), (445, 0), (450, 0), (455, 1), (460, 0), (465, 0), (470, 1), (475, 1), (480, 1), (485, 0), (490, 0), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 0), (530, 0), (535, 0), (540, 0), (545, 1), (550, 1), (555, 1), (560, 0), (565, 1), (570, 1), (575, 1), (580, 0), (585, 1), (590, 1), (595, 1), (600, 0), (605, 0), (610, 0), (615, 1), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 0), (665, 1), (670, 1), (675, 0), (680, 1), (685, 1), (690, 1), (695, 1), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 1), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 1), (805, 1), (810, 1), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 0), (930, 1), (935, 0), (940, 0), (945, 0), (950, 1), (955, 1), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 0), (1015, 1), (1020, 0), (1025, 0)]
Vdin0_4  din0_4  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.9v 89.745n 0.9v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.9v 124.745n 0.9v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.9v 139.745n 0.9v 139.755n 0.9v 144.745n 0.9v 144.755n 0.9v 149.745n 0.9v 149.755n 0.9v 154.745n 0.9v 154.755n 0.9v 159.745n 0.9v 159.755n 0.0v 164.745n 0.0v 164.755n 0.9v 169.745n 0.9v 169.755n 0.9v 174.745n 0.9v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.9v 204.745n 0.9v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.9v 229.745n 0.9v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.9v 379.745n 0.9v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.9v 414.745n 0.9v 414.755n 0.9v 419.745n 0.9v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.9v 434.745n 0.9v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.9v 459.745n 0.9v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.9v 474.745n 0.9v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.9v 509.745n 0.9v 509.755n 0.9v 514.745n 0.9v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.0v 564.745n 0.0v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.0v 584.745n 0.0v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.9v 619.745n 0.9v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.0v 679.745n 0.0v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.9v 739.745n 0.9v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.9v 889.745n 0.9v 889.755n 0.9v 894.745n 0.9v 894.755n 0.9v 899.745n 0.9v 899.755n 0.9v 904.745n 0.9v 904.755n 0.9v 909.745n 0.9v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.0v 929.745n 0.0v 929.755n 0.9v 934.745n 0.9v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 0), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 0), (75, 1), (80, 1), (85, 0), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 0), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 0), (160, 1), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 1), (205, 0), (210, 0), (215, 0), (220, 0), (225, 1), (230, 1), (235, 1), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 1), (270, 1), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 1), (380, 0), (385, 0), (390, 0), (395, 1), (400, 1), (405, 0), (410, 1), (415, 0), (420, 0), (425, 0), (430, 0), (435, 1), (440, 1), (445, 1), (450, 0), (455, 1), (460, 1), (465, 1), (470, 0), (475, 0), (480, 0), (485, 1), (490, 1), (495, 0), (500, 0), (505, 1), (510, 1), (515, 1), (520, 1), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 1), (565, 1), (570, 1), (575, 1), (580, 0), (585, 1), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 1), (620, 0), (625, 0), (630, 0), (635, 0), (640, 1), (645, 1), (650, 1), (655, 1), (660, 1), (665, 0), (670, 0), (675, 0), (680, 1), (685, 0), (690, 1), (695, 1), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 1), (760, 1), (765, 1), (770, 1), (775, 1), (780, 1), (785, 1), (790, 0), (795, 0), (800, 0), (805, 0), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 0), (860, 1), (865, 0), (870, 1), (875, 1), (880, 1), (885, 1), (890, 0), (895, 0), (900, 0), (905, 1), (910, 0), (915, 1), (920, 0), (925, 0), (930, 1), (935, 0), (940, 0), (945, 0), (950, 1), (955, 1), (960, 1), (965, 1), (970, 1), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 1), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_5  din0_5  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.0v 44.745n 0.0v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.9v 59.745n 0.9v 59.755n 0.9v 64.745n 0.9v 64.755n 0.9v 69.745n 0.9v 69.755n 0.0v 74.745n 0.0v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.0v 89.745n 0.0v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.0v 119.745n 0.0v 119.755n 0.9v 124.745n 0.9v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.9v 139.745n 0.9v 139.755n 0.9v 144.745n 0.9v 144.755n 0.9v 149.745n 0.9v 149.755n 0.9v 154.745n 0.9v 154.755n 0.0v 159.745n 0.0v 159.755n 0.9v 164.745n 0.9v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.9v 204.745n 0.9v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.9v 229.745n 0.9v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.9v 379.745n 0.9v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.9v 399.745n 0.9v 399.755n 0.9v 404.745n 0.9v 404.755n 0.0v 409.745n 0.0v 409.755n 0.9v 414.745n 0.9v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.0v 454.745n 0.0v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.9v 509.745n 0.9v 509.755n 0.9v 514.745n 0.9v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.9v 564.745n 0.9v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.0v 584.745n 0.0v 584.755n 0.9v 589.745n 0.9v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.9v 619.745n 0.9v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.9v 644.745n 0.9v 644.755n 0.9v 649.745n 0.9v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.9v 684.745n 0.9v 684.755n 0.0v 689.745n 0.0v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.9v 759.745n 0.9v 759.755n 0.9v 764.745n 0.9v 764.755n 0.9v 769.745n 0.9v 769.755n 0.9v 774.745n 0.9v 774.755n 0.9v 779.745n 0.9v 779.755n 0.9v 784.745n 0.9v 784.755n 0.9v 789.745n 0.9v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.9v 854.745n 0.9v 854.755n 0.0v 859.745n 0.0v 859.755n 0.9v 864.745n 0.9v 864.755n 0.0v 869.745n 0.0v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.9v 909.745n 0.9v 909.755n 0.0v 914.745n 0.0v 914.755n 0.9v 919.745n 0.9v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.9v 934.745n 0.9v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 0), (45, 1), (50, 1), (55, 0), (60, 0), (65, 0), (70, 1), (75, 0), (80, 0), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 1), (155, 0), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 0), (210, 0), (215, 0), (220, 0), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 0), (255, 0), (260, 0), (265, 1), (270, 1), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 1), (355, 1), (360, 0), (365, 0), (370, 1), (375, 0), (380, 0), (385, 0), (390, 0), (395, 1), (400, 0), (405, 0), (410, 1), (415, 1), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 1), (455, 0), (460, 1), (465, 1), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 1), (500, 0), (505, 1), (510, 0), (515, 1), (520, 1), (525, 1), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 1), (565, 0), (570, 0), (575, 0), (580, 1), (585, 1), (590, 1), (595, 1), (600, 0), (605, 0), (610, 0), (615, 1), (620, 0), (625, 0), (630, 0), (635, 0), (640, 1), (645, 0), (650, 1), (655, 0), (660, 0), (665, 0), (670, 0), (675, 1), (680, 0), (685, 1), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 1), (765, 1), (770, 0), (775, 0), (780, 0), (785, 0), (790, 1), (795, 1), (800, 0), (805, 0), (810, 0), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 0), (860, 0), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 0), (910, 0), (915, 0), (920, 1), (925, 1), (930, 1), (935, 1), (940, 1), (945, 1), (950, 0), (955, 0), (960, 1), (965, 1), (970, 0), (975, 0), (980, 0), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 0), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Vdin0_6  din0_6  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.0v 44.745n 0.0v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.9v 74.745n 0.9v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.9v 154.745n 0.9v 154.755n 0.0v 159.745n 0.0v 159.755n 0.9v 164.745n 0.9v 164.755n 0.9v 169.745n 0.9v 169.755n 0.9v 174.745n 0.9v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.9v 194.745n 0.9v 194.755n 0.9v 199.745n 0.9v 199.755n 0.9v 204.745n 0.9v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.9v 229.745n 0.9v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.9v 374.745n 0.9v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.9v 399.745n 0.9v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.9v 414.745n 0.9v 414.755n 0.9v 419.745n 0.9v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.9v 454.745n 0.9v 454.755n 0.0v 459.745n 0.0v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.9v 499.745n 0.9v 499.755n 0.0v 504.745n 0.0v 504.755n 0.9v 509.745n 0.9v 509.755n 0.0v 514.745n 0.0v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.9v 564.745n 0.9v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.9v 619.745n 0.9v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.9v 644.745n 0.9v 644.755n 0.0v 649.745n 0.0v 649.755n 0.9v 654.745n 0.9v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.9v 679.745n 0.9v 679.755n 0.0v 684.745n 0.0v 684.755n 0.9v 689.745n 0.9v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.9v 764.745n 0.9v 764.755n 0.9v 769.745n 0.9v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.9v 819.745n 0.9v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.9v 854.745n 0.9v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.9v 894.745n 0.9v 894.755n 0.9v 899.745n 0.9v 899.755n 0.9v 904.745n 0.9v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.9v 989.745n 0.9v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 0), (20, 0), (25, 0), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 0), (60, 0), (65, 0), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 1), (160, 0), (165, 0), (170, 0), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 1), (235, 1), (240, 1), (245, 1), (250, 0), (255, 0), (260, 0), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 0), (365, 0), (370, 0), (375, 0), (380, 1), (385, 1), (390, 1), (395, 0), (400, 0), (405, 0), (410, 1), (415, 1), (420, 0), (425, 0), (430, 1), (435, 0), (440, 0), (445, 0), (450, 1), (455, 1), (460, 0), (465, 0), (470, 0), (475, 1), (480, 1), (485, 1), (490, 1), (495, 0), (500, 1), (505, 0), (510, 0), (515, 1), (520, 0), (525, 0), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 0), (565, 1), (570, 1), (575, 1), (580, 0), (585, 1), (590, 0), (595, 0), (600, 1), (605, 1), (610, 1), (615, 0), (620, 0), (625, 0), (630, 1), (635, 1), (640, 0), (645, 0), (650, 1), (655, 1), (660, 1), (665, 1), (670, 1), (675, 1), (680, 0), (685, 0), (690, 0), (695, 0), (700, 1), (705, 1), (710, 1), (715, 1), (720, 0), (725, 0), (730, 0), (735, 0), (740, 1), (745, 1), (750, 1), (755, 1), (760, 0), (765, 0), (770, 1), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 0), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 1), (895, 1), (900, 1), (905, 1), (910, 0), (915, 1), (920, 1), (925, 1), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 1), (975, 0), (980, 0), (985, 0), (990, 1), (995, 1), (1000, 1), (1005, 0), (1010, 1), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_7  din0_7  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.9v 14.745n 0.9v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.9v 44.745n 0.9v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.9v 74.745n 0.9v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.9v 159.745n 0.9v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.9v 194.745n 0.9v 194.755n 0.9v 199.745n 0.9v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.9v 414.745n 0.9v 414.755n 0.9v 419.745n 0.9v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.9v 434.745n 0.9v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.9v 454.745n 0.9v 454.755n 0.9v 459.745n 0.9v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.0v 499.745n 0.0v 499.755n 0.9v 504.745n 0.9v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.9v 519.745n 0.9v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.0v 564.745n 0.0v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.0v 584.745n 0.0v 584.755n 0.9v 589.745n 0.9v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.9v 634.745n 0.9v 634.755n 0.9v 639.745n 0.9v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.9v 759.745n 0.9v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.9v 774.745n 0.9v 774.755n 0.9v 779.745n 0.9v 779.755n 0.9v 784.745n 0.9v 784.755n 0.9v 789.745n 0.9v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.0v 814.745n 0.0v 814.755n 0.9v 819.745n 0.9v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.9v 854.745n 0.9v 854.755n 0.9v 859.745n 0.9v 859.755n 0.9v 864.745n 0.9v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.9v 894.745n 0.9v 894.755n 0.9v 899.745n 0.9v 899.755n 0.9v 904.745n 0.9v 904.755n 0.9v 909.745n 0.9v 909.755n 0.0v 914.745n 0.0v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.9v 974.745n 0.9v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 0), (50, 0), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 0), (160, 0), (165, 0), (170, 0), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 1), (230, 0), (235, 0), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 0), (365, 0), (370, 0), (375, 1), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 1), (420, 0), (425, 0), (430, 1), (435, 1), (440, 1), (445, 1), (450, 0), (455, 1), (460, 1), (465, 1), (470, 0), (475, 1), (480, 1), (485, 1), (490, 1), (495, 0), (500, 1), (505, 0), (510, 0), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 1), (585, 1), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 0), (650, 1), (655, 1), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 0), (725, 0), (730, 0), (735, 1), (740, 1), (745, 1), (750, 1), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 1), (805, 1), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 0), (895, 0), (900, 0), (905, 0), (910, 1), (915, 0), (920, 0), (925, 0), (930, 0), (935, 1), (940, 1), (945, 1), (950, 1), (955, 1), (960, 0), (965, 0), (970, 0), (975, 1), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 0), (1010, 0), (1015, 1), (1020, 0), (1025, 0)]
Vdin0_8  din0_8  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.9v 14.745n 0.9v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.9v 44.745n 0.9v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.9v 59.745n 0.9v 59.755n 0.9v 64.745n 0.9v 64.755n 0.9v 69.745n 0.9v 69.755n 0.9v 74.745n 0.9v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.9v 139.745n 0.9v 139.755n 0.9v 144.745n 0.9v 144.755n 0.9v 149.745n 0.9v 149.755n 0.9v 154.745n 0.9v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.9v 194.745n 0.9v 194.755n 0.9v 199.745n 0.9v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.9v 229.745n 0.9v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.9v 379.745n 0.9v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.9v 419.745n 0.9v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.0v 454.745n 0.0v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.0v 474.745n 0.0v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.0v 499.745n 0.0v 499.755n 0.9v 504.745n 0.9v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.9v 564.745n 0.9v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.9v 619.745n 0.9v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.9v 639.745n 0.9v 639.755n 0.9v 644.745n 0.9v 644.755n 0.0v 649.745n 0.0v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.9v 739.745n 0.9v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.9v 859.745n 0.9v 859.755n 0.9v 864.745n 0.9v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.9v 914.745n 0.9v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.9v 939.745n 0.9v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 1), (20, 1), (25, 1), (30, 0), (35, 0), (40, 1), (45, 1), (50, 1), (55, 0), (60, 0), (65, 0), (70, 0), (75, 1), (80, 1), (85, 0), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 0), (125, 1), (130, 0), (135, 0), (140, 0), (145, 0), (150, 1), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 1), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 0), (355, 0), (360, 1), (365, 1), (370, 1), (375, 0), (380, 0), (385, 0), (390, 0), (395, 1), (400, 1), (405, 1), (410, 1), (415, 0), (420, 0), (425, 0), (430, 1), (435, 0), (440, 0), (445, 0), (450, 1), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 1), (490, 1), (495, 0), (500, 0), (505, 1), (510, 1), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 0), (635, 0), (640, 1), (645, 0), (650, 0), (655, 1), (660, 1), (665, 1), (670, 1), (675, 1), (680, 0), (685, 0), (690, 1), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 0), (745, 0), (750, 0), (755, 0), (760, 1), (765, 1), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 1), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 1), (865, 0), (870, 1), (875, 1), (880, 1), (885, 0), (890, 1), (895, 1), (900, 1), (905, 1), (910, 0), (915, 1), (920, 0), (925, 1), (930, 1), (935, 1), (940, 1), (945, 1), (950, 1), (955, 1), (960, 0), (965, 0), (970, 1), (975, 1), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Vdin0_9  din0_9  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.9v 44.745n 0.9v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.0v 89.745n 0.0v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.9v 119.745n 0.9v 119.755n 0.0v 124.745n 0.0v 124.755n 0.9v 129.745n 0.9v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.9v 154.745n 0.9v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.9v 204.745n 0.9v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.9v 399.745n 0.9v 399.755n 0.9v 404.745n 0.9v 404.755n 0.9v 409.745n 0.9v 409.755n 0.9v 414.745n 0.9v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.9v 434.745n 0.9v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.9v 454.745n 0.9v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.9v 509.745n 0.9v 509.755n 0.9v 514.745n 0.9v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.9v 619.745n 0.9v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.9v 644.745n 0.9v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.9v 739.745n 0.9v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.9v 764.745n 0.9v 764.755n 0.9v 769.745n 0.9v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.9v 814.745n 0.9v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.9v 864.745n 0.9v 864.755n 0.0v 869.745n 0.0v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.0v 889.745n 0.0v 889.755n 0.9v 894.745n 0.9v 894.755n 0.9v 899.745n 0.9v 899.755n 0.9v 904.745n 0.9v 904.755n 0.9v 909.745n 0.9v 909.755n 0.0v 914.745n 0.0v 914.755n 0.9v 919.745n 0.9v 919.755n 0.0v 924.745n 0.0v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.9v 974.745n 0.9v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 1), (35, 1), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 1), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 1), (160, 0), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 1), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 1), (355, 1), (360, 0), (365, 0), (370, 1), (375, 1), (380, 0), (385, 0), (390, 0), (395, 0), (400, 1), (405, 1), (410, 1), (415, 1), (420, 0), (425, 0), (430, 1), (435, 0), (440, 0), (445, 0), (450, 1), (455, 0), (460, 1), (465, 1), (470, 1), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 1), (505, 1), (510, 1), (515, 1), (520, 0), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 0), (565, 1), (570, 1), (575, 1), (580, 1), (585, 0), (590, 1), (595, 1), (600, 0), (605, 0), (610, 0), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 0), (645, 1), (650, 1), (655, 1), (660, 1), (665, 0), (670, 0), (675, 0), (680, 0), (685, 1), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 1), (805, 1), (810, 0), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 0), (865, 0), (870, 1), (875, 1), (880, 1), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 1), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 1), (965, 1), (970, 0), (975, 0), (980, 0), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 1), (1020, 0), (1025, 0)]
Vdin0_10  din0_10  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.9v 129.745n 0.9v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.9v 159.745n 0.9v 159.755n 0.0v 164.745n 0.0v 164.755n 0.9v 169.745n 0.9v 169.755n 0.9v 174.745n 0.9v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.9v 194.745n 0.9v 194.755n 0.9v 199.745n 0.9v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.9v 229.745n 0.9v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.9v 404.745n 0.9v 404.755n 0.9v 409.745n 0.9v 409.755n 0.9v 414.745n 0.9v 414.755n 0.9v 419.745n 0.9v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.9v 434.745n 0.9v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.9v 454.745n 0.9v 454.755n 0.0v 459.745n 0.0v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.9v 474.745n 0.9v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.9v 504.745n 0.9v 504.755n 0.9v 509.745n 0.9v 509.755n 0.9v 514.745n 0.9v 514.755n 0.9v 519.745n 0.9v 519.755n 0.0v 524.745n 0.0v 524.755n 0.9v 529.745n 0.9v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.0v 564.745n 0.0v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.0v 589.745n 0.0v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.9v 619.745n 0.9v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.9v 639.745n 0.9v 639.755n 0.0v 644.745n 0.0v 644.755n 0.9v 649.745n 0.9v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.9v 689.745n 0.9v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.0v 814.745n 0.0v 814.755n 0.9v 819.745n 0.9v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.9v 854.745n 0.9v 854.755n 0.9v 859.745n 0.9v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.9v 919.745n 0.9v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.9v 989.745n 0.9v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 0), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 0), (75, 1), (80, 1), (85, 0), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 1), (230, 0), (235, 0), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 1), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 1), (440, 1), (445, 1), (450, 1), (455, 0), (460, 1), (465, 1), (470, 0), (475, 0), (480, 0), (485, 1), (490, 1), (495, 1), (500, 0), (505, 1), (510, 0), (515, 1), (520, 0), (525, 1), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 1), (570, 1), (575, 1), (580, 0), (585, 0), (590, 0), (595, 0), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 1), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 1), (695, 1), (700, 0), (705, 0), (710, 0), (715, 0), (720, 1), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 0), (775, 0), (780, 0), (785, 0), (790, 1), (795, 1), (800, 0), (805, 0), (810, 1), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 1), (865, 0), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 0), (910, 0), (915, 1), (920, 0), (925, 1), (930, 0), (935, 0), (940, 0), (945, 0), (950, 1), (955, 1), (960, 0), (965, 0), (970, 1), (975, 1), (980, 1), (985, 0), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 0), (1015, 1), (1020, 0), (1025, 0)]
Vdin0_11  din0_11  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.9v 14.745n 0.9v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.0v 44.745n 0.0v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.9v 59.745n 0.9v 59.755n 0.9v 64.745n 0.9v 64.755n 0.9v 69.745n 0.9v 69.755n 0.0v 74.745n 0.0v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.0v 89.745n 0.0v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.9v 194.745n 0.9v 194.755n 0.9v 199.745n 0.9v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.9v 229.745n 0.9v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.9v 399.745n 0.9v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.0v 459.745n 0.0v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.9v 499.745n 0.9v 499.755n 0.0v 504.745n 0.0v 504.755n 0.9v 509.745n 0.9v 509.755n 0.0v 514.745n 0.0v 514.755n 0.9v 519.745n 0.9v 519.755n 0.0v 524.745n 0.0v 524.755n 0.9v 529.745n 0.9v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.9v 619.745n 0.9v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.9v 639.745n 0.9v 639.755n 0.9v 644.745n 0.9v 644.755n 0.9v 649.745n 0.9v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.9v 724.745n 0.9v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.9v 739.745n 0.9v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.9v 759.745n 0.9v 759.755n 0.9v 764.745n 0.9v 764.755n 0.9v 769.745n 0.9v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.9v 814.745n 0.9v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.9v 864.745n 0.9v 864.755n 0.0v 869.745n 0.0v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.9v 894.745n 0.9v 894.755n 0.9v 899.745n 0.9v 899.755n 0.9v 904.745n 0.9v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.9v 919.745n 0.9v 919.755n 0.0v 924.745n 0.0v 924.755n 0.9v 929.745n 0.9v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.9v 974.745n 0.9v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.0v 989.745n 0.0v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 0), (60, 0), (65, 0), (70, 1), (75, 0), (80, 0), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 1), (160, 1), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 1), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 1), (235, 1), (240, 0), (245, 0), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 1), (355, 1), (360, 0), (365, 0), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 0), (400, 1), (405, 1), (410, 0), (415, 1), (420, 1), (425, 1), (430, 1), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 1), (510, 0), (515, 1), (520, 0), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 0), (605, 0), (610, 0), (615, 0), (620, 1), (625, 1), (630, 0), (635, 0), (640, 1), (645, 0), (650, 1), (655, 1), (660, 1), (665, 1), (670, 1), (675, 0), (680, 1), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 1), (745, 1), (750, 1), (755, 0), (760, 1), (765, 1), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 0), (860, 1), (865, 1), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 1), (900, 1), (905, 1), (910, 0), (915, 1), (920, 1), (925, 1), (930, 0), (935, 0), (940, 0), (945, 0), (950, 1), (955, 1), (960, 1), (965, 1), (970, 0), (975, 0), (980, 0), (985, 0), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Vdin0_12  din0_12  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.9v 44.745n 0.9v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.9v 74.745n 0.9v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.9v 159.745n 0.9v 159.755n 0.9v 164.745n 0.9v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.9v 204.745n 0.9v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.0v 399.745n 0.0v 399.755n 0.9v 404.745n 0.9v 404.755n 0.9v 409.745n 0.9v 409.755n 0.0v 414.745n 0.0v 414.755n 0.9v 419.745n 0.9v 419.755n 0.9v 424.745n 0.9v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.9v 509.745n 0.9v 509.755n 0.0v 514.745n 0.0v 514.755n 0.9v 519.745n 0.9v 519.755n 0.0v 524.745n 0.0v 524.755n 0.9v 529.745n 0.9v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.9v 564.745n 0.9v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.9v 644.745n 0.9v 644.755n 0.0v 649.745n 0.0v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.0v 679.745n 0.0v 679.755n 0.9v 684.745n 0.9v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.0v 759.745n 0.0v 759.755n 0.9v 764.745n 0.9v 764.755n 0.9v 769.745n 0.9v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.9v 854.745n 0.9v 854.755n 0.0v 859.745n 0.0v 859.755n 0.9v 864.745n 0.9v 864.755n 0.9v 869.745n 0.9v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.9v 899.745n 0.9v 899.755n 0.9v 904.745n 0.9v 904.755n 0.9v 909.745n 0.9v 909.755n 0.0v 914.745n 0.0v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 0), (20, 0), (25, 0), (30, 1), (35, 1), (40, 1), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 1), (75, 1), (80, 1), (85, 0), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 0), (155, 1), (160, 1), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 1), (205, 0), (210, 0), (215, 0), (220, 0), (225, 1), (230, 0), (235, 0), (240, 1), (245, 1), (250, 0), (255, 0), (260, 0), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 0), (355, 0), (360, 0), (365, 0), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 0), (415, 1), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 0), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 0), (505, 1), (510, 1), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 1), (550, 1), (555, 1), (560, 0), (565, 1), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 0), (605, 0), (610, 0), (615, 0), (620, 1), (625, 1), (630, 0), (635, 0), (640, 0), (645, 1), (650, 0), (655, 1), (660, 1), (665, 0), (670, 0), (675, 0), (680, 1), (685, 0), (690, 0), (695, 0), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 1), (805, 1), (810, 1), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 1), (890, 1), (895, 0), (900, 0), (905, 0), (910, 1), (915, 0), (920, 0), (925, 1), (930, 0), (935, 1), (940, 1), (945, 1), (950, 0), (955, 0), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 1), (1010, 0), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_13  din0_13  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.9v 14.745n 0.9v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.9v 44.745n 0.9v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.9v 74.745n 0.9v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.0v 89.745n 0.0v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.9v 139.745n 0.9v 139.755n 0.9v 144.745n 0.9v 144.755n 0.9v 149.745n 0.9v 149.755n 0.0v 154.745n 0.0v 154.755n 0.9v 159.745n 0.9v 159.755n 0.9v 164.745n 0.9v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.9v 204.745n 0.9v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.9v 229.745n 0.9v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.9v 404.745n 0.9v 404.755n 0.9v 409.745n 0.9v 409.755n 0.0v 414.745n 0.0v 414.755n 0.9v 419.745n 0.9v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.9v 499.745n 0.9v 499.755n 0.0v 504.745n 0.0v 504.755n 0.9v 509.745n 0.9v 509.755n 0.9v 514.745n 0.9v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.0v 564.745n 0.0v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.9v 649.745n 0.9v 649.755n 0.0v 654.745n 0.0v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.9v 684.745n 0.9v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.9v 889.745n 0.9v 889.755n 0.9v 894.745n 0.9v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.9v 914.745n 0.9v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.9v 929.745n 0.9v 929.755n 0.0v 934.745n 0.0v 934.755n 0.9v 939.745n 0.9v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 0), (35, 0), (40, 1), (45, 1), (50, 1), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 1), (120, 0), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 0), (155, 1), (160, 1), (165, 1), (170, 1), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 1), (230, 0), (235, 0), (240, 0), (245, 0), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 1), (365, 1), (370, 0), (375, 0), (380, 1), (385, 1), (390, 1), (395, 1), (400, 0), (405, 0), (410, 1), (415, 1), (420, 0), (425, 0), (430, 1), (435, 1), (440, 1), (445, 1), (450, 0), (455, 1), (460, 1), (465, 1), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 1), (510, 0), (515, 0), (520, 1), (525, 0), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 0), (565, 1), (570, 1), (575, 1), (580, 0), (585, 1), (590, 1), (595, 1), (600, 0), (605, 0), (610, 0), (615, 0), (620, 1), (625, 1), (630, 0), (635, 0), (640, 0), (645, 1), (650, 1), (655, 0), (660, 0), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 1), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 1), (860, 1), (865, 1), (870, 0), (875, 0), (880, 0), (885, 1), (890, 0), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 1), (965, 1), (970, 0), (975, 1), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_14  din0_14  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.9v 14.745n 0.9v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.9v 44.745n 0.9v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.9v 119.745n 0.9v 119.755n 0.0v 124.745n 0.0v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.9v 139.745n 0.9v 139.755n 0.9v 144.745n 0.9v 144.755n 0.9v 149.745n 0.9v 149.755n 0.0v 154.745n 0.0v 154.755n 0.9v 159.745n 0.9v 159.755n 0.9v 164.745n 0.9v 164.755n 0.9v 169.745n 0.9v 169.755n 0.9v 174.745n 0.9v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.9v 229.745n 0.9v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.9v 414.745n 0.9v 414.755n 0.9v 419.745n 0.9v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.0v 454.745n 0.0v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.9v 509.745n 0.9v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.9v 524.745n 0.9v 524.755n 0.0v 529.745n 0.0v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.0v 564.745n 0.0v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.0v 584.745n 0.0v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.9v 649.745n 0.9v 649.755n 0.9v 654.745n 0.9v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.9v 814.745n 0.9v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.9v 859.745n 0.9v 859.755n 0.9v 864.745n 0.9v 864.755n 0.9v 869.745n 0.9v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.9v 889.745n 0.9v 889.755n 0.0v 894.745n 0.0v 894.755n 0.9v 899.745n 0.9v 899.755n 0.9v 904.745n 0.9v 904.755n 0.9v 909.745n 0.9v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.0v 974.745n 0.0v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 1), (20, 1), (25, 1), (30, 0), (35, 0), (40, 1), (45, 0), (50, 0), (55, 1), (60, 1), (65, 1), (70, 1), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 1), (380, 0), (385, 0), (390, 0), (395, 1), (400, 1), (405, 1), (410, 0), (415, 0), (420, 0), (425, 0), (430, 1), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 0), (500, 1), (505, 1), (510, 1), (515, 1), (520, 0), (525, 1), (530, 1), (535, 1), (540, 1), (545, 0), (550, 0), (555, 0), (560, 1), (565, 1), (570, 1), (575, 1), (580, 1), (585, 0), (590, 1), (595, 1), (600, 0), (605, 0), (610, 0), (615, 1), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 1), (655, 0), (660, 0), (665, 1), (670, 1), (675, 1), (680, 1), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 1), (740, 1), (745, 1), (750, 1), (755, 1), (760, 0), (765, 0), (770, 1), (775, 1), (780, 1), (785, 1), (790, 0), (795, 0), (800, 0), (805, 0), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 0), (860, 0), (865, 1), (870, 1), (875, 1), (880, 1), (885, 0), (890, 0), (895, 1), (900, 1), (905, 1), (910, 0), (915, 0), (920, 1), (925, 0), (930, 1), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 1), (975, 1), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 0), (1010, 0), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_15  din0_15  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.0v 14.745n 0.0v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.9v 44.745n 0.9v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.9v 59.745n 0.9v 59.755n 0.9v 64.745n 0.9v 64.755n 0.9v 69.745n 0.9v 69.755n 0.9v 74.745n 0.9v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.9v 139.745n 0.9v 139.755n 0.9v 144.745n 0.9v 144.755n 0.9v 149.745n 0.9v 149.755n 0.9v 154.745n 0.9v 154.755n 0.9v 159.745n 0.9v 159.755n 0.9v 164.745n 0.9v 164.755n 0.9v 169.745n 0.9v 169.755n 0.9v 174.745n 0.9v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.9v 194.745n 0.9v 194.755n 0.9v 199.745n 0.9v 199.755n 0.9v 204.745n 0.9v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.9v 379.745n 0.9v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.9v 399.745n 0.9v 399.755n 0.9v 404.745n 0.9v 404.755n 0.9v 409.745n 0.9v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.9v 434.745n 0.9v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.9v 474.745n 0.9v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.0v 499.745n 0.0v 499.755n 0.9v 504.745n 0.9v 504.755n 0.9v 509.745n 0.9v 509.755n 0.9v 514.745n 0.9v 514.755n 0.9v 519.745n 0.9v 519.755n 0.0v 524.745n 0.0v 524.755n 0.9v 529.745n 0.9v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.9v 564.745n 0.9v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.0v 589.745n 0.0v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.9v 619.745n 0.9v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.9v 654.745n 0.9v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.9v 739.745n 0.9v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.9v 759.745n 0.9v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.9v 774.745n 0.9v 774.755n 0.9v 779.745n 0.9v 779.755n 0.9v 784.745n 0.9v 784.755n 0.9v 789.745n 0.9v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.9v 854.745n 0.9v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.9v 899.745n 0.9v 899.755n 0.9v 904.745n 0.9v 904.755n 0.9v 909.745n 0.9v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.9v 924.745n 0.9v 924.755n 0.0v 929.745n 0.0v 929.755n 0.9v 934.745n 0.9v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.9v 974.745n 0.9v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 0), (125, 0), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 0), (160, 0), (165, 0), (170, 0), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 0), (210, 0), (215, 0), (220, 0), (225, 1), (230, 1), (235, 1), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 0), (405, 1), (410, 1), (415, 0), (420, 1), (425, 1), (430, 0), (435, 1), (440, 1), (445, 1), (450, 0), (455, 1), (460, 0), (465, 0), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 0), (500, 0), (505, 0), (510, 1), (515, 1), (520, 0), (525, 1), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 1), (570, 1), (575, 1), (580, 1), (585, 0), (590, 0), (595, 0), (600, 1), (605, 1), (610, 1), (615, 1), (620, 0), (625, 0), (630, 0), (635, 0), (640, 1), (645, 1), (650, 0), (655, 0), (660, 0), (665, 1), (670, 1), (675, 1), (680, 1), (685, 0), (690, 1), (695, 1), (700, 0), (705, 0), (710, 0), (715, 0), (720, 1), (725, 1), (730, 1), (735, 1), (740, 0), (745, 0), (750, 0), (755, 0), (760, 1), (765, 1), (770, 1), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 1), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 1), (895, 1), (900, 1), (905, 1), (910, 0), (915, 0), (920, 0), (925, 1), (930, 1), (935, 1), (940, 1), (945, 1), (950, 1), (955, 1), (960, 0), (965, 0), (970, 1), (975, 0), (980, 0), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_16  din0_16  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.9v 14.745n 0.9v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.9v 44.745n 0.9v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.9v 59.745n 0.9v 59.755n 0.9v 64.745n 0.9v 64.755n 0.9v 69.745n 0.9v 69.755n 0.9v 74.745n 0.9v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.9v 119.745n 0.9v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.9v 134.745n 0.9v 134.755n 0.9v 139.745n 0.9v 139.755n 0.9v 144.745n 0.9v 144.755n 0.9v 149.745n 0.9v 149.755n 0.9v 154.745n 0.9v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.9v 194.745n 0.9v 194.755n 0.9v 199.745n 0.9v 199.755n 0.9v 204.745n 0.9v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.9v 229.745n 0.9v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.0v 404.745n 0.0v 404.755n 0.9v 409.745n 0.9v 409.755n 0.9v 414.745n 0.9v 414.755n 0.0v 419.745n 0.0v 419.755n 0.9v 424.745n 0.9v 424.755n 0.9v 429.745n 0.9v 429.755n 0.0v 434.745n 0.0v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.0v 454.745n 0.0v 454.755n 0.9v 459.745n 0.9v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.9v 474.745n 0.9v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.9v 514.745n 0.9v 514.755n 0.9v 519.745n 0.9v 519.755n 0.0v 524.745n 0.0v 524.755n 0.9v 529.745n 0.9v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.9v 619.745n 0.9v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.9v 644.745n 0.9v 644.755n 0.9v 649.745n 0.9v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.0v 689.745n 0.0v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.9v 724.745n 0.9v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.9v 739.745n 0.9v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.9v 764.745n 0.9v 764.755n 0.9v 769.745n 0.9v 769.755n 0.9v 774.745n 0.9v 774.755n 0.9v 779.745n 0.9v 779.755n 0.9v 784.745n 0.9v 784.755n 0.9v 789.745n 0.9v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.9v 864.745n 0.9v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.9v 894.745n 0.9v 894.755n 0.9v 899.745n 0.9v 899.755n 0.9v 904.745n 0.9v 904.755n 0.9v 909.745n 0.9v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.9v 974.745n 0.9v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.9v 989.745n 0.9v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 1), (60, 1), (65, 1), (70, 1), (75, 0), (80, 0), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 1), (160, 1), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 1), (230, 1), (235, 1), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 1), (365, 1), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 1), (400, 0), (405, 1), (410, 0), (415, 1), (420, 1), (425, 1), (430, 0), (435, 1), (440, 1), (445, 1), (450, 1), (455, 0), (460, 1), (465, 1), (470, 0), (475, 1), (480, 1), (485, 0), (490, 0), (495, 0), (500, 0), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 1), (565, 1), (570, 1), (575, 1), (580, 1), (585, 0), (590, 1), (595, 1), (600, 0), (605, 0), (610, 0), (615, 0), (620, 1), (625, 1), (630, 0), (635, 0), (640, 1), (645, 1), (650, 1), (655, 1), (660, 1), (665, 0), (670, 0), (675, 1), (680, 1), (685, 0), (690, 0), (695, 0), (700, 1), (705, 1), (710, 1), (715, 1), (720, 0), (725, 0), (730, 0), (735, 0), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 1), (775, 1), (780, 1), (785, 1), (790, 0), (795, 0), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 0), (870, 1), (875, 1), (880, 1), (885, 0), (890, 0), (895, 0), (900, 0), (905, 1), (910, 0), (915, 1), (920, 0), (925, 1), (930, 1), (935, 1), (940, 1), (945, 1), (950, 1), (955, 1), (960, 1), (965, 1), (970, 1), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Vdin0_17  din0_17  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.9v 14.745n 0.9v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.9v 59.745n 0.9v 59.755n 0.9v 64.745n 0.9v 64.755n 0.9v 69.745n 0.9v 69.755n 0.9v 74.745n 0.9v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.9v 159.745n 0.9v 159.755n 0.9v 164.745n 0.9v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.9v 229.745n 0.9v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.9v 399.745n 0.9v 399.755n 0.0v 404.745n 0.0v 404.755n 0.9v 409.745n 0.9v 409.755n 0.0v 414.745n 0.0v 414.755n 0.9v 419.745n 0.9v 419.755n 0.9v 424.745n 0.9v 424.755n 0.9v 429.745n 0.9v 429.755n 0.0v 434.745n 0.0v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.0v 459.745n 0.0v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.0v 474.745n 0.0v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.9v 509.745n 0.9v 509.755n 0.9v 514.745n 0.9v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.9v 564.745n 0.9v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.0v 589.745n 0.0v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.9v 644.745n 0.9v 644.755n 0.9v 649.745n 0.9v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.9v 759.745n 0.9v 759.755n 0.9v 764.745n 0.9v 764.755n 0.9v 769.745n 0.9v 769.755n 0.9v 774.745n 0.9v 774.755n 0.9v 779.745n 0.9v 779.755n 0.9v 784.745n 0.9v 784.755n 0.9v 789.745n 0.9v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.9v 854.745n 0.9v 854.755n 0.9v 859.745n 0.9v 859.755n 0.9v 864.745n 0.9v 864.755n 0.0v 869.745n 0.0v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.9v 909.745n 0.9v 909.755n 0.0v 914.745n 0.0v 914.755n 0.9v 919.745n 0.9v 919.755n 0.0v 924.745n 0.0v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 1), (50, 1), (55, 0), (60, 0), (65, 0), (70, 0), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 0), (120, 1), (125, 0), (130, 1), (135, 1), (140, 1), (145, 1), (150, 0), (155, 0), (160, 0), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 1), (355, 1), (360, 0), (365, 0), (370, 1), (375, 0), (380, 0), (385, 0), (390, 0), (395, 1), (400, 0), (405, 0), (410, 1), (415, 1), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 1), (475, 1), (480, 1), (485, 0), (490, 0), (495, 1), (500, 0), (505, 0), (510, 1), (515, 1), (520, 1), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 1), (570, 1), (575, 1), (580, 1), (585, 1), (590, 0), (595, 0), (600, 1), (605, 1), (610, 1), (615, 0), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 1), (650, 0), (655, 1), (660, 1), (665, 1), (670, 1), (675, 1), (680, 0), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 0), (725, 0), (730, 0), (735, 1), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 1), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 0), (870, 0), (875, 0), (880, 0), (885, 1), (890, 1), (895, 0), (900, 0), (905, 0), (910, 1), (915, 1), (920, 0), (925, 1), (930, 1), (935, 1), (940, 1), (945, 1), (950, 1), (955, 1), (960, 1), (965, 1), (970, 1), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Vdin0_18  din0_18  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.0v 119.745n 0.0v 119.755n 0.9v 124.745n 0.9v 124.755n 0.0v 129.745n 0.0v 129.755n 0.9v 134.745n 0.9v 134.755n 0.9v 139.745n 0.9v 139.755n 0.9v 144.745n 0.9v 144.755n 0.9v 149.745n 0.9v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.9v 169.745n 0.9v 169.755n 0.9v 174.745n 0.9v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.9v 194.745n 0.9v 194.755n 0.9v 199.745n 0.9v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.9v 374.745n 0.9v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.9v 399.745n 0.9v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.9v 414.745n 0.9v 414.755n 0.9v 419.745n 0.9v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.9v 474.745n 0.9v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.9v 499.745n 0.9v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.9v 514.745n 0.9v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.0v 619.745n 0.0v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.9v 639.745n 0.9v 639.755n 0.9v 644.745n 0.9v 644.755n 0.9v 649.745n 0.9v 649.755n 0.0v 654.745n 0.0v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.0v 684.745n 0.0v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.9v 739.745n 0.9v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.9v 759.745n 0.9v 759.755n 0.9v 764.745n 0.9v 764.755n 0.9v 769.745n 0.9v 769.755n 0.9v 774.745n 0.9v 774.755n 0.9v 779.745n 0.9v 779.755n 0.9v 784.745n 0.9v 784.755n 0.9v 789.745n 0.9v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.9v 854.745n 0.9v 854.755n 0.9v 859.745n 0.9v 859.755n 0.9v 864.745n 0.9v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.9v 889.745n 0.9v 889.755n 0.9v 894.745n 0.9v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.0v 924.745n 0.0v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 0), (45, 0), (50, 0), (55, 1), (60, 1), (65, 1), (70, 0), (75, 1), (80, 1), (85, 0), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 1), (155, 1), (160, 1), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 1), (210, 1), (215, 1), (220, 1), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 0), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 1), (415, 0), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 0), (455, 1), (460, 0), (465, 0), (470, 1), (475, 0), (480, 0), (485, 0), (490, 0), (495, 1), (500, 1), (505, 0), (510, 1), (515, 0), (520, 1), (525, 1), (530, 0), (535, 0), (540, 0), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 0), (605, 0), (610, 0), (615, 0), (620, 1), (625, 1), (630, 1), (635, 1), (640, 0), (645, 1), (650, 1), (655, 0), (660, 0), (665, 1), (670, 1), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 1), (745, 1), (750, 1), (755, 1), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 0), (870, 1), (875, 1), (880, 1), (885, 0), (890, 0), (895, 1), (900, 1), (905, 0), (910, 1), (915, 0), (920, 1), (925, 0), (930, 1), (935, 0), (940, 0), (945, 0), (950, 1), (955, 1), (960, 1), (965, 1), (970, 0), (975, 1), (980, 1), (985, 0), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_19  din0_19  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.9v 14.745n 0.9v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.9v 59.745n 0.9v 59.755n 0.9v 64.745n 0.9v 64.755n 0.9v 69.745n 0.9v 69.755n 0.0v 74.745n 0.0v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.0v 89.745n 0.0v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.9v 154.745n 0.9v 154.755n 0.9v 159.745n 0.9v 159.755n 0.9v 164.745n 0.9v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.0v 379.745n 0.0v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.9v 404.745n 0.9v 404.755n 0.9v 409.745n 0.9v 409.755n 0.9v 414.745n 0.9v 414.755n 0.0v 419.745n 0.0v 419.755n 0.9v 424.745n 0.9v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.0v 454.745n 0.0v 454.755n 0.9v 459.745n 0.9v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.9v 474.745n 0.9v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.0v 509.745n 0.0v 509.755n 0.9v 514.745n 0.9v 514.755n 0.0v 519.745n 0.0v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.9v 564.745n 0.9v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.9v 639.745n 0.9v 639.755n 0.0v 644.745n 0.0v 644.755n 0.9v 649.745n 0.9v 649.755n 0.9v 654.745n 0.9v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.9v 759.745n 0.9v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.9v 854.745n 0.9v 854.755n 0.9v 859.745n 0.9v 859.755n 0.9v 864.745n 0.9v 864.755n 0.0v 869.745n 0.0v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.9v 899.745n 0.9v 899.755n 0.9v 904.745n 0.9v 904.755n 0.0v 909.745n 0.0v 909.755n 0.9v 914.745n 0.9v 914.755n 0.0v 919.745n 0.0v 919.755n 0.9v 924.745n 0.9v 924.755n 0.0v 929.745n 0.0v 929.755n 0.9v 934.745n 0.9v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.0v 974.745n 0.0v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.0v 989.745n 0.0v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 0), (35, 0), (40, 1), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 0), (120, 0), (125, 1), (130, 0), (135, 0), (140, 0), (145, 0), (150, 1), (155, 0), (160, 0), (165, 1), (170, 1), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 1), (210, 1), (215, 1), (220, 1), (225, 1), (230, 0), (235, 0), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 0), (355, 0), (360, 0), (365, 0), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 0), (400, 0), (405, 0), (410, 1), (415, 1), (420, 0), (425, 0), (430, 0), (435, 1), (440, 1), (445, 1), (450, 0), (455, 1), (460, 1), (465, 1), (470, 0), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 0), (505, 1), (510, 1), (515, 0), (520, 1), (525, 1), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 1), (585, 0), (590, 0), (595, 0), (600, 1), (605, 1), (610, 1), (615, 0), (620, 1), (625, 1), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 0), (665, 1), (670, 1), (675, 1), (680, 0), (685, 0), (690, 0), (695, 0), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 0), (740, 1), (745, 1), (750, 1), (755, 0), (760, 1), (765, 1), (770, 1), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 0), (805, 0), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 0), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 0), (890, 1), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 1), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 1), (965, 1), (970, 1), (975, 0), (980, 0), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 0), (1010, 1), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_20  din0_20  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.9v 14.745n 0.9v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.9v 44.745n 0.9v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.9v 74.745n 0.9v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.9v 129.745n 0.9v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.9v 154.745n 0.9v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.9v 169.745n 0.9v 169.755n 0.9v 174.745n 0.9v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.9v 229.745n 0.9v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.9v 414.745n 0.9v 414.755n 0.9v 419.745n 0.9v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.0v 454.745n 0.0v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.0v 474.745n 0.0v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.9v 499.745n 0.9v 499.755n 0.0v 504.745n 0.0v 504.755n 0.9v 509.745n 0.9v 509.755n 0.9v 514.745n 0.9v 514.755n 0.0v 519.745n 0.0v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.9v 584.745n 0.9v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.0v 619.745n 0.0v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.0v 739.745n 0.0v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.0v 759.745n 0.0v 759.755n 0.9v 764.745n 0.9v 764.755n 0.9v 769.745n 0.9v 769.755n 0.9v 774.745n 0.9v 774.755n 0.9v 779.745n 0.9v 779.755n 0.9v 784.745n 0.9v 784.755n 0.9v 789.745n 0.9v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.9v 854.745n 0.9v 854.755n 0.0v 859.745n 0.0v 859.755n 0.9v 864.745n 0.9v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.0v 889.745n 0.0v 889.755n 0.9v 894.745n 0.9v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.9v 924.745n 0.9v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.9v 989.745n 0.9v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 0), (20, 0), (25, 0), (30, 1), (35, 1), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 0), (120, 0), (125, 1), (130, 0), (135, 0), (140, 0), (145, 0), (150, 1), (155, 1), (160, 0), (165, 0), (170, 0), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 1), (230, 0), (235, 0), (240, 1), (245, 1), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 0), (375, 1), (380, 1), (385, 1), (390, 1), (395, 0), (400, 0), (405, 1), (410, 1), (415, 0), (420, 1), (425, 1), (430, 1), (435, 0), (440, 0), (445, 0), (450, 1), (455, 0), (460, 0), (465, 0), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 0), (505, 1), (510, 0), (515, 1), (520, 1), (525, 1), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 1), (565, 0), (570, 0), (575, 0), (580, 1), (585, 0), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 0), (635, 0), (640, 1), (645, 1), (650, 1), (655, 0), (660, 0), (665, 0), (670, 0), (675, 0), (680, 1), (685, 0), (690, 0), (695, 0), (700, 1), (705, 1), (710, 1), (715, 1), (720, 0), (725, 0), (730, 0), (735, 1), (740, 1), (745, 1), (750, 1), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 1), (910, 0), (915, 0), (920, 1), (925, 0), (930, 1), (935, 1), (940, 1), (945, 1), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 1), (995, 1), (1000, 1), (1005, 0), (1010, 0), (1015, 1), (1020, 0), (1025, 0)]
Vdin0_21  din0_21  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.9v 14.745n 0.9v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.9v 129.745n 0.9v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.9v 154.745n 0.9v 154.755n 0.9v 159.745n 0.9v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.9v 194.745n 0.9v 194.755n 0.9v 199.745n 0.9v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.9v 229.745n 0.9v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.0v 374.745n 0.0v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.9v 409.745n 0.9v 409.755n 0.9v 414.745n 0.9v 414.755n 0.0v 419.745n 0.0v 419.755n 0.9v 424.745n 0.9v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.9v 454.745n 0.9v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.9v 474.745n 0.9v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.9v 499.745n 0.9v 499.755n 0.0v 504.745n 0.0v 504.755n 0.9v 509.745n 0.9v 509.755n 0.0v 514.745n 0.0v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.9v 564.745n 0.9v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.9v 584.745n 0.9v 584.755n 0.0v 589.745n 0.0v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.9v 619.745n 0.9v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.9v 644.745n 0.9v 644.755n 0.9v 649.745n 0.9v 649.755n 0.9v 654.745n 0.9v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.9v 684.745n 0.9v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.9v 739.745n 0.9v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.9v 819.745n 0.9v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.9v 854.745n 0.9v 854.755n 0.9v 859.745n 0.9v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.9v 909.745n 0.9v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.9v 924.745n 0.9v 924.755n 0.0v 929.745n 0.0v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 0), (20, 0), (25, 0), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 1), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 1), (230, 1), (235, 1), (240, 0), (245, 0), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 1), (365, 1), (370, 1), (375, 0), (380, 0), (385, 0), (390, 0), (395, 1), (400, 1), (405, 0), (410, 0), (415, 1), (420, 0), (425, 0), (430, 0), (435, 1), (440, 1), (445, 1), (450, 0), (455, 1), (460, 1), (465, 1), (470, 1), (475, 0), (480, 0), (485, 1), (490, 1), (495, 0), (500, 1), (505, 1), (510, 1), (515, 1), (520, 0), (525, 1), (530, 1), (535, 1), (540, 1), (545, 0), (550, 0), (555, 0), (560, 1), (565, 1), (570, 1), (575, 1), (580, 0), (585, 1), (590, 0), (595, 0), (600, 1), (605, 1), (610, 1), (615, 1), (620, 0), (625, 0), (630, 0), (635, 0), (640, 1), (645, 1), (650, 1), (655, 0), (660, 0), (665, 1), (670, 1), (675, 0), (680, 0), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 0), (740, 1), (745, 1), (750, 1), (755, 0), (760, 1), (765, 1), (770, 0), (775, 0), (780, 0), (785, 0), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 0), (890, 0), (895, 0), (900, 0), (905, 1), (910, 0), (915, 0), (920, 1), (925, 0), (930, 1), (935, 1), (940, 1), (945, 1), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 1), (980, 1), (985, 0), (990, 1), (995, 1), (1000, 1), (1005, 0), (1010, 0), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_22  din0_22  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.9v 44.745n 0.9v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.9v 59.745n 0.9v 59.755n 0.9v 64.745n 0.9v 64.755n 0.9v 69.745n 0.9v 69.755n 0.9v 74.745n 0.9v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.9v 159.745n 0.9v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.9v 229.745n 0.9v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.9v 399.745n 0.9v 399.755n 0.9v 404.745n 0.9v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.9v 419.745n 0.9v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.0v 454.745n 0.0v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.9v 474.745n 0.9v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.0v 499.745n 0.0v 499.755n 0.9v 504.745n 0.9v 504.755n 0.9v 509.745n 0.9v 509.755n 0.9v 514.745n 0.9v 514.755n 0.9v 519.745n 0.9v 519.755n 0.0v 524.745n 0.0v 524.755n 0.9v 529.745n 0.9v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.9v 564.745n 0.9v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.0v 584.745n 0.0v 584.755n 0.9v 589.745n 0.9v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.9v 619.745n 0.9v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.9v 644.745n 0.9v 644.755n 0.9v 649.745n 0.9v 649.755n 0.9v 654.745n 0.9v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.0v 739.745n 0.0v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.0v 759.745n 0.0v 759.755n 0.9v 764.745n 0.9v 764.755n 0.9v 769.745n 0.9v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.9v 864.745n 0.9v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.9v 909.745n 0.9v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.9v 924.745n 0.9v 924.755n 0.0v 929.745n 0.0v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.0v 989.745n 0.0v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 0), (35, 0), (40, 0), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 0), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 1), (230, 0), (235, 0), (240, 1), (245, 1), (250, 0), (255, 0), (260, 0), (265, 1), (270, 1), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 0), (355, 0), (360, 1), (365, 1), (370, 1), (375, 0), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 0), (415, 1), (420, 1), (425, 1), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 0), (500, 0), (505, 0), (510, 1), (515, 0), (520, 0), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 0), (570, 0), (575, 0), (580, 1), (585, 1), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 1), (645, 1), (650, 1), (655, 1), (660, 1), (665, 0), (670, 0), (675, 1), (680, 0), (685, 0), (690, 1), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 0), (860, 0), (865, 0), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 0), (900, 0), (905, 0), (910, 1), (915, 1), (920, 0), (925, 0), (930, 1), (935, 1), (940, 1), (945, 1), (950, 1), (955, 1), (960, 0), (965, 0), (970, 0), (975, 1), (980, 1), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 1), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Vdin0_23  din0_23  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.9v 14.745n 0.9v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.9v 59.745n 0.9v 59.755n 0.9v 64.745n 0.9v 64.755n 0.9v 69.745n 0.9v 69.755n 0.9v 74.745n 0.9v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.0v 129.745n 0.0v 129.755n 0.9v 134.745n 0.9v 134.755n 0.9v 139.745n 0.9v 139.755n 0.9v 144.745n 0.9v 144.755n 0.9v 149.745n 0.9v 149.755n 0.9v 154.745n 0.9v 154.755n 0.9v 159.745n 0.9v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.9v 229.745n 0.9v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.0v 379.745n 0.0v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.9v 404.745n 0.9v 404.755n 0.9v 409.745n 0.9v 409.755n 0.0v 414.745n 0.0v 414.755n 0.9v 419.745n 0.9v 419.755n 0.9v 424.745n 0.9v 424.755n 0.9v 429.745n 0.9v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.9v 474.745n 0.9v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.9v 514.745n 0.9v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.9v 529.745n 0.9v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.9v 564.745n 0.9v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.9v 644.745n 0.9v 644.755n 0.9v 649.745n 0.9v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.9v 679.745n 0.9v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.9v 739.745n 0.9v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.9v 819.745n 0.9v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.9v 854.745n 0.9v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.9v 894.745n 0.9v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 0), (20, 0), (25, 0), (30, 1), (35, 1), (40, 0), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 0), (80, 0), (85, 1), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 0), (205, 1), (210, 1), (215, 1), (220, 1), (225, 1), (230, 1), (235, 1), (240, 0), (245, 0), (250, 1), (255, 1), (260, 1), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 1), (400, 1), (405, 1), (410, 0), (415, 0), (420, 1), (425, 1), (430, 1), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 1), (465, 1), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 1), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 1), (585, 1), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 1), (620, 1), (625, 1), (630, 0), (635, 0), (640, 0), (645, 0), (650, 1), (655, 0), (660, 0), (665, 1), (670, 1), (675, 1), (680, 0), (685, 1), (690, 1), (695, 1), (700, 0), (705, 0), (710, 0), (715, 0), (720, 1), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 1), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 1), (865, 1), (870, 0), (875, 0), (880, 0), (885, 1), (890, 1), (895, 0), (900, 0), (905, 0), (910, 1), (915, 0), (920, 0), (925, 1), (930, 1), (935, 1), (940, 1), (945, 1), (950, 0), (955, 0), (960, 0), (965, 0), (970, 1), (975, 0), (980, 0), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_24  din0_24  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.9v 14.745n 0.9v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.0v 44.745n 0.0v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.9v 59.745n 0.9v 59.755n 0.9v 64.745n 0.9v 64.755n 0.9v 69.745n 0.9v 69.755n 0.9v 74.745n 0.9v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.9v 89.745n 0.9v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.9v 124.745n 0.9v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.9v 139.745n 0.9v 139.755n 0.9v 144.745n 0.9v 144.755n 0.9v 149.745n 0.9v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.9v 194.745n 0.9v 194.755n 0.9v 199.745n 0.9v 199.755n 0.0v 204.745n 0.0v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.9v 229.745n 0.9v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.9v 399.745n 0.9v 399.755n 0.9v 404.745n 0.9v 404.755n 0.9v 409.745n 0.9v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.9v 424.745n 0.9v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.9v 529.745n 0.9v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.9v 619.745n 0.9v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.9v 654.745n 0.9v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.0v 684.745n 0.0v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.9v 724.745n 0.9v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.9v 739.745n 0.9v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.9v 814.745n 0.9v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.9v 864.745n 0.9v 864.755n 0.9v 869.745n 0.9v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.9v 889.745n 0.9v 889.755n 0.9v 894.745n 0.9v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.9v 914.745n 0.9v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.9v 974.745n 0.9v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.9v 989.745n 0.9v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 0), (20, 0), (25, 0), (30, 1), (35, 1), (40, 0), (45, 0), (50, 0), (55, 1), (60, 1), (65, 1), (70, 0), (75, 0), (80, 0), (85, 1), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 1), (120, 0), (125, 0), (130, 1), (135, 1), (140, 1), (145, 1), (150, 0), (155, 0), (160, 0), (165, 1), (170, 1), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 0), (230, 1), (235, 1), (240, 1), (245, 1), (250, 0), (255, 0), (260, 0), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 1), (365, 1), (370, 0), (375, 1), (380, 1), (385, 1), (390, 1), (395, 0), (400, 0), (405, 1), (410, 1), (415, 1), (420, 0), (425, 0), (430, 1), (435, 0), (440, 0), (445, 0), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 0), (480, 0), (485, 1), (490, 1), (495, 1), (500, 0), (505, 0), (510, 1), (515, 1), (520, 1), (525, 0), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 1), (585, 0), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 1), (620, 0), (625, 0), (630, 1), (635, 1), (640, 0), (645, 0), (650, 1), (655, 1), (660, 1), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 0), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 0), (900, 0), (905, 1), (910, 0), (915, 0), (920, 1), (925, 1), (930, 0), (935, 1), (940, 1), (945, 1), (950, 0), (955, 0), (960, 1), (965, 1), (970, 0), (975, 1), (980, 1), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 1), (1015, 0), (1020, 1), (1025, 1)]
Vdin0_25  din0_25  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.9v 14.745n 0.9v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.9v 59.745n 0.9v 59.755n 0.9v 64.745n 0.9v 64.755n 0.9v 69.745n 0.9v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.9v 89.745n 0.9v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.9v 119.745n 0.9v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.9v 134.745n 0.9v 134.755n 0.9v 139.745n 0.9v 139.755n 0.9v 144.745n 0.9v 144.755n 0.9v 149.745n 0.9v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.9v 169.745n 0.9v 169.755n 0.9v 174.745n 0.9v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.0v 229.745n 0.0v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.0v 374.745n 0.0v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.9v 409.745n 0.9v 409.755n 0.9v 414.745n 0.9v 414.755n 0.9v 419.745n 0.9v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.9v 434.745n 0.9v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.9v 454.745n 0.9v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.9v 474.745n 0.9v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.9v 499.745n 0.9v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.9v 514.745n 0.9v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.0v 529.745n 0.0v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.9v 564.745n 0.9v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.9v 619.745n 0.9v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.9v 634.745n 0.9v 634.755n 0.9v 639.745n 0.9v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.9v 739.745n 0.9v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.9v 854.745n 0.9v 854.755n 0.9v 859.745n 0.9v 859.755n 0.9v 864.745n 0.9v 864.755n 0.0v 869.745n 0.0v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.9v 894.745n 0.9v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.9v 909.745n 0.9v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.0v 934.745n 0.0v 934.755n 0.9v 939.745n 0.9v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.0v 974.745n 0.0v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 1), (35, 1), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 0), (120, 1), (125, 0), (130, 1), (135, 1), (140, 1), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 1), (230, 0), (235, 0), (240, 0), (245, 0), (250, 1), (255, 1), (260, 1), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 1), (410, 0), (415, 0), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 1), (510, 0), (515, 1), (520, 1), (525, 1), (530, 0), (535, 0), (540, 0), (545, 1), (550, 1), (555, 1), (560, 0), (565, 0), (570, 0), (575, 0), (580, 0), (585, 0), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 1), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 1), (655, 0), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 1), (690, 0), (695, 0), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 0), (745, 0), (750, 0), (755, 1), (760, 0), (765, 0), (770, 1), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 0), (805, 0), (810, 0), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 1), (890, 1), (895, 1), (900, 1), (905, 0), (910, 0), (915, 0), (920, 1), (925, 0), (930, 1), (935, 1), (940, 1), (945, 1), (950, 0), (955, 0), (960, 0), (965, 0), (970, 1), (975, 0), (980, 0), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
Vdin0_26  din0_26  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.0v 119.745n 0.0v 119.755n 0.9v 124.745n 0.9v 124.755n 0.0v 129.745n 0.0v 129.755n 0.9v 134.745n 0.9v 134.755n 0.9v 139.745n 0.9v 139.755n 0.9v 144.745n 0.9v 144.755n 0.9v 149.745n 0.9v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.9v 229.745n 0.9v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.9v 409.745n 0.9v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.9v 424.745n 0.9v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.9v 459.745n 0.9v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.9v 509.745n 0.9v 509.755n 0.0v 514.745n 0.0v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.9v 619.745n 0.9v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.9v 654.745n 0.9v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.9v 689.745n 0.9v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.9v 739.745n 0.9v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.9v 759.745n 0.9v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.9v 774.745n 0.9v 774.755n 0.9v 779.745n 0.9v 779.755n 0.9v 784.745n 0.9v 784.755n 0.9v 789.745n 0.9v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.9v 819.745n 0.9v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.9v 854.745n 0.9v 854.755n 0.9v 859.745n 0.9v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.9v 889.745n 0.9v 889.755n 0.9v 894.745n 0.9v 894.755n 0.9v 899.745n 0.9v 899.755n 0.9v 904.745n 0.9v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.9v 924.745n 0.9v 924.755n 0.0v 929.745n 0.0v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.9v 974.745n 0.9v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.9v 989.745n 0.9v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 1), (50, 1), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 0), (120, 1), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 1), (155, 0), (160, 1), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 0), (255, 0), (260, 0), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 1), (380, 0), (385, 0), (390, 0), (395, 0), (400, 1), (405, 0), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 0), (455, 0), (460, 0), (465, 0), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 0), (505, 0), (510, 0), (515, 1), (520, 1), (525, 0), (530, 0), (535, 0), (540, 0), (545, 1), (550, 1), (555, 1), (560, 0), (565, 1), (570, 1), (575, 1), (580, 0), (585, 0), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 0), (620, 1), (625, 1), (630, 1), (635, 1), (640, 0), (645, 1), (650, 1), (655, 0), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 0), (745, 0), (750, 0), (755, 1), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 1), (795, 1), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 1), (865, 0), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 0), (900, 0), (905, 1), (910, 1), (915, 1), (920, 0), (925, 1), (930, 0), (935, 1), (940, 1), (945, 1), (950, 1), (955, 1), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 1), (995, 1), (1000, 1), (1005, 0), (1010, 1), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_27  din0_27  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.0v 119.745n 0.0v 119.755n 0.9v 124.745n 0.9v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.9v 154.745n 0.9v 154.755n 0.0v 159.745n 0.0v 159.755n 0.9v 164.745n 0.9v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.9v 229.745n 0.9v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.9v 379.745n 0.9v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.9v 404.745n 0.9v 404.755n 0.0v 409.745n 0.0v 409.755n 0.9v 414.745n 0.9v 414.755n 0.9v 419.745n 0.9v 419.755n 0.9v 424.745n 0.9v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.9v 474.745n 0.9v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.9v 499.745n 0.9v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.0v 564.745n 0.0v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.0v 619.745n 0.0v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.9v 639.745n 0.9v 639.755n 0.0v 644.745n 0.0v 644.755n 0.9v 649.745n 0.9v 649.755n 0.9v 654.745n 0.9v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.9v 739.745n 0.9v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.9v 759.745n 0.9v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.9v 864.745n 0.9v 864.755n 0.0v 869.745n 0.0v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.9v 894.745n 0.9v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.9v 909.745n 0.9v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.0v 924.745n 0.0v 924.755n 0.9v 929.745n 0.9v 929.755n 0.0v 934.745n 0.0v 934.755n 0.9v 939.745n 0.9v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 1), (35, 1), (40, 0), (45, 0), (50, 0), (55, 1), (60, 1), (65, 1), (70, 0), (75, 1), (80, 1), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 0), (155, 1), (160, 0), (165, 0), (170, 0), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 1), (235, 1), (240, 1), (245, 1), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 1), (380, 0), (385, 0), (390, 0), (395, 1), (400, 1), (405, 1), (410, 0), (415, 1), (420, 0), (425, 0), (430, 1), (435, 0), (440, 0), (445, 0), (450, 1), (455, 0), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 0), (525, 1), (530, 0), (535, 0), (540, 0), (545, 1), (550, 1), (555, 1), (560, 0), (565, 1), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 1), (620, 0), (625, 0), (630, 0), (635, 0), (640, 1), (645, 1), (650, 1), (655, 0), (660, 0), (665, 1), (670, 1), (675, 1), (680, 0), (685, 0), (690, 1), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 0), (725, 0), (730, 0), (735, 0), (740, 1), (745, 1), (750, 1), (755, 1), (760, 0), (765, 0), (770, 1), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 1), (865, 0), (870, 0), (875, 0), (880, 0), (885, 1), (890, 0), (895, 0), (900, 0), (905, 0), (910, 1), (915, 0), (920, 0), (925, 1), (930, 0), (935, 1), (940, 1), (945, 1), (950, 1), (955, 1), (960, 0), (965, 0), (970, 1), (975, 0), (980, 0), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 0), (1015, 1), (1020, 0), (1025, 0)]
Vdin0_28  din0_28  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.9v 59.745n 0.9v 59.755n 0.9v 64.745n 0.9v 64.755n 0.9v 69.745n 0.9v 69.755n 0.0v 74.745n 0.0v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.9v 139.745n 0.9v 139.755n 0.9v 144.745n 0.9v 144.755n 0.9v 149.745n 0.9v 149.755n 0.0v 154.745n 0.0v 154.755n 0.9v 159.745n 0.9v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.9v 194.745n 0.9v 194.755n 0.9v 199.745n 0.9v 199.755n 0.9v 204.745n 0.9v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.9v 379.745n 0.9v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.9v 399.745n 0.9v 399.755n 0.9v 404.745n 0.9v 404.755n 0.9v 409.745n 0.9v 409.755n 0.0v 414.745n 0.0v 414.755n 0.9v 419.745n 0.9v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.9v 434.745n 0.9v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.9v 454.745n 0.9v 454.755n 0.0v 459.745n 0.0v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.9v 474.745n 0.9v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.9v 509.745n 0.9v 509.755n 0.9v 514.745n 0.9v 514.755n 0.9v 519.745n 0.9v 519.755n 0.0v 524.745n 0.0v 524.755n 0.9v 529.745n 0.9v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.0v 564.745n 0.0v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.9v 619.745n 0.9v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.9v 644.745n 0.9v 644.755n 0.9v 649.745n 0.9v 649.755n 0.9v 654.745n 0.9v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.9v 759.745n 0.9v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.9v 774.745n 0.9v 774.755n 0.9v 779.745n 0.9v 779.755n 0.9v 784.745n 0.9v 784.755n 0.9v 789.745n 0.9v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.9v 864.745n 0.9v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.9v 889.745n 0.9v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.9v 914.745n 0.9v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.9v 929.745n 0.9v 929.755n 0.0v 934.745n 0.0v 934.755n 0.9v 939.745n 0.9v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.9v 974.745n 0.9v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.9v 989.745n 0.9v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 1), (35, 1), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 1), (75, 1), (80, 1), (85, 0), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 0), (120, 0), (125, 0), (130, 1), (135, 1), (140, 1), (145, 1), (150, 0), (155, 1), (160, 1), (165, 1), (170, 1), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 1), (255, 1), (260, 1), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 1), (355, 1), (360, 1), (365, 1), (370, 0), (375, 1), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 1), (415, 1), (420, 0), (425, 0), (430, 1), (435, 1), (440, 1), (445, 1), (450, 0), (455, 0), (460, 0), (465, 0), (470, 0), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 0), (505, 1), (510, 1), (515, 0), (520, 1), (525, 1), (530, 0), (535, 0), (540, 0), (545, 1), (550, 1), (555, 1), (560, 0), (565, 1), (570, 1), (575, 1), (580, 0), (585, 1), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 1), (620, 1), (625, 1), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 1), (660, 1), (665, 0), (670, 0), (675, 0), (680, 1), (685, 0), (690, 1), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 0), (725, 0), (730, 0), (735, 1), (740, 0), (745, 0), (750, 0), (755, 1), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 1), (865, 0), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 0), (900, 0), (905, 1), (910, 1), (915, 0), (920, 1), (925, 0), (930, 1), (935, 1), (940, 1), (945, 1), (950, 0), (955, 0), (960, 1), (965, 1), (970, 0), (975, 0), (980, 0), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 1), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_29  din0_29  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.9v 74.745n 0.9v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.0v 89.745n 0.0v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.9v 134.745n 0.9v 134.755n 0.9v 139.745n 0.9v 139.755n 0.9v 144.745n 0.9v 144.755n 0.9v 149.745n 0.9v 149.755n 0.0v 154.745n 0.0v 154.755n 0.9v 159.745n 0.9v 159.755n 0.9v 164.745n 0.9v 164.755n 0.9v 169.745n 0.9v 169.755n 0.9v 174.745n 0.9v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.0v 374.745n 0.0v 374.755n 0.9v 379.745n 0.9v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.9v 414.745n 0.9v 414.755n 0.9v 419.745n 0.9v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.9v 499.745n 0.9v 499.755n 0.0v 504.745n 0.0v 504.755n 0.9v 509.745n 0.9v 509.755n 0.9v 514.745n 0.9v 514.755n 0.0v 519.745n 0.0v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.0v 564.745n 0.0v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.0v 584.745n 0.0v 584.755n 0.9v 589.745n 0.9v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.9v 619.745n 0.9v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.9v 684.745n 0.9v 684.755n 0.0v 689.745n 0.0v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.9v 739.745n 0.9v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.9v 759.745n 0.9v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.9v 864.745n 0.9v 864.755n 0.0v 869.745n 0.0v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.9v 894.745n 0.9v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.9v 909.745n 0.9v 909.755n 0.9v 914.745n 0.9v 914.755n 0.0v 919.745n 0.0v 919.755n 0.9v 924.745n 0.9v 924.755n 0.0v 929.745n 0.0v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.9v 989.745n 0.9v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 0), (45, 1), (50, 1), (55, 0), (60, 0), (65, 0), (70, 1), (75, 1), (80, 1), (85, 1), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 1), (120, 1), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 1), (160, 1), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 1), (205, 0), (210, 0), (215, 0), (220, 0), (225, 1), (230, 1), (235, 1), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 1), (365, 1), (370, 1), (375, 1), (380, 0), (385, 0), (390, 0), (395, 1), (400, 1), (405, 1), (410, 0), (415, 1), (420, 1), (425, 1), (430, 0), (435, 1), (440, 1), (445, 1), (450, 1), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 1), (490, 1), (495, 0), (500, 1), (505, 0), (510, 1), (515, 0), (520, 1), (525, 0), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 0), (565, 0), (570, 0), (575, 0), (580, 0), (585, 1), (590, 1), (595, 1), (600, 0), (605, 0), (610, 0), (615, 1), (620, 1), (625, 1), (630, 0), (635, 0), (640, 1), (645, 0), (650, 1), (655, 1), (660, 1), (665, 0), (670, 0), (675, 1), (680, 1), (685, 1), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 1), (725, 1), (730, 1), (735, 0), (740, 1), (745, 1), (750, 1), (755, 0), (760, 0), (765, 0), (770, 1), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 1), (870, 1), (875, 1), (880, 1), (885, 0), (890, 1), (895, 0), (900, 0), (905, 1), (910, 0), (915, 1), (920, 0), (925, 0), (930, 1), (935, 1), (940, 1), (945, 1), (950, 1), (955, 1), (960, 0), (965, 0), (970, 1), (975, 0), (980, 0), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 1), (1010, 0), (1015, 1), (1020, 0), (1025, 0)]
Vdin0_30  din0_30  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.0v 14.745n 0.0v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.0v 44.745n 0.0v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.9v 74.745n 0.9v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.9v 89.745n 0.9v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.9v 159.745n 0.9v 159.755n 0.9v 164.745n 0.9v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.9v 204.745n 0.9v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.9v 229.745n 0.9v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.9v 399.745n 0.9v 399.755n 0.9v 404.745n 0.9v 404.755n 0.9v 409.745n 0.9v 409.755n 0.0v 414.745n 0.0v 414.755n 0.9v 419.745n 0.9v 419.755n 0.9v 424.745n 0.9v 424.755n 0.9v 429.745n 0.9v 429.755n 0.0v 434.745n 0.0v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.0v 499.745n 0.0v 499.755n 0.9v 504.745n 0.9v 504.755n 0.0v 509.745n 0.0v 509.755n 0.9v 514.745n 0.9v 514.755n 0.0v 519.745n 0.0v 519.755n 0.9v 524.745n 0.9v 524.755n 0.0v 529.745n 0.0v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.9v 619.745n 0.9v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.9v 644.745n 0.9v 644.755n 0.0v 649.745n 0.0v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.9v 724.745n 0.9v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.0v 739.745n 0.0v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.9v 774.745n 0.9v 774.755n 0.9v 779.745n 0.9v 779.755n 0.9v 784.745n 0.9v 784.755n 0.9v 789.745n 0.9v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.0v 889.745n 0.0v 889.755n 0.9v 894.745n 0.9v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.9v 909.745n 0.9v 909.755n 0.0v 914.745n 0.0v 914.755n 0.9v 919.745n 0.9v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.9v 974.745n 0.9v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.9v 989.745n 0.9v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 0), (120, 1), (125, 1), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 1), (160, 1), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 1), (210, 1), (215, 1), (220, 1), (225, 0), (230, 1), (235, 1), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 0), (405, 1), (410, 1), (415, 1), (420, 0), (425, 0), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 0), (460, 1), (465, 1), (470, 1), (475, 0), (480, 0), (485, 0), (490, 0), (495, 1), (500, 0), (505, 1), (510, 0), (515, 1), (520, 0), (525, 1), (530, 0), (535, 0), (540, 0), (545, 1), (550, 1), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 0), (585, 0), (590, 1), (595, 1), (600, 0), (605, 0), (610, 0), (615, 1), (620, 0), (625, 0), (630, 0), (635, 0), (640, 1), (645, 0), (650, 1), (655, 0), (660, 0), (665, 0), (670, 0), (675, 1), (680, 0), (685, 0), (690, 1), (695, 1), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 0), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 0), (900, 0), (905, 1), (910, 1), (915, 0), (920, 0), (925, 0), (930, 1), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 1), (975, 0), (980, 0), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 1), (1010, 1), (1015, 0), (1020, 1), (1025, 1)]
Vdin0_31  din0_31  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.0v 14.745n 0.0v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.9v 44.745n 0.9v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.0v 119.745n 0.0v 119.755n 0.9v 124.745n 0.9v 124.755n 0.9v 129.745n 0.9v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.9v 159.745n 0.9v 159.755n 0.9v 164.745n 0.9v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.0v 229.745n 0.0v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.0v 404.745n 0.0v 404.755n 0.9v 409.745n 0.9v 409.755n 0.9v 414.745n 0.9v 414.755n 0.9v 419.745n 0.9v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.0v 459.745n 0.0v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.9v 474.745n 0.9v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.9v 499.745n 0.9v 499.755n 0.0v 504.745n 0.0v 504.755n 0.9v 509.745n 0.9v 509.755n 0.0v 514.745n 0.0v 514.755n 0.9v 519.745n 0.9v 519.755n 0.0v 524.745n 0.0v 524.755n 0.9v 529.745n 0.9v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.9v 564.745n 0.9v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.9v 619.745n 0.9v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.9v 644.745n 0.9v 644.755n 0.0v 649.745n 0.0v 649.755n 0.9v 654.745n 0.9v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.9v 679.745n 0.9v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.9v 819.745n 0.9v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.9v 854.745n 0.9v 854.755n 0.0v 859.745n 0.0v 859.755n 0.9v 864.745n 0.9v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.9v 894.745n 0.9v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.9v 909.745n 0.9v 909.755n 0.9v 914.745n 0.9v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.9v 934.745n 0.9v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.9v 974.745n 0.9v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.9v 989.745n 0.9v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va0_0  a0_0  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 0), (155, 0), (160, 1), (165, 1), (170, 1), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 1), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 1), (245, 1), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 0), (365, 0), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 0), (405, 1), (410, 0), (415, 0), (420, 1), (425, 1), (430, 1), (435, 0), (440, 0), (445, 0), (450, 1), (455, 0), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 0), (500, 0), (505, 1), (510, 0), (515, 1), (520, 1), (525, 1), (530, 0), (535, 0), (540, 0), (545, 1), (550, 1), (555, 1), (560, 0), (565, 0), (570, 0), (575, 0), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 0), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 0), (650, 1), (655, 1), (660, 1), (665, 1), (670, 1), (675, 1), (680, 0), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 0), (740, 0), (745, 0), (750, 0), (755, 1), (760, 1), (765, 1), (770, 0), (775, 0), (780, 0), (785, 0), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 0), (860, 1), (865, 0), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 0), (925, 1), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 1), (965, 1), (970, 1), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 1), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Va0_1  a0_1  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.9v 14.745n 0.9v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.9v 44.745n 0.9v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.9v 139.745n 0.9v 139.755n 0.9v 144.745n 0.9v 144.755n 0.9v 149.745n 0.9v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.9v 164.745n 0.9v 164.755n 0.9v 169.745n 0.9v 169.755n 0.9v 174.745n 0.9v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.9v 204.745n 0.9v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.0v 404.745n 0.0v 404.755n 0.9v 409.745n 0.9v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.9v 424.745n 0.9v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.9v 454.745n 0.9v 454.755n 0.0v 459.745n 0.0v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.9v 474.745n 0.9v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.9v 509.745n 0.9v 509.755n 0.0v 514.745n 0.0v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.0v 619.745n 0.0v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.9v 639.745n 0.9v 639.755n 0.9v 644.745n 0.9v 644.755n 0.0v 649.745n 0.0v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.0v 684.745n 0.0v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.9v 759.745n 0.9v 759.755n 0.9v 764.745n 0.9v 764.755n 0.9v 769.745n 0.9v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.9v 854.745n 0.9v 854.755n 0.0v 859.745n 0.0v 859.755n 0.9v 864.745n 0.9v 864.755n 0.0v 869.745n 0.0v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.9v 894.745n 0.9v 894.755n 0.9v 899.745n 0.9v 899.755n 0.9v 904.745n 0.9v 904.755n 0.9v 909.745n 0.9v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.0v 924.745n 0.0v 924.755n 0.9v 929.745n 0.9v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 0), (155, 0), (160, 1), (165, 1), (170, 1), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 1), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 1), (245, 1), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 0), (365, 0), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 0), (405, 1), (410, 0), (415, 0), (420, 1), (425, 1), (430, 1), (435, 0), (440, 0), (445, 0), (450, 1), (455, 0), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 0), (500, 0), (505, 1), (510, 0), (515, 1), (520, 1), (525, 1), (530, 0), (535, 0), (540, 0), (545, 1), (550, 1), (555, 1), (560, 0), (565, 0), (570, 0), (575, 0), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 0), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 0), (650, 1), (655, 1), (660, 1), (665, 1), (670, 1), (675, 1), (680, 0), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 0), (740, 0), (745, 0), (750, 0), (755, 1), (760, 1), (765, 1), (770, 0), (775, 0), (780, 0), (785, 0), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 0), (860, 1), (865, 0), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 0), (925, 1), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 1), (965, 1), (970, 1), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 1), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Va0_2  a0_2  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.9v 14.745n 0.9v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.9v 44.745n 0.9v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.9v 139.745n 0.9v 139.755n 0.9v 144.745n 0.9v 144.755n 0.9v 149.745n 0.9v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.9v 164.745n 0.9v 164.755n 0.9v 169.745n 0.9v 169.755n 0.9v 174.745n 0.9v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.9v 204.745n 0.9v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.0v 404.745n 0.0v 404.755n 0.9v 409.745n 0.9v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.9v 424.745n 0.9v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.9v 454.745n 0.9v 454.755n 0.0v 459.745n 0.0v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.9v 474.745n 0.9v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.9v 509.745n 0.9v 509.755n 0.0v 514.745n 0.0v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.0v 619.745n 0.0v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.9v 639.745n 0.9v 639.755n 0.9v 644.745n 0.9v 644.755n 0.0v 649.745n 0.0v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.0v 684.745n 0.0v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.9v 759.745n 0.9v 759.755n 0.9v 764.745n 0.9v 764.755n 0.9v 769.745n 0.9v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.9v 854.745n 0.9v 854.755n 0.0v 859.745n 0.0v 859.755n 0.9v 864.745n 0.9v 864.755n 0.0v 869.745n 0.0v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.9v 894.745n 0.9v 894.755n 0.9v 899.745n 0.9v 899.755n 0.9v 904.745n 0.9v 904.755n 0.9v 909.745n 0.9v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.0v 924.745n 0.0v 924.755n 0.9v 929.745n 0.9v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 0), (155, 0), (160, 1), (165, 1), (170, 1), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 1), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 1), (245, 1), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 0), (365, 0), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 0), (405, 1), (410, 0), (415, 0), (420, 1), (425, 1), (430, 1), (435, 0), (440, 0), (445, 0), (450, 1), (455, 0), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 0), (500, 0), (505, 1), (510, 0), (515, 1), (520, 1), (525, 1), (530, 0), (535, 0), (540, 0), (545, 1), (550, 1), (555, 1), (560, 0), (565, 0), (570, 0), (575, 0), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 0), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 0), (650, 1), (655, 1), (660, 1), (665, 1), (670, 1), (675, 1), (680, 0), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 0), (740, 0), (745, 0), (750, 0), (755, 1), (760, 1), (765, 1), (770, 0), (775, 0), (780, 0), (785, 0), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 0), (860, 1), (865, 0), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 0), (925, 1), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 1), (965, 1), (970, 1), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 1), (1010, 1), (1015, 1), (1020, 0), (1025, 0)]
Va0_3  a0_3  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.9v 14.745n 0.9v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.9v 44.745n 0.9v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.9v 139.745n 0.9v 139.755n 0.9v 144.745n 0.9v 144.755n 0.9v 149.745n 0.9v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.9v 164.745n 0.9v 164.755n 0.9v 169.745n 0.9v 169.755n 0.9v 174.745n 0.9v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.9v 204.745n 0.9v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.0v 404.745n 0.0v 404.755n 0.9v 409.745n 0.9v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.9v 424.745n 0.9v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.9v 454.745n 0.9v 454.755n 0.0v 459.745n 0.0v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.9v 474.745n 0.9v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.9v 509.745n 0.9v 509.755n 0.0v 514.745n 0.0v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.0v 619.745n 0.0v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.9v 639.745n 0.9v 639.755n 0.9v 644.745n 0.9v 644.755n 0.0v 649.745n 0.0v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.0v 684.745n 0.0v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.9v 759.745n 0.9v 759.755n 0.9v 764.745n 0.9v 764.755n 0.9v 769.745n 0.9v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.9v 854.745n 0.9v 854.755n 0.0v 859.745n 0.0v 859.755n 0.9v 864.745n 0.9v 864.755n 0.0v 869.745n 0.0v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.9v 894.745n 0.9v 894.755n 0.9v 899.745n 0.9v 899.755n 0.9v 904.745n 0.9v 904.755n 0.9v 909.745n 0.9v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.0v 924.745n 0.0v 924.755n 0.9v 929.745n 0.9v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va1_0  a1_0  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 1), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 1), (180, 1), (185, 1), (190, 1), (195, 0), (200, 0), (205, 1), (210, 1), (215, 1), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 0), (250, 0), (255, 0), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 0), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 0), (355, 1), (360, 1), (365, 1), (370, 1), (375, 0), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 1), (430, 0), (435, 0), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 0), (485, 0), (490, 0), (495, 1), (500, 1), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 1), (540, 1), (545, 1), (550, 0), (555, 1), (560, 1), (565, 1), (570, 1), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 1), (650, 1), (655, 0), (660, 1), (665, 1), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 0), (735, 0), (740, 0), (745, 0), (750, 1), (755, 0), (760, 0), (765, 0), (770, 1), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 0), (945, 0), (950, 0), (955, 1), (960, 1), (965, 0), (970, 0), (975, 1), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va1_1  a1_1  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.9v 44.745n 0.9v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.9v 59.745n 0.9v 59.755n 0.9v 64.745n 0.9v 64.755n 0.9v 69.745n 0.9v 69.755n 0.9v 74.745n 0.9v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.9v 139.745n 0.9v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.9v 194.745n 0.9v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.9v 229.745n 0.9v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.0v 309.745n 0.0v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.0v 354.745n 0.0v 354.755n 0.9v 359.745n 0.9v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.9v 429.745n 0.9v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.9v 474.745n 0.9v 474.755n 0.9v 479.745n 0.9v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.0v 554.745n 0.0v 554.755n 0.9v 559.745n 0.9v 559.755n 0.9v 564.745n 0.9v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.9v 649.745n 0.9v 649.755n 0.9v 654.745n 0.9v 654.755n 0.0v 659.745n 0.0v 659.755n 0.9v 664.745n 0.9v 664.755n 0.9v 669.745n 0.9v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.9v 729.745n 0.9v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.9v 754.745n 0.9v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.9v 774.745n 0.9v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.9v 854.745n 0.9v 854.755n 0.9v 859.745n 0.9v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.9v 904.745n 0.9v 904.755n 0.9v 909.745n 0.9v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.9v 959.745n 0.9v 959.755n 0.9v 964.745n 0.9v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 1), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 1), (180, 1), (185, 1), (190, 1), (195, 0), (200, 0), (205, 1), (210, 1), (215, 1), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 0), (250, 0), (255, 0), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 0), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 0), (355, 1), (360, 1), (365, 1), (370, 1), (375, 0), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 1), (430, 0), (435, 0), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 0), (485, 0), (490, 0), (495, 1), (500, 1), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 1), (540, 1), (545, 1), (550, 0), (555, 1), (560, 1), (565, 1), (570, 1), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 1), (650, 1), (655, 0), (660, 1), (665, 1), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 0), (735, 0), (740, 0), (745, 0), (750, 1), (755, 0), (760, 0), (765, 0), (770, 1), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 0), (945, 0), (950, 0), (955, 1), (960, 1), (965, 0), (970, 0), (975, 1), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va1_2  a1_2  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.9v 44.745n 0.9v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.9v 59.745n 0.9v 59.755n 0.9v 64.745n 0.9v 64.755n 0.9v 69.745n 0.9v 69.755n 0.9v 74.745n 0.9v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.9v 139.745n 0.9v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.9v 194.745n 0.9v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.9v 229.745n 0.9v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.0v 309.745n 0.0v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.0v 354.745n 0.0v 354.755n 0.9v 359.745n 0.9v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.9v 429.745n 0.9v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.9v 474.745n 0.9v 474.755n 0.9v 479.745n 0.9v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.0v 554.745n 0.0v 554.755n 0.9v 559.745n 0.9v 559.755n 0.9v 564.745n 0.9v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.9v 649.745n 0.9v 649.755n 0.9v 654.745n 0.9v 654.755n 0.0v 659.745n 0.0v 659.755n 0.9v 664.745n 0.9v 664.755n 0.9v 669.745n 0.9v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.9v 729.745n 0.9v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.9v 754.745n 0.9v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.9v 774.745n 0.9v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.9v 854.745n 0.9v 854.755n 0.9v 859.745n 0.9v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.9v 904.745n 0.9v 904.755n 0.9v 909.745n 0.9v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.9v 959.745n 0.9v 959.755n 0.9v 964.745n 0.9v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 0), (110, 0), (115, 0), (120, 0), (125, 0), (130, 0), (135, 1), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 0), (175, 1), (180, 1), (185, 1), (190, 1), (195, 0), (200, 0), (205, 1), (210, 1), (215, 1), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 0), (250, 0), (255, 0), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 0), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 0), (355, 1), (360, 1), (365, 1), (370, 1), (375, 0), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 1), (430, 0), (435, 0), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 0), (485, 0), (490, 0), (495, 1), (500, 1), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 1), (540, 1), (545, 1), (550, 0), (555, 1), (560, 1), (565, 1), (570, 1), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 1), (650, 1), (655, 0), (660, 1), (665, 1), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 0), (735, 0), (740, 0), (745, 0), (750, 1), (755, 0), (760, 0), (765, 0), (770, 1), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 0), (945, 0), (950, 0), (955, 1), (960, 1), (965, 0), (970, 0), (975, 1), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va1_3  a1_3  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.9v 44.745n 0.9v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.9v 59.745n 0.9v 59.755n 0.9v 64.745n 0.9v 64.755n 0.9v 69.745n 0.9v 69.755n 0.9v 74.745n 0.9v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.9v 139.745n 0.9v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.9v 194.745n 0.9v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.9v 229.745n 0.9v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.0v 309.745n 0.0v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.0v 354.745n 0.0v 354.755n 0.9v 359.745n 0.9v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.9v 429.745n 0.9v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.9v 474.745n 0.9v 474.755n 0.9v 479.745n 0.9v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.0v 554.745n 0.0v 554.755n 0.9v 559.745n 0.9v 559.755n 0.9v 564.745n 0.9v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.9v 649.745n 0.9v 649.755n 0.9v 654.745n 0.9v 654.755n 0.0v 659.745n 0.0v 659.755n 0.9v 664.745n 0.9v 664.755n 0.9v 669.745n 0.9v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.9v 729.745n 0.9v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.9v 754.745n 0.9v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.9v 774.745n 0.9v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.9v 854.745n 0.9v 854.755n 0.9v 859.745n 0.9v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.9v 904.745n 0.9v 904.755n 0.9v 909.745n 0.9v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.9v 959.745n 0.9v 959.755n 0.9v 964.745n 0.9v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )

 * Generation of control signals
* (time, data): [(0, 1), (5, 0), (10, 0), (15, 0), (20, 1), (25, 1), (30, 0), (35, 1), (40, 0), (45, 0), (50, 1), (55, 0), (60, 1), (65, 1), (70, 0), (75, 0), (80, 1), (85, 0), (90, 0), (95, 1), (100, 1), (105, 1), (110, 1), (115, 0), (120, 0), (125, 0), (130, 0), (135, 1), (140, 1), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 1), (175, 0), (180, 1), (185, 1), (190, 1), (195, 1), (200, 0), (205, 0), (210, 1), (215, 1), (220, 1), (225, 0), (230, 0), (235, 1), (240, 0), (245, 1), (250, 0), (255, 1), (260, 1), (265, 0), (270, 1), (275, 0), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 0), (330, 1), (335, 1), (340, 1), (345, 1), (350, 0), (355, 1), (360, 0), (365, 1), (370, 0), (375, 0), (380, 0), (385, 1), (390, 1), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 1), (430, 0), (435, 0), (440, 1), (445, 1), (450, 0), (455, 0), (460, 0), (465, 1), (470, 0), (475, 0), (480, 1), (485, 0), (490, 1), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 1), (540, 1), (545, 0), (550, 1), (555, 1), (560, 0), (565, 0), (570, 1), (575, 1), (580, 0), (585, 0), (590, 0), (595, 1), (600, 0), (605, 1), (610, 1), (615, 0), (620, 0), (625, 1), (630, 0), (635, 1), (640, 0), (645, 0), (650, 0), (655, 0), (660, 1), (665, 0), (670, 1), (675, 0), (680, 0), (685, 0), (690, 0), (695, 1), (700, 0), (705, 1), (710, 1), (715, 1), (720, 0), (725, 1), (730, 1), (735, 0), (740, 0), (745, 1), (750, 1), (755, 0), (760, 0), (765, 1), (770, 0), (775, 1), (780, 1), (785, 1), (790, 0), (795, 1), (800, 0), (805, 1), (810, 0), (815, 0), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 0), (860, 0), (865, 0), (870, 0), (875, 1), (880, 1), (885, 0), (890, 0), (895, 0), (900, 1), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 1), (945, 1), (950, 0), (955, 1), (960, 0), (965, 1), (970, 0), (975, 0), (980, 1), (985, 0), (990, 0), (995, 1), (1000, 1), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 1)]
VCSB0 CSB0 0 PWL (0n 0.9v 4.745n 0.9v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.0v 34.745n 0.0v 34.755n 0.9v 39.745n 0.9v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.9v 54.745n 0.9v 54.755n 0.0v 59.745n 0.0v 59.755n 0.9v 64.745n 0.9v 64.755n 0.9v 69.745n 0.9v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.9v 84.745n 0.9v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.9v 139.745n 0.9v 139.755n 0.9v 144.745n 0.9v 144.755n 0.9v 149.745n 0.9v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.9v 174.745n 0.9v 174.755n 0.0v 179.745n 0.0v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.9v 194.745n 0.9v 194.755n 0.9v 199.745n 0.9v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.9v 239.745n 0.9v 239.755n 0.0v 244.745n 0.0v 244.755n 0.9v 249.745n 0.9v 249.755n 0.0v 254.745n 0.0v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.0v 269.745n 0.0v 269.755n 0.9v 274.745n 0.9v 274.755n 0.0v 279.745n 0.0v 279.755n 0.9v 284.745n 0.9v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.0v 329.745n 0.0v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.0v 354.745n 0.0v 354.755n 0.9v 359.745n 0.9v 359.755n 0.0v 364.745n 0.0v 364.755n 0.9v 369.745n 0.9v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.9v 429.745n 0.9v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.9v 469.745n 0.9v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.9v 484.745n 0.9v 484.755n 0.0v 489.745n 0.0v 489.755n 0.9v 494.745n 0.9v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.0v 549.745n 0.0v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.9v 599.745n 0.9v 599.755n 0.0v 604.745n 0.0v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.9v 629.745n 0.9v 629.755n 0.0v 634.745n 0.0v 634.755n 0.9v 639.745n 0.9v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.9v 664.745n 0.9v 664.755n 0.0v 669.745n 0.0v 669.755n 0.9v 674.745n 0.9v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.9v 699.745n 0.9v 699.755n 0.0v 704.745n 0.0v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.0v 724.745n 0.0v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.9v 769.745n 0.9v 769.755n 0.0v 774.745n 0.0v 774.755n 0.9v 779.745n 0.9v 779.755n 0.9v 784.745n 0.9v 784.755n 0.9v 789.745n 0.9v 789.755n 0.0v 794.745n 0.0v 794.755n 0.9v 799.745n 0.9v 799.755n 0.0v 804.745n 0.0v 804.755n 0.9v 809.745n 0.9v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.9v 854.745n 0.9v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.9v 904.745n 0.9v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.0v 954.745n 0.0v 954.755n 0.9v 959.745n 0.9v 959.755n 0.0v 964.745n 0.0v 964.755n 0.9v 969.745n 0.9v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.9v 984.745n 0.9v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.9v )
* (time, data): [(0, 1), (5, 1), (10, 1), (15, 1), (20, 0), (25, 0), (30, 1), (35, 0), (40, 1), (45, 0), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 0), (100, 1), (105, 0), (110, 1), (115, 1), (120, 1), (125, 0), (130, 1), (135, 0), (140, 0), (145, 0), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 0), (180, 0), (185, 1), (190, 1), (195, 0), (200, 1), (205, 0), (210, 1), (215, 1), (220, 0), (225, 1), (230, 0), (235, 1), (240, 1), (245, 0), (250, 1), (255, 1), (260, 0), (265, 0), (270, 1), (275, 1), (280, 1), (285, 0), (290, 0), (295, 0), (300, 1), (305, 0), (310, 0), (315, 0), (320, 1), (325, 1), (330, 0), (335, 1), (340, 1), (345, 1), (350, 0), (355, 0), (360, 0), (365, 1), (370, 1), (375, 0), (380, 1), (385, 1), (390, 0), (395, 1), (400, 1), (405, 1), (410, 1), (415, 1), (420, 1), (425, 0), (430, 0), (435, 1), (440, 0), (445, 1), (450, 1), (455, 1), (460, 1), (465, 0), (470, 1), (475, 1), (480, 0), (485, 1), (490, 1), (495, 0), (500, 1), (505, 0), (510, 1), (515, 0), (520, 1), (525, 0), (530, 1), (535, 0), (540, 1), (545, 1), (550, 0), (555, 0), (560, 1), (565, 0), (570, 1), (575, 0), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 0), (610, 1), (615, 1), (620, 1), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 1), (655, 0), (660, 0), (665, 1), (670, 0), (675, 0), (680, 1), (685, 0), (690, 0), (695, 1), (700, 1), (705, 1), (710, 1), (715, 0), (720, 0), (725, 0), (730, 0), (735, 1), (740, 1), (745, 0), (750, 0), (755, 0), (760, 1), (765, 0), (770, 0), (775, 0), (780, 1), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 0), (825, 0), (830, 1), (835, 1), (840, 1), (845, 1), (850, 0), (855, 0), (860, 0), (865, 1), (870, 0), (875, 0), (880, 1), (885, 1), (890, 1), (895, 0), (900, 0), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 0), (945, 0), (950, 1), (955, 0), (960, 1), (965, 0), (970, 1), (975, 0), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 0), (1005, 1), (1010, 0), (1015, 1), (1020, 1), (1025, 1)]
VCSB1 CSB1 0 PWL (0n 0.9v 4.745n 0.9v 4.755n 0.9v 9.745n 0.9v 9.755n 0.9v 14.745n 0.9v 14.755n 0.9v 19.745n 0.9v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.9v 34.745n 0.9v 34.755n 0.0v 39.745n 0.0v 39.755n 0.9v 44.745n 0.9v 44.755n 0.0v 49.745n 0.0v 49.755n 0.9v 54.745n 0.9v 54.755n 0.9v 59.745n 0.9v 59.755n 0.9v 64.745n 0.9v 64.755n 0.9v 69.745n 0.9v 69.755n 0.9v 74.745n 0.9v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.0v 99.745n 0.0v 99.755n 0.9v 104.745n 0.9v 104.755n 0.0v 109.745n 0.0v 109.755n 0.9v 114.745n 0.9v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.0v 129.745n 0.0v 129.755n 0.9v 134.745n 0.9v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.9v 154.745n 0.9v 154.755n 0.9v 159.745n 0.9v 159.755n 0.9v 164.745n 0.9v 164.755n 0.9v 169.745n 0.9v 169.755n 0.9v 174.745n 0.9v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.9v 189.745n 0.9v 189.755n 0.9v 194.745n 0.9v 194.755n 0.0v 199.745n 0.0v 199.755n 0.9v 204.745n 0.9v 204.755n 0.0v 209.745n 0.0v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.0v 224.745n 0.0v 224.755n 0.9v 229.745n 0.9v 229.755n 0.0v 234.745n 0.0v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.0v 249.745n 0.0v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.9v 304.745n 0.9v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.0v 334.745n 0.0v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.0v 379.745n 0.0v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.0v 394.745n 0.0v 394.755n 0.9v 399.745n 0.9v 399.755n 0.9v 404.745n 0.9v 404.755n 0.9v 409.745n 0.9v 409.755n 0.9v 414.745n 0.9v 414.755n 0.9v 419.745n 0.9v 419.755n 0.9v 424.745n 0.9v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.9v 439.745n 0.9v 439.755n 0.0v 444.745n 0.0v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.0v 469.745n 0.0v 469.755n 0.9v 474.745n 0.9v 474.755n 0.9v 479.745n 0.9v 479.755n 0.0v 484.745n 0.0v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.0v 499.745n 0.0v 499.755n 0.9v 504.745n 0.9v 504.755n 0.0v 509.745n 0.0v 509.755n 0.9v 514.745n 0.9v 514.755n 0.0v 519.745n 0.0v 519.755n 0.9v 524.745n 0.9v 524.755n 0.0v 529.745n 0.0v 529.755n 0.9v 534.745n 0.9v 534.755n 0.0v 539.745n 0.0v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.9v 564.745n 0.9v 564.755n 0.0v 569.745n 0.0v 569.755n 0.9v 574.745n 0.9v 574.755n 0.0v 579.745n 0.0v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.9v 604.745n 0.9v 604.755n 0.0v 609.745n 0.0v 609.755n 0.9v 614.745n 0.9v 614.755n 0.9v 619.745n 0.9v 619.755n 0.9v 624.745n 0.9v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.9v 654.745n 0.9v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.9v 669.745n 0.9v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.9v 684.745n 0.9v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.9v 699.745n 0.9v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.9v 739.745n 0.9v 739.755n 0.9v 744.745n 0.9v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.9v 764.745n 0.9v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.9v 784.745n 0.9v 784.755n 0.9v 789.745n 0.9v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.9v 869.745n 0.9v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.9v 894.745n 0.9v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.9v 909.745n 0.9v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.9v 954.745n 0.9v 954.755n 0.0v 959.745n 0.0v 959.755n 0.9v 964.745n 0.9v 964.755n 0.0v 969.745n 0.0v 969.755n 0.9v 974.745n 0.9v 974.755n 0.0v 979.745n 0.0v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* PULSE: period=5
Vclk0 clk0 0 PULSE (0 0.9 4.995n 0.01n 0.01n 2.49n 5n)
* PULSE: period=5
Vclk1 clk1 0 PULSE (0 0.9 4.995n 0.01n 0.01n 2.49n 5n)

 * Generation of dout measurements
* CHECK dout1_0 Vdout1_0ck4 = 0 time = 25
.meas tran vdout1_0ck4 FIND v(dout1_0) AT=25.025n

* CHECK dout1_1 Vdout1_1ck4 = 0 time = 25
.meas tran vdout1_1ck4 FIND v(dout1_1) AT=25.025n

* CHECK dout1_2 Vdout1_2ck4 = 0 time = 25
.meas tran vdout1_2ck4 FIND v(dout1_2) AT=25.025n

* CHECK dout1_3 Vdout1_3ck4 = 0.9 time = 25
.meas tran vdout1_3ck4 FIND v(dout1_3) AT=25.025n

* CHECK dout1_4 Vdout1_4ck4 = 0 time = 25
.meas tran vdout1_4ck4 FIND v(dout1_4) AT=25.025n

* CHECK dout1_5 Vdout1_5ck4 = 0.9 time = 25
.meas tran vdout1_5ck4 FIND v(dout1_5) AT=25.025n

* CHECK dout1_6 Vdout1_6ck4 = 0.9 time = 25
.meas tran vdout1_6ck4 FIND v(dout1_6) AT=25.025n

* CHECK dout1_7 Vdout1_7ck4 = 0 time = 25
.meas tran vdout1_7ck4 FIND v(dout1_7) AT=25.025n

* CHECK dout1_8 Vdout1_8ck4 = 0.9 time = 25
.meas tran vdout1_8ck4 FIND v(dout1_8) AT=25.025n

* CHECK dout1_9 Vdout1_9ck4 = 0.9 time = 25
.meas tran vdout1_9ck4 FIND v(dout1_9) AT=25.025n

* CHECK dout1_10 Vdout1_10ck4 = 0 time = 25
.meas tran vdout1_10ck4 FIND v(dout1_10) AT=25.025n

* CHECK dout1_11 Vdout1_11ck4 = 0.9 time = 25
.meas tran vdout1_11ck4 FIND v(dout1_11) AT=25.025n

* CHECK dout1_12 Vdout1_12ck4 = 0.9 time = 25
.meas tran vdout1_12ck4 FIND v(dout1_12) AT=25.025n

* CHECK dout1_13 Vdout1_13ck4 = 0 time = 25
.meas tran vdout1_13ck4 FIND v(dout1_13) AT=25.025n

* CHECK dout1_14 Vdout1_14ck4 = 0.9 time = 25
.meas tran vdout1_14ck4 FIND v(dout1_14) AT=25.025n

* CHECK dout1_15 Vdout1_15ck4 = 0.9 time = 25
.meas tran vdout1_15ck4 FIND v(dout1_15) AT=25.025n

* CHECK dout1_16 Vdout1_16ck4 = 0.9 time = 25
.meas tran vdout1_16ck4 FIND v(dout1_16) AT=25.025n

* CHECK dout1_17 Vdout1_17ck4 = 0 time = 25
.meas tran vdout1_17ck4 FIND v(dout1_17) AT=25.025n

* CHECK dout1_18 Vdout1_18ck4 = 0 time = 25
.meas tran vdout1_18ck4 FIND v(dout1_18) AT=25.025n

* CHECK dout1_19 Vdout1_19ck4 = 0.9 time = 25
.meas tran vdout1_19ck4 FIND v(dout1_19) AT=25.025n

* CHECK dout1_20 Vdout1_20ck4 = 0.9 time = 25
.meas tran vdout1_20ck4 FIND v(dout1_20) AT=25.025n

* CHECK dout1_21 Vdout1_21ck4 = 0 time = 25
.meas tran vdout1_21ck4 FIND v(dout1_21) AT=25.025n

* CHECK dout1_22 Vdout1_22ck4 = 0 time = 25
.meas tran vdout1_22ck4 FIND v(dout1_22) AT=25.025n

* CHECK dout1_23 Vdout1_23ck4 = 0.9 time = 25
.meas tran vdout1_23ck4 FIND v(dout1_23) AT=25.025n

* CHECK dout1_24 Vdout1_24ck4 = 0 time = 25
.meas tran vdout1_24ck4 FIND v(dout1_24) AT=25.025n

* CHECK dout1_25 Vdout1_25ck4 = 0 time = 25
.meas tran vdout1_25ck4 FIND v(dout1_25) AT=25.025n

* CHECK dout1_26 Vdout1_26ck4 = 0 time = 25
.meas tran vdout1_26ck4 FIND v(dout1_26) AT=25.025n

* CHECK dout1_27 Vdout1_27ck4 = 0 time = 25
.meas tran vdout1_27ck4 FIND v(dout1_27) AT=25.025n

* CHECK dout1_28 Vdout1_28ck4 = 0 time = 25
.meas tran vdout1_28ck4 FIND v(dout1_28) AT=25.025n

* CHECK dout1_29 Vdout1_29ck4 = 0 time = 25
.meas tran vdout1_29ck4 FIND v(dout1_29) AT=25.025n

* CHECK dout1_30 Vdout1_30ck4 = 0.9 time = 25
.meas tran vdout1_30ck4 FIND v(dout1_30) AT=25.025n

* CHECK dout1_31 Vdout1_31ck4 = 0.9 time = 25
.meas tran vdout1_31ck4 FIND v(dout1_31) AT=25.025n

* CHECK dout1_0 Vdout1_0ck5 = 0 time = 30
.meas tran vdout1_0ck5 FIND v(dout1_0) AT=30.025n

* CHECK dout1_1 Vdout1_1ck5 = 0 time = 30
.meas tran vdout1_1ck5 FIND v(dout1_1) AT=30.025n

* CHECK dout1_2 Vdout1_2ck5 = 0 time = 30
.meas tran vdout1_2ck5 FIND v(dout1_2) AT=30.025n

* CHECK dout1_3 Vdout1_3ck5 = 0.9 time = 30
.meas tran vdout1_3ck5 FIND v(dout1_3) AT=30.025n

* CHECK dout1_4 Vdout1_4ck5 = 0 time = 30
.meas tran vdout1_4ck5 FIND v(dout1_4) AT=30.025n

* CHECK dout1_5 Vdout1_5ck5 = 0.9 time = 30
.meas tran vdout1_5ck5 FIND v(dout1_5) AT=30.025n

* CHECK dout1_6 Vdout1_6ck5 = 0.9 time = 30
.meas tran vdout1_6ck5 FIND v(dout1_6) AT=30.025n

* CHECK dout1_7 Vdout1_7ck5 = 0 time = 30
.meas tran vdout1_7ck5 FIND v(dout1_7) AT=30.025n

* CHECK dout1_8 Vdout1_8ck5 = 0.9 time = 30
.meas tran vdout1_8ck5 FIND v(dout1_8) AT=30.025n

* CHECK dout1_9 Vdout1_9ck5 = 0.9 time = 30
.meas tran vdout1_9ck5 FIND v(dout1_9) AT=30.025n

* CHECK dout1_10 Vdout1_10ck5 = 0 time = 30
.meas tran vdout1_10ck5 FIND v(dout1_10) AT=30.025n

* CHECK dout1_11 Vdout1_11ck5 = 0.9 time = 30
.meas tran vdout1_11ck5 FIND v(dout1_11) AT=30.025n

* CHECK dout1_12 Vdout1_12ck5 = 0.9 time = 30
.meas tran vdout1_12ck5 FIND v(dout1_12) AT=30.025n

* CHECK dout1_13 Vdout1_13ck5 = 0 time = 30
.meas tran vdout1_13ck5 FIND v(dout1_13) AT=30.025n

* CHECK dout1_14 Vdout1_14ck5 = 0.9 time = 30
.meas tran vdout1_14ck5 FIND v(dout1_14) AT=30.025n

* CHECK dout1_15 Vdout1_15ck5 = 0.9 time = 30
.meas tran vdout1_15ck5 FIND v(dout1_15) AT=30.025n

* CHECK dout1_16 Vdout1_16ck5 = 0.9 time = 30
.meas tran vdout1_16ck5 FIND v(dout1_16) AT=30.025n

* CHECK dout1_17 Vdout1_17ck5 = 0 time = 30
.meas tran vdout1_17ck5 FIND v(dout1_17) AT=30.025n

* CHECK dout1_18 Vdout1_18ck5 = 0 time = 30
.meas tran vdout1_18ck5 FIND v(dout1_18) AT=30.025n

* CHECK dout1_19 Vdout1_19ck5 = 0.9 time = 30
.meas tran vdout1_19ck5 FIND v(dout1_19) AT=30.025n

* CHECK dout1_20 Vdout1_20ck5 = 0.9 time = 30
.meas tran vdout1_20ck5 FIND v(dout1_20) AT=30.025n

* CHECK dout1_21 Vdout1_21ck5 = 0 time = 30
.meas tran vdout1_21ck5 FIND v(dout1_21) AT=30.025n

* CHECK dout1_22 Vdout1_22ck5 = 0 time = 30
.meas tran vdout1_22ck5 FIND v(dout1_22) AT=30.025n

* CHECK dout1_23 Vdout1_23ck5 = 0.9 time = 30
.meas tran vdout1_23ck5 FIND v(dout1_23) AT=30.025n

* CHECK dout1_24 Vdout1_24ck5 = 0 time = 30
.meas tran vdout1_24ck5 FIND v(dout1_24) AT=30.025n

* CHECK dout1_25 Vdout1_25ck5 = 0 time = 30
.meas tran vdout1_25ck5 FIND v(dout1_25) AT=30.025n

* CHECK dout1_26 Vdout1_26ck5 = 0 time = 30
.meas tran vdout1_26ck5 FIND v(dout1_26) AT=30.025n

* CHECK dout1_27 Vdout1_27ck5 = 0 time = 30
.meas tran vdout1_27ck5 FIND v(dout1_27) AT=30.025n

* CHECK dout1_28 Vdout1_28ck5 = 0 time = 30
.meas tran vdout1_28ck5 FIND v(dout1_28) AT=30.025n

* CHECK dout1_29 Vdout1_29ck5 = 0 time = 30
.meas tran vdout1_29ck5 FIND v(dout1_29) AT=30.025n

* CHECK dout1_30 Vdout1_30ck5 = 0.9 time = 30
.meas tran vdout1_30ck5 FIND v(dout1_30) AT=30.025n

* CHECK dout1_31 Vdout1_31ck5 = 0.9 time = 30
.meas tran vdout1_31ck5 FIND v(dout1_31) AT=30.025n

* CHECK dout1_0 Vdout1_0ck7 = 0 time = 40
.meas tran vdout1_0ck7 FIND v(dout1_0) AT=40.025n

* CHECK dout1_1 Vdout1_1ck7 = 0.9 time = 40
.meas tran vdout1_1ck7 FIND v(dout1_1) AT=40.025n

* CHECK dout1_2 Vdout1_2ck7 = 0 time = 40
.meas tran vdout1_2ck7 FIND v(dout1_2) AT=40.025n

* CHECK dout1_3 Vdout1_3ck7 = 0.9 time = 40
.meas tran vdout1_3ck7 FIND v(dout1_3) AT=40.025n

* CHECK dout1_4 Vdout1_4ck7 = 0 time = 40
.meas tran vdout1_4ck7 FIND v(dout1_4) AT=40.025n

* CHECK dout1_5 Vdout1_5ck7 = 0.9 time = 40
.meas tran vdout1_5ck7 FIND v(dout1_5) AT=40.025n

* CHECK dout1_6 Vdout1_6ck7 = 0.9 time = 40
.meas tran vdout1_6ck7 FIND v(dout1_6) AT=40.025n

* CHECK dout1_7 Vdout1_7ck7 = 0.9 time = 40
.meas tran vdout1_7ck7 FIND v(dout1_7) AT=40.025n

* CHECK dout1_8 Vdout1_8ck7 = 0.9 time = 40
.meas tran vdout1_8ck7 FIND v(dout1_8) AT=40.025n

* CHECK dout1_9 Vdout1_9ck7 = 0 time = 40
.meas tran vdout1_9ck7 FIND v(dout1_9) AT=40.025n

* CHECK dout1_10 Vdout1_10ck7 = 0.9 time = 40
.meas tran vdout1_10ck7 FIND v(dout1_10) AT=40.025n

* CHECK dout1_11 Vdout1_11ck7 = 0.9 time = 40
.meas tran vdout1_11ck7 FIND v(dout1_11) AT=40.025n

* CHECK dout1_12 Vdout1_12ck7 = 0.9 time = 40
.meas tran vdout1_12ck7 FIND v(dout1_12) AT=40.025n

* CHECK dout1_13 Vdout1_13ck7 = 0.9 time = 40
.meas tran vdout1_13ck7 FIND v(dout1_13) AT=40.025n

* CHECK dout1_14 Vdout1_14ck7 = 0 time = 40
.meas tran vdout1_14ck7 FIND v(dout1_14) AT=40.025n

* CHECK dout1_15 Vdout1_15ck7 = 0 time = 40
.meas tran vdout1_15ck7 FIND v(dout1_15) AT=40.025n

* CHECK dout1_16 Vdout1_16ck7 = 0.9 time = 40
.meas tran vdout1_16ck7 FIND v(dout1_16) AT=40.025n

* CHECK dout1_17 Vdout1_17ck7 = 0 time = 40
.meas tran vdout1_17ck7 FIND v(dout1_17) AT=40.025n

* CHECK dout1_18 Vdout1_18ck7 = 0 time = 40
.meas tran vdout1_18ck7 FIND v(dout1_18) AT=40.025n

* CHECK dout1_19 Vdout1_19ck7 = 0.9 time = 40
.meas tran vdout1_19ck7 FIND v(dout1_19) AT=40.025n

* CHECK dout1_20 Vdout1_20ck7 = 0 time = 40
.meas tran vdout1_20ck7 FIND v(dout1_20) AT=40.025n

* CHECK dout1_21 Vdout1_21ck7 = 0.9 time = 40
.meas tran vdout1_21ck7 FIND v(dout1_21) AT=40.025n

* CHECK dout1_22 Vdout1_22ck7 = 0.9 time = 40
.meas tran vdout1_22ck7 FIND v(dout1_22) AT=40.025n

* CHECK dout1_23 Vdout1_23ck7 = 0 time = 40
.meas tran vdout1_23ck7 FIND v(dout1_23) AT=40.025n

* CHECK dout1_24 Vdout1_24ck7 = 0.9 time = 40
.meas tran vdout1_24ck7 FIND v(dout1_24) AT=40.025n

* CHECK dout1_25 Vdout1_25ck7 = 0.9 time = 40
.meas tran vdout1_25ck7 FIND v(dout1_25) AT=40.025n

* CHECK dout1_26 Vdout1_26ck7 = 0.9 time = 40
.meas tran vdout1_26ck7 FIND v(dout1_26) AT=40.025n

* CHECK dout1_27 Vdout1_27ck7 = 0 time = 40
.meas tran vdout1_27ck7 FIND v(dout1_27) AT=40.025n

* CHECK dout1_28 Vdout1_28ck7 = 0.9 time = 40
.meas tran vdout1_28ck7 FIND v(dout1_28) AT=40.025n

* CHECK dout1_29 Vdout1_29ck7 = 0.9 time = 40
.meas tran vdout1_29ck7 FIND v(dout1_29) AT=40.025n

* CHECK dout1_30 Vdout1_30ck7 = 0.9 time = 40
.meas tran vdout1_30ck7 FIND v(dout1_30) AT=40.025n

* CHECK dout1_31 Vdout1_31ck7 = 0.9 time = 40
.meas tran vdout1_31ck7 FIND v(dout1_31) AT=40.025n

* CHECK dout1_0 Vdout1_0ck9 = 0.9 time = 50
.meas tran vdout1_0ck9 FIND v(dout1_0) AT=50.025n

* CHECK dout1_1 Vdout1_1ck9 = 0.9 time = 50
.meas tran vdout1_1ck9 FIND v(dout1_1) AT=50.025n

* CHECK dout1_2 Vdout1_2ck9 = 0.9 time = 50
.meas tran vdout1_2ck9 FIND v(dout1_2) AT=50.025n

* CHECK dout1_3 Vdout1_3ck9 = 0 time = 50
.meas tran vdout1_3ck9 FIND v(dout1_3) AT=50.025n

* CHECK dout1_4 Vdout1_4ck9 = 0 time = 50
.meas tran vdout1_4ck9 FIND v(dout1_4) AT=50.025n

* CHECK dout1_5 Vdout1_5ck9 = 0 time = 50
.meas tran vdout1_5ck9 FIND v(dout1_5) AT=50.025n

* CHECK dout1_6 Vdout1_6ck9 = 0 time = 50
.meas tran vdout1_6ck9 FIND v(dout1_6) AT=50.025n

* CHECK dout1_7 Vdout1_7ck9 = 0.9 time = 50
.meas tran vdout1_7ck9 FIND v(dout1_7) AT=50.025n

* CHECK dout1_8 Vdout1_8ck9 = 0.9 time = 50
.meas tran vdout1_8ck9 FIND v(dout1_8) AT=50.025n

* CHECK dout1_9 Vdout1_9ck9 = 0.9 time = 50
.meas tran vdout1_9ck9 FIND v(dout1_9) AT=50.025n

* CHECK dout1_10 Vdout1_10ck9 = 0 time = 50
.meas tran vdout1_10ck9 FIND v(dout1_10) AT=50.025n

* CHECK dout1_11 Vdout1_11ck9 = 0 time = 50
.meas tran vdout1_11ck9 FIND v(dout1_11) AT=50.025n

* CHECK dout1_12 Vdout1_12ck9 = 0.9 time = 50
.meas tran vdout1_12ck9 FIND v(dout1_12) AT=50.025n

* CHECK dout1_13 Vdout1_13ck9 = 0.9 time = 50
.meas tran vdout1_13ck9 FIND v(dout1_13) AT=50.025n

* CHECK dout1_14 Vdout1_14ck9 = 0.9 time = 50
.meas tran vdout1_14ck9 FIND v(dout1_14) AT=50.025n

* CHECK dout1_15 Vdout1_15ck9 = 0.9 time = 50
.meas tran vdout1_15ck9 FIND v(dout1_15) AT=50.025n

* CHECK dout1_16 Vdout1_16ck9 = 0.9 time = 50
.meas tran vdout1_16ck9 FIND v(dout1_16) AT=50.025n

* CHECK dout1_17 Vdout1_17ck9 = 0 time = 50
.meas tran vdout1_17ck9 FIND v(dout1_17) AT=50.025n

* CHECK dout1_18 Vdout1_18ck9 = 0 time = 50
.meas tran vdout1_18ck9 FIND v(dout1_18) AT=50.025n

* CHECK dout1_19 Vdout1_19ck9 = 0 time = 50
.meas tran vdout1_19ck9 FIND v(dout1_19) AT=50.025n

* CHECK dout1_20 Vdout1_20ck9 = 0.9 time = 50
.meas tran vdout1_20ck9 FIND v(dout1_20) AT=50.025n

* CHECK dout1_21 Vdout1_21ck9 = 0 time = 50
.meas tran vdout1_21ck9 FIND v(dout1_21) AT=50.025n

* CHECK dout1_22 Vdout1_22ck9 = 0.9 time = 50
.meas tran vdout1_22ck9 FIND v(dout1_22) AT=50.025n

* CHECK dout1_23 Vdout1_23ck9 = 0 time = 50
.meas tran vdout1_23ck9 FIND v(dout1_23) AT=50.025n

* CHECK dout1_24 Vdout1_24ck9 = 0 time = 50
.meas tran vdout1_24ck9 FIND v(dout1_24) AT=50.025n

* CHECK dout1_25 Vdout1_25ck9 = 0 time = 50
.meas tran vdout1_25ck9 FIND v(dout1_25) AT=50.025n

* CHECK dout1_26 Vdout1_26ck9 = 0 time = 50
.meas tran vdout1_26ck9 FIND v(dout1_26) AT=50.025n

* CHECK dout1_27 Vdout1_27ck9 = 0 time = 50
.meas tran vdout1_27ck9 FIND v(dout1_27) AT=50.025n

* CHECK dout1_28 Vdout1_28ck9 = 0 time = 50
.meas tran vdout1_28ck9 FIND v(dout1_28) AT=50.025n

* CHECK dout1_29 Vdout1_29ck9 = 0 time = 50
.meas tran vdout1_29ck9 FIND v(dout1_29) AT=50.025n

* CHECK dout1_30 Vdout1_30ck9 = 0 time = 50
.meas tran vdout1_30ck9 FIND v(dout1_30) AT=50.025n

* CHECK dout1_31 Vdout1_31ck9 = 0.9 time = 50
.meas tran vdout1_31ck9 FIND v(dout1_31) AT=50.025n

* CHECK dout1_0 Vdout1_0ck19 = 0.9 time = 100
.meas tran vdout1_0ck19 FIND v(dout1_0) AT=100.025n

* CHECK dout1_1 Vdout1_1ck19 = 0.9 time = 100
.meas tran vdout1_1ck19 FIND v(dout1_1) AT=100.025n

* CHECK dout1_2 Vdout1_2ck19 = 0.9 time = 100
.meas tran vdout1_2ck19 FIND v(dout1_2) AT=100.025n

* CHECK dout1_3 Vdout1_3ck19 = 0 time = 100
.meas tran vdout1_3ck19 FIND v(dout1_3) AT=100.025n

* CHECK dout1_4 Vdout1_4ck19 = 0 time = 100
.meas tran vdout1_4ck19 FIND v(dout1_4) AT=100.025n

* CHECK dout1_5 Vdout1_5ck19 = 0 time = 100
.meas tran vdout1_5ck19 FIND v(dout1_5) AT=100.025n

* CHECK dout1_6 Vdout1_6ck19 = 0 time = 100
.meas tran vdout1_6ck19 FIND v(dout1_6) AT=100.025n

* CHECK dout1_7 Vdout1_7ck19 = 0.9 time = 100
.meas tran vdout1_7ck19 FIND v(dout1_7) AT=100.025n

* CHECK dout1_8 Vdout1_8ck19 = 0.9 time = 100
.meas tran vdout1_8ck19 FIND v(dout1_8) AT=100.025n

* CHECK dout1_9 Vdout1_9ck19 = 0.9 time = 100
.meas tran vdout1_9ck19 FIND v(dout1_9) AT=100.025n

* CHECK dout1_10 Vdout1_10ck19 = 0 time = 100
.meas tran vdout1_10ck19 FIND v(dout1_10) AT=100.025n

* CHECK dout1_11 Vdout1_11ck19 = 0 time = 100
.meas tran vdout1_11ck19 FIND v(dout1_11) AT=100.025n

* CHECK dout1_12 Vdout1_12ck19 = 0.9 time = 100
.meas tran vdout1_12ck19 FIND v(dout1_12) AT=100.025n

* CHECK dout1_13 Vdout1_13ck19 = 0.9 time = 100
.meas tran vdout1_13ck19 FIND v(dout1_13) AT=100.025n

* CHECK dout1_14 Vdout1_14ck19 = 0.9 time = 100
.meas tran vdout1_14ck19 FIND v(dout1_14) AT=100.025n

* CHECK dout1_15 Vdout1_15ck19 = 0.9 time = 100
.meas tran vdout1_15ck19 FIND v(dout1_15) AT=100.025n

* CHECK dout1_16 Vdout1_16ck19 = 0.9 time = 100
.meas tran vdout1_16ck19 FIND v(dout1_16) AT=100.025n

* CHECK dout1_17 Vdout1_17ck19 = 0 time = 100
.meas tran vdout1_17ck19 FIND v(dout1_17) AT=100.025n

* CHECK dout1_18 Vdout1_18ck19 = 0 time = 100
.meas tran vdout1_18ck19 FIND v(dout1_18) AT=100.025n

* CHECK dout1_19 Vdout1_19ck19 = 0 time = 100
.meas tran vdout1_19ck19 FIND v(dout1_19) AT=100.025n

* CHECK dout1_20 Vdout1_20ck19 = 0.9 time = 100
.meas tran vdout1_20ck19 FIND v(dout1_20) AT=100.025n

* CHECK dout1_21 Vdout1_21ck19 = 0 time = 100
.meas tran vdout1_21ck19 FIND v(dout1_21) AT=100.025n

* CHECK dout1_22 Vdout1_22ck19 = 0.9 time = 100
.meas tran vdout1_22ck19 FIND v(dout1_22) AT=100.025n

* CHECK dout1_23 Vdout1_23ck19 = 0 time = 100
.meas tran vdout1_23ck19 FIND v(dout1_23) AT=100.025n

* CHECK dout1_24 Vdout1_24ck19 = 0 time = 100
.meas tran vdout1_24ck19 FIND v(dout1_24) AT=100.025n

* CHECK dout1_25 Vdout1_25ck19 = 0 time = 100
.meas tran vdout1_25ck19 FIND v(dout1_25) AT=100.025n

* CHECK dout1_26 Vdout1_26ck19 = 0 time = 100
.meas tran vdout1_26ck19 FIND v(dout1_26) AT=100.025n

* CHECK dout1_27 Vdout1_27ck19 = 0 time = 100
.meas tran vdout1_27ck19 FIND v(dout1_27) AT=100.025n

* CHECK dout1_28 Vdout1_28ck19 = 0 time = 100
.meas tran vdout1_28ck19 FIND v(dout1_28) AT=100.025n

* CHECK dout1_29 Vdout1_29ck19 = 0 time = 100
.meas tran vdout1_29ck19 FIND v(dout1_29) AT=100.025n

* CHECK dout1_30 Vdout1_30ck19 = 0 time = 100
.meas tran vdout1_30ck19 FIND v(dout1_30) AT=100.025n

* CHECK dout1_31 Vdout1_31ck19 = 0.9 time = 100
.meas tran vdout1_31ck19 FIND v(dout1_31) AT=100.025n

* CHECK dout1_0 Vdout1_0ck21 = 0 time = 110
.meas tran vdout1_0ck21 FIND v(dout1_0) AT=110.025n

* CHECK dout1_1 Vdout1_1ck21 = 0.9 time = 110
.meas tran vdout1_1ck21 FIND v(dout1_1) AT=110.025n

* CHECK dout1_2 Vdout1_2ck21 = 0.9 time = 110
.meas tran vdout1_2ck21 FIND v(dout1_2) AT=110.025n

* CHECK dout1_3 Vdout1_3ck21 = 0 time = 110
.meas tran vdout1_3ck21 FIND v(dout1_3) AT=110.025n

* CHECK dout1_4 Vdout1_4ck21 = 0 time = 110
.meas tran vdout1_4ck21 FIND v(dout1_4) AT=110.025n

* CHECK dout1_5 Vdout1_5ck21 = 0.9 time = 110
.meas tran vdout1_5ck21 FIND v(dout1_5) AT=110.025n

* CHECK dout1_6 Vdout1_6ck21 = 0.9 time = 110
.meas tran vdout1_6ck21 FIND v(dout1_6) AT=110.025n

* CHECK dout1_7 Vdout1_7ck21 = 0.9 time = 110
.meas tran vdout1_7ck21 FIND v(dout1_7) AT=110.025n

* CHECK dout1_8 Vdout1_8ck21 = 0.9 time = 110
.meas tran vdout1_8ck21 FIND v(dout1_8) AT=110.025n

* CHECK dout1_9 Vdout1_9ck21 = 0.9 time = 110
.meas tran vdout1_9ck21 FIND v(dout1_9) AT=110.025n

* CHECK dout1_10 Vdout1_10ck21 = 0.9 time = 110
.meas tran vdout1_10ck21 FIND v(dout1_10) AT=110.025n

* CHECK dout1_11 Vdout1_11ck21 = 0.9 time = 110
.meas tran vdout1_11ck21 FIND v(dout1_11) AT=110.025n

* CHECK dout1_12 Vdout1_12ck21 = 0.9 time = 110
.meas tran vdout1_12ck21 FIND v(dout1_12) AT=110.025n

* CHECK dout1_13 Vdout1_13ck21 = 0.9 time = 110
.meas tran vdout1_13ck21 FIND v(dout1_13) AT=110.025n

* CHECK dout1_14 Vdout1_14ck21 = 0 time = 110
.meas tran vdout1_14ck21 FIND v(dout1_14) AT=110.025n

* CHECK dout1_15 Vdout1_15ck21 = 0 time = 110
.meas tran vdout1_15ck21 FIND v(dout1_15) AT=110.025n

* CHECK dout1_16 Vdout1_16ck21 = 0.9 time = 110
.meas tran vdout1_16ck21 FIND v(dout1_16) AT=110.025n

* CHECK dout1_17 Vdout1_17ck21 = 0.9 time = 110
.meas tran vdout1_17ck21 FIND v(dout1_17) AT=110.025n

* CHECK dout1_18 Vdout1_18ck21 = 0.9 time = 110
.meas tran vdout1_18ck21 FIND v(dout1_18) AT=110.025n

* CHECK dout1_19 Vdout1_19ck21 = 0.9 time = 110
.meas tran vdout1_19ck21 FIND v(dout1_19) AT=110.025n

* CHECK dout1_20 Vdout1_20ck21 = 0.9 time = 110
.meas tran vdout1_20ck21 FIND v(dout1_20) AT=110.025n

* CHECK dout1_21 Vdout1_21ck21 = 0.9 time = 110
.meas tran vdout1_21ck21 FIND v(dout1_21) AT=110.025n

* CHECK dout1_22 Vdout1_22ck21 = 0 time = 110
.meas tran vdout1_22ck21 FIND v(dout1_22) AT=110.025n

* CHECK dout1_23 Vdout1_23ck21 = 0.9 time = 110
.meas tran vdout1_23ck21 FIND v(dout1_23) AT=110.025n

* CHECK dout1_24 Vdout1_24ck21 = 0 time = 110
.meas tran vdout1_24ck21 FIND v(dout1_24) AT=110.025n

* CHECK dout1_25 Vdout1_25ck21 = 0 time = 110
.meas tran vdout1_25ck21 FIND v(dout1_25) AT=110.025n

* CHECK dout1_26 Vdout1_26ck21 = 0.9 time = 110
.meas tran vdout1_26ck21 FIND v(dout1_26) AT=110.025n

* CHECK dout1_27 Vdout1_27ck21 = 0.9 time = 110
.meas tran vdout1_27ck21 FIND v(dout1_27) AT=110.025n

* CHECK dout1_28 Vdout1_28ck21 = 0 time = 110
.meas tran vdout1_28ck21 FIND v(dout1_28) AT=110.025n

* CHECK dout1_29 Vdout1_29ck21 = 0.9 time = 110
.meas tran vdout1_29ck21 FIND v(dout1_29) AT=110.025n

* CHECK dout1_30 Vdout1_30ck21 = 0 time = 110
.meas tran vdout1_30ck21 FIND v(dout1_30) AT=110.025n

* CHECK dout1_31 Vdout1_31ck21 = 0.9 time = 110
.meas tran vdout1_31ck21 FIND v(dout1_31) AT=110.025n

* CHECK dout1_0 Vdout1_0ck25 = 0.9 time = 130
.meas tran vdout1_0ck25 FIND v(dout1_0) AT=130.025n

* CHECK dout1_1 Vdout1_1ck25 = 0.9 time = 130
.meas tran vdout1_1ck25 FIND v(dout1_1) AT=130.025n

* CHECK dout1_2 Vdout1_2ck25 = 0.9 time = 130
.meas tran vdout1_2ck25 FIND v(dout1_2) AT=130.025n

* CHECK dout1_3 Vdout1_3ck25 = 0.9 time = 130
.meas tran vdout1_3ck25 FIND v(dout1_3) AT=130.025n

* CHECK dout1_4 Vdout1_4ck25 = 0.9 time = 130
.meas tran vdout1_4ck25 FIND v(dout1_4) AT=130.025n

* CHECK dout1_5 Vdout1_5ck25 = 0.9 time = 130
.meas tran vdout1_5ck25 FIND v(dout1_5) AT=130.025n

* CHECK dout1_6 Vdout1_6ck25 = 0 time = 130
.meas tran vdout1_6ck25 FIND v(dout1_6) AT=130.025n

* CHECK dout1_7 Vdout1_7ck25 = 0.9 time = 130
.meas tran vdout1_7ck25 FIND v(dout1_7) AT=130.025n

* CHECK dout1_8 Vdout1_8ck25 = 0.9 time = 130
.meas tran vdout1_8ck25 FIND v(dout1_8) AT=130.025n

* CHECK dout1_9 Vdout1_9ck25 = 0 time = 130
.meas tran vdout1_9ck25 FIND v(dout1_9) AT=130.025n

* CHECK dout1_10 Vdout1_10ck25 = 0.9 time = 130
.meas tran vdout1_10ck25 FIND v(dout1_10) AT=130.025n

* CHECK dout1_11 Vdout1_11ck25 = 0 time = 130
.meas tran vdout1_11ck25 FIND v(dout1_11) AT=130.025n

* CHECK dout1_12 Vdout1_12ck25 = 0.9 time = 130
.meas tran vdout1_12ck25 FIND v(dout1_12) AT=130.025n

* CHECK dout1_13 Vdout1_13ck25 = 0.9 time = 130
.meas tran vdout1_13ck25 FIND v(dout1_13) AT=130.025n

* CHECK dout1_14 Vdout1_14ck25 = 0 time = 130
.meas tran vdout1_14ck25 FIND v(dout1_14) AT=130.025n

* CHECK dout1_15 Vdout1_15ck25 = 0 time = 130
.meas tran vdout1_15ck25 FIND v(dout1_15) AT=130.025n

* CHECK dout1_16 Vdout1_16ck25 = 0 time = 130
.meas tran vdout1_16ck25 FIND v(dout1_16) AT=130.025n

* CHECK dout1_17 Vdout1_17ck25 = 0 time = 130
.meas tran vdout1_17ck25 FIND v(dout1_17) AT=130.025n

* CHECK dout1_18 Vdout1_18ck25 = 0.9 time = 130
.meas tran vdout1_18ck25 FIND v(dout1_18) AT=130.025n

* CHECK dout1_19 Vdout1_19ck25 = 0 time = 130
.meas tran vdout1_19ck25 FIND v(dout1_19) AT=130.025n

* CHECK dout1_20 Vdout1_20ck25 = 0 time = 130
.meas tran vdout1_20ck25 FIND v(dout1_20) AT=130.025n

* CHECK dout1_21 Vdout1_21ck25 = 0 time = 130
.meas tran vdout1_21ck25 FIND v(dout1_21) AT=130.025n

* CHECK dout1_22 Vdout1_22ck25 = 0 time = 130
.meas tran vdout1_22ck25 FIND v(dout1_22) AT=130.025n

* CHECK dout1_23 Vdout1_23ck25 = 0.9 time = 130
.meas tran vdout1_23ck25 FIND v(dout1_23) AT=130.025n

* CHECK dout1_24 Vdout1_24ck25 = 0.9 time = 130
.meas tran vdout1_24ck25 FIND v(dout1_24) AT=130.025n

* CHECK dout1_25 Vdout1_25ck25 = 0 time = 130
.meas tran vdout1_25ck25 FIND v(dout1_25) AT=130.025n

* CHECK dout1_26 Vdout1_26ck25 = 0.9 time = 130
.meas tran vdout1_26ck25 FIND v(dout1_26) AT=130.025n

* CHECK dout1_27 Vdout1_27ck25 = 0.9 time = 130
.meas tran vdout1_27ck25 FIND v(dout1_27) AT=130.025n

* CHECK dout1_28 Vdout1_28ck25 = 0.9 time = 130
.meas tran vdout1_28ck25 FIND v(dout1_28) AT=130.025n

* CHECK dout1_29 Vdout1_29ck25 = 0 time = 130
.meas tran vdout1_29ck25 FIND v(dout1_29) AT=130.025n

* CHECK dout1_30 Vdout1_30ck25 = 0.9 time = 130
.meas tran vdout1_30ck25 FIND v(dout1_30) AT=130.025n

* CHECK dout1_31 Vdout1_31ck25 = 0.9 time = 130
.meas tran vdout1_31ck25 FIND v(dout1_31) AT=130.025n

* CHECK dout1_0 Vdout1_0ck27 = 0 time = 140
.meas tran vdout1_0ck27 FIND v(dout1_0) AT=140.025n

* CHECK dout1_1 Vdout1_1ck27 = 0.9 time = 140
.meas tran vdout1_1ck27 FIND v(dout1_1) AT=140.025n

* CHECK dout1_2 Vdout1_2ck27 = 0 time = 140
.meas tran vdout1_2ck27 FIND v(dout1_2) AT=140.025n

* CHECK dout1_3 Vdout1_3ck27 = 0 time = 140
.meas tran vdout1_3ck27 FIND v(dout1_3) AT=140.025n

* CHECK dout1_4 Vdout1_4ck27 = 0.9 time = 140
.meas tran vdout1_4ck27 FIND v(dout1_4) AT=140.025n

* CHECK dout1_5 Vdout1_5ck27 = 0.9 time = 140
.meas tran vdout1_5ck27 FIND v(dout1_5) AT=140.025n

* CHECK dout1_6 Vdout1_6ck27 = 0 time = 140
.meas tran vdout1_6ck27 FIND v(dout1_6) AT=140.025n

* CHECK dout1_7 Vdout1_7ck27 = 0 time = 140
.meas tran vdout1_7ck27 FIND v(dout1_7) AT=140.025n

* CHECK dout1_8 Vdout1_8ck27 = 0.9 time = 140
.meas tran vdout1_8ck27 FIND v(dout1_8) AT=140.025n

* CHECK dout1_9 Vdout1_9ck27 = 0 time = 140
.meas tran vdout1_9ck27 FIND v(dout1_9) AT=140.025n

* CHECK dout1_10 Vdout1_10ck27 = 0 time = 140
.meas tran vdout1_10ck27 FIND v(dout1_10) AT=140.025n

* CHECK dout1_11 Vdout1_11ck27 = 0 time = 140
.meas tran vdout1_11ck27 FIND v(dout1_11) AT=140.025n

* CHECK dout1_12 Vdout1_12ck27 = 0 time = 140
.meas tran vdout1_12ck27 FIND v(dout1_12) AT=140.025n

* CHECK dout1_13 Vdout1_13ck27 = 0.9 time = 140
.meas tran vdout1_13ck27 FIND v(dout1_13) AT=140.025n

* CHECK dout1_14 Vdout1_14ck27 = 0.9 time = 140
.meas tran vdout1_14ck27 FIND v(dout1_14) AT=140.025n

* CHECK dout1_15 Vdout1_15ck27 = 0.9 time = 140
.meas tran vdout1_15ck27 FIND v(dout1_15) AT=140.025n

* CHECK dout1_16 Vdout1_16ck27 = 0.9 time = 140
.meas tran vdout1_16ck27 FIND v(dout1_16) AT=140.025n

* CHECK dout1_17 Vdout1_17ck27 = 0 time = 140
.meas tran vdout1_17ck27 FIND v(dout1_17) AT=140.025n

* CHECK dout1_18 Vdout1_18ck27 = 0.9 time = 140
.meas tran vdout1_18ck27 FIND v(dout1_18) AT=140.025n

* CHECK dout1_19 Vdout1_19ck27 = 0 time = 140
.meas tran vdout1_19ck27 FIND v(dout1_19) AT=140.025n

* CHECK dout1_20 Vdout1_20ck27 = 0 time = 140
.meas tran vdout1_20ck27 FIND v(dout1_20) AT=140.025n

* CHECK dout1_21 Vdout1_21ck27 = 0 time = 140
.meas tran vdout1_21ck27 FIND v(dout1_21) AT=140.025n

* CHECK dout1_22 Vdout1_22ck27 = 0 time = 140
.meas tran vdout1_22ck27 FIND v(dout1_22) AT=140.025n

* CHECK dout1_23 Vdout1_23ck27 = 0.9 time = 140
.meas tran vdout1_23ck27 FIND v(dout1_23) AT=140.025n

* CHECK dout1_24 Vdout1_24ck27 = 0.9 time = 140
.meas tran vdout1_24ck27 FIND v(dout1_24) AT=140.025n

* CHECK dout1_25 Vdout1_25ck27 = 0.9 time = 140
.meas tran vdout1_25ck27 FIND v(dout1_25) AT=140.025n

* CHECK dout1_26 Vdout1_26ck27 = 0.9 time = 140
.meas tran vdout1_26ck27 FIND v(dout1_26) AT=140.025n

* CHECK dout1_27 Vdout1_27ck27 = 0 time = 140
.meas tran vdout1_27ck27 FIND v(dout1_27) AT=140.025n

* CHECK dout1_28 Vdout1_28ck27 = 0.9 time = 140
.meas tran vdout1_28ck27 FIND v(dout1_28) AT=140.025n

* CHECK dout1_29 Vdout1_29ck27 = 0.9 time = 140
.meas tran vdout1_29ck27 FIND v(dout1_29) AT=140.025n

* CHECK dout1_30 Vdout1_30ck27 = 0 time = 140
.meas tran vdout1_30ck27 FIND v(dout1_30) AT=140.025n

* CHECK dout1_31 Vdout1_31ck27 = 0 time = 140
.meas tran vdout1_31ck27 FIND v(dout1_31) AT=140.025n

* CHECK dout1_0 Vdout1_0ck28 = 0.9 time = 145
.meas tran vdout1_0ck28 FIND v(dout1_0) AT=145.025n

* CHECK dout1_1 Vdout1_1ck28 = 0.9 time = 145
.meas tran vdout1_1ck28 FIND v(dout1_1) AT=145.025n

* CHECK dout1_2 Vdout1_2ck28 = 0.9 time = 145
.meas tran vdout1_2ck28 FIND v(dout1_2) AT=145.025n

* CHECK dout1_3 Vdout1_3ck28 = 0.9 time = 145
.meas tran vdout1_3ck28 FIND v(dout1_3) AT=145.025n

* CHECK dout1_4 Vdout1_4ck28 = 0.9 time = 145
.meas tran vdout1_4ck28 FIND v(dout1_4) AT=145.025n

* CHECK dout1_5 Vdout1_5ck28 = 0.9 time = 145
.meas tran vdout1_5ck28 FIND v(dout1_5) AT=145.025n

* CHECK dout1_6 Vdout1_6ck28 = 0 time = 145
.meas tran vdout1_6ck28 FIND v(dout1_6) AT=145.025n

* CHECK dout1_7 Vdout1_7ck28 = 0.9 time = 145
.meas tran vdout1_7ck28 FIND v(dout1_7) AT=145.025n

* CHECK dout1_8 Vdout1_8ck28 = 0.9 time = 145
.meas tran vdout1_8ck28 FIND v(dout1_8) AT=145.025n

* CHECK dout1_9 Vdout1_9ck28 = 0 time = 145
.meas tran vdout1_9ck28 FIND v(dout1_9) AT=145.025n

* CHECK dout1_10 Vdout1_10ck28 = 0.9 time = 145
.meas tran vdout1_10ck28 FIND v(dout1_10) AT=145.025n

* CHECK dout1_11 Vdout1_11ck28 = 0 time = 145
.meas tran vdout1_11ck28 FIND v(dout1_11) AT=145.025n

* CHECK dout1_12 Vdout1_12ck28 = 0.9 time = 145
.meas tran vdout1_12ck28 FIND v(dout1_12) AT=145.025n

* CHECK dout1_13 Vdout1_13ck28 = 0.9 time = 145
.meas tran vdout1_13ck28 FIND v(dout1_13) AT=145.025n

* CHECK dout1_14 Vdout1_14ck28 = 0 time = 145
.meas tran vdout1_14ck28 FIND v(dout1_14) AT=145.025n

* CHECK dout1_15 Vdout1_15ck28 = 0 time = 145
.meas tran vdout1_15ck28 FIND v(dout1_15) AT=145.025n

* CHECK dout1_16 Vdout1_16ck28 = 0 time = 145
.meas tran vdout1_16ck28 FIND v(dout1_16) AT=145.025n

* CHECK dout1_17 Vdout1_17ck28 = 0 time = 145
.meas tran vdout1_17ck28 FIND v(dout1_17) AT=145.025n

* CHECK dout1_18 Vdout1_18ck28 = 0.9 time = 145
.meas tran vdout1_18ck28 FIND v(dout1_18) AT=145.025n

* CHECK dout1_19 Vdout1_19ck28 = 0 time = 145
.meas tran vdout1_19ck28 FIND v(dout1_19) AT=145.025n

* CHECK dout1_20 Vdout1_20ck28 = 0 time = 145
.meas tran vdout1_20ck28 FIND v(dout1_20) AT=145.025n

* CHECK dout1_21 Vdout1_21ck28 = 0 time = 145
.meas tran vdout1_21ck28 FIND v(dout1_21) AT=145.025n

* CHECK dout1_22 Vdout1_22ck28 = 0 time = 145
.meas tran vdout1_22ck28 FIND v(dout1_22) AT=145.025n

* CHECK dout1_23 Vdout1_23ck28 = 0.9 time = 145
.meas tran vdout1_23ck28 FIND v(dout1_23) AT=145.025n

* CHECK dout1_24 Vdout1_24ck28 = 0.9 time = 145
.meas tran vdout1_24ck28 FIND v(dout1_24) AT=145.025n

* CHECK dout1_25 Vdout1_25ck28 = 0 time = 145
.meas tran vdout1_25ck28 FIND v(dout1_25) AT=145.025n

* CHECK dout1_26 Vdout1_26ck28 = 0.9 time = 145
.meas tran vdout1_26ck28 FIND v(dout1_26) AT=145.025n

* CHECK dout1_27 Vdout1_27ck28 = 0.9 time = 145
.meas tran vdout1_27ck28 FIND v(dout1_27) AT=145.025n

* CHECK dout1_28 Vdout1_28ck28 = 0.9 time = 145
.meas tran vdout1_28ck28 FIND v(dout1_28) AT=145.025n

* CHECK dout1_29 Vdout1_29ck28 = 0 time = 145
.meas tran vdout1_29ck28 FIND v(dout1_29) AT=145.025n

* CHECK dout1_30 Vdout1_30ck28 = 0.9 time = 145
.meas tran vdout1_30ck28 FIND v(dout1_30) AT=145.025n

* CHECK dout1_31 Vdout1_31ck28 = 0.9 time = 145
.meas tran vdout1_31ck28 FIND v(dout1_31) AT=145.025n

* CHECK dout1_0 Vdout1_0ck29 = 0.9 time = 150
.meas tran vdout1_0ck29 FIND v(dout1_0) AT=150.025n

* CHECK dout1_1 Vdout1_1ck29 = 0.9 time = 150
.meas tran vdout1_1ck29 FIND v(dout1_1) AT=150.025n

* CHECK dout1_2 Vdout1_2ck29 = 0.9 time = 150
.meas tran vdout1_2ck29 FIND v(dout1_2) AT=150.025n

* CHECK dout1_3 Vdout1_3ck29 = 0.9 time = 150
.meas tran vdout1_3ck29 FIND v(dout1_3) AT=150.025n

* CHECK dout1_4 Vdout1_4ck29 = 0.9 time = 150
.meas tran vdout1_4ck29 FIND v(dout1_4) AT=150.025n

* CHECK dout1_5 Vdout1_5ck29 = 0.9 time = 150
.meas tran vdout1_5ck29 FIND v(dout1_5) AT=150.025n

* CHECK dout1_6 Vdout1_6ck29 = 0 time = 150
.meas tran vdout1_6ck29 FIND v(dout1_6) AT=150.025n

* CHECK dout1_7 Vdout1_7ck29 = 0.9 time = 150
.meas tran vdout1_7ck29 FIND v(dout1_7) AT=150.025n

* CHECK dout1_8 Vdout1_8ck29 = 0.9 time = 150
.meas tran vdout1_8ck29 FIND v(dout1_8) AT=150.025n

* CHECK dout1_9 Vdout1_9ck29 = 0 time = 150
.meas tran vdout1_9ck29 FIND v(dout1_9) AT=150.025n

* CHECK dout1_10 Vdout1_10ck29 = 0.9 time = 150
.meas tran vdout1_10ck29 FIND v(dout1_10) AT=150.025n

* CHECK dout1_11 Vdout1_11ck29 = 0 time = 150
.meas tran vdout1_11ck29 FIND v(dout1_11) AT=150.025n

* CHECK dout1_12 Vdout1_12ck29 = 0.9 time = 150
.meas tran vdout1_12ck29 FIND v(dout1_12) AT=150.025n

* CHECK dout1_13 Vdout1_13ck29 = 0.9 time = 150
.meas tran vdout1_13ck29 FIND v(dout1_13) AT=150.025n

* CHECK dout1_14 Vdout1_14ck29 = 0 time = 150
.meas tran vdout1_14ck29 FIND v(dout1_14) AT=150.025n

* CHECK dout1_15 Vdout1_15ck29 = 0 time = 150
.meas tran vdout1_15ck29 FIND v(dout1_15) AT=150.025n

* CHECK dout1_16 Vdout1_16ck29 = 0 time = 150
.meas tran vdout1_16ck29 FIND v(dout1_16) AT=150.025n

* CHECK dout1_17 Vdout1_17ck29 = 0 time = 150
.meas tran vdout1_17ck29 FIND v(dout1_17) AT=150.025n

* CHECK dout1_18 Vdout1_18ck29 = 0.9 time = 150
.meas tran vdout1_18ck29 FIND v(dout1_18) AT=150.025n

* CHECK dout1_19 Vdout1_19ck29 = 0 time = 150
.meas tran vdout1_19ck29 FIND v(dout1_19) AT=150.025n

* CHECK dout1_20 Vdout1_20ck29 = 0 time = 150
.meas tran vdout1_20ck29 FIND v(dout1_20) AT=150.025n

* CHECK dout1_21 Vdout1_21ck29 = 0 time = 150
.meas tran vdout1_21ck29 FIND v(dout1_21) AT=150.025n

* CHECK dout1_22 Vdout1_22ck29 = 0 time = 150
.meas tran vdout1_22ck29 FIND v(dout1_22) AT=150.025n

* CHECK dout1_23 Vdout1_23ck29 = 0.9 time = 150
.meas tran vdout1_23ck29 FIND v(dout1_23) AT=150.025n

* CHECK dout1_24 Vdout1_24ck29 = 0.9 time = 150
.meas tran vdout1_24ck29 FIND v(dout1_24) AT=150.025n

* CHECK dout1_25 Vdout1_25ck29 = 0 time = 150
.meas tran vdout1_25ck29 FIND v(dout1_25) AT=150.025n

* CHECK dout1_26 Vdout1_26ck29 = 0.9 time = 150
.meas tran vdout1_26ck29 FIND v(dout1_26) AT=150.025n

* CHECK dout1_27 Vdout1_27ck29 = 0.9 time = 150
.meas tran vdout1_27ck29 FIND v(dout1_27) AT=150.025n

* CHECK dout1_28 Vdout1_28ck29 = 0.9 time = 150
.meas tran vdout1_28ck29 FIND v(dout1_28) AT=150.025n

* CHECK dout1_29 Vdout1_29ck29 = 0 time = 150
.meas tran vdout1_29ck29 FIND v(dout1_29) AT=150.025n

* CHECK dout1_30 Vdout1_30ck29 = 0.9 time = 150
.meas tran vdout1_30ck29 FIND v(dout1_30) AT=150.025n

* CHECK dout1_31 Vdout1_31ck29 = 0.9 time = 150
.meas tran vdout1_31ck29 FIND v(dout1_31) AT=150.025n

* CHECK dout1_0 Vdout1_0ck35 = 0 time = 180
.meas tran vdout1_0ck35 FIND v(dout1_0) AT=180.025n

* CHECK dout1_1 Vdout1_1ck35 = 0.9 time = 180
.meas tran vdout1_1ck35 FIND v(dout1_1) AT=180.025n

* CHECK dout1_2 Vdout1_2ck35 = 0.9 time = 180
.meas tran vdout1_2ck35 FIND v(dout1_2) AT=180.025n

* CHECK dout1_3 Vdout1_3ck35 = 0.9 time = 180
.meas tran vdout1_3ck35 FIND v(dout1_3) AT=180.025n

* CHECK dout1_4 Vdout1_4ck35 = 0.9 time = 180
.meas tran vdout1_4ck35 FIND v(dout1_4) AT=180.025n

* CHECK dout1_5 Vdout1_5ck35 = 0 time = 180
.meas tran vdout1_5ck35 FIND v(dout1_5) AT=180.025n

* CHECK dout1_6 Vdout1_6ck35 = 0.9 time = 180
.meas tran vdout1_6ck35 FIND v(dout1_6) AT=180.025n

* CHECK dout1_7 Vdout1_7ck35 = 0 time = 180
.meas tran vdout1_7ck35 FIND v(dout1_7) AT=180.025n

* CHECK dout1_8 Vdout1_8ck35 = 0 time = 180
.meas tran vdout1_8ck35 FIND v(dout1_8) AT=180.025n

* CHECK dout1_9 Vdout1_9ck35 = 0 time = 180
.meas tran vdout1_9ck35 FIND v(dout1_9) AT=180.025n

* CHECK dout1_10 Vdout1_10ck35 = 0.9 time = 180
.meas tran vdout1_10ck35 FIND v(dout1_10) AT=180.025n

* CHECK dout1_11 Vdout1_11ck35 = 0 time = 180
.meas tran vdout1_11ck35 FIND v(dout1_11) AT=180.025n

* CHECK dout1_12 Vdout1_12ck35 = 0 time = 180
.meas tran vdout1_12ck35 FIND v(dout1_12) AT=180.025n

* CHECK dout1_13 Vdout1_13ck35 = 0 time = 180
.meas tran vdout1_13ck35 FIND v(dout1_13) AT=180.025n

* CHECK dout1_14 Vdout1_14ck35 = 0.9 time = 180
.meas tran vdout1_14ck35 FIND v(dout1_14) AT=180.025n

* CHECK dout1_15 Vdout1_15ck35 = 0.9 time = 180
.meas tran vdout1_15ck35 FIND v(dout1_15) AT=180.025n

* CHECK dout1_16 Vdout1_16ck35 = 0 time = 180
.meas tran vdout1_16ck35 FIND v(dout1_16) AT=180.025n

* CHECK dout1_17 Vdout1_17ck35 = 0 time = 180
.meas tran vdout1_17ck35 FIND v(dout1_17) AT=180.025n

* CHECK dout1_18 Vdout1_18ck35 = 0.9 time = 180
.meas tran vdout1_18ck35 FIND v(dout1_18) AT=180.025n

* CHECK dout1_19 Vdout1_19ck35 = 0 time = 180
.meas tran vdout1_19ck35 FIND v(dout1_19) AT=180.025n

* CHECK dout1_20 Vdout1_20ck35 = 0.9 time = 180
.meas tran vdout1_20ck35 FIND v(dout1_20) AT=180.025n

* CHECK dout1_21 Vdout1_21ck35 = 0 time = 180
.meas tran vdout1_21ck35 FIND v(dout1_21) AT=180.025n

* CHECK dout1_22 Vdout1_22ck35 = 0 time = 180
.meas tran vdout1_22ck35 FIND v(dout1_22) AT=180.025n

* CHECK dout1_23 Vdout1_23ck35 = 0 time = 180
.meas tran vdout1_23ck35 FIND v(dout1_23) AT=180.025n

* CHECK dout1_24 Vdout1_24ck35 = 0 time = 180
.meas tran vdout1_24ck35 FIND v(dout1_24) AT=180.025n

* CHECK dout1_25 Vdout1_25ck35 = 0.9 time = 180
.meas tran vdout1_25ck35 FIND v(dout1_25) AT=180.025n

* CHECK dout1_26 Vdout1_26ck35 = 0 time = 180
.meas tran vdout1_26ck35 FIND v(dout1_26) AT=180.025n

* CHECK dout1_27 Vdout1_27ck35 = 0 time = 180
.meas tran vdout1_27ck35 FIND v(dout1_27) AT=180.025n

* CHECK dout1_28 Vdout1_28ck35 = 0 time = 180
.meas tran vdout1_28ck35 FIND v(dout1_28) AT=180.025n

* CHECK dout1_29 Vdout1_29ck35 = 0.9 time = 180
.meas tran vdout1_29ck35 FIND v(dout1_29) AT=180.025n

* CHECK dout1_30 Vdout1_30ck35 = 0 time = 180
.meas tran vdout1_30ck35 FIND v(dout1_30) AT=180.025n

* CHECK dout1_31 Vdout1_31ck35 = 0 time = 180
.meas tran vdout1_31ck35 FIND v(dout1_31) AT=180.025n

* CHECK dout1_0 Vdout1_0ck36 = 0 time = 185
.meas tran vdout1_0ck36 FIND v(dout1_0) AT=185.025n

* CHECK dout1_1 Vdout1_1ck36 = 0.9 time = 185
.meas tran vdout1_1ck36 FIND v(dout1_1) AT=185.025n

* CHECK dout1_2 Vdout1_2ck36 = 0.9 time = 185
.meas tran vdout1_2ck36 FIND v(dout1_2) AT=185.025n

* CHECK dout1_3 Vdout1_3ck36 = 0.9 time = 185
.meas tran vdout1_3ck36 FIND v(dout1_3) AT=185.025n

* CHECK dout1_4 Vdout1_4ck36 = 0.9 time = 185
.meas tran vdout1_4ck36 FIND v(dout1_4) AT=185.025n

* CHECK dout1_5 Vdout1_5ck36 = 0 time = 185
.meas tran vdout1_5ck36 FIND v(dout1_5) AT=185.025n

* CHECK dout1_6 Vdout1_6ck36 = 0.9 time = 185
.meas tran vdout1_6ck36 FIND v(dout1_6) AT=185.025n

* CHECK dout1_7 Vdout1_7ck36 = 0 time = 185
.meas tran vdout1_7ck36 FIND v(dout1_7) AT=185.025n

* CHECK dout1_8 Vdout1_8ck36 = 0 time = 185
.meas tran vdout1_8ck36 FIND v(dout1_8) AT=185.025n

* CHECK dout1_9 Vdout1_9ck36 = 0 time = 185
.meas tran vdout1_9ck36 FIND v(dout1_9) AT=185.025n

* CHECK dout1_10 Vdout1_10ck36 = 0.9 time = 185
.meas tran vdout1_10ck36 FIND v(dout1_10) AT=185.025n

* CHECK dout1_11 Vdout1_11ck36 = 0 time = 185
.meas tran vdout1_11ck36 FIND v(dout1_11) AT=185.025n

* CHECK dout1_12 Vdout1_12ck36 = 0 time = 185
.meas tran vdout1_12ck36 FIND v(dout1_12) AT=185.025n

* CHECK dout1_13 Vdout1_13ck36 = 0 time = 185
.meas tran vdout1_13ck36 FIND v(dout1_13) AT=185.025n

* CHECK dout1_14 Vdout1_14ck36 = 0.9 time = 185
.meas tran vdout1_14ck36 FIND v(dout1_14) AT=185.025n

* CHECK dout1_15 Vdout1_15ck36 = 0.9 time = 185
.meas tran vdout1_15ck36 FIND v(dout1_15) AT=185.025n

* CHECK dout1_16 Vdout1_16ck36 = 0 time = 185
.meas tran vdout1_16ck36 FIND v(dout1_16) AT=185.025n

* CHECK dout1_17 Vdout1_17ck36 = 0 time = 185
.meas tran vdout1_17ck36 FIND v(dout1_17) AT=185.025n

* CHECK dout1_18 Vdout1_18ck36 = 0.9 time = 185
.meas tran vdout1_18ck36 FIND v(dout1_18) AT=185.025n

* CHECK dout1_19 Vdout1_19ck36 = 0 time = 185
.meas tran vdout1_19ck36 FIND v(dout1_19) AT=185.025n

* CHECK dout1_20 Vdout1_20ck36 = 0.9 time = 185
.meas tran vdout1_20ck36 FIND v(dout1_20) AT=185.025n

* CHECK dout1_21 Vdout1_21ck36 = 0 time = 185
.meas tran vdout1_21ck36 FIND v(dout1_21) AT=185.025n

* CHECK dout1_22 Vdout1_22ck36 = 0 time = 185
.meas tran vdout1_22ck36 FIND v(dout1_22) AT=185.025n

* CHECK dout1_23 Vdout1_23ck36 = 0 time = 185
.meas tran vdout1_23ck36 FIND v(dout1_23) AT=185.025n

* CHECK dout1_24 Vdout1_24ck36 = 0 time = 185
.meas tran vdout1_24ck36 FIND v(dout1_24) AT=185.025n

* CHECK dout1_25 Vdout1_25ck36 = 0.9 time = 185
.meas tran vdout1_25ck36 FIND v(dout1_25) AT=185.025n

* CHECK dout1_26 Vdout1_26ck36 = 0 time = 185
.meas tran vdout1_26ck36 FIND v(dout1_26) AT=185.025n

* CHECK dout1_27 Vdout1_27ck36 = 0 time = 185
.meas tran vdout1_27ck36 FIND v(dout1_27) AT=185.025n

* CHECK dout1_28 Vdout1_28ck36 = 0 time = 185
.meas tran vdout1_28ck36 FIND v(dout1_28) AT=185.025n

* CHECK dout1_29 Vdout1_29ck36 = 0.9 time = 185
.meas tran vdout1_29ck36 FIND v(dout1_29) AT=185.025n

* CHECK dout1_30 Vdout1_30ck36 = 0 time = 185
.meas tran vdout1_30ck36 FIND v(dout1_30) AT=185.025n

* CHECK dout1_31 Vdout1_31ck36 = 0 time = 185
.meas tran vdout1_31ck36 FIND v(dout1_31) AT=185.025n

* CHECK dout1_0 Vdout1_0ck39 = 0.9 time = 200
.meas tran vdout1_0ck39 FIND v(dout1_0) AT=200.025n

* CHECK dout1_1 Vdout1_1ck39 = 0 time = 200
.meas tran vdout1_1ck39 FIND v(dout1_1) AT=200.025n

* CHECK dout1_2 Vdout1_2ck39 = 0.9 time = 200
.meas tran vdout1_2ck39 FIND v(dout1_2) AT=200.025n

* CHECK dout1_3 Vdout1_3ck39 = 0 time = 200
.meas tran vdout1_3ck39 FIND v(dout1_3) AT=200.025n

* CHECK dout1_4 Vdout1_4ck39 = 0 time = 200
.meas tran vdout1_4ck39 FIND v(dout1_4) AT=200.025n

* CHECK dout1_5 Vdout1_5ck39 = 0 time = 200
.meas tran vdout1_5ck39 FIND v(dout1_5) AT=200.025n

* CHECK dout1_6 Vdout1_6ck39 = 0.9 time = 200
.meas tran vdout1_6ck39 FIND v(dout1_6) AT=200.025n

* CHECK dout1_7 Vdout1_7ck39 = 0.9 time = 200
.meas tran vdout1_7ck39 FIND v(dout1_7) AT=200.025n

* CHECK dout1_8 Vdout1_8ck39 = 0.9 time = 200
.meas tran vdout1_8ck39 FIND v(dout1_8) AT=200.025n

* CHECK dout1_9 Vdout1_9ck39 = 0 time = 200
.meas tran vdout1_9ck39 FIND v(dout1_9) AT=200.025n

* CHECK dout1_10 Vdout1_10ck39 = 0.9 time = 200
.meas tran vdout1_10ck39 FIND v(dout1_10) AT=200.025n

* CHECK dout1_11 Vdout1_11ck39 = 0.9 time = 200
.meas tran vdout1_11ck39 FIND v(dout1_11) AT=200.025n

* CHECK dout1_12 Vdout1_12ck39 = 0 time = 200
.meas tran vdout1_12ck39 FIND v(dout1_12) AT=200.025n

* CHECK dout1_13 Vdout1_13ck39 = 0 time = 200
.meas tran vdout1_13ck39 FIND v(dout1_13) AT=200.025n

* CHECK dout1_14 Vdout1_14ck39 = 0 time = 200
.meas tran vdout1_14ck39 FIND v(dout1_14) AT=200.025n

* CHECK dout1_15 Vdout1_15ck39 = 0.9 time = 200
.meas tran vdout1_15ck39 FIND v(dout1_15) AT=200.025n

* CHECK dout1_16 Vdout1_16ck39 = 0.9 time = 200
.meas tran vdout1_16ck39 FIND v(dout1_16) AT=200.025n

* CHECK dout1_17 Vdout1_17ck39 = 0 time = 200
.meas tran vdout1_17ck39 FIND v(dout1_17) AT=200.025n

* CHECK dout1_18 Vdout1_18ck39 = 0.9 time = 200
.meas tran vdout1_18ck39 FIND v(dout1_18) AT=200.025n

* CHECK dout1_19 Vdout1_19ck39 = 0 time = 200
.meas tran vdout1_19ck39 FIND v(dout1_19) AT=200.025n

* CHECK dout1_20 Vdout1_20ck39 = 0 time = 200
.meas tran vdout1_20ck39 FIND v(dout1_20) AT=200.025n

* CHECK dout1_21 Vdout1_21ck39 = 0.9 time = 200
.meas tran vdout1_21ck39 FIND v(dout1_21) AT=200.025n

* CHECK dout1_22 Vdout1_22ck39 = 0 time = 200
.meas tran vdout1_22ck39 FIND v(dout1_22) AT=200.025n

* CHECK dout1_23 Vdout1_23ck39 = 0 time = 200
.meas tran vdout1_23ck39 FIND v(dout1_23) AT=200.025n

* CHECK dout1_24 Vdout1_24ck39 = 0.9 time = 200
.meas tran vdout1_24ck39 FIND v(dout1_24) AT=200.025n

* CHECK dout1_25 Vdout1_25ck39 = 0 time = 200
.meas tran vdout1_25ck39 FIND v(dout1_25) AT=200.025n

* CHECK dout1_26 Vdout1_26ck39 = 0 time = 200
.meas tran vdout1_26ck39 FIND v(dout1_26) AT=200.025n

* CHECK dout1_27 Vdout1_27ck39 = 0 time = 200
.meas tran vdout1_27ck39 FIND v(dout1_27) AT=200.025n

* CHECK dout1_28 Vdout1_28ck39 = 0.9 time = 200
.meas tran vdout1_28ck39 FIND v(dout1_28) AT=200.025n

* CHECK dout1_29 Vdout1_29ck39 = 0 time = 200
.meas tran vdout1_29ck39 FIND v(dout1_29) AT=200.025n

* CHECK dout1_30 Vdout1_30ck39 = 0 time = 200
.meas tran vdout1_30ck39 FIND v(dout1_30) AT=200.025n

* CHECK dout1_31 Vdout1_31ck39 = 0 time = 200
.meas tran vdout1_31ck39 FIND v(dout1_31) AT=200.025n

* CHECK dout1_0 Vdout1_0ck41 = 0 time = 210
.meas tran vdout1_0ck41 FIND v(dout1_0) AT=210.025n

* CHECK dout1_1 Vdout1_1ck41 = 0 time = 210
.meas tran vdout1_1ck41 FIND v(dout1_1) AT=210.025n

* CHECK dout1_2 Vdout1_2ck41 = 0 time = 210
.meas tran vdout1_2ck41 FIND v(dout1_2) AT=210.025n

* CHECK dout1_3 Vdout1_3ck41 = 0 time = 210
.meas tran vdout1_3ck41 FIND v(dout1_3) AT=210.025n

* CHECK dout1_4 Vdout1_4ck41 = 0.9 time = 210
.meas tran vdout1_4ck41 FIND v(dout1_4) AT=210.025n

* CHECK dout1_5 Vdout1_5ck41 = 0.9 time = 210
.meas tran vdout1_5ck41 FIND v(dout1_5) AT=210.025n

* CHECK dout1_6 Vdout1_6ck41 = 0.9 time = 210
.meas tran vdout1_6ck41 FIND v(dout1_6) AT=210.025n

* CHECK dout1_7 Vdout1_7ck41 = 0 time = 210
.meas tran vdout1_7ck41 FIND v(dout1_7) AT=210.025n

* CHECK dout1_8 Vdout1_8ck41 = 0.9 time = 210
.meas tran vdout1_8ck41 FIND v(dout1_8) AT=210.025n

* CHECK dout1_9 Vdout1_9ck41 = 0.9 time = 210
.meas tran vdout1_9ck41 FIND v(dout1_9) AT=210.025n

* CHECK dout1_10 Vdout1_10ck41 = 0.9 time = 210
.meas tran vdout1_10ck41 FIND v(dout1_10) AT=210.025n

* CHECK dout1_11 Vdout1_11ck41 = 0.9 time = 210
.meas tran vdout1_11ck41 FIND v(dout1_11) AT=210.025n

* CHECK dout1_12 Vdout1_12ck41 = 0.9 time = 210
.meas tran vdout1_12ck41 FIND v(dout1_12) AT=210.025n

* CHECK dout1_13 Vdout1_13ck41 = 0.9 time = 210
.meas tran vdout1_13ck41 FIND v(dout1_13) AT=210.025n

* CHECK dout1_14 Vdout1_14ck41 = 0 time = 210
.meas tran vdout1_14ck41 FIND v(dout1_14) AT=210.025n

* CHECK dout1_15 Vdout1_15ck41 = 0.9 time = 210
.meas tran vdout1_15ck41 FIND v(dout1_15) AT=210.025n

* CHECK dout1_16 Vdout1_16ck41 = 0.9 time = 210
.meas tran vdout1_16ck41 FIND v(dout1_16) AT=210.025n

* CHECK dout1_17 Vdout1_17ck41 = 0 time = 210
.meas tran vdout1_17ck41 FIND v(dout1_17) AT=210.025n

* CHECK dout1_18 Vdout1_18ck41 = 0.9 time = 210
.meas tran vdout1_18ck41 FIND v(dout1_18) AT=210.025n

* CHECK dout1_19 Vdout1_19ck41 = 0 time = 210
.meas tran vdout1_19ck41 FIND v(dout1_19) AT=210.025n

* CHECK dout1_20 Vdout1_20ck41 = 0 time = 210
.meas tran vdout1_20ck41 FIND v(dout1_20) AT=210.025n

* CHECK dout1_21 Vdout1_21ck41 = 0 time = 210
.meas tran vdout1_21ck41 FIND v(dout1_21) AT=210.025n

* CHECK dout1_22 Vdout1_22ck41 = 0.9 time = 210
.meas tran vdout1_22ck41 FIND v(dout1_22) AT=210.025n

* CHECK dout1_23 Vdout1_23ck41 = 0 time = 210
.meas tran vdout1_23ck41 FIND v(dout1_23) AT=210.025n

* CHECK dout1_24 Vdout1_24ck41 = 0 time = 210
.meas tran vdout1_24ck41 FIND v(dout1_24) AT=210.025n

* CHECK dout1_25 Vdout1_25ck41 = 0.9 time = 210
.meas tran vdout1_25ck41 FIND v(dout1_25) AT=210.025n

* CHECK dout1_26 Vdout1_26ck41 = 0.9 time = 210
.meas tran vdout1_26ck41 FIND v(dout1_26) AT=210.025n

* CHECK dout1_27 Vdout1_27ck41 = 0.9 time = 210
.meas tran vdout1_27ck41 FIND v(dout1_27) AT=210.025n

* CHECK dout1_28 Vdout1_28ck41 = 0.9 time = 210
.meas tran vdout1_28ck41 FIND v(dout1_28) AT=210.025n

* CHECK dout1_29 Vdout1_29ck41 = 0.9 time = 210
.meas tran vdout1_29ck41 FIND v(dout1_29) AT=210.025n

* CHECK dout1_30 Vdout1_30ck41 = 0.9 time = 210
.meas tran vdout1_30ck41 FIND v(dout1_30) AT=210.025n

* CHECK dout1_31 Vdout1_31ck41 = 0 time = 210
.meas tran vdout1_31ck41 FIND v(dout1_31) AT=210.025n

* CHECK dout1_0 Vdout1_0ck44 = 0 time = 225
.meas tran vdout1_0ck44 FIND v(dout1_0) AT=225.025n

* CHECK dout1_1 Vdout1_1ck44 = 0 time = 225
.meas tran vdout1_1ck44 FIND v(dout1_1) AT=225.025n

* CHECK dout1_2 Vdout1_2ck44 = 0 time = 225
.meas tran vdout1_2ck44 FIND v(dout1_2) AT=225.025n

* CHECK dout1_3 Vdout1_3ck44 = 0 time = 225
.meas tran vdout1_3ck44 FIND v(dout1_3) AT=225.025n

* CHECK dout1_4 Vdout1_4ck44 = 0.9 time = 225
.meas tran vdout1_4ck44 FIND v(dout1_4) AT=225.025n

* CHECK dout1_5 Vdout1_5ck44 = 0.9 time = 225
.meas tran vdout1_5ck44 FIND v(dout1_5) AT=225.025n

* CHECK dout1_6 Vdout1_6ck44 = 0.9 time = 225
.meas tran vdout1_6ck44 FIND v(dout1_6) AT=225.025n

* CHECK dout1_7 Vdout1_7ck44 = 0 time = 225
.meas tran vdout1_7ck44 FIND v(dout1_7) AT=225.025n

* CHECK dout1_8 Vdout1_8ck44 = 0.9 time = 225
.meas tran vdout1_8ck44 FIND v(dout1_8) AT=225.025n

* CHECK dout1_9 Vdout1_9ck44 = 0.9 time = 225
.meas tran vdout1_9ck44 FIND v(dout1_9) AT=225.025n

* CHECK dout1_10 Vdout1_10ck44 = 0.9 time = 225
.meas tran vdout1_10ck44 FIND v(dout1_10) AT=225.025n

* CHECK dout1_11 Vdout1_11ck44 = 0.9 time = 225
.meas tran vdout1_11ck44 FIND v(dout1_11) AT=225.025n

* CHECK dout1_12 Vdout1_12ck44 = 0.9 time = 225
.meas tran vdout1_12ck44 FIND v(dout1_12) AT=225.025n

* CHECK dout1_13 Vdout1_13ck44 = 0.9 time = 225
.meas tran vdout1_13ck44 FIND v(dout1_13) AT=225.025n

* CHECK dout1_14 Vdout1_14ck44 = 0 time = 225
.meas tran vdout1_14ck44 FIND v(dout1_14) AT=225.025n

* CHECK dout1_15 Vdout1_15ck44 = 0.9 time = 225
.meas tran vdout1_15ck44 FIND v(dout1_15) AT=225.025n

* CHECK dout1_16 Vdout1_16ck44 = 0.9 time = 225
.meas tran vdout1_16ck44 FIND v(dout1_16) AT=225.025n

* CHECK dout1_17 Vdout1_17ck44 = 0 time = 225
.meas tran vdout1_17ck44 FIND v(dout1_17) AT=225.025n

* CHECK dout1_18 Vdout1_18ck44 = 0.9 time = 225
.meas tran vdout1_18ck44 FIND v(dout1_18) AT=225.025n

* CHECK dout1_19 Vdout1_19ck44 = 0 time = 225
.meas tran vdout1_19ck44 FIND v(dout1_19) AT=225.025n

* CHECK dout1_20 Vdout1_20ck44 = 0 time = 225
.meas tran vdout1_20ck44 FIND v(dout1_20) AT=225.025n

* CHECK dout1_21 Vdout1_21ck44 = 0 time = 225
.meas tran vdout1_21ck44 FIND v(dout1_21) AT=225.025n

* CHECK dout1_22 Vdout1_22ck44 = 0.9 time = 225
.meas tran vdout1_22ck44 FIND v(dout1_22) AT=225.025n

* CHECK dout1_23 Vdout1_23ck44 = 0 time = 225
.meas tran vdout1_23ck44 FIND v(dout1_23) AT=225.025n

* CHECK dout1_24 Vdout1_24ck44 = 0 time = 225
.meas tran vdout1_24ck44 FIND v(dout1_24) AT=225.025n

* CHECK dout1_25 Vdout1_25ck44 = 0.9 time = 225
.meas tran vdout1_25ck44 FIND v(dout1_25) AT=225.025n

* CHECK dout1_26 Vdout1_26ck44 = 0.9 time = 225
.meas tran vdout1_26ck44 FIND v(dout1_26) AT=225.025n

* CHECK dout1_27 Vdout1_27ck44 = 0.9 time = 225
.meas tran vdout1_27ck44 FIND v(dout1_27) AT=225.025n

* CHECK dout1_28 Vdout1_28ck44 = 0.9 time = 225
.meas tran vdout1_28ck44 FIND v(dout1_28) AT=225.025n

* CHECK dout1_29 Vdout1_29ck44 = 0.9 time = 225
.meas tran vdout1_29ck44 FIND v(dout1_29) AT=225.025n

* CHECK dout1_30 Vdout1_30ck44 = 0.9 time = 225
.meas tran vdout1_30ck44 FIND v(dout1_30) AT=225.025n

* CHECK dout1_31 Vdout1_31ck44 = 0 time = 225
.meas tran vdout1_31ck44 FIND v(dout1_31) AT=225.025n

* CHECK dout1_0 Vdout1_0ck46 = 0 time = 235
.meas tran vdout1_0ck46 FIND v(dout1_0) AT=235.025n

* CHECK dout1_1 Vdout1_1ck46 = 0 time = 235
.meas tran vdout1_1ck46 FIND v(dout1_1) AT=235.025n

* CHECK dout1_2 Vdout1_2ck46 = 0 time = 235
.meas tran vdout1_2ck46 FIND v(dout1_2) AT=235.025n

* CHECK dout1_3 Vdout1_3ck46 = 0 time = 235
.meas tran vdout1_3ck46 FIND v(dout1_3) AT=235.025n

* CHECK dout1_4 Vdout1_4ck46 = 0.9 time = 235
.meas tran vdout1_4ck46 FIND v(dout1_4) AT=235.025n

* CHECK dout1_5 Vdout1_5ck46 = 0.9 time = 235
.meas tran vdout1_5ck46 FIND v(dout1_5) AT=235.025n

* CHECK dout1_6 Vdout1_6ck46 = 0.9 time = 235
.meas tran vdout1_6ck46 FIND v(dout1_6) AT=235.025n

* CHECK dout1_7 Vdout1_7ck46 = 0 time = 235
.meas tran vdout1_7ck46 FIND v(dout1_7) AT=235.025n

* CHECK dout1_8 Vdout1_8ck46 = 0.9 time = 235
.meas tran vdout1_8ck46 FIND v(dout1_8) AT=235.025n

* CHECK dout1_9 Vdout1_9ck46 = 0.9 time = 235
.meas tran vdout1_9ck46 FIND v(dout1_9) AT=235.025n

* CHECK dout1_10 Vdout1_10ck46 = 0.9 time = 235
.meas tran vdout1_10ck46 FIND v(dout1_10) AT=235.025n

* CHECK dout1_11 Vdout1_11ck46 = 0.9 time = 235
.meas tran vdout1_11ck46 FIND v(dout1_11) AT=235.025n

* CHECK dout1_12 Vdout1_12ck46 = 0.9 time = 235
.meas tran vdout1_12ck46 FIND v(dout1_12) AT=235.025n

* CHECK dout1_13 Vdout1_13ck46 = 0.9 time = 235
.meas tran vdout1_13ck46 FIND v(dout1_13) AT=235.025n

* CHECK dout1_14 Vdout1_14ck46 = 0 time = 235
.meas tran vdout1_14ck46 FIND v(dout1_14) AT=235.025n

* CHECK dout1_15 Vdout1_15ck46 = 0.9 time = 235
.meas tran vdout1_15ck46 FIND v(dout1_15) AT=235.025n

* CHECK dout1_16 Vdout1_16ck46 = 0.9 time = 235
.meas tran vdout1_16ck46 FIND v(dout1_16) AT=235.025n

* CHECK dout1_17 Vdout1_17ck46 = 0 time = 235
.meas tran vdout1_17ck46 FIND v(dout1_17) AT=235.025n

* CHECK dout1_18 Vdout1_18ck46 = 0.9 time = 235
.meas tran vdout1_18ck46 FIND v(dout1_18) AT=235.025n

* CHECK dout1_19 Vdout1_19ck46 = 0 time = 235
.meas tran vdout1_19ck46 FIND v(dout1_19) AT=235.025n

* CHECK dout1_20 Vdout1_20ck46 = 0 time = 235
.meas tran vdout1_20ck46 FIND v(dout1_20) AT=235.025n

* CHECK dout1_21 Vdout1_21ck46 = 0 time = 235
.meas tran vdout1_21ck46 FIND v(dout1_21) AT=235.025n

* CHECK dout1_22 Vdout1_22ck46 = 0.9 time = 235
.meas tran vdout1_22ck46 FIND v(dout1_22) AT=235.025n

* CHECK dout1_23 Vdout1_23ck46 = 0 time = 235
.meas tran vdout1_23ck46 FIND v(dout1_23) AT=235.025n

* CHECK dout1_24 Vdout1_24ck46 = 0 time = 235
.meas tran vdout1_24ck46 FIND v(dout1_24) AT=235.025n

* CHECK dout1_25 Vdout1_25ck46 = 0.9 time = 235
.meas tran vdout1_25ck46 FIND v(dout1_25) AT=235.025n

* CHECK dout1_26 Vdout1_26ck46 = 0.9 time = 235
.meas tran vdout1_26ck46 FIND v(dout1_26) AT=235.025n

* CHECK dout1_27 Vdout1_27ck46 = 0.9 time = 235
.meas tran vdout1_27ck46 FIND v(dout1_27) AT=235.025n

* CHECK dout1_28 Vdout1_28ck46 = 0.9 time = 235
.meas tran vdout1_28ck46 FIND v(dout1_28) AT=235.025n

* CHECK dout1_29 Vdout1_29ck46 = 0.9 time = 235
.meas tran vdout1_29ck46 FIND v(dout1_29) AT=235.025n

* CHECK dout1_30 Vdout1_30ck46 = 0.9 time = 235
.meas tran vdout1_30ck46 FIND v(dout1_30) AT=235.025n

* CHECK dout1_31 Vdout1_31ck46 = 0 time = 235
.meas tran vdout1_31ck46 FIND v(dout1_31) AT=235.025n

* CHECK dout1_0 Vdout1_0ck49 = 0.9 time = 250
.meas tran vdout1_0ck49 FIND v(dout1_0) AT=250.025n

* CHECK dout1_1 Vdout1_1ck49 = 0 time = 250
.meas tran vdout1_1ck49 FIND v(dout1_1) AT=250.025n

* CHECK dout1_2 Vdout1_2ck49 = 0.9 time = 250
.meas tran vdout1_2ck49 FIND v(dout1_2) AT=250.025n

* CHECK dout1_3 Vdout1_3ck49 = 0.9 time = 250
.meas tran vdout1_3ck49 FIND v(dout1_3) AT=250.025n

* CHECK dout1_4 Vdout1_4ck49 = 0.9 time = 250
.meas tran vdout1_4ck49 FIND v(dout1_4) AT=250.025n

* CHECK dout1_5 Vdout1_5ck49 = 0.9 time = 250
.meas tran vdout1_5ck49 FIND v(dout1_5) AT=250.025n

* CHECK dout1_6 Vdout1_6ck49 = 0.9 time = 250
.meas tran vdout1_6ck49 FIND v(dout1_6) AT=250.025n

* CHECK dout1_7 Vdout1_7ck49 = 0.9 time = 250
.meas tran vdout1_7ck49 FIND v(dout1_7) AT=250.025n

* CHECK dout1_8 Vdout1_8ck49 = 0 time = 250
.meas tran vdout1_8ck49 FIND v(dout1_8) AT=250.025n

* CHECK dout1_9 Vdout1_9ck49 = 0 time = 250
.meas tran vdout1_9ck49 FIND v(dout1_9) AT=250.025n

* CHECK dout1_10 Vdout1_10ck49 = 0 time = 250
.meas tran vdout1_10ck49 FIND v(dout1_10) AT=250.025n

* CHECK dout1_11 Vdout1_11ck49 = 0 time = 250
.meas tran vdout1_11ck49 FIND v(dout1_11) AT=250.025n

* CHECK dout1_12 Vdout1_12ck49 = 0.9 time = 250
.meas tran vdout1_12ck49 FIND v(dout1_12) AT=250.025n

* CHECK dout1_13 Vdout1_13ck49 = 0 time = 250
.meas tran vdout1_13ck49 FIND v(dout1_13) AT=250.025n

* CHECK dout1_14 Vdout1_14ck49 = 0 time = 250
.meas tran vdout1_14ck49 FIND v(dout1_14) AT=250.025n

* CHECK dout1_15 Vdout1_15ck49 = 0.9 time = 250
.meas tran vdout1_15ck49 FIND v(dout1_15) AT=250.025n

* CHECK dout1_16 Vdout1_16ck49 = 0.9 time = 250
.meas tran vdout1_16ck49 FIND v(dout1_16) AT=250.025n

* CHECK dout1_17 Vdout1_17ck49 = 0.9 time = 250
.meas tran vdout1_17ck49 FIND v(dout1_17) AT=250.025n

* CHECK dout1_18 Vdout1_18ck49 = 0 time = 250
.meas tran vdout1_18ck49 FIND v(dout1_18) AT=250.025n

* CHECK dout1_19 Vdout1_19ck49 = 0 time = 250
.meas tran vdout1_19ck49 FIND v(dout1_19) AT=250.025n

* CHECK dout1_20 Vdout1_20ck49 = 0 time = 250
.meas tran vdout1_20ck49 FIND v(dout1_20) AT=250.025n

* CHECK dout1_21 Vdout1_21ck49 = 0 time = 250
.meas tran vdout1_21ck49 FIND v(dout1_21) AT=250.025n

* CHECK dout1_22 Vdout1_22ck49 = 0.9 time = 250
.meas tran vdout1_22ck49 FIND v(dout1_22) AT=250.025n

* CHECK dout1_23 Vdout1_23ck49 = 0 time = 250
.meas tran vdout1_23ck49 FIND v(dout1_23) AT=250.025n

* CHECK dout1_24 Vdout1_24ck49 = 0.9 time = 250
.meas tran vdout1_24ck49 FIND v(dout1_24) AT=250.025n

* CHECK dout1_25 Vdout1_25ck49 = 0.9 time = 250
.meas tran vdout1_25ck49 FIND v(dout1_25) AT=250.025n

* CHECK dout1_26 Vdout1_26ck49 = 0 time = 250
.meas tran vdout1_26ck49 FIND v(dout1_26) AT=250.025n

* CHECK dout1_27 Vdout1_27ck49 = 0.9 time = 250
.meas tran vdout1_27ck49 FIND v(dout1_27) AT=250.025n

* CHECK dout1_28 Vdout1_28ck49 = 0.9 time = 250
.meas tran vdout1_28ck49 FIND v(dout1_28) AT=250.025n

* CHECK dout1_29 Vdout1_29ck49 = 0 time = 250
.meas tran vdout1_29ck49 FIND v(dout1_29) AT=250.025n

* CHECK dout1_30 Vdout1_30ck49 = 0.9 time = 250
.meas tran vdout1_30ck49 FIND v(dout1_30) AT=250.025n

* CHECK dout1_31 Vdout1_31ck49 = 0.9 time = 250
.meas tran vdout1_31ck49 FIND v(dout1_31) AT=250.025n

* CHECK dout1_0 Vdout1_0ck52 = 0 time = 265
.meas tran vdout1_0ck52 FIND v(dout1_0) AT=265.025n

* CHECK dout1_1 Vdout1_1ck52 = 0 time = 265
.meas tran vdout1_1ck52 FIND v(dout1_1) AT=265.025n

* CHECK dout1_2 Vdout1_2ck52 = 0.9 time = 265
.meas tran vdout1_2ck52 FIND v(dout1_2) AT=265.025n

* CHECK dout1_3 Vdout1_3ck52 = 0.9 time = 265
.meas tran vdout1_3ck52 FIND v(dout1_3) AT=265.025n

* CHECK dout1_4 Vdout1_4ck52 = 0 time = 265
.meas tran vdout1_4ck52 FIND v(dout1_4) AT=265.025n

* CHECK dout1_5 Vdout1_5ck52 = 0 time = 265
.meas tran vdout1_5ck52 FIND v(dout1_5) AT=265.025n

* CHECK dout1_6 Vdout1_6ck52 = 0.9 time = 265
.meas tran vdout1_6ck52 FIND v(dout1_6) AT=265.025n

* CHECK dout1_7 Vdout1_7ck52 = 0.9 time = 265
.meas tran vdout1_7ck52 FIND v(dout1_7) AT=265.025n

* CHECK dout1_8 Vdout1_8ck52 = 0.9 time = 265
.meas tran vdout1_8ck52 FIND v(dout1_8) AT=265.025n

* CHECK dout1_9 Vdout1_9ck52 = 0.9 time = 265
.meas tran vdout1_9ck52 FIND v(dout1_9) AT=265.025n

* CHECK dout1_10 Vdout1_10ck52 = 0 time = 265
.meas tran vdout1_10ck52 FIND v(dout1_10) AT=265.025n

* CHECK dout1_11 Vdout1_11ck52 = 0.9 time = 265
.meas tran vdout1_11ck52 FIND v(dout1_11) AT=265.025n

* CHECK dout1_12 Vdout1_12ck52 = 0 time = 265
.meas tran vdout1_12ck52 FIND v(dout1_12) AT=265.025n

* CHECK dout1_13 Vdout1_13ck52 = 0.9 time = 265
.meas tran vdout1_13ck52 FIND v(dout1_13) AT=265.025n

* CHECK dout1_14 Vdout1_14ck52 = 0 time = 265
.meas tran vdout1_14ck52 FIND v(dout1_14) AT=265.025n

* CHECK dout1_15 Vdout1_15ck52 = 0.9 time = 265
.meas tran vdout1_15ck52 FIND v(dout1_15) AT=265.025n

* CHECK dout1_16 Vdout1_16ck52 = 0 time = 265
.meas tran vdout1_16ck52 FIND v(dout1_16) AT=265.025n

* CHECK dout1_17 Vdout1_17ck52 = 0 time = 265
.meas tran vdout1_17ck52 FIND v(dout1_17) AT=265.025n

* CHECK dout1_18 Vdout1_18ck52 = 0 time = 265
.meas tran vdout1_18ck52 FIND v(dout1_18) AT=265.025n

* CHECK dout1_19 Vdout1_19ck52 = 0 time = 265
.meas tran vdout1_19ck52 FIND v(dout1_19) AT=265.025n

* CHECK dout1_20 Vdout1_20ck52 = 0.9 time = 265
.meas tran vdout1_20ck52 FIND v(dout1_20) AT=265.025n

* CHECK dout1_21 Vdout1_21ck52 = 0.9 time = 265
.meas tran vdout1_21ck52 FIND v(dout1_21) AT=265.025n

* CHECK dout1_22 Vdout1_22ck52 = 0 time = 265
.meas tran vdout1_22ck52 FIND v(dout1_22) AT=265.025n

* CHECK dout1_23 Vdout1_23ck52 = 0.9 time = 265
.meas tran vdout1_23ck52 FIND v(dout1_23) AT=265.025n

* CHECK dout1_24 Vdout1_24ck52 = 0 time = 265
.meas tran vdout1_24ck52 FIND v(dout1_24) AT=265.025n

* CHECK dout1_25 Vdout1_25ck52 = 0.9 time = 265
.meas tran vdout1_25ck52 FIND v(dout1_25) AT=265.025n

* CHECK dout1_26 Vdout1_26ck52 = 0 time = 265
.meas tran vdout1_26ck52 FIND v(dout1_26) AT=265.025n

* CHECK dout1_27 Vdout1_27ck52 = 0.9 time = 265
.meas tran vdout1_27ck52 FIND v(dout1_27) AT=265.025n

* CHECK dout1_28 Vdout1_28ck52 = 0.9 time = 265
.meas tran vdout1_28ck52 FIND v(dout1_28) AT=265.025n

* CHECK dout1_29 Vdout1_29ck52 = 0 time = 265
.meas tran vdout1_29ck52 FIND v(dout1_29) AT=265.025n

* CHECK dout1_30 Vdout1_30ck52 = 0 time = 265
.meas tran vdout1_30ck52 FIND v(dout1_30) AT=265.025n

* CHECK dout1_31 Vdout1_31ck52 = 0 time = 265
.meas tran vdout1_31ck52 FIND v(dout1_31) AT=265.025n

* CHECK dout1_0 Vdout1_0ck53 = 0 time = 270
.meas tran vdout1_0ck53 FIND v(dout1_0) AT=270.025n

* CHECK dout1_1 Vdout1_1ck53 = 0 time = 270
.meas tran vdout1_1ck53 FIND v(dout1_1) AT=270.025n

* CHECK dout1_2 Vdout1_2ck53 = 0.9 time = 270
.meas tran vdout1_2ck53 FIND v(dout1_2) AT=270.025n

* CHECK dout1_3 Vdout1_3ck53 = 0.9 time = 270
.meas tran vdout1_3ck53 FIND v(dout1_3) AT=270.025n

* CHECK dout1_4 Vdout1_4ck53 = 0 time = 270
.meas tran vdout1_4ck53 FIND v(dout1_4) AT=270.025n

* CHECK dout1_5 Vdout1_5ck53 = 0 time = 270
.meas tran vdout1_5ck53 FIND v(dout1_5) AT=270.025n

* CHECK dout1_6 Vdout1_6ck53 = 0.9 time = 270
.meas tran vdout1_6ck53 FIND v(dout1_6) AT=270.025n

* CHECK dout1_7 Vdout1_7ck53 = 0.9 time = 270
.meas tran vdout1_7ck53 FIND v(dout1_7) AT=270.025n

* CHECK dout1_8 Vdout1_8ck53 = 0.9 time = 270
.meas tran vdout1_8ck53 FIND v(dout1_8) AT=270.025n

* CHECK dout1_9 Vdout1_9ck53 = 0.9 time = 270
.meas tran vdout1_9ck53 FIND v(dout1_9) AT=270.025n

* CHECK dout1_10 Vdout1_10ck53 = 0 time = 270
.meas tran vdout1_10ck53 FIND v(dout1_10) AT=270.025n

* CHECK dout1_11 Vdout1_11ck53 = 0.9 time = 270
.meas tran vdout1_11ck53 FIND v(dout1_11) AT=270.025n

* CHECK dout1_12 Vdout1_12ck53 = 0 time = 270
.meas tran vdout1_12ck53 FIND v(dout1_12) AT=270.025n

* CHECK dout1_13 Vdout1_13ck53 = 0.9 time = 270
.meas tran vdout1_13ck53 FIND v(dout1_13) AT=270.025n

* CHECK dout1_14 Vdout1_14ck53 = 0 time = 270
.meas tran vdout1_14ck53 FIND v(dout1_14) AT=270.025n

* CHECK dout1_15 Vdout1_15ck53 = 0.9 time = 270
.meas tran vdout1_15ck53 FIND v(dout1_15) AT=270.025n

* CHECK dout1_16 Vdout1_16ck53 = 0 time = 270
.meas tran vdout1_16ck53 FIND v(dout1_16) AT=270.025n

* CHECK dout1_17 Vdout1_17ck53 = 0 time = 270
.meas tran vdout1_17ck53 FIND v(dout1_17) AT=270.025n

* CHECK dout1_18 Vdout1_18ck53 = 0 time = 270
.meas tran vdout1_18ck53 FIND v(dout1_18) AT=270.025n

* CHECK dout1_19 Vdout1_19ck53 = 0 time = 270
.meas tran vdout1_19ck53 FIND v(dout1_19) AT=270.025n

* CHECK dout1_20 Vdout1_20ck53 = 0.9 time = 270
.meas tran vdout1_20ck53 FIND v(dout1_20) AT=270.025n

* CHECK dout1_21 Vdout1_21ck53 = 0.9 time = 270
.meas tran vdout1_21ck53 FIND v(dout1_21) AT=270.025n

* CHECK dout1_22 Vdout1_22ck53 = 0 time = 270
.meas tran vdout1_22ck53 FIND v(dout1_22) AT=270.025n

* CHECK dout1_23 Vdout1_23ck53 = 0.9 time = 270
.meas tran vdout1_23ck53 FIND v(dout1_23) AT=270.025n

* CHECK dout1_24 Vdout1_24ck53 = 0 time = 270
.meas tran vdout1_24ck53 FIND v(dout1_24) AT=270.025n

* CHECK dout1_25 Vdout1_25ck53 = 0.9 time = 270
.meas tran vdout1_25ck53 FIND v(dout1_25) AT=270.025n

* CHECK dout1_26 Vdout1_26ck53 = 0 time = 270
.meas tran vdout1_26ck53 FIND v(dout1_26) AT=270.025n

* CHECK dout1_27 Vdout1_27ck53 = 0.9 time = 270
.meas tran vdout1_27ck53 FIND v(dout1_27) AT=270.025n

* CHECK dout1_28 Vdout1_28ck53 = 0.9 time = 270
.meas tran vdout1_28ck53 FIND v(dout1_28) AT=270.025n

* CHECK dout1_29 Vdout1_29ck53 = 0 time = 270
.meas tran vdout1_29ck53 FIND v(dout1_29) AT=270.025n

* CHECK dout1_30 Vdout1_30ck53 = 0 time = 270
.meas tran vdout1_30ck53 FIND v(dout1_30) AT=270.025n

* CHECK dout1_31 Vdout1_31ck53 = 0 time = 270
.meas tran vdout1_31ck53 FIND v(dout1_31) AT=270.025n

* CHECK dout1_0 Vdout1_0ck57 = 0 time = 290
.meas tran vdout1_0ck57 FIND v(dout1_0) AT=290.025n

* CHECK dout1_1 Vdout1_1ck57 = 0 time = 290
.meas tran vdout1_1ck57 FIND v(dout1_1) AT=290.025n

* CHECK dout1_2 Vdout1_2ck57 = 0 time = 290
.meas tran vdout1_2ck57 FIND v(dout1_2) AT=290.025n

* CHECK dout1_3 Vdout1_3ck57 = 0 time = 290
.meas tran vdout1_3ck57 FIND v(dout1_3) AT=290.025n

* CHECK dout1_4 Vdout1_4ck57 = 0 time = 290
.meas tran vdout1_4ck57 FIND v(dout1_4) AT=290.025n

* CHECK dout1_5 Vdout1_5ck57 = 0 time = 290
.meas tran vdout1_5ck57 FIND v(dout1_5) AT=290.025n

* CHECK dout1_6 Vdout1_6ck57 = 0 time = 290
.meas tran vdout1_6ck57 FIND v(dout1_6) AT=290.025n

* CHECK dout1_7 Vdout1_7ck57 = 0.9 time = 290
.meas tran vdout1_7ck57 FIND v(dout1_7) AT=290.025n

* CHECK dout1_8 Vdout1_8ck57 = 0 time = 290
.meas tran vdout1_8ck57 FIND v(dout1_8) AT=290.025n

* CHECK dout1_9 Vdout1_9ck57 = 0.9 time = 290
.meas tran vdout1_9ck57 FIND v(dout1_9) AT=290.025n

* CHECK dout1_10 Vdout1_10ck57 = 0 time = 290
.meas tran vdout1_10ck57 FIND v(dout1_10) AT=290.025n

* CHECK dout1_11 Vdout1_11ck57 = 0 time = 290
.meas tran vdout1_11ck57 FIND v(dout1_11) AT=290.025n

* CHECK dout1_12 Vdout1_12ck57 = 0 time = 290
.meas tran vdout1_12ck57 FIND v(dout1_12) AT=290.025n

* CHECK dout1_13 Vdout1_13ck57 = 0.9 time = 290
.meas tran vdout1_13ck57 FIND v(dout1_13) AT=290.025n

* CHECK dout1_14 Vdout1_14ck57 = 0.9 time = 290
.meas tran vdout1_14ck57 FIND v(dout1_14) AT=290.025n

* CHECK dout1_15 Vdout1_15ck57 = 0.9 time = 290
.meas tran vdout1_15ck57 FIND v(dout1_15) AT=290.025n

* CHECK dout1_16 Vdout1_16ck57 = 0.9 time = 290
.meas tran vdout1_16ck57 FIND v(dout1_16) AT=290.025n

* CHECK dout1_17 Vdout1_17ck57 = 0.9 time = 290
.meas tran vdout1_17ck57 FIND v(dout1_17) AT=290.025n

* CHECK dout1_18 Vdout1_18ck57 = 0 time = 290
.meas tran vdout1_18ck57 FIND v(dout1_18) AT=290.025n

* CHECK dout1_19 Vdout1_19ck57 = 0 time = 290
.meas tran vdout1_19ck57 FIND v(dout1_19) AT=290.025n

* CHECK dout1_20 Vdout1_20ck57 = 0.9 time = 290
.meas tran vdout1_20ck57 FIND v(dout1_20) AT=290.025n

* CHECK dout1_21 Vdout1_21ck57 = 0 time = 290
.meas tran vdout1_21ck57 FIND v(dout1_21) AT=290.025n

* CHECK dout1_22 Vdout1_22ck57 = 0 time = 290
.meas tran vdout1_22ck57 FIND v(dout1_22) AT=290.025n

* CHECK dout1_23 Vdout1_23ck57 = 0 time = 290
.meas tran vdout1_23ck57 FIND v(dout1_23) AT=290.025n

* CHECK dout1_24 Vdout1_24ck57 = 0 time = 290
.meas tran vdout1_24ck57 FIND v(dout1_24) AT=290.025n

* CHECK dout1_25 Vdout1_25ck57 = 0.9 time = 290
.meas tran vdout1_25ck57 FIND v(dout1_25) AT=290.025n

* CHECK dout1_26 Vdout1_26ck57 = 0 time = 290
.meas tran vdout1_26ck57 FIND v(dout1_26) AT=290.025n

* CHECK dout1_27 Vdout1_27ck57 = 0.9 time = 290
.meas tran vdout1_27ck57 FIND v(dout1_27) AT=290.025n

* CHECK dout1_28 Vdout1_28ck57 = 0 time = 290
.meas tran vdout1_28ck57 FIND v(dout1_28) AT=290.025n

* CHECK dout1_29 Vdout1_29ck57 = 0 time = 290
.meas tran vdout1_29ck57 FIND v(dout1_29) AT=290.025n

* CHECK dout1_30 Vdout1_30ck57 = 0.9 time = 290
.meas tran vdout1_30ck57 FIND v(dout1_30) AT=290.025n

* CHECK dout1_31 Vdout1_31ck57 = 0.9 time = 290
.meas tran vdout1_31ck57 FIND v(dout1_31) AT=290.025n

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

* CHECK dout1_5 Vdout1_5ck58 = 0 time = 295
.meas tran vdout1_5ck58 FIND v(dout1_5) AT=295.025n

* CHECK dout1_6 Vdout1_6ck58 = 0 time = 295
.meas tran vdout1_6ck58 FIND v(dout1_6) AT=295.025n

* CHECK dout1_7 Vdout1_7ck58 = 0.9 time = 295
.meas tran vdout1_7ck58 FIND v(dout1_7) AT=295.025n

* CHECK dout1_8 Vdout1_8ck58 = 0 time = 295
.meas tran vdout1_8ck58 FIND v(dout1_8) AT=295.025n

* CHECK dout1_9 Vdout1_9ck58 = 0.9 time = 295
.meas tran vdout1_9ck58 FIND v(dout1_9) AT=295.025n

* CHECK dout1_10 Vdout1_10ck58 = 0 time = 295
.meas tran vdout1_10ck58 FIND v(dout1_10) AT=295.025n

* CHECK dout1_11 Vdout1_11ck58 = 0 time = 295
.meas tran vdout1_11ck58 FIND v(dout1_11) AT=295.025n

* CHECK dout1_12 Vdout1_12ck58 = 0 time = 295
.meas tran vdout1_12ck58 FIND v(dout1_12) AT=295.025n

* CHECK dout1_13 Vdout1_13ck58 = 0.9 time = 295
.meas tran vdout1_13ck58 FIND v(dout1_13) AT=295.025n

* CHECK dout1_14 Vdout1_14ck58 = 0.9 time = 295
.meas tran vdout1_14ck58 FIND v(dout1_14) AT=295.025n

* CHECK dout1_15 Vdout1_15ck58 = 0.9 time = 295
.meas tran vdout1_15ck58 FIND v(dout1_15) AT=295.025n

* CHECK dout1_16 Vdout1_16ck58 = 0.9 time = 295
.meas tran vdout1_16ck58 FIND v(dout1_16) AT=295.025n

* CHECK dout1_17 Vdout1_17ck58 = 0.9 time = 295
.meas tran vdout1_17ck58 FIND v(dout1_17) AT=295.025n

* CHECK dout1_18 Vdout1_18ck58 = 0 time = 295
.meas tran vdout1_18ck58 FIND v(dout1_18) AT=295.025n

* CHECK dout1_19 Vdout1_19ck58 = 0 time = 295
.meas tran vdout1_19ck58 FIND v(dout1_19) AT=295.025n

* CHECK dout1_20 Vdout1_20ck58 = 0.9 time = 295
.meas tran vdout1_20ck58 FIND v(dout1_20) AT=295.025n

* CHECK dout1_21 Vdout1_21ck58 = 0 time = 295
.meas tran vdout1_21ck58 FIND v(dout1_21) AT=295.025n

* CHECK dout1_22 Vdout1_22ck58 = 0 time = 295
.meas tran vdout1_22ck58 FIND v(dout1_22) AT=295.025n

* CHECK dout1_23 Vdout1_23ck58 = 0 time = 295
.meas tran vdout1_23ck58 FIND v(dout1_23) AT=295.025n

* CHECK dout1_24 Vdout1_24ck58 = 0 time = 295
.meas tran vdout1_24ck58 FIND v(dout1_24) AT=295.025n

* CHECK dout1_25 Vdout1_25ck58 = 0.9 time = 295
.meas tran vdout1_25ck58 FIND v(dout1_25) AT=295.025n

* CHECK dout1_26 Vdout1_26ck58 = 0 time = 295
.meas tran vdout1_26ck58 FIND v(dout1_26) AT=295.025n

* CHECK dout1_27 Vdout1_27ck58 = 0.9 time = 295
.meas tran vdout1_27ck58 FIND v(dout1_27) AT=295.025n

* CHECK dout1_28 Vdout1_28ck58 = 0 time = 295
.meas tran vdout1_28ck58 FIND v(dout1_28) AT=295.025n

* CHECK dout1_29 Vdout1_29ck58 = 0 time = 295
.meas tran vdout1_29ck58 FIND v(dout1_29) AT=295.025n

* CHECK dout1_30 Vdout1_30ck58 = 0.9 time = 295
.meas tran vdout1_30ck58 FIND v(dout1_30) AT=295.025n

* CHECK dout1_31 Vdout1_31ck58 = 0.9 time = 295
.meas tran vdout1_31ck58 FIND v(dout1_31) AT=295.025n

* CHECK dout1_0 Vdout1_0ck59 = 0 time = 300
.meas tran vdout1_0ck59 FIND v(dout1_0) AT=300.025n

* CHECK dout1_1 Vdout1_1ck59 = 0 time = 300
.meas tran vdout1_1ck59 FIND v(dout1_1) AT=300.025n

* CHECK dout1_2 Vdout1_2ck59 = 0 time = 300
.meas tran vdout1_2ck59 FIND v(dout1_2) AT=300.025n

* CHECK dout1_3 Vdout1_3ck59 = 0 time = 300
.meas tran vdout1_3ck59 FIND v(dout1_3) AT=300.025n

* CHECK dout1_4 Vdout1_4ck59 = 0 time = 300
.meas tran vdout1_4ck59 FIND v(dout1_4) AT=300.025n

* CHECK dout1_5 Vdout1_5ck59 = 0 time = 300
.meas tran vdout1_5ck59 FIND v(dout1_5) AT=300.025n

* CHECK dout1_6 Vdout1_6ck59 = 0 time = 300
.meas tran vdout1_6ck59 FIND v(dout1_6) AT=300.025n

* CHECK dout1_7 Vdout1_7ck59 = 0.9 time = 300
.meas tran vdout1_7ck59 FIND v(dout1_7) AT=300.025n

* CHECK dout1_8 Vdout1_8ck59 = 0 time = 300
.meas tran vdout1_8ck59 FIND v(dout1_8) AT=300.025n

* CHECK dout1_9 Vdout1_9ck59 = 0.9 time = 300
.meas tran vdout1_9ck59 FIND v(dout1_9) AT=300.025n

* CHECK dout1_10 Vdout1_10ck59 = 0 time = 300
.meas tran vdout1_10ck59 FIND v(dout1_10) AT=300.025n

* CHECK dout1_11 Vdout1_11ck59 = 0 time = 300
.meas tran vdout1_11ck59 FIND v(dout1_11) AT=300.025n

* CHECK dout1_12 Vdout1_12ck59 = 0 time = 300
.meas tran vdout1_12ck59 FIND v(dout1_12) AT=300.025n

* CHECK dout1_13 Vdout1_13ck59 = 0.9 time = 300
.meas tran vdout1_13ck59 FIND v(dout1_13) AT=300.025n

* CHECK dout1_14 Vdout1_14ck59 = 0.9 time = 300
.meas tran vdout1_14ck59 FIND v(dout1_14) AT=300.025n

* CHECK dout1_15 Vdout1_15ck59 = 0.9 time = 300
.meas tran vdout1_15ck59 FIND v(dout1_15) AT=300.025n

* CHECK dout1_16 Vdout1_16ck59 = 0.9 time = 300
.meas tran vdout1_16ck59 FIND v(dout1_16) AT=300.025n

* CHECK dout1_17 Vdout1_17ck59 = 0.9 time = 300
.meas tran vdout1_17ck59 FIND v(dout1_17) AT=300.025n

* CHECK dout1_18 Vdout1_18ck59 = 0 time = 300
.meas tran vdout1_18ck59 FIND v(dout1_18) AT=300.025n

* CHECK dout1_19 Vdout1_19ck59 = 0 time = 300
.meas tran vdout1_19ck59 FIND v(dout1_19) AT=300.025n

* CHECK dout1_20 Vdout1_20ck59 = 0.9 time = 300
.meas tran vdout1_20ck59 FIND v(dout1_20) AT=300.025n

* CHECK dout1_21 Vdout1_21ck59 = 0 time = 300
.meas tran vdout1_21ck59 FIND v(dout1_21) AT=300.025n

* CHECK dout1_22 Vdout1_22ck59 = 0 time = 300
.meas tran vdout1_22ck59 FIND v(dout1_22) AT=300.025n

* CHECK dout1_23 Vdout1_23ck59 = 0 time = 300
.meas tran vdout1_23ck59 FIND v(dout1_23) AT=300.025n

* CHECK dout1_24 Vdout1_24ck59 = 0 time = 300
.meas tran vdout1_24ck59 FIND v(dout1_24) AT=300.025n

* CHECK dout1_25 Vdout1_25ck59 = 0.9 time = 300
.meas tran vdout1_25ck59 FIND v(dout1_25) AT=300.025n

* CHECK dout1_26 Vdout1_26ck59 = 0 time = 300
.meas tran vdout1_26ck59 FIND v(dout1_26) AT=300.025n

* CHECK dout1_27 Vdout1_27ck59 = 0.9 time = 300
.meas tran vdout1_27ck59 FIND v(dout1_27) AT=300.025n

* CHECK dout1_28 Vdout1_28ck59 = 0 time = 300
.meas tran vdout1_28ck59 FIND v(dout1_28) AT=300.025n

* CHECK dout1_29 Vdout1_29ck59 = 0 time = 300
.meas tran vdout1_29ck59 FIND v(dout1_29) AT=300.025n

* CHECK dout1_30 Vdout1_30ck59 = 0.9 time = 300
.meas tran vdout1_30ck59 FIND v(dout1_30) AT=300.025n

* CHECK dout1_31 Vdout1_31ck59 = 0.9 time = 300
.meas tran vdout1_31ck59 FIND v(dout1_31) AT=300.025n

* CHECK dout1_0 Vdout1_0ck61 = 0 time = 310
.meas tran vdout1_0ck61 FIND v(dout1_0) AT=310.025n

* CHECK dout1_1 Vdout1_1ck61 = 0.9 time = 310
.meas tran vdout1_1ck61 FIND v(dout1_1) AT=310.025n

* CHECK dout1_2 Vdout1_2ck61 = 0.9 time = 310
.meas tran vdout1_2ck61 FIND v(dout1_2) AT=310.025n

* CHECK dout1_3 Vdout1_3ck61 = 0.9 time = 310
.meas tran vdout1_3ck61 FIND v(dout1_3) AT=310.025n

* CHECK dout1_4 Vdout1_4ck61 = 0.9 time = 310
.meas tran vdout1_4ck61 FIND v(dout1_4) AT=310.025n

* CHECK dout1_5 Vdout1_5ck61 = 0.9 time = 310
.meas tran vdout1_5ck61 FIND v(dout1_5) AT=310.025n

* CHECK dout1_6 Vdout1_6ck61 = 0.9 time = 310
.meas tran vdout1_6ck61 FIND v(dout1_6) AT=310.025n

* CHECK dout1_7 Vdout1_7ck61 = 0.9 time = 310
.meas tran vdout1_7ck61 FIND v(dout1_7) AT=310.025n

* CHECK dout1_8 Vdout1_8ck61 = 0 time = 310
.meas tran vdout1_8ck61 FIND v(dout1_8) AT=310.025n

* CHECK dout1_9 Vdout1_9ck61 = 0.9 time = 310
.meas tran vdout1_9ck61 FIND v(dout1_9) AT=310.025n

* CHECK dout1_10 Vdout1_10ck61 = 0 time = 310
.meas tran vdout1_10ck61 FIND v(dout1_10) AT=310.025n

* CHECK dout1_11 Vdout1_11ck61 = 0 time = 310
.meas tran vdout1_11ck61 FIND v(dout1_11) AT=310.025n

* CHECK dout1_12 Vdout1_12ck61 = 0.9 time = 310
.meas tran vdout1_12ck61 FIND v(dout1_12) AT=310.025n

* CHECK dout1_13 Vdout1_13ck61 = 0.9 time = 310
.meas tran vdout1_13ck61 FIND v(dout1_13) AT=310.025n

* CHECK dout1_14 Vdout1_14ck61 = 0.9 time = 310
.meas tran vdout1_14ck61 FIND v(dout1_14) AT=310.025n

* CHECK dout1_15 Vdout1_15ck61 = 0.9 time = 310
.meas tran vdout1_15ck61 FIND v(dout1_15) AT=310.025n

* CHECK dout1_16 Vdout1_16ck61 = 0 time = 310
.meas tran vdout1_16ck61 FIND v(dout1_16) AT=310.025n

* CHECK dout1_17 Vdout1_17ck61 = 0.9 time = 310
.meas tran vdout1_17ck61 FIND v(dout1_17) AT=310.025n

* CHECK dout1_18 Vdout1_18ck61 = 0.9 time = 310
.meas tran vdout1_18ck61 FIND v(dout1_18) AT=310.025n

* CHECK dout1_19 Vdout1_19ck61 = 0.9 time = 310
.meas tran vdout1_19ck61 FIND v(dout1_19) AT=310.025n

* CHECK dout1_20 Vdout1_20ck61 = 0.9 time = 310
.meas tran vdout1_20ck61 FIND v(dout1_20) AT=310.025n

* CHECK dout1_21 Vdout1_21ck61 = 0 time = 310
.meas tran vdout1_21ck61 FIND v(dout1_21) AT=310.025n

* CHECK dout1_22 Vdout1_22ck61 = 0.9 time = 310
.meas tran vdout1_22ck61 FIND v(dout1_22) AT=310.025n

* CHECK dout1_23 Vdout1_23ck61 = 0.9 time = 310
.meas tran vdout1_23ck61 FIND v(dout1_23) AT=310.025n

* CHECK dout1_24 Vdout1_24ck61 = 0 time = 310
.meas tran vdout1_24ck61 FIND v(dout1_24) AT=310.025n

* CHECK dout1_25 Vdout1_25ck61 = 0.9 time = 310
.meas tran vdout1_25ck61 FIND v(dout1_25) AT=310.025n

* CHECK dout1_26 Vdout1_26ck61 = 0 time = 310
.meas tran vdout1_26ck61 FIND v(dout1_26) AT=310.025n

* CHECK dout1_27 Vdout1_27ck61 = 0.9 time = 310
.meas tran vdout1_27ck61 FIND v(dout1_27) AT=310.025n

* CHECK dout1_28 Vdout1_28ck61 = 0 time = 310
.meas tran vdout1_28ck61 FIND v(dout1_28) AT=310.025n

* CHECK dout1_29 Vdout1_29ck61 = 0 time = 310
.meas tran vdout1_29ck61 FIND v(dout1_29) AT=310.025n

* CHECK dout1_30 Vdout1_30ck61 = 0.9 time = 310
.meas tran vdout1_30ck61 FIND v(dout1_30) AT=310.025n

* CHECK dout1_31 Vdout1_31ck61 = 0 time = 310
.meas tran vdout1_31ck61 FIND v(dout1_31) AT=310.025n

* CHECK dout1_0 Vdout1_0ck62 = 0 time = 315
.meas tran vdout1_0ck62 FIND v(dout1_0) AT=315.025n

* CHECK dout1_1 Vdout1_1ck62 = 0 time = 315
.meas tran vdout1_1ck62 FIND v(dout1_1) AT=315.025n

* CHECK dout1_2 Vdout1_2ck62 = 0 time = 315
.meas tran vdout1_2ck62 FIND v(dout1_2) AT=315.025n

* CHECK dout1_3 Vdout1_3ck62 = 0 time = 315
.meas tran vdout1_3ck62 FIND v(dout1_3) AT=315.025n

* CHECK dout1_4 Vdout1_4ck62 = 0 time = 315
.meas tran vdout1_4ck62 FIND v(dout1_4) AT=315.025n

* CHECK dout1_5 Vdout1_5ck62 = 0 time = 315
.meas tran vdout1_5ck62 FIND v(dout1_5) AT=315.025n

* CHECK dout1_6 Vdout1_6ck62 = 0 time = 315
.meas tran vdout1_6ck62 FIND v(dout1_6) AT=315.025n

* CHECK dout1_7 Vdout1_7ck62 = 0.9 time = 315
.meas tran vdout1_7ck62 FIND v(dout1_7) AT=315.025n

* CHECK dout1_8 Vdout1_8ck62 = 0 time = 315
.meas tran vdout1_8ck62 FIND v(dout1_8) AT=315.025n

* CHECK dout1_9 Vdout1_9ck62 = 0.9 time = 315
.meas tran vdout1_9ck62 FIND v(dout1_9) AT=315.025n

* CHECK dout1_10 Vdout1_10ck62 = 0 time = 315
.meas tran vdout1_10ck62 FIND v(dout1_10) AT=315.025n

* CHECK dout1_11 Vdout1_11ck62 = 0 time = 315
.meas tran vdout1_11ck62 FIND v(dout1_11) AT=315.025n

* CHECK dout1_12 Vdout1_12ck62 = 0 time = 315
.meas tran vdout1_12ck62 FIND v(dout1_12) AT=315.025n

* CHECK dout1_13 Vdout1_13ck62 = 0.9 time = 315
.meas tran vdout1_13ck62 FIND v(dout1_13) AT=315.025n

* CHECK dout1_14 Vdout1_14ck62 = 0.9 time = 315
.meas tran vdout1_14ck62 FIND v(dout1_14) AT=315.025n

* CHECK dout1_15 Vdout1_15ck62 = 0.9 time = 315
.meas tran vdout1_15ck62 FIND v(dout1_15) AT=315.025n

* CHECK dout1_16 Vdout1_16ck62 = 0.9 time = 315
.meas tran vdout1_16ck62 FIND v(dout1_16) AT=315.025n

* CHECK dout1_17 Vdout1_17ck62 = 0.9 time = 315
.meas tran vdout1_17ck62 FIND v(dout1_17) AT=315.025n

* CHECK dout1_18 Vdout1_18ck62 = 0 time = 315
.meas tran vdout1_18ck62 FIND v(dout1_18) AT=315.025n

* CHECK dout1_19 Vdout1_19ck62 = 0 time = 315
.meas tran vdout1_19ck62 FIND v(dout1_19) AT=315.025n

* CHECK dout1_20 Vdout1_20ck62 = 0.9 time = 315
.meas tran vdout1_20ck62 FIND v(dout1_20) AT=315.025n

* CHECK dout1_21 Vdout1_21ck62 = 0 time = 315
.meas tran vdout1_21ck62 FIND v(dout1_21) AT=315.025n

* CHECK dout1_22 Vdout1_22ck62 = 0 time = 315
.meas tran vdout1_22ck62 FIND v(dout1_22) AT=315.025n

* CHECK dout1_23 Vdout1_23ck62 = 0 time = 315
.meas tran vdout1_23ck62 FIND v(dout1_23) AT=315.025n

* CHECK dout1_24 Vdout1_24ck62 = 0 time = 315
.meas tran vdout1_24ck62 FIND v(dout1_24) AT=315.025n

* CHECK dout1_25 Vdout1_25ck62 = 0.9 time = 315
.meas tran vdout1_25ck62 FIND v(dout1_25) AT=315.025n

* CHECK dout1_26 Vdout1_26ck62 = 0 time = 315
.meas tran vdout1_26ck62 FIND v(dout1_26) AT=315.025n

* CHECK dout1_27 Vdout1_27ck62 = 0.9 time = 315
.meas tran vdout1_27ck62 FIND v(dout1_27) AT=315.025n

* CHECK dout1_28 Vdout1_28ck62 = 0 time = 315
.meas tran vdout1_28ck62 FIND v(dout1_28) AT=315.025n

* CHECK dout1_29 Vdout1_29ck62 = 0 time = 315
.meas tran vdout1_29ck62 FIND v(dout1_29) AT=315.025n

* CHECK dout1_30 Vdout1_30ck62 = 0.9 time = 315
.meas tran vdout1_30ck62 FIND v(dout1_30) AT=315.025n

* CHECK dout1_31 Vdout1_31ck62 = 0.9 time = 315
.meas tran vdout1_31ck62 FIND v(dout1_31) AT=315.025n

* CHECK dout1_0 Vdout1_0ck63 = 0 time = 320
.meas tran vdout1_0ck63 FIND v(dout1_0) AT=320.025n

* CHECK dout1_1 Vdout1_1ck63 = 0 time = 320
.meas tran vdout1_1ck63 FIND v(dout1_1) AT=320.025n

* CHECK dout1_2 Vdout1_2ck63 = 0 time = 320
.meas tran vdout1_2ck63 FIND v(dout1_2) AT=320.025n

* CHECK dout1_3 Vdout1_3ck63 = 0 time = 320
.meas tran vdout1_3ck63 FIND v(dout1_3) AT=320.025n

* CHECK dout1_4 Vdout1_4ck63 = 0 time = 320
.meas tran vdout1_4ck63 FIND v(dout1_4) AT=320.025n

* CHECK dout1_5 Vdout1_5ck63 = 0 time = 320
.meas tran vdout1_5ck63 FIND v(dout1_5) AT=320.025n

* CHECK dout1_6 Vdout1_6ck63 = 0 time = 320
.meas tran vdout1_6ck63 FIND v(dout1_6) AT=320.025n

* CHECK dout1_7 Vdout1_7ck63 = 0.9 time = 320
.meas tran vdout1_7ck63 FIND v(dout1_7) AT=320.025n

* CHECK dout1_8 Vdout1_8ck63 = 0 time = 320
.meas tran vdout1_8ck63 FIND v(dout1_8) AT=320.025n

* CHECK dout1_9 Vdout1_9ck63 = 0.9 time = 320
.meas tran vdout1_9ck63 FIND v(dout1_9) AT=320.025n

* CHECK dout1_10 Vdout1_10ck63 = 0 time = 320
.meas tran vdout1_10ck63 FIND v(dout1_10) AT=320.025n

* CHECK dout1_11 Vdout1_11ck63 = 0 time = 320
.meas tran vdout1_11ck63 FIND v(dout1_11) AT=320.025n

* CHECK dout1_12 Vdout1_12ck63 = 0 time = 320
.meas tran vdout1_12ck63 FIND v(dout1_12) AT=320.025n

* CHECK dout1_13 Vdout1_13ck63 = 0.9 time = 320
.meas tran vdout1_13ck63 FIND v(dout1_13) AT=320.025n

* CHECK dout1_14 Vdout1_14ck63 = 0.9 time = 320
.meas tran vdout1_14ck63 FIND v(dout1_14) AT=320.025n

* CHECK dout1_15 Vdout1_15ck63 = 0.9 time = 320
.meas tran vdout1_15ck63 FIND v(dout1_15) AT=320.025n

* CHECK dout1_16 Vdout1_16ck63 = 0.9 time = 320
.meas tran vdout1_16ck63 FIND v(dout1_16) AT=320.025n

* CHECK dout1_17 Vdout1_17ck63 = 0.9 time = 320
.meas tran vdout1_17ck63 FIND v(dout1_17) AT=320.025n

* CHECK dout1_18 Vdout1_18ck63 = 0 time = 320
.meas tran vdout1_18ck63 FIND v(dout1_18) AT=320.025n

* CHECK dout1_19 Vdout1_19ck63 = 0 time = 320
.meas tran vdout1_19ck63 FIND v(dout1_19) AT=320.025n

* CHECK dout1_20 Vdout1_20ck63 = 0.9 time = 320
.meas tran vdout1_20ck63 FIND v(dout1_20) AT=320.025n

* CHECK dout1_21 Vdout1_21ck63 = 0 time = 320
.meas tran vdout1_21ck63 FIND v(dout1_21) AT=320.025n

* CHECK dout1_22 Vdout1_22ck63 = 0 time = 320
.meas tran vdout1_22ck63 FIND v(dout1_22) AT=320.025n

* CHECK dout1_23 Vdout1_23ck63 = 0 time = 320
.meas tran vdout1_23ck63 FIND v(dout1_23) AT=320.025n

* CHECK dout1_24 Vdout1_24ck63 = 0 time = 320
.meas tran vdout1_24ck63 FIND v(dout1_24) AT=320.025n

* CHECK dout1_25 Vdout1_25ck63 = 0.9 time = 320
.meas tran vdout1_25ck63 FIND v(dout1_25) AT=320.025n

* CHECK dout1_26 Vdout1_26ck63 = 0 time = 320
.meas tran vdout1_26ck63 FIND v(dout1_26) AT=320.025n

* CHECK dout1_27 Vdout1_27ck63 = 0.9 time = 320
.meas tran vdout1_27ck63 FIND v(dout1_27) AT=320.025n

* CHECK dout1_28 Vdout1_28ck63 = 0 time = 320
.meas tran vdout1_28ck63 FIND v(dout1_28) AT=320.025n

* CHECK dout1_29 Vdout1_29ck63 = 0 time = 320
.meas tran vdout1_29ck63 FIND v(dout1_29) AT=320.025n

* CHECK dout1_30 Vdout1_30ck63 = 0.9 time = 320
.meas tran vdout1_30ck63 FIND v(dout1_30) AT=320.025n

* CHECK dout1_31 Vdout1_31ck63 = 0.9 time = 320
.meas tran vdout1_31ck63 FIND v(dout1_31) AT=320.025n

* CHECK dout1_0 Vdout1_0ck66 = 0 time = 335
.meas tran vdout1_0ck66 FIND v(dout1_0) AT=335.025n

* CHECK dout1_1 Vdout1_1ck66 = 0 time = 335
.meas tran vdout1_1ck66 FIND v(dout1_1) AT=335.025n

* CHECK dout1_2 Vdout1_2ck66 = 0.9 time = 335
.meas tran vdout1_2ck66 FIND v(dout1_2) AT=335.025n

* CHECK dout1_3 Vdout1_3ck66 = 0.9 time = 335
.meas tran vdout1_3ck66 FIND v(dout1_3) AT=335.025n

* CHECK dout1_4 Vdout1_4ck66 = 0 time = 335
.meas tran vdout1_4ck66 FIND v(dout1_4) AT=335.025n

* CHECK dout1_5 Vdout1_5ck66 = 0 time = 335
.meas tran vdout1_5ck66 FIND v(dout1_5) AT=335.025n

* CHECK dout1_6 Vdout1_6ck66 = 0 time = 335
.meas tran vdout1_6ck66 FIND v(dout1_6) AT=335.025n

* CHECK dout1_7 Vdout1_7ck66 = 0.9 time = 335
.meas tran vdout1_7ck66 FIND v(dout1_7) AT=335.025n

* CHECK dout1_8 Vdout1_8ck66 = 0.9 time = 335
.meas tran vdout1_8ck66 FIND v(dout1_8) AT=335.025n

* CHECK dout1_9 Vdout1_9ck66 = 0.9 time = 335
.meas tran vdout1_9ck66 FIND v(dout1_9) AT=335.025n

* CHECK dout1_10 Vdout1_10ck66 = 0 time = 335
.meas tran vdout1_10ck66 FIND v(dout1_10) AT=335.025n

* CHECK dout1_11 Vdout1_11ck66 = 0 time = 335
.meas tran vdout1_11ck66 FIND v(dout1_11) AT=335.025n

* CHECK dout1_12 Vdout1_12ck66 = 0 time = 335
.meas tran vdout1_12ck66 FIND v(dout1_12) AT=335.025n

* CHECK dout1_13 Vdout1_13ck66 = 0.9 time = 335
.meas tran vdout1_13ck66 FIND v(dout1_13) AT=335.025n

* CHECK dout1_14 Vdout1_14ck66 = 0 time = 335
.meas tran vdout1_14ck66 FIND v(dout1_14) AT=335.025n

* CHECK dout1_15 Vdout1_15ck66 = 0.9 time = 335
.meas tran vdout1_15ck66 FIND v(dout1_15) AT=335.025n

* CHECK dout1_16 Vdout1_16ck66 = 0 time = 335
.meas tran vdout1_16ck66 FIND v(dout1_16) AT=335.025n

* CHECK dout1_17 Vdout1_17ck66 = 0 time = 335
.meas tran vdout1_17ck66 FIND v(dout1_17) AT=335.025n

* CHECK dout1_18 Vdout1_18ck66 = 0 time = 335
.meas tran vdout1_18ck66 FIND v(dout1_18) AT=335.025n

* CHECK dout1_19 Vdout1_19ck66 = 0 time = 335
.meas tran vdout1_19ck66 FIND v(dout1_19) AT=335.025n

* CHECK dout1_20 Vdout1_20ck66 = 0.9 time = 335
.meas tran vdout1_20ck66 FIND v(dout1_20) AT=335.025n

* CHECK dout1_21 Vdout1_21ck66 = 0.9 time = 335
.meas tran vdout1_21ck66 FIND v(dout1_21) AT=335.025n

* CHECK dout1_22 Vdout1_22ck66 = 0 time = 335
.meas tran vdout1_22ck66 FIND v(dout1_22) AT=335.025n

* CHECK dout1_23 Vdout1_23ck66 = 0.9 time = 335
.meas tran vdout1_23ck66 FIND v(dout1_23) AT=335.025n

* CHECK dout1_24 Vdout1_24ck66 = 0.9 time = 335
.meas tran vdout1_24ck66 FIND v(dout1_24) AT=335.025n

* CHECK dout1_25 Vdout1_25ck66 = 0 time = 335
.meas tran vdout1_25ck66 FIND v(dout1_25) AT=335.025n

* CHECK dout1_26 Vdout1_26ck66 = 0 time = 335
.meas tran vdout1_26ck66 FIND v(dout1_26) AT=335.025n

* CHECK dout1_27 Vdout1_27ck66 = 0.9 time = 335
.meas tran vdout1_27ck66 FIND v(dout1_27) AT=335.025n

* CHECK dout1_28 Vdout1_28ck66 = 0 time = 335
.meas tran vdout1_28ck66 FIND v(dout1_28) AT=335.025n

* CHECK dout1_29 Vdout1_29ck66 = 0 time = 335
.meas tran vdout1_29ck66 FIND v(dout1_29) AT=335.025n

* CHECK dout1_30 Vdout1_30ck66 = 0 time = 335
.meas tran vdout1_30ck66 FIND v(dout1_30) AT=335.025n

* CHECK dout1_31 Vdout1_31ck66 = 0.9 time = 335
.meas tran vdout1_31ck66 FIND v(dout1_31) AT=335.025n

* CHECK dout1_0 Vdout1_0ck70 = 0 time = 355
.meas tran vdout1_0ck70 FIND v(dout1_0) AT=355.025n

* CHECK dout1_1 Vdout1_1ck70 = 0.9 time = 355
.meas tran vdout1_1ck70 FIND v(dout1_1) AT=355.025n

* CHECK dout1_2 Vdout1_2ck70 = 0.9 time = 355
.meas tran vdout1_2ck70 FIND v(dout1_2) AT=355.025n

* CHECK dout1_3 Vdout1_3ck70 = 0.9 time = 355
.meas tran vdout1_3ck70 FIND v(dout1_3) AT=355.025n

* CHECK dout1_4 Vdout1_4ck70 = 0.9 time = 355
.meas tran vdout1_4ck70 FIND v(dout1_4) AT=355.025n

* CHECK dout1_5 Vdout1_5ck70 = 0.9 time = 355
.meas tran vdout1_5ck70 FIND v(dout1_5) AT=355.025n

* CHECK dout1_6 Vdout1_6ck70 = 0.9 time = 355
.meas tran vdout1_6ck70 FIND v(dout1_6) AT=355.025n

* CHECK dout1_7 Vdout1_7ck70 = 0.9 time = 355
.meas tran vdout1_7ck70 FIND v(dout1_7) AT=355.025n

* CHECK dout1_8 Vdout1_8ck70 = 0 time = 355
.meas tran vdout1_8ck70 FIND v(dout1_8) AT=355.025n

* CHECK dout1_9 Vdout1_9ck70 = 0.9 time = 355
.meas tran vdout1_9ck70 FIND v(dout1_9) AT=355.025n

* CHECK dout1_10 Vdout1_10ck70 = 0 time = 355
.meas tran vdout1_10ck70 FIND v(dout1_10) AT=355.025n

* CHECK dout1_11 Vdout1_11ck70 = 0 time = 355
.meas tran vdout1_11ck70 FIND v(dout1_11) AT=355.025n

* CHECK dout1_12 Vdout1_12ck70 = 0.9 time = 355
.meas tran vdout1_12ck70 FIND v(dout1_12) AT=355.025n

* CHECK dout1_13 Vdout1_13ck70 = 0.9 time = 355
.meas tran vdout1_13ck70 FIND v(dout1_13) AT=355.025n

* CHECK dout1_14 Vdout1_14ck70 = 0.9 time = 355
.meas tran vdout1_14ck70 FIND v(dout1_14) AT=355.025n

* CHECK dout1_15 Vdout1_15ck70 = 0.9 time = 355
.meas tran vdout1_15ck70 FIND v(dout1_15) AT=355.025n

* CHECK dout1_16 Vdout1_16ck70 = 0 time = 355
.meas tran vdout1_16ck70 FIND v(dout1_16) AT=355.025n

* CHECK dout1_17 Vdout1_17ck70 = 0.9 time = 355
.meas tran vdout1_17ck70 FIND v(dout1_17) AT=355.025n

* CHECK dout1_18 Vdout1_18ck70 = 0.9 time = 355
.meas tran vdout1_18ck70 FIND v(dout1_18) AT=355.025n

* CHECK dout1_19 Vdout1_19ck70 = 0.9 time = 355
.meas tran vdout1_19ck70 FIND v(dout1_19) AT=355.025n

* CHECK dout1_20 Vdout1_20ck70 = 0.9 time = 355
.meas tran vdout1_20ck70 FIND v(dout1_20) AT=355.025n

* CHECK dout1_21 Vdout1_21ck70 = 0 time = 355
.meas tran vdout1_21ck70 FIND v(dout1_21) AT=355.025n

* CHECK dout1_22 Vdout1_22ck70 = 0.9 time = 355
.meas tran vdout1_22ck70 FIND v(dout1_22) AT=355.025n

* CHECK dout1_23 Vdout1_23ck70 = 0.9 time = 355
.meas tran vdout1_23ck70 FIND v(dout1_23) AT=355.025n

* CHECK dout1_24 Vdout1_24ck70 = 0 time = 355
.meas tran vdout1_24ck70 FIND v(dout1_24) AT=355.025n

* CHECK dout1_25 Vdout1_25ck70 = 0.9 time = 355
.meas tran vdout1_25ck70 FIND v(dout1_25) AT=355.025n

* CHECK dout1_26 Vdout1_26ck70 = 0 time = 355
.meas tran vdout1_26ck70 FIND v(dout1_26) AT=355.025n

* CHECK dout1_27 Vdout1_27ck70 = 0.9 time = 355
.meas tran vdout1_27ck70 FIND v(dout1_27) AT=355.025n

* CHECK dout1_28 Vdout1_28ck70 = 0 time = 355
.meas tran vdout1_28ck70 FIND v(dout1_28) AT=355.025n

* CHECK dout1_29 Vdout1_29ck70 = 0 time = 355
.meas tran vdout1_29ck70 FIND v(dout1_29) AT=355.025n

* CHECK dout1_30 Vdout1_30ck70 = 0.9 time = 355
.meas tran vdout1_30ck70 FIND v(dout1_30) AT=355.025n

* CHECK dout1_31 Vdout1_31ck70 = 0 time = 355
.meas tran vdout1_31ck70 FIND v(dout1_31) AT=355.025n

* CHECK dout1_0 Vdout1_0ck71 = 0 time = 360
.meas tran vdout1_0ck71 FIND v(dout1_0) AT=360.025n

* CHECK dout1_1 Vdout1_1ck71 = 0.9 time = 360
.meas tran vdout1_1ck71 FIND v(dout1_1) AT=360.025n

* CHECK dout1_2 Vdout1_2ck71 = 0.9 time = 360
.meas tran vdout1_2ck71 FIND v(dout1_2) AT=360.025n

* CHECK dout1_3 Vdout1_3ck71 = 0.9 time = 360
.meas tran vdout1_3ck71 FIND v(dout1_3) AT=360.025n

* CHECK dout1_4 Vdout1_4ck71 = 0 time = 360
.meas tran vdout1_4ck71 FIND v(dout1_4) AT=360.025n

* CHECK dout1_5 Vdout1_5ck71 = 0 time = 360
.meas tran vdout1_5ck71 FIND v(dout1_5) AT=360.025n

* CHECK dout1_6 Vdout1_6ck71 = 0.9 time = 360
.meas tran vdout1_6ck71 FIND v(dout1_6) AT=360.025n

* CHECK dout1_7 Vdout1_7ck71 = 0.9 time = 360
.meas tran vdout1_7ck71 FIND v(dout1_7) AT=360.025n

* CHECK dout1_8 Vdout1_8ck71 = 0.9 time = 360
.meas tran vdout1_8ck71 FIND v(dout1_8) AT=360.025n

* CHECK dout1_9 Vdout1_9ck71 = 0 time = 360
.meas tran vdout1_9ck71 FIND v(dout1_9) AT=360.025n

* CHECK dout1_10 Vdout1_10ck71 = 0.9 time = 360
.meas tran vdout1_10ck71 FIND v(dout1_10) AT=360.025n

* CHECK dout1_11 Vdout1_11ck71 = 0 time = 360
.meas tran vdout1_11ck71 FIND v(dout1_11) AT=360.025n

* CHECK dout1_12 Vdout1_12ck71 = 0.9 time = 360
.meas tran vdout1_12ck71 FIND v(dout1_12) AT=360.025n

* CHECK dout1_13 Vdout1_13ck71 = 0 time = 360
.meas tran vdout1_13ck71 FIND v(dout1_13) AT=360.025n

* CHECK dout1_14 Vdout1_14ck71 = 0 time = 360
.meas tran vdout1_14ck71 FIND v(dout1_14) AT=360.025n

* CHECK dout1_15 Vdout1_15ck71 = 0 time = 360
.meas tran vdout1_15ck71 FIND v(dout1_15) AT=360.025n

* CHECK dout1_16 Vdout1_16ck71 = 0 time = 360
.meas tran vdout1_16ck71 FIND v(dout1_16) AT=360.025n

* CHECK dout1_17 Vdout1_17ck71 = 0 time = 360
.meas tran vdout1_17ck71 FIND v(dout1_17) AT=360.025n

* CHECK dout1_18 Vdout1_18ck71 = 0.9 time = 360
.meas tran vdout1_18ck71 FIND v(dout1_18) AT=360.025n

* CHECK dout1_19 Vdout1_19ck71 = 0.9 time = 360
.meas tran vdout1_19ck71 FIND v(dout1_19) AT=360.025n

* CHECK dout1_20 Vdout1_20ck71 = 0 time = 360
.meas tran vdout1_20ck71 FIND v(dout1_20) AT=360.025n

* CHECK dout1_21 Vdout1_21ck71 = 0.9 time = 360
.meas tran vdout1_21ck71 FIND v(dout1_21) AT=360.025n

* CHECK dout1_22 Vdout1_22ck71 = 0 time = 360
.meas tran vdout1_22ck71 FIND v(dout1_22) AT=360.025n

* CHECK dout1_23 Vdout1_23ck71 = 0 time = 360
.meas tran vdout1_23ck71 FIND v(dout1_23) AT=360.025n

* CHECK dout1_24 Vdout1_24ck71 = 0 time = 360
.meas tran vdout1_24ck71 FIND v(dout1_24) AT=360.025n

* CHECK dout1_25 Vdout1_25ck71 = 0 time = 360
.meas tran vdout1_25ck71 FIND v(dout1_25) AT=360.025n

* CHECK dout1_26 Vdout1_26ck71 = 0.9 time = 360
.meas tran vdout1_26ck71 FIND v(dout1_26) AT=360.025n

* CHECK dout1_27 Vdout1_27ck71 = 0 time = 360
.meas tran vdout1_27ck71 FIND v(dout1_27) AT=360.025n

* CHECK dout1_28 Vdout1_28ck71 = 0 time = 360
.meas tran vdout1_28ck71 FIND v(dout1_28) AT=360.025n

* CHECK dout1_29 Vdout1_29ck71 = 0.9 time = 360
.meas tran vdout1_29ck71 FIND v(dout1_29) AT=360.025n

* CHECK dout1_30 Vdout1_30ck71 = 0 time = 360
.meas tran vdout1_30ck71 FIND v(dout1_30) AT=360.025n

* CHECK dout1_31 Vdout1_31ck71 = 0 time = 360
.meas tran vdout1_31ck71 FIND v(dout1_31) AT=360.025n

* CHECK dout1_0 Vdout1_0ck72 = 0 time = 365
.meas tran vdout1_0ck72 FIND v(dout1_0) AT=365.025n

* CHECK dout1_1 Vdout1_1ck72 = 0.9 time = 365
.meas tran vdout1_1ck72 FIND v(dout1_1) AT=365.025n

* CHECK dout1_2 Vdout1_2ck72 = 0.9 time = 365
.meas tran vdout1_2ck72 FIND v(dout1_2) AT=365.025n

* CHECK dout1_3 Vdout1_3ck72 = 0.9 time = 365
.meas tran vdout1_3ck72 FIND v(dout1_3) AT=365.025n

* CHECK dout1_4 Vdout1_4ck72 = 0 time = 365
.meas tran vdout1_4ck72 FIND v(dout1_4) AT=365.025n

* CHECK dout1_5 Vdout1_5ck72 = 0 time = 365
.meas tran vdout1_5ck72 FIND v(dout1_5) AT=365.025n

* CHECK dout1_6 Vdout1_6ck72 = 0.9 time = 365
.meas tran vdout1_6ck72 FIND v(dout1_6) AT=365.025n

* CHECK dout1_7 Vdout1_7ck72 = 0.9 time = 365
.meas tran vdout1_7ck72 FIND v(dout1_7) AT=365.025n

* CHECK dout1_8 Vdout1_8ck72 = 0.9 time = 365
.meas tran vdout1_8ck72 FIND v(dout1_8) AT=365.025n

* CHECK dout1_9 Vdout1_9ck72 = 0 time = 365
.meas tran vdout1_9ck72 FIND v(dout1_9) AT=365.025n

* CHECK dout1_10 Vdout1_10ck72 = 0.9 time = 365
.meas tran vdout1_10ck72 FIND v(dout1_10) AT=365.025n

* CHECK dout1_11 Vdout1_11ck72 = 0 time = 365
.meas tran vdout1_11ck72 FIND v(dout1_11) AT=365.025n

* CHECK dout1_12 Vdout1_12ck72 = 0.9 time = 365
.meas tran vdout1_12ck72 FIND v(dout1_12) AT=365.025n

* CHECK dout1_13 Vdout1_13ck72 = 0 time = 365
.meas tran vdout1_13ck72 FIND v(dout1_13) AT=365.025n

* CHECK dout1_14 Vdout1_14ck72 = 0 time = 365
.meas tran vdout1_14ck72 FIND v(dout1_14) AT=365.025n

* CHECK dout1_15 Vdout1_15ck72 = 0 time = 365
.meas tran vdout1_15ck72 FIND v(dout1_15) AT=365.025n

* CHECK dout1_16 Vdout1_16ck72 = 0 time = 365
.meas tran vdout1_16ck72 FIND v(dout1_16) AT=365.025n

* CHECK dout1_17 Vdout1_17ck72 = 0 time = 365
.meas tran vdout1_17ck72 FIND v(dout1_17) AT=365.025n

* CHECK dout1_18 Vdout1_18ck72 = 0.9 time = 365
.meas tran vdout1_18ck72 FIND v(dout1_18) AT=365.025n

* CHECK dout1_19 Vdout1_19ck72 = 0.9 time = 365
.meas tran vdout1_19ck72 FIND v(dout1_19) AT=365.025n

* CHECK dout1_20 Vdout1_20ck72 = 0 time = 365
.meas tran vdout1_20ck72 FIND v(dout1_20) AT=365.025n

* CHECK dout1_21 Vdout1_21ck72 = 0.9 time = 365
.meas tran vdout1_21ck72 FIND v(dout1_21) AT=365.025n

* CHECK dout1_22 Vdout1_22ck72 = 0 time = 365
.meas tran vdout1_22ck72 FIND v(dout1_22) AT=365.025n

* CHECK dout1_23 Vdout1_23ck72 = 0 time = 365
.meas tran vdout1_23ck72 FIND v(dout1_23) AT=365.025n

* CHECK dout1_24 Vdout1_24ck72 = 0 time = 365
.meas tran vdout1_24ck72 FIND v(dout1_24) AT=365.025n

* CHECK dout1_25 Vdout1_25ck72 = 0 time = 365
.meas tran vdout1_25ck72 FIND v(dout1_25) AT=365.025n

* CHECK dout1_26 Vdout1_26ck72 = 0.9 time = 365
.meas tran vdout1_26ck72 FIND v(dout1_26) AT=365.025n

* CHECK dout1_27 Vdout1_27ck72 = 0 time = 365
.meas tran vdout1_27ck72 FIND v(dout1_27) AT=365.025n

* CHECK dout1_28 Vdout1_28ck72 = 0 time = 365
.meas tran vdout1_28ck72 FIND v(dout1_28) AT=365.025n

* CHECK dout1_29 Vdout1_29ck72 = 0.9 time = 365
.meas tran vdout1_29ck72 FIND v(dout1_29) AT=365.025n

* CHECK dout1_30 Vdout1_30ck72 = 0 time = 365
.meas tran vdout1_30ck72 FIND v(dout1_30) AT=365.025n

* CHECK dout1_31 Vdout1_31ck72 = 0 time = 365
.meas tran vdout1_31ck72 FIND v(dout1_31) AT=365.025n

* CHECK dout1_0 Vdout1_0ck75 = 0 time = 380
.meas tran vdout1_0ck75 FIND v(dout1_0) AT=380.025n

* CHECK dout1_1 Vdout1_1ck75 = 0.9 time = 380
.meas tran vdout1_1ck75 FIND v(dout1_1) AT=380.025n

* CHECK dout1_2 Vdout1_2ck75 = 0 time = 380
.meas tran vdout1_2ck75 FIND v(dout1_2) AT=380.025n

* CHECK dout1_3 Vdout1_3ck75 = 0.9 time = 380
.meas tran vdout1_3ck75 FIND v(dout1_3) AT=380.025n

* CHECK dout1_4 Vdout1_4ck75 = 0 time = 380
.meas tran vdout1_4ck75 FIND v(dout1_4) AT=380.025n

* CHECK dout1_5 Vdout1_5ck75 = 0 time = 380
.meas tran vdout1_5ck75 FIND v(dout1_5) AT=380.025n

* CHECK dout1_6 Vdout1_6ck75 = 0 time = 380
.meas tran vdout1_6ck75 FIND v(dout1_6) AT=380.025n

* CHECK dout1_7 Vdout1_7ck75 = 0 time = 380
.meas tran vdout1_7ck75 FIND v(dout1_7) AT=380.025n

* CHECK dout1_8 Vdout1_8ck75 = 0 time = 380
.meas tran vdout1_8ck75 FIND v(dout1_8) AT=380.025n

* CHECK dout1_9 Vdout1_9ck75 = 0.9 time = 380
.meas tran vdout1_9ck75 FIND v(dout1_9) AT=380.025n

* CHECK dout1_10 Vdout1_10ck75 = 0 time = 380
.meas tran vdout1_10ck75 FIND v(dout1_10) AT=380.025n

* CHECK dout1_11 Vdout1_11ck75 = 0 time = 380
.meas tran vdout1_11ck75 FIND v(dout1_11) AT=380.025n

* CHECK dout1_12 Vdout1_12ck75 = 0 time = 380
.meas tran vdout1_12ck75 FIND v(dout1_12) AT=380.025n

* CHECK dout1_13 Vdout1_13ck75 = 0 time = 380
.meas tran vdout1_13ck75 FIND v(dout1_13) AT=380.025n

* CHECK dout1_14 Vdout1_14ck75 = 0.9 time = 380
.meas tran vdout1_14ck75 FIND v(dout1_14) AT=380.025n

* CHECK dout1_15 Vdout1_15ck75 = 0 time = 380
.meas tran vdout1_15ck75 FIND v(dout1_15) AT=380.025n

* CHECK dout1_16 Vdout1_16ck75 = 0 time = 380
.meas tran vdout1_16ck75 FIND v(dout1_16) AT=380.025n

* CHECK dout1_17 Vdout1_17ck75 = 0.9 time = 380
.meas tran vdout1_17ck75 FIND v(dout1_17) AT=380.025n

* CHECK dout1_18 Vdout1_18ck75 = 0 time = 380
.meas tran vdout1_18ck75 FIND v(dout1_18) AT=380.025n

* CHECK dout1_19 Vdout1_19ck75 = 0.9 time = 380
.meas tran vdout1_19ck75 FIND v(dout1_19) AT=380.025n

* CHECK dout1_20 Vdout1_20ck75 = 0 time = 380
.meas tran vdout1_20ck75 FIND v(dout1_20) AT=380.025n

* CHECK dout1_21 Vdout1_21ck75 = 0.9 time = 380
.meas tran vdout1_21ck75 FIND v(dout1_21) AT=380.025n

* CHECK dout1_22 Vdout1_22ck75 = 0.9 time = 380
.meas tran vdout1_22ck75 FIND v(dout1_22) AT=380.025n

* CHECK dout1_23 Vdout1_23ck75 = 0.9 time = 380
.meas tran vdout1_23ck75 FIND v(dout1_23) AT=380.025n

* CHECK dout1_24 Vdout1_24ck75 = 0 time = 380
.meas tran vdout1_24ck75 FIND v(dout1_24) AT=380.025n

* CHECK dout1_25 Vdout1_25ck75 = 0.9 time = 380
.meas tran vdout1_25ck75 FIND v(dout1_25) AT=380.025n

* CHECK dout1_26 Vdout1_26ck75 = 0.9 time = 380
.meas tran vdout1_26ck75 FIND v(dout1_26) AT=380.025n

* CHECK dout1_27 Vdout1_27ck75 = 0 time = 380
.meas tran vdout1_27ck75 FIND v(dout1_27) AT=380.025n

* CHECK dout1_28 Vdout1_28ck75 = 0 time = 380
.meas tran vdout1_28ck75 FIND v(dout1_28) AT=380.025n

* CHECK dout1_29 Vdout1_29ck75 = 0.9 time = 380
.meas tran vdout1_29ck75 FIND v(dout1_29) AT=380.025n

* CHECK dout1_30 Vdout1_30ck75 = 0.9 time = 380
.meas tran vdout1_30ck75 FIND v(dout1_30) AT=380.025n

* CHECK dout1_31 Vdout1_31ck75 = 0 time = 380
.meas tran vdout1_31ck75 FIND v(dout1_31) AT=380.025n

* CHECK dout1_0 Vdout1_0ck78 = 0 time = 395
.meas tran vdout1_0ck78 FIND v(dout1_0) AT=395.025n

* CHECK dout1_1 Vdout1_1ck78 = 0.9 time = 395
.meas tran vdout1_1ck78 FIND v(dout1_1) AT=395.025n

* CHECK dout1_2 Vdout1_2ck78 = 0 time = 395
.meas tran vdout1_2ck78 FIND v(dout1_2) AT=395.025n

* CHECK dout1_3 Vdout1_3ck78 = 0.9 time = 395
.meas tran vdout1_3ck78 FIND v(dout1_3) AT=395.025n

* CHECK dout1_4 Vdout1_4ck78 = 0 time = 395
.meas tran vdout1_4ck78 FIND v(dout1_4) AT=395.025n

* CHECK dout1_5 Vdout1_5ck78 = 0 time = 395
.meas tran vdout1_5ck78 FIND v(dout1_5) AT=395.025n

* CHECK dout1_6 Vdout1_6ck78 = 0 time = 395
.meas tran vdout1_6ck78 FIND v(dout1_6) AT=395.025n

* CHECK dout1_7 Vdout1_7ck78 = 0 time = 395
.meas tran vdout1_7ck78 FIND v(dout1_7) AT=395.025n

* CHECK dout1_8 Vdout1_8ck78 = 0 time = 395
.meas tran vdout1_8ck78 FIND v(dout1_8) AT=395.025n

* CHECK dout1_9 Vdout1_9ck78 = 0.9 time = 395
.meas tran vdout1_9ck78 FIND v(dout1_9) AT=395.025n

* CHECK dout1_10 Vdout1_10ck78 = 0 time = 395
.meas tran vdout1_10ck78 FIND v(dout1_10) AT=395.025n

* CHECK dout1_11 Vdout1_11ck78 = 0 time = 395
.meas tran vdout1_11ck78 FIND v(dout1_11) AT=395.025n

* CHECK dout1_12 Vdout1_12ck78 = 0 time = 395
.meas tran vdout1_12ck78 FIND v(dout1_12) AT=395.025n

* CHECK dout1_13 Vdout1_13ck78 = 0 time = 395
.meas tran vdout1_13ck78 FIND v(dout1_13) AT=395.025n

* CHECK dout1_14 Vdout1_14ck78 = 0.9 time = 395
.meas tran vdout1_14ck78 FIND v(dout1_14) AT=395.025n

* CHECK dout1_15 Vdout1_15ck78 = 0 time = 395
.meas tran vdout1_15ck78 FIND v(dout1_15) AT=395.025n

* CHECK dout1_16 Vdout1_16ck78 = 0 time = 395
.meas tran vdout1_16ck78 FIND v(dout1_16) AT=395.025n

* CHECK dout1_17 Vdout1_17ck78 = 0.9 time = 395
.meas tran vdout1_17ck78 FIND v(dout1_17) AT=395.025n

* CHECK dout1_18 Vdout1_18ck78 = 0 time = 395
.meas tran vdout1_18ck78 FIND v(dout1_18) AT=395.025n

* CHECK dout1_19 Vdout1_19ck78 = 0.9 time = 395
.meas tran vdout1_19ck78 FIND v(dout1_19) AT=395.025n

* CHECK dout1_20 Vdout1_20ck78 = 0 time = 395
.meas tran vdout1_20ck78 FIND v(dout1_20) AT=395.025n

* CHECK dout1_21 Vdout1_21ck78 = 0.9 time = 395
.meas tran vdout1_21ck78 FIND v(dout1_21) AT=395.025n

* CHECK dout1_22 Vdout1_22ck78 = 0.9 time = 395
.meas tran vdout1_22ck78 FIND v(dout1_22) AT=395.025n

* CHECK dout1_23 Vdout1_23ck78 = 0.9 time = 395
.meas tran vdout1_23ck78 FIND v(dout1_23) AT=395.025n

* CHECK dout1_24 Vdout1_24ck78 = 0 time = 395
.meas tran vdout1_24ck78 FIND v(dout1_24) AT=395.025n

* CHECK dout1_25 Vdout1_25ck78 = 0.9 time = 395
.meas tran vdout1_25ck78 FIND v(dout1_25) AT=395.025n

* CHECK dout1_26 Vdout1_26ck78 = 0.9 time = 395
.meas tran vdout1_26ck78 FIND v(dout1_26) AT=395.025n

* CHECK dout1_27 Vdout1_27ck78 = 0 time = 395
.meas tran vdout1_27ck78 FIND v(dout1_27) AT=395.025n

* CHECK dout1_28 Vdout1_28ck78 = 0 time = 395
.meas tran vdout1_28ck78 FIND v(dout1_28) AT=395.025n

* CHECK dout1_29 Vdout1_29ck78 = 0.9 time = 395
.meas tran vdout1_29ck78 FIND v(dout1_29) AT=395.025n

* CHECK dout1_30 Vdout1_30ck78 = 0.9 time = 395
.meas tran vdout1_30ck78 FIND v(dout1_30) AT=395.025n

* CHECK dout1_31 Vdout1_31ck78 = 0 time = 395
.meas tran vdout1_31ck78 FIND v(dout1_31) AT=395.025n

* CHECK dout1_0 Vdout1_0ck85 = 0.9 time = 430
.meas tran vdout1_0ck85 FIND v(dout1_0) AT=430.025n

* CHECK dout1_1 Vdout1_1ck85 = 0.9 time = 430
.meas tran vdout1_1ck85 FIND v(dout1_1) AT=430.025n

* CHECK dout1_2 Vdout1_2ck85 = 0.9 time = 430
.meas tran vdout1_2ck85 FIND v(dout1_2) AT=430.025n

* CHECK dout1_3 Vdout1_3ck85 = 0 time = 430
.meas tran vdout1_3ck85 FIND v(dout1_3) AT=430.025n

* CHECK dout1_4 Vdout1_4ck85 = 0 time = 430
.meas tran vdout1_4ck85 FIND v(dout1_4) AT=430.025n

* CHECK dout1_5 Vdout1_5ck85 = 0 time = 430
.meas tran vdout1_5ck85 FIND v(dout1_5) AT=430.025n

* CHECK dout1_6 Vdout1_6ck85 = 0 time = 430
.meas tran vdout1_6ck85 FIND v(dout1_6) AT=430.025n

* CHECK dout1_7 Vdout1_7ck85 = 0 time = 430
.meas tran vdout1_7ck85 FIND v(dout1_7) AT=430.025n

* CHECK dout1_8 Vdout1_8ck85 = 0 time = 430
.meas tran vdout1_8ck85 FIND v(dout1_8) AT=430.025n

* CHECK dout1_9 Vdout1_9ck85 = 0 time = 430
.meas tran vdout1_9ck85 FIND v(dout1_9) AT=430.025n

* CHECK dout1_10 Vdout1_10ck85 = 0 time = 430
.meas tran vdout1_10ck85 FIND v(dout1_10) AT=430.025n

* CHECK dout1_11 Vdout1_11ck85 = 0 time = 430
.meas tran vdout1_11ck85 FIND v(dout1_11) AT=430.025n

* CHECK dout1_12 Vdout1_12ck85 = 0.9 time = 430
.meas tran vdout1_12ck85 FIND v(dout1_12) AT=430.025n

* CHECK dout1_13 Vdout1_13ck85 = 0 time = 430
.meas tran vdout1_13ck85 FIND v(dout1_13) AT=430.025n

* CHECK dout1_14 Vdout1_14ck85 = 0 time = 430
.meas tran vdout1_14ck85 FIND v(dout1_14) AT=430.025n

* CHECK dout1_15 Vdout1_15ck85 = 0 time = 430
.meas tran vdout1_15ck85 FIND v(dout1_15) AT=430.025n

* CHECK dout1_16 Vdout1_16ck85 = 0.9 time = 430
.meas tran vdout1_16ck85 FIND v(dout1_16) AT=430.025n

* CHECK dout1_17 Vdout1_17ck85 = 0.9 time = 430
.meas tran vdout1_17ck85 FIND v(dout1_17) AT=430.025n

* CHECK dout1_18 Vdout1_18ck85 = 0 time = 430
.meas tran vdout1_18ck85 FIND v(dout1_18) AT=430.025n

* CHECK dout1_19 Vdout1_19ck85 = 0.9 time = 430
.meas tran vdout1_19ck85 FIND v(dout1_19) AT=430.025n

* CHECK dout1_20 Vdout1_20ck85 = 0 time = 430
.meas tran vdout1_20ck85 FIND v(dout1_20) AT=430.025n

* CHECK dout1_21 Vdout1_21ck85 = 0.9 time = 430
.meas tran vdout1_21ck85 FIND v(dout1_21) AT=430.025n

* CHECK dout1_22 Vdout1_22ck85 = 0 time = 430
.meas tran vdout1_22ck85 FIND v(dout1_22) AT=430.025n

* CHECK dout1_23 Vdout1_23ck85 = 0.9 time = 430
.meas tran vdout1_23ck85 FIND v(dout1_23) AT=430.025n

* CHECK dout1_24 Vdout1_24ck85 = 0.9 time = 430
.meas tran vdout1_24ck85 FIND v(dout1_24) AT=430.025n

* CHECK dout1_25 Vdout1_25ck85 = 0 time = 430
.meas tran vdout1_25ck85 FIND v(dout1_25) AT=430.025n

* CHECK dout1_26 Vdout1_26ck85 = 0.9 time = 430
.meas tran vdout1_26ck85 FIND v(dout1_26) AT=430.025n

* CHECK dout1_27 Vdout1_27ck85 = 0.9 time = 430
.meas tran vdout1_27ck85 FIND v(dout1_27) AT=430.025n

* CHECK dout1_28 Vdout1_28ck85 = 0 time = 430
.meas tran vdout1_28ck85 FIND v(dout1_28) AT=430.025n

* CHECK dout1_29 Vdout1_29ck85 = 0 time = 430
.meas tran vdout1_29ck85 FIND v(dout1_29) AT=430.025n

* CHECK dout1_30 Vdout1_30ck85 = 0.9 time = 430
.meas tran vdout1_30ck85 FIND v(dout1_30) AT=430.025n

* CHECK dout1_31 Vdout1_31ck85 = 0 time = 430
.meas tran vdout1_31ck85 FIND v(dout1_31) AT=430.025n

* CHECK dout1_0 Vdout1_0ck86 = 0 time = 435
.meas tran vdout1_0ck86 FIND v(dout1_0) AT=435.025n

* CHECK dout1_1 Vdout1_1ck86 = 0.9 time = 435
.meas tran vdout1_1ck86 FIND v(dout1_1) AT=435.025n

* CHECK dout1_2 Vdout1_2ck86 = 0.9 time = 435
.meas tran vdout1_2ck86 FIND v(dout1_2) AT=435.025n

* CHECK dout1_3 Vdout1_3ck86 = 0.9 time = 435
.meas tran vdout1_3ck86 FIND v(dout1_3) AT=435.025n

* CHECK dout1_4 Vdout1_4ck86 = 0.9 time = 435
.meas tran vdout1_4ck86 FIND v(dout1_4) AT=435.025n

* CHECK dout1_5 Vdout1_5ck86 = 0 time = 435
.meas tran vdout1_5ck86 FIND v(dout1_5) AT=435.025n

* CHECK dout1_6 Vdout1_6ck86 = 0.9 time = 435
.meas tran vdout1_6ck86 FIND v(dout1_6) AT=435.025n

* CHECK dout1_7 Vdout1_7ck86 = 0.9 time = 435
.meas tran vdout1_7ck86 FIND v(dout1_7) AT=435.025n

* CHECK dout1_8 Vdout1_8ck86 = 0.9 time = 435
.meas tran vdout1_8ck86 FIND v(dout1_8) AT=435.025n

* CHECK dout1_9 Vdout1_9ck86 = 0 time = 435
.meas tran vdout1_9ck86 FIND v(dout1_9) AT=435.025n

* CHECK dout1_10 Vdout1_10ck86 = 0.9 time = 435
.meas tran vdout1_10ck86 FIND v(dout1_10) AT=435.025n

* CHECK dout1_11 Vdout1_11ck86 = 0 time = 435
.meas tran vdout1_11ck86 FIND v(dout1_11) AT=435.025n

* CHECK dout1_12 Vdout1_12ck86 = 0.9 time = 435
.meas tran vdout1_12ck86 FIND v(dout1_12) AT=435.025n

* CHECK dout1_13 Vdout1_13ck86 = 0.9 time = 435
.meas tran vdout1_13ck86 FIND v(dout1_13) AT=435.025n

* CHECK dout1_14 Vdout1_14ck86 = 0.9 time = 435
.meas tran vdout1_14ck86 FIND v(dout1_14) AT=435.025n

* CHECK dout1_15 Vdout1_15ck86 = 0 time = 435
.meas tran vdout1_15ck86 FIND v(dout1_15) AT=435.025n

* CHECK dout1_16 Vdout1_16ck86 = 0 time = 435
.meas tran vdout1_16ck86 FIND v(dout1_16) AT=435.025n

* CHECK dout1_17 Vdout1_17ck86 = 0.9 time = 435
.meas tran vdout1_17ck86 FIND v(dout1_17) AT=435.025n

* CHECK dout1_18 Vdout1_18ck86 = 0.9 time = 435
.meas tran vdout1_18ck86 FIND v(dout1_18) AT=435.025n

* CHECK dout1_19 Vdout1_19ck86 = 0 time = 435
.meas tran vdout1_19ck86 FIND v(dout1_19) AT=435.025n

* CHECK dout1_20 Vdout1_20ck86 = 0.9 time = 435
.meas tran vdout1_20ck86 FIND v(dout1_20) AT=435.025n

* CHECK dout1_21 Vdout1_21ck86 = 0 time = 435
.meas tran vdout1_21ck86 FIND v(dout1_21) AT=435.025n

* CHECK dout1_22 Vdout1_22ck86 = 0.9 time = 435
.meas tran vdout1_22ck86 FIND v(dout1_22) AT=435.025n

* CHECK dout1_23 Vdout1_23ck86 = 0.9 time = 435
.meas tran vdout1_23ck86 FIND v(dout1_23) AT=435.025n

* CHECK dout1_24 Vdout1_24ck86 = 0 time = 435
.meas tran vdout1_24ck86 FIND v(dout1_24) AT=435.025n

* CHECK dout1_25 Vdout1_25ck86 = 0.9 time = 435
.meas tran vdout1_25ck86 FIND v(dout1_25) AT=435.025n

* CHECK dout1_26 Vdout1_26ck86 = 0 time = 435
.meas tran vdout1_26ck86 FIND v(dout1_26) AT=435.025n

* CHECK dout1_27 Vdout1_27ck86 = 0.9 time = 435
.meas tran vdout1_27ck86 FIND v(dout1_27) AT=435.025n

* CHECK dout1_28 Vdout1_28ck86 = 0.9 time = 435
.meas tran vdout1_28ck86 FIND v(dout1_28) AT=435.025n

* CHECK dout1_29 Vdout1_29ck86 = 0.9 time = 435
.meas tran vdout1_29ck86 FIND v(dout1_29) AT=435.025n

* CHECK dout1_30 Vdout1_30ck86 = 0.9 time = 435
.meas tran vdout1_30ck86 FIND v(dout1_30) AT=435.025n

* CHECK dout1_31 Vdout1_31ck86 = 0.9 time = 435
.meas tran vdout1_31ck86 FIND v(dout1_31) AT=435.025n

* CHECK dout1_0 Vdout1_0ck88 = 0.9 time = 445
.meas tran vdout1_0ck88 FIND v(dout1_0) AT=445.025n

* CHECK dout1_1 Vdout1_1ck88 = 0 time = 445
.meas tran vdout1_1ck88 FIND v(dout1_1) AT=445.025n

* CHECK dout1_2 Vdout1_2ck88 = 0.9 time = 445
.meas tran vdout1_2ck88 FIND v(dout1_2) AT=445.025n

* CHECK dout1_3 Vdout1_3ck88 = 0.9 time = 445
.meas tran vdout1_3ck88 FIND v(dout1_3) AT=445.025n

* CHECK dout1_4 Vdout1_4ck88 = 0.9 time = 445
.meas tran vdout1_4ck88 FIND v(dout1_4) AT=445.025n

* CHECK dout1_5 Vdout1_5ck88 = 0 time = 445
.meas tran vdout1_5ck88 FIND v(dout1_5) AT=445.025n

* CHECK dout1_6 Vdout1_6ck88 = 0 time = 445
.meas tran vdout1_6ck88 FIND v(dout1_6) AT=445.025n

* CHECK dout1_7 Vdout1_7ck88 = 0.9 time = 445
.meas tran vdout1_7ck88 FIND v(dout1_7) AT=445.025n

* CHECK dout1_8 Vdout1_8ck88 = 0.9 time = 445
.meas tran vdout1_8ck88 FIND v(dout1_8) AT=445.025n

* CHECK dout1_9 Vdout1_9ck88 = 0.9 time = 445
.meas tran vdout1_9ck88 FIND v(dout1_9) AT=445.025n

* CHECK dout1_10 Vdout1_10ck88 = 0.9 time = 445
.meas tran vdout1_10ck88 FIND v(dout1_10) AT=445.025n

* CHECK dout1_11 Vdout1_11ck88 = 0 time = 445
.meas tran vdout1_11ck88 FIND v(dout1_11) AT=445.025n

* CHECK dout1_12 Vdout1_12ck88 = 0.9 time = 445
.meas tran vdout1_12ck88 FIND v(dout1_12) AT=445.025n

* CHECK dout1_13 Vdout1_13ck88 = 0 time = 445
.meas tran vdout1_13ck88 FIND v(dout1_13) AT=445.025n

* CHECK dout1_14 Vdout1_14ck88 = 0.9 time = 445
.meas tran vdout1_14ck88 FIND v(dout1_14) AT=445.025n

* CHECK dout1_15 Vdout1_15ck88 = 0.9 time = 445
.meas tran vdout1_15ck88 FIND v(dout1_15) AT=445.025n

* CHECK dout1_16 Vdout1_16ck88 = 0 time = 445
.meas tran vdout1_16ck88 FIND v(dout1_16) AT=445.025n

* CHECK dout1_17 Vdout1_17ck88 = 0 time = 445
.meas tran vdout1_17ck88 FIND v(dout1_17) AT=445.025n

* CHECK dout1_18 Vdout1_18ck88 = 0 time = 445
.meas tran vdout1_18ck88 FIND v(dout1_18) AT=445.025n

* CHECK dout1_19 Vdout1_19ck88 = 0.9 time = 445
.meas tran vdout1_19ck88 FIND v(dout1_19) AT=445.025n

* CHECK dout1_20 Vdout1_20ck88 = 0 time = 445
.meas tran vdout1_20ck88 FIND v(dout1_20) AT=445.025n

* CHECK dout1_21 Vdout1_21ck88 = 0.9 time = 445
.meas tran vdout1_21ck88 FIND v(dout1_21) AT=445.025n

* CHECK dout1_22 Vdout1_22ck88 = 0 time = 445
.meas tran vdout1_22ck88 FIND v(dout1_22) AT=445.025n

* CHECK dout1_23 Vdout1_23ck88 = 0 time = 445
.meas tran vdout1_23ck88 FIND v(dout1_23) AT=445.025n

* CHECK dout1_24 Vdout1_24ck88 = 0.9 time = 445
.meas tran vdout1_24ck88 FIND v(dout1_24) AT=445.025n

* CHECK dout1_25 Vdout1_25ck88 = 0.9 time = 445
.meas tran vdout1_25ck88 FIND v(dout1_25) AT=445.025n

* CHECK dout1_26 Vdout1_26ck88 = 0.9 time = 445
.meas tran vdout1_26ck88 FIND v(dout1_26) AT=445.025n

* CHECK dout1_27 Vdout1_27ck88 = 0.9 time = 445
.meas tran vdout1_27ck88 FIND v(dout1_27) AT=445.025n

* CHECK dout1_28 Vdout1_28ck88 = 0.9 time = 445
.meas tran vdout1_28ck88 FIND v(dout1_28) AT=445.025n

* CHECK dout1_29 Vdout1_29ck88 = 0.9 time = 445
.meas tran vdout1_29ck88 FIND v(dout1_29) AT=445.025n

* CHECK dout1_30 Vdout1_30ck88 = 0 time = 445
.meas tran vdout1_30ck88 FIND v(dout1_30) AT=445.025n

* CHECK dout1_31 Vdout1_31ck88 = 0.9 time = 445
.meas tran vdout1_31ck88 FIND v(dout1_31) AT=445.025n

* CHECK dout1_0 Vdout1_0ck93 = 0 time = 470
.meas tran vdout1_0ck93 FIND v(dout1_0) AT=470.025n

* CHECK dout1_1 Vdout1_1ck93 = 0 time = 470
.meas tran vdout1_1ck93 FIND v(dout1_1) AT=470.025n

* CHECK dout1_2 Vdout1_2ck93 = 0.9 time = 470
.meas tran vdout1_2ck93 FIND v(dout1_2) AT=470.025n

* CHECK dout1_3 Vdout1_3ck93 = 0 time = 470
.meas tran vdout1_3ck93 FIND v(dout1_3) AT=470.025n

* CHECK dout1_4 Vdout1_4ck93 = 0 time = 470
.meas tran vdout1_4ck93 FIND v(dout1_4) AT=470.025n

* CHECK dout1_5 Vdout1_5ck93 = 0.9 time = 470
.meas tran vdout1_5ck93 FIND v(dout1_5) AT=470.025n

* CHECK dout1_6 Vdout1_6ck93 = 0.9 time = 470
.meas tran vdout1_6ck93 FIND v(dout1_6) AT=470.025n

* CHECK dout1_7 Vdout1_7ck93 = 0 time = 470
.meas tran vdout1_7ck93 FIND v(dout1_7) AT=470.025n

* CHECK dout1_8 Vdout1_8ck93 = 0.9 time = 470
.meas tran vdout1_8ck93 FIND v(dout1_8) AT=470.025n

* CHECK dout1_9 Vdout1_9ck93 = 0 time = 470
.meas tran vdout1_9ck93 FIND v(dout1_9) AT=470.025n

* CHECK dout1_10 Vdout1_10ck93 = 0.9 time = 470
.meas tran vdout1_10ck93 FIND v(dout1_10) AT=470.025n

* CHECK dout1_11 Vdout1_11ck93 = 0.9 time = 470
.meas tran vdout1_11ck93 FIND v(dout1_11) AT=470.025n

* CHECK dout1_12 Vdout1_12ck93 = 0 time = 470
.meas tran vdout1_12ck93 FIND v(dout1_12) AT=470.025n

* CHECK dout1_13 Vdout1_13ck93 = 0 time = 470
.meas tran vdout1_13ck93 FIND v(dout1_13) AT=470.025n

* CHECK dout1_14 Vdout1_14ck93 = 0.9 time = 470
.meas tran vdout1_14ck93 FIND v(dout1_14) AT=470.025n

* CHECK dout1_15 Vdout1_15ck93 = 0.9 time = 470
.meas tran vdout1_15ck93 FIND v(dout1_15) AT=470.025n

* CHECK dout1_16 Vdout1_16ck93 = 0 time = 470
.meas tran vdout1_16ck93 FIND v(dout1_16) AT=470.025n

* CHECK dout1_17 Vdout1_17ck93 = 0.9 time = 470
.meas tran vdout1_17ck93 FIND v(dout1_17) AT=470.025n

* CHECK dout1_18 Vdout1_18ck93 = 0 time = 470
.meas tran vdout1_18ck93 FIND v(dout1_18) AT=470.025n

* CHECK dout1_19 Vdout1_19ck93 = 0 time = 470
.meas tran vdout1_19ck93 FIND v(dout1_19) AT=470.025n

* CHECK dout1_20 Vdout1_20ck93 = 0.9 time = 470
.meas tran vdout1_20ck93 FIND v(dout1_20) AT=470.025n

* CHECK dout1_21 Vdout1_21ck93 = 0 time = 470
.meas tran vdout1_21ck93 FIND v(dout1_21) AT=470.025n

* CHECK dout1_22 Vdout1_22ck93 = 0.9 time = 470
.meas tran vdout1_22ck93 FIND v(dout1_22) AT=470.025n

* CHECK dout1_23 Vdout1_23ck93 = 0.9 time = 470
.meas tran vdout1_23ck93 FIND v(dout1_23) AT=470.025n

* CHECK dout1_24 Vdout1_24ck93 = 0.9 time = 470
.meas tran vdout1_24ck93 FIND v(dout1_24) AT=470.025n

* CHECK dout1_25 Vdout1_25ck93 = 0.9 time = 470
.meas tran vdout1_25ck93 FIND v(dout1_25) AT=470.025n

* CHECK dout1_26 Vdout1_26ck93 = 0 time = 470
.meas tran vdout1_26ck93 FIND v(dout1_26) AT=470.025n

* CHECK dout1_27 Vdout1_27ck93 = 0 time = 470
.meas tran vdout1_27ck93 FIND v(dout1_27) AT=470.025n

* CHECK dout1_28 Vdout1_28ck93 = 0.9 time = 470
.meas tran vdout1_28ck93 FIND v(dout1_28) AT=470.025n

* CHECK dout1_29 Vdout1_29ck93 = 0 time = 470
.meas tran vdout1_29ck93 FIND v(dout1_29) AT=470.025n

* CHECK dout1_30 Vdout1_30ck93 = 0 time = 470
.meas tran vdout1_30ck93 FIND v(dout1_30) AT=470.025n

* CHECK dout1_31 Vdout1_31ck93 = 0.9 time = 470
.meas tran vdout1_31ck93 FIND v(dout1_31) AT=470.025n

* CHECK dout1_0 Vdout1_0ck96 = 0 time = 485
.meas tran vdout1_0ck96 FIND v(dout1_0) AT=485.025n

* CHECK dout1_1 Vdout1_1ck96 = 0.9 time = 485
.meas tran vdout1_1ck96 FIND v(dout1_1) AT=485.025n

* CHECK dout1_2 Vdout1_2ck96 = 0.9 time = 485
.meas tran vdout1_2ck96 FIND v(dout1_2) AT=485.025n

* CHECK dout1_3 Vdout1_3ck96 = 0 time = 485
.meas tran vdout1_3ck96 FIND v(dout1_3) AT=485.025n

* CHECK dout1_4 Vdout1_4ck96 = 0.9 time = 485
.meas tran vdout1_4ck96 FIND v(dout1_4) AT=485.025n

* CHECK dout1_5 Vdout1_5ck96 = 0.9 time = 485
.meas tran vdout1_5ck96 FIND v(dout1_5) AT=485.025n

* CHECK dout1_6 Vdout1_6ck96 = 0 time = 485
.meas tran vdout1_6ck96 FIND v(dout1_6) AT=485.025n

* CHECK dout1_7 Vdout1_7ck96 = 0.9 time = 485
.meas tran vdout1_7ck96 FIND v(dout1_7) AT=485.025n

* CHECK dout1_8 Vdout1_8ck96 = 0.9 time = 485
.meas tran vdout1_8ck96 FIND v(dout1_8) AT=485.025n

* CHECK dout1_9 Vdout1_9ck96 = 0 time = 485
.meas tran vdout1_9ck96 FIND v(dout1_9) AT=485.025n

* CHECK dout1_10 Vdout1_10ck96 = 0 time = 485
.meas tran vdout1_10ck96 FIND v(dout1_10) AT=485.025n

* CHECK dout1_11 Vdout1_11ck96 = 0 time = 485
.meas tran vdout1_11ck96 FIND v(dout1_11) AT=485.025n

* CHECK dout1_12 Vdout1_12ck96 = 0 time = 485
.meas tran vdout1_12ck96 FIND v(dout1_12) AT=485.025n

* CHECK dout1_13 Vdout1_13ck96 = 0 time = 485
.meas tran vdout1_13ck96 FIND v(dout1_13) AT=485.025n

* CHECK dout1_14 Vdout1_14ck96 = 0.9 time = 485
.meas tran vdout1_14ck96 FIND v(dout1_14) AT=485.025n

* CHECK dout1_15 Vdout1_15ck96 = 0 time = 485
.meas tran vdout1_15ck96 FIND v(dout1_15) AT=485.025n

* CHECK dout1_16 Vdout1_16ck96 = 0.9 time = 485
.meas tran vdout1_16ck96 FIND v(dout1_16) AT=485.025n

* CHECK dout1_17 Vdout1_17ck96 = 0 time = 485
.meas tran vdout1_17ck96 FIND v(dout1_17) AT=485.025n

* CHECK dout1_18 Vdout1_18ck96 = 0 time = 485
.meas tran vdout1_18ck96 FIND v(dout1_18) AT=485.025n

* CHECK dout1_19 Vdout1_19ck96 = 0.9 time = 485
.meas tran vdout1_19ck96 FIND v(dout1_19) AT=485.025n

* CHECK dout1_20 Vdout1_20ck96 = 0.9 time = 485
.meas tran vdout1_20ck96 FIND v(dout1_20) AT=485.025n

* CHECK dout1_21 Vdout1_21ck96 = 0 time = 485
.meas tran vdout1_21ck96 FIND v(dout1_21) AT=485.025n

* CHECK dout1_22 Vdout1_22ck96 = 0.9 time = 485
.meas tran vdout1_22ck96 FIND v(dout1_22) AT=485.025n

* CHECK dout1_23 Vdout1_23ck96 = 0 time = 485
.meas tran vdout1_23ck96 FIND v(dout1_23) AT=485.025n

* CHECK dout1_24 Vdout1_24ck96 = 0 time = 485
.meas tran vdout1_24ck96 FIND v(dout1_24) AT=485.025n

* CHECK dout1_25 Vdout1_25ck96 = 0.9 time = 485
.meas tran vdout1_25ck96 FIND v(dout1_25) AT=485.025n

* CHECK dout1_26 Vdout1_26ck96 = 0.9 time = 485
.meas tran vdout1_26ck96 FIND v(dout1_26) AT=485.025n

* CHECK dout1_27 Vdout1_27ck96 = 0 time = 485
.meas tran vdout1_27ck96 FIND v(dout1_27) AT=485.025n

* CHECK dout1_28 Vdout1_28ck96 = 0 time = 485
.meas tran vdout1_28ck96 FIND v(dout1_28) AT=485.025n

* CHECK dout1_29 Vdout1_29ck96 = 0 time = 485
.meas tran vdout1_29ck96 FIND v(dout1_29) AT=485.025n

* CHECK dout1_30 Vdout1_30ck96 = 0 time = 485
.meas tran vdout1_30ck96 FIND v(dout1_30) AT=485.025n

* CHECK dout1_31 Vdout1_31ck96 = 0 time = 485
.meas tran vdout1_31ck96 FIND v(dout1_31) AT=485.025n

* CHECK dout1_0 Vdout1_0ck99 = 0 time = 500
.meas tran vdout1_0ck99 FIND v(dout1_0) AT=500.025n

* CHECK dout1_1 Vdout1_1ck99 = 0.9 time = 500
.meas tran vdout1_1ck99 FIND v(dout1_1) AT=500.025n

* CHECK dout1_2 Vdout1_2ck99 = 0.9 time = 500
.meas tran vdout1_2ck99 FIND v(dout1_2) AT=500.025n

* CHECK dout1_3 Vdout1_3ck99 = 0 time = 500
.meas tran vdout1_3ck99 FIND v(dout1_3) AT=500.025n

* CHECK dout1_4 Vdout1_4ck99 = 0 time = 500
.meas tran vdout1_4ck99 FIND v(dout1_4) AT=500.025n

* CHECK dout1_5 Vdout1_5ck99 = 0.9 time = 500
.meas tran vdout1_5ck99 FIND v(dout1_5) AT=500.025n

* CHECK dout1_6 Vdout1_6ck99 = 0 time = 500
.meas tran vdout1_6ck99 FIND v(dout1_6) AT=500.025n

* CHECK dout1_7 Vdout1_7ck99 = 0.9 time = 500
.meas tran vdout1_7ck99 FIND v(dout1_7) AT=500.025n

* CHECK dout1_8 Vdout1_8ck99 = 0.9 time = 500
.meas tran vdout1_8ck99 FIND v(dout1_8) AT=500.025n

* CHECK dout1_9 Vdout1_9ck99 = 0.9 time = 500
.meas tran vdout1_9ck99 FIND v(dout1_9) AT=500.025n

* CHECK dout1_10 Vdout1_10ck99 = 0 time = 500
.meas tran vdout1_10ck99 FIND v(dout1_10) AT=500.025n

* CHECK dout1_11 Vdout1_11ck99 = 0.9 time = 500
.meas tran vdout1_11ck99 FIND v(dout1_11) AT=500.025n

* CHECK dout1_12 Vdout1_12ck99 = 0 time = 500
.meas tran vdout1_12ck99 FIND v(dout1_12) AT=500.025n

* CHECK dout1_13 Vdout1_13ck99 = 0.9 time = 500
.meas tran vdout1_13ck99 FIND v(dout1_13) AT=500.025n

* CHECK dout1_14 Vdout1_14ck99 = 0 time = 500
.meas tran vdout1_14ck99 FIND v(dout1_14) AT=500.025n

* CHECK dout1_15 Vdout1_15ck99 = 0.9 time = 500
.meas tran vdout1_15ck99 FIND v(dout1_15) AT=500.025n

* CHECK dout1_16 Vdout1_16ck99 = 0.9 time = 500
.meas tran vdout1_16ck99 FIND v(dout1_16) AT=500.025n

* CHECK dout1_17 Vdout1_17ck99 = 0 time = 500
.meas tran vdout1_17ck99 FIND v(dout1_17) AT=500.025n

* CHECK dout1_18 Vdout1_18ck99 = 0 time = 500
.meas tran vdout1_18ck99 FIND v(dout1_18) AT=500.025n

* CHECK dout1_19 Vdout1_19ck99 = 0 time = 500
.meas tran vdout1_19ck99 FIND v(dout1_19) AT=500.025n

* CHECK dout1_20 Vdout1_20ck99 = 0.9 time = 500
.meas tran vdout1_20ck99 FIND v(dout1_20) AT=500.025n

* CHECK dout1_21 Vdout1_21ck99 = 0.9 time = 500
.meas tran vdout1_21ck99 FIND v(dout1_21) AT=500.025n

* CHECK dout1_22 Vdout1_22ck99 = 0.9 time = 500
.meas tran vdout1_22ck99 FIND v(dout1_22) AT=500.025n

* CHECK dout1_23 Vdout1_23ck99 = 0.9 time = 500
.meas tran vdout1_23ck99 FIND v(dout1_23) AT=500.025n

* CHECK dout1_24 Vdout1_24ck99 = 0 time = 500
.meas tran vdout1_24ck99 FIND v(dout1_24) AT=500.025n

* CHECK dout1_25 Vdout1_25ck99 = 0.9 time = 500
.meas tran vdout1_25ck99 FIND v(dout1_25) AT=500.025n

* CHECK dout1_26 Vdout1_26ck99 = 0 time = 500
.meas tran vdout1_26ck99 FIND v(dout1_26) AT=500.025n

* CHECK dout1_27 Vdout1_27ck99 = 0.9 time = 500
.meas tran vdout1_27ck99 FIND v(dout1_27) AT=500.025n

* CHECK dout1_28 Vdout1_28ck99 = 0.9 time = 500
.meas tran vdout1_28ck99 FIND v(dout1_28) AT=500.025n

* CHECK dout1_29 Vdout1_29ck99 = 0.9 time = 500
.meas tran vdout1_29ck99 FIND v(dout1_29) AT=500.025n

* CHECK dout1_30 Vdout1_30ck99 = 0.9 time = 500
.meas tran vdout1_30ck99 FIND v(dout1_30) AT=500.025n

* CHECK dout1_31 Vdout1_31ck99 = 0 time = 500
.meas tran vdout1_31ck99 FIND v(dout1_31) AT=500.025n

* CHECK dout1_0 Vdout1_0ck101 = 0 time = 510
.meas tran vdout1_0ck101 FIND v(dout1_0) AT=510.025n

* CHECK dout1_1 Vdout1_1ck101 = 0.9 time = 510
.meas tran vdout1_1ck101 FIND v(dout1_1) AT=510.025n

* CHECK dout1_2 Vdout1_2ck101 = 0.9 time = 510
.meas tran vdout1_2ck101 FIND v(dout1_2) AT=510.025n

* CHECK dout1_3 Vdout1_3ck101 = 0.9 time = 510
.meas tran vdout1_3ck101 FIND v(dout1_3) AT=510.025n

* CHECK dout1_4 Vdout1_4ck101 = 0.9 time = 510
.meas tran vdout1_4ck101 FIND v(dout1_4) AT=510.025n

* CHECK dout1_5 Vdout1_5ck101 = 0 time = 510
.meas tran vdout1_5ck101 FIND v(dout1_5) AT=510.025n

* CHECK dout1_6 Vdout1_6ck101 = 0 time = 510
.meas tran vdout1_6ck101 FIND v(dout1_6) AT=510.025n

* CHECK dout1_7 Vdout1_7ck101 = 0.9 time = 510
.meas tran vdout1_7ck101 FIND v(dout1_7) AT=510.025n

* CHECK dout1_8 Vdout1_8ck101 = 0.9 time = 510
.meas tran vdout1_8ck101 FIND v(dout1_8) AT=510.025n

* CHECK dout1_9 Vdout1_9ck101 = 0 time = 510
.meas tran vdout1_9ck101 FIND v(dout1_9) AT=510.025n

* CHECK dout1_10 Vdout1_10ck101 = 0.9 time = 510
.meas tran vdout1_10ck101 FIND v(dout1_10) AT=510.025n

* CHECK dout1_11 Vdout1_11ck101 = 0 time = 510
.meas tran vdout1_11ck101 FIND v(dout1_11) AT=510.025n

* CHECK dout1_12 Vdout1_12ck101 = 0 time = 510
.meas tran vdout1_12ck101 FIND v(dout1_12) AT=510.025n

* CHECK dout1_13 Vdout1_13ck101 = 0 time = 510
.meas tran vdout1_13ck101 FIND v(dout1_13) AT=510.025n

* CHECK dout1_14 Vdout1_14ck101 = 0 time = 510
.meas tran vdout1_14ck101 FIND v(dout1_14) AT=510.025n

* CHECK dout1_15 Vdout1_15ck101 = 0.9 time = 510
.meas tran vdout1_15ck101 FIND v(dout1_15) AT=510.025n

* CHECK dout1_16 Vdout1_16ck101 = 0 time = 510
.meas tran vdout1_16ck101 FIND v(dout1_16) AT=510.025n

* CHECK dout1_17 Vdout1_17ck101 = 0 time = 510
.meas tran vdout1_17ck101 FIND v(dout1_17) AT=510.025n

* CHECK dout1_18 Vdout1_18ck101 = 0 time = 510
.meas tran vdout1_18ck101 FIND v(dout1_18) AT=510.025n

* CHECK dout1_19 Vdout1_19ck101 = 0.9 time = 510
.meas tran vdout1_19ck101 FIND v(dout1_19) AT=510.025n

* CHECK dout1_20 Vdout1_20ck101 = 0 time = 510
.meas tran vdout1_20ck101 FIND v(dout1_20) AT=510.025n

* CHECK dout1_21 Vdout1_21ck101 = 0 time = 510
.meas tran vdout1_21ck101 FIND v(dout1_21) AT=510.025n

* CHECK dout1_22 Vdout1_22ck101 = 0.9 time = 510
.meas tran vdout1_22ck101 FIND v(dout1_22) AT=510.025n

* CHECK dout1_23 Vdout1_23ck101 = 0 time = 510
.meas tran vdout1_23ck101 FIND v(dout1_23) AT=510.025n

* CHECK dout1_24 Vdout1_24ck101 = 0 time = 510
.meas tran vdout1_24ck101 FIND v(dout1_24) AT=510.025n

* CHECK dout1_25 Vdout1_25ck101 = 0 time = 510
.meas tran vdout1_25ck101 FIND v(dout1_25) AT=510.025n

* CHECK dout1_26 Vdout1_26ck101 = 0 time = 510
.meas tran vdout1_26ck101 FIND v(dout1_26) AT=510.025n

* CHECK dout1_27 Vdout1_27ck101 = 0 time = 510
.meas tran vdout1_27ck101 FIND v(dout1_27) AT=510.025n

* CHECK dout1_28 Vdout1_28ck101 = 0.9 time = 510
.meas tran vdout1_28ck101 FIND v(dout1_28) AT=510.025n

* CHECK dout1_29 Vdout1_29ck101 = 0 time = 510
.meas tran vdout1_29ck101 FIND v(dout1_29) AT=510.025n

* CHECK dout1_30 Vdout1_30ck101 = 0.9 time = 510
.meas tran vdout1_30ck101 FIND v(dout1_30) AT=510.025n

* CHECK dout1_31 Vdout1_31ck101 = 0 time = 510
.meas tran vdout1_31ck101 FIND v(dout1_31) AT=510.025n

* CHECK dout1_0 Vdout1_0ck103 = 0 time = 520
.meas tran vdout1_0ck103 FIND v(dout1_0) AT=520.025n

* CHECK dout1_1 Vdout1_1ck103 = 0 time = 520
.meas tran vdout1_1ck103 FIND v(dout1_1) AT=520.025n

* CHECK dout1_2 Vdout1_2ck103 = 0.9 time = 520
.meas tran vdout1_2ck103 FIND v(dout1_2) AT=520.025n

* CHECK dout1_3 Vdout1_3ck103 = 0 time = 520
.meas tran vdout1_3ck103 FIND v(dout1_3) AT=520.025n

* CHECK dout1_4 Vdout1_4ck103 = 0.9 time = 520
.meas tran vdout1_4ck103 FIND v(dout1_4) AT=520.025n

* CHECK dout1_5 Vdout1_5ck103 = 0.9 time = 520
.meas tran vdout1_5ck103 FIND v(dout1_5) AT=520.025n

* CHECK dout1_6 Vdout1_6ck103 = 0 time = 520
.meas tran vdout1_6ck103 FIND v(dout1_6) AT=520.025n

* CHECK dout1_7 Vdout1_7ck103 = 0 time = 520
.meas tran vdout1_7ck103 FIND v(dout1_7) AT=520.025n

* CHECK dout1_8 Vdout1_8ck103 = 0 time = 520
.meas tran vdout1_8ck103 FIND v(dout1_8) AT=520.025n

* CHECK dout1_9 Vdout1_9ck103 = 0.9 time = 520
.meas tran vdout1_9ck103 FIND v(dout1_9) AT=520.025n

* CHECK dout1_10 Vdout1_10ck103 = 0.9 time = 520
.meas tran vdout1_10ck103 FIND v(dout1_10) AT=520.025n

* CHECK dout1_11 Vdout1_11ck103 = 0 time = 520
.meas tran vdout1_11ck103 FIND v(dout1_11) AT=520.025n

* CHECK dout1_12 Vdout1_12ck103 = 0 time = 520
.meas tran vdout1_12ck103 FIND v(dout1_12) AT=520.025n

* CHECK dout1_13 Vdout1_13ck103 = 0.9 time = 520
.meas tran vdout1_13ck103 FIND v(dout1_13) AT=520.025n

* CHECK dout1_14 Vdout1_14ck103 = 0 time = 520
.meas tran vdout1_14ck103 FIND v(dout1_14) AT=520.025n

* CHECK dout1_15 Vdout1_15ck103 = 0.9 time = 520
.meas tran vdout1_15ck103 FIND v(dout1_15) AT=520.025n

* CHECK dout1_16 Vdout1_16ck103 = 0.9 time = 520
.meas tran vdout1_16ck103 FIND v(dout1_16) AT=520.025n

* CHECK dout1_17 Vdout1_17ck103 = 0.9 time = 520
.meas tran vdout1_17ck103 FIND v(dout1_17) AT=520.025n

* CHECK dout1_18 Vdout1_18ck103 = 0.9 time = 520
.meas tran vdout1_18ck103 FIND v(dout1_18) AT=520.025n

* CHECK dout1_19 Vdout1_19ck103 = 0.9 time = 520
.meas tran vdout1_19ck103 FIND v(dout1_19) AT=520.025n

* CHECK dout1_20 Vdout1_20ck103 = 0.9 time = 520
.meas tran vdout1_20ck103 FIND v(dout1_20) AT=520.025n

* CHECK dout1_21 Vdout1_21ck103 = 0 time = 520
.meas tran vdout1_21ck103 FIND v(dout1_21) AT=520.025n

* CHECK dout1_22 Vdout1_22ck103 = 0.9 time = 520
.meas tran vdout1_22ck103 FIND v(dout1_22) AT=520.025n

* CHECK dout1_23 Vdout1_23ck103 = 0.9 time = 520
.meas tran vdout1_23ck103 FIND v(dout1_23) AT=520.025n

* CHECK dout1_24 Vdout1_24ck103 = 0 time = 520
.meas tran vdout1_24ck103 FIND v(dout1_24) AT=520.025n

* CHECK dout1_25 Vdout1_25ck103 = 0.9 time = 520
.meas tran vdout1_25ck103 FIND v(dout1_25) AT=520.025n

* CHECK dout1_26 Vdout1_26ck103 = 0 time = 520
.meas tran vdout1_26ck103 FIND v(dout1_26) AT=520.025n

* CHECK dout1_27 Vdout1_27ck103 = 0 time = 520
.meas tran vdout1_27ck103 FIND v(dout1_27) AT=520.025n

* CHECK dout1_28 Vdout1_28ck103 = 0.9 time = 520
.meas tran vdout1_28ck103 FIND v(dout1_28) AT=520.025n

* CHECK dout1_29 Vdout1_29ck103 = 0.9 time = 520
.meas tran vdout1_29ck103 FIND v(dout1_29) AT=520.025n

* CHECK dout1_30 Vdout1_30ck103 = 0.9 time = 520
.meas tran vdout1_30ck103 FIND v(dout1_30) AT=520.025n

* CHECK dout1_31 Vdout1_31ck103 = 0 time = 520
.meas tran vdout1_31ck103 FIND v(dout1_31) AT=520.025n

* CHECK dout1_0 Vdout1_0ck105 = 0 time = 530
.meas tran vdout1_0ck105 FIND v(dout1_0) AT=530.025n

* CHECK dout1_1 Vdout1_1ck105 = 0 time = 530
.meas tran vdout1_1ck105 FIND v(dout1_1) AT=530.025n

* CHECK dout1_2 Vdout1_2ck105 = 0.9 time = 530
.meas tran vdout1_2ck105 FIND v(dout1_2) AT=530.025n

* CHECK dout1_3 Vdout1_3ck105 = 0 time = 530
.meas tran vdout1_3ck105 FIND v(dout1_3) AT=530.025n

* CHECK dout1_4 Vdout1_4ck105 = 0.9 time = 530
.meas tran vdout1_4ck105 FIND v(dout1_4) AT=530.025n

* CHECK dout1_5 Vdout1_5ck105 = 0.9 time = 530
.meas tran vdout1_5ck105 FIND v(dout1_5) AT=530.025n

* CHECK dout1_6 Vdout1_6ck105 = 0 time = 530
.meas tran vdout1_6ck105 FIND v(dout1_6) AT=530.025n

* CHECK dout1_7 Vdout1_7ck105 = 0 time = 530
.meas tran vdout1_7ck105 FIND v(dout1_7) AT=530.025n

* CHECK dout1_8 Vdout1_8ck105 = 0 time = 530
.meas tran vdout1_8ck105 FIND v(dout1_8) AT=530.025n

* CHECK dout1_9 Vdout1_9ck105 = 0.9 time = 530
.meas tran vdout1_9ck105 FIND v(dout1_9) AT=530.025n

* CHECK dout1_10 Vdout1_10ck105 = 0.9 time = 530
.meas tran vdout1_10ck105 FIND v(dout1_10) AT=530.025n

* CHECK dout1_11 Vdout1_11ck105 = 0 time = 530
.meas tran vdout1_11ck105 FIND v(dout1_11) AT=530.025n

* CHECK dout1_12 Vdout1_12ck105 = 0 time = 530
.meas tran vdout1_12ck105 FIND v(dout1_12) AT=530.025n

* CHECK dout1_13 Vdout1_13ck105 = 0.9 time = 530
.meas tran vdout1_13ck105 FIND v(dout1_13) AT=530.025n

* CHECK dout1_14 Vdout1_14ck105 = 0 time = 530
.meas tran vdout1_14ck105 FIND v(dout1_14) AT=530.025n

* CHECK dout1_15 Vdout1_15ck105 = 0.9 time = 530
.meas tran vdout1_15ck105 FIND v(dout1_15) AT=530.025n

* CHECK dout1_16 Vdout1_16ck105 = 0.9 time = 530
.meas tran vdout1_16ck105 FIND v(dout1_16) AT=530.025n

* CHECK dout1_17 Vdout1_17ck105 = 0.9 time = 530
.meas tran vdout1_17ck105 FIND v(dout1_17) AT=530.025n

* CHECK dout1_18 Vdout1_18ck105 = 0.9 time = 530
.meas tran vdout1_18ck105 FIND v(dout1_18) AT=530.025n

* CHECK dout1_19 Vdout1_19ck105 = 0.9 time = 530
.meas tran vdout1_19ck105 FIND v(dout1_19) AT=530.025n

* CHECK dout1_20 Vdout1_20ck105 = 0.9 time = 530
.meas tran vdout1_20ck105 FIND v(dout1_20) AT=530.025n

* CHECK dout1_21 Vdout1_21ck105 = 0 time = 530
.meas tran vdout1_21ck105 FIND v(dout1_21) AT=530.025n

* CHECK dout1_22 Vdout1_22ck105 = 0.9 time = 530
.meas tran vdout1_22ck105 FIND v(dout1_22) AT=530.025n

* CHECK dout1_23 Vdout1_23ck105 = 0.9 time = 530
.meas tran vdout1_23ck105 FIND v(dout1_23) AT=530.025n

* CHECK dout1_24 Vdout1_24ck105 = 0 time = 530
.meas tran vdout1_24ck105 FIND v(dout1_24) AT=530.025n

* CHECK dout1_25 Vdout1_25ck105 = 0.9 time = 530
.meas tran vdout1_25ck105 FIND v(dout1_25) AT=530.025n

* CHECK dout1_26 Vdout1_26ck105 = 0 time = 530
.meas tran vdout1_26ck105 FIND v(dout1_26) AT=530.025n

* CHECK dout1_27 Vdout1_27ck105 = 0 time = 530
.meas tran vdout1_27ck105 FIND v(dout1_27) AT=530.025n

* CHECK dout1_28 Vdout1_28ck105 = 0.9 time = 530
.meas tran vdout1_28ck105 FIND v(dout1_28) AT=530.025n

* CHECK dout1_29 Vdout1_29ck105 = 0.9 time = 530
.meas tran vdout1_29ck105 FIND v(dout1_29) AT=530.025n

* CHECK dout1_30 Vdout1_30ck105 = 0.9 time = 530
.meas tran vdout1_30ck105 FIND v(dout1_30) AT=530.025n

* CHECK dout1_31 Vdout1_31ck105 = 0 time = 530
.meas tran vdout1_31ck105 FIND v(dout1_31) AT=530.025n

* CHECK dout1_0 Vdout1_0ck107 = 0.9 time = 540
.meas tran vdout1_0ck107 FIND v(dout1_0) AT=540.025n

* CHECK dout1_1 Vdout1_1ck107 = 0 time = 540
.meas tran vdout1_1ck107 FIND v(dout1_1) AT=540.025n

* CHECK dout1_2 Vdout1_2ck107 = 0.9 time = 540
.meas tran vdout1_2ck107 FIND v(dout1_2) AT=540.025n

* CHECK dout1_3 Vdout1_3ck107 = 0 time = 540
.meas tran vdout1_3ck107 FIND v(dout1_3) AT=540.025n

* CHECK dout1_4 Vdout1_4ck107 = 0 time = 540
.meas tran vdout1_4ck107 FIND v(dout1_4) AT=540.025n

* CHECK dout1_5 Vdout1_5ck107 = 0 time = 540
.meas tran vdout1_5ck107 FIND v(dout1_5) AT=540.025n

* CHECK dout1_6 Vdout1_6ck107 = 0.9 time = 540
.meas tran vdout1_6ck107 FIND v(dout1_6) AT=540.025n

* CHECK dout1_7 Vdout1_7ck107 = 0 time = 540
.meas tran vdout1_7ck107 FIND v(dout1_7) AT=540.025n

* CHECK dout1_8 Vdout1_8ck107 = 0.9 time = 540
.meas tran vdout1_8ck107 FIND v(dout1_8) AT=540.025n

* CHECK dout1_9 Vdout1_9ck107 = 0 time = 540
.meas tran vdout1_9ck107 FIND v(dout1_9) AT=540.025n

* CHECK dout1_10 Vdout1_10ck107 = 0.9 time = 540
.meas tran vdout1_10ck107 FIND v(dout1_10) AT=540.025n

* CHECK dout1_11 Vdout1_11ck107 = 0.9 time = 540
.meas tran vdout1_11ck107 FIND v(dout1_11) AT=540.025n

* CHECK dout1_12 Vdout1_12ck107 = 0.9 time = 540
.meas tran vdout1_12ck107 FIND v(dout1_12) AT=540.025n

* CHECK dout1_13 Vdout1_13ck107 = 0 time = 540
.meas tran vdout1_13ck107 FIND v(dout1_13) AT=540.025n

* CHECK dout1_14 Vdout1_14ck107 = 0 time = 540
.meas tran vdout1_14ck107 FIND v(dout1_14) AT=540.025n

* CHECK dout1_15 Vdout1_15ck107 = 0.9 time = 540
.meas tran vdout1_15ck107 FIND v(dout1_15) AT=540.025n

* CHECK dout1_16 Vdout1_16ck107 = 0.9 time = 540
.meas tran vdout1_16ck107 FIND v(dout1_16) AT=540.025n

* CHECK dout1_17 Vdout1_17ck107 = 0.9 time = 540
.meas tran vdout1_17ck107 FIND v(dout1_17) AT=540.025n

* CHECK dout1_18 Vdout1_18ck107 = 0 time = 540
.meas tran vdout1_18ck107 FIND v(dout1_18) AT=540.025n

* CHECK dout1_19 Vdout1_19ck107 = 0.9 time = 540
.meas tran vdout1_19ck107 FIND v(dout1_19) AT=540.025n

* CHECK dout1_20 Vdout1_20ck107 = 0.9 time = 540
.meas tran vdout1_20ck107 FIND v(dout1_20) AT=540.025n

* CHECK dout1_21 Vdout1_21ck107 = 0.9 time = 540
.meas tran vdout1_21ck107 FIND v(dout1_21) AT=540.025n

* CHECK dout1_22 Vdout1_22ck107 = 0.9 time = 540
.meas tran vdout1_22ck107 FIND v(dout1_22) AT=540.025n

* CHECK dout1_23 Vdout1_23ck107 = 0.9 time = 540
.meas tran vdout1_23ck107 FIND v(dout1_23) AT=540.025n

* CHECK dout1_24 Vdout1_24ck107 = 0.9 time = 540
.meas tran vdout1_24ck107 FIND v(dout1_24) AT=540.025n

* CHECK dout1_25 Vdout1_25ck107 = 0 time = 540
.meas tran vdout1_25ck107 FIND v(dout1_25) AT=540.025n

* CHECK dout1_26 Vdout1_26ck107 = 0.9 time = 540
.meas tran vdout1_26ck107 FIND v(dout1_26) AT=540.025n

* CHECK dout1_27 Vdout1_27ck107 = 0 time = 540
.meas tran vdout1_27ck107 FIND v(dout1_27) AT=540.025n

* CHECK dout1_28 Vdout1_28ck107 = 0.9 time = 540
.meas tran vdout1_28ck107 FIND v(dout1_28) AT=540.025n

* CHECK dout1_29 Vdout1_29ck107 = 0.9 time = 540
.meas tran vdout1_29ck107 FIND v(dout1_29) AT=540.025n

* CHECK dout1_30 Vdout1_30ck107 = 0 time = 540
.meas tran vdout1_30ck107 FIND v(dout1_30) AT=540.025n

* CHECK dout1_31 Vdout1_31ck107 = 0.9 time = 540
.meas tran vdout1_31ck107 FIND v(dout1_31) AT=540.025n

* CHECK dout1_0 Vdout1_0ck110 = 0 time = 555
.meas tran vdout1_0ck110 FIND v(dout1_0) AT=555.025n

* CHECK dout1_1 Vdout1_1ck110 = 0 time = 555
.meas tran vdout1_1ck110 FIND v(dout1_1) AT=555.025n

* CHECK dout1_2 Vdout1_2ck110 = 0.9 time = 555
.meas tran vdout1_2ck110 FIND v(dout1_2) AT=555.025n

* CHECK dout1_3 Vdout1_3ck110 = 0.9 time = 555
.meas tran vdout1_3ck110 FIND v(dout1_3) AT=555.025n

* CHECK dout1_4 Vdout1_4ck110 = 0 time = 555
.meas tran vdout1_4ck110 FIND v(dout1_4) AT=555.025n

* CHECK dout1_5 Vdout1_5ck110 = 0 time = 555
.meas tran vdout1_5ck110 FIND v(dout1_5) AT=555.025n

* CHECK dout1_6 Vdout1_6ck110 = 0 time = 555
.meas tran vdout1_6ck110 FIND v(dout1_6) AT=555.025n

* CHECK dout1_7 Vdout1_7ck110 = 0.9 time = 555
.meas tran vdout1_7ck110 FIND v(dout1_7) AT=555.025n

* CHECK dout1_8 Vdout1_8ck110 = 0.9 time = 555
.meas tran vdout1_8ck110 FIND v(dout1_8) AT=555.025n

* CHECK dout1_9 Vdout1_9ck110 = 0 time = 555
.meas tran vdout1_9ck110 FIND v(dout1_9) AT=555.025n

* CHECK dout1_10 Vdout1_10ck110 = 0.9 time = 555
.meas tran vdout1_10ck110 FIND v(dout1_10) AT=555.025n

* CHECK dout1_11 Vdout1_11ck110 = 0 time = 555
.meas tran vdout1_11ck110 FIND v(dout1_11) AT=555.025n

* CHECK dout1_12 Vdout1_12ck110 = 0.9 time = 555
.meas tran vdout1_12ck110 FIND v(dout1_12) AT=555.025n

* CHECK dout1_13 Vdout1_13ck110 = 0 time = 555
.meas tran vdout1_13ck110 FIND v(dout1_13) AT=555.025n

* CHECK dout1_14 Vdout1_14ck110 = 0.9 time = 555
.meas tran vdout1_14ck110 FIND v(dout1_14) AT=555.025n

* CHECK dout1_15 Vdout1_15ck110 = 0.9 time = 555
.meas tran vdout1_15ck110 FIND v(dout1_15) AT=555.025n

* CHECK dout1_16 Vdout1_16ck110 = 0 time = 555
.meas tran vdout1_16ck110 FIND v(dout1_16) AT=555.025n

* CHECK dout1_17 Vdout1_17ck110 = 0 time = 555
.meas tran vdout1_17ck110 FIND v(dout1_17) AT=555.025n

* CHECK dout1_18 Vdout1_18ck110 = 0 time = 555
.meas tran vdout1_18ck110 FIND v(dout1_18) AT=555.025n

* CHECK dout1_19 Vdout1_19ck110 = 0 time = 555
.meas tran vdout1_19ck110 FIND v(dout1_19) AT=555.025n

* CHECK dout1_20 Vdout1_20ck110 = 0 time = 555
.meas tran vdout1_20ck110 FIND v(dout1_20) AT=555.025n

* CHECK dout1_21 Vdout1_21ck110 = 0 time = 555
.meas tran vdout1_21ck110 FIND v(dout1_21) AT=555.025n

* CHECK dout1_22 Vdout1_22ck110 = 0.9 time = 555
.meas tran vdout1_22ck110 FIND v(dout1_22) AT=555.025n

* CHECK dout1_23 Vdout1_23ck110 = 0.9 time = 555
.meas tran vdout1_23ck110 FIND v(dout1_23) AT=555.025n

* CHECK dout1_24 Vdout1_24ck110 = 0 time = 555
.meas tran vdout1_24ck110 FIND v(dout1_24) AT=555.025n

* CHECK dout1_25 Vdout1_25ck110 = 0.9 time = 555
.meas tran vdout1_25ck110 FIND v(dout1_25) AT=555.025n

* CHECK dout1_26 Vdout1_26ck110 = 0 time = 555
.meas tran vdout1_26ck110 FIND v(dout1_26) AT=555.025n

* CHECK dout1_27 Vdout1_27ck110 = 0 time = 555
.meas tran vdout1_27ck110 FIND v(dout1_27) AT=555.025n

* CHECK dout1_28 Vdout1_28ck110 = 0 time = 555
.meas tran vdout1_28ck110 FIND v(dout1_28) AT=555.025n

* CHECK dout1_29 Vdout1_29ck110 = 0 time = 555
.meas tran vdout1_29ck110 FIND v(dout1_29) AT=555.025n

* CHECK dout1_30 Vdout1_30ck110 = 0.9 time = 555
.meas tran vdout1_30ck110 FIND v(dout1_30) AT=555.025n

* CHECK dout1_31 Vdout1_31ck110 = 0 time = 555
.meas tran vdout1_31ck110 FIND v(dout1_31) AT=555.025n

* CHECK dout1_0 Vdout1_0ck111 = 0.9 time = 560
.meas tran vdout1_0ck111 FIND v(dout1_0) AT=560.025n

* CHECK dout1_1 Vdout1_1ck111 = 0.9 time = 560
.meas tran vdout1_1ck111 FIND v(dout1_1) AT=560.025n

* CHECK dout1_2 Vdout1_2ck111 = 0.9 time = 560
.meas tran vdout1_2ck111 FIND v(dout1_2) AT=560.025n

* CHECK dout1_3 Vdout1_3ck111 = 0 time = 560
.meas tran vdout1_3ck111 FIND v(dout1_3) AT=560.025n

* CHECK dout1_4 Vdout1_4ck111 = 0.9 time = 560
.meas tran vdout1_4ck111 FIND v(dout1_4) AT=560.025n

* CHECK dout1_5 Vdout1_5ck111 = 0 time = 560
.meas tran vdout1_5ck111 FIND v(dout1_5) AT=560.025n

* CHECK dout1_6 Vdout1_6ck111 = 0 time = 560
.meas tran vdout1_6ck111 FIND v(dout1_6) AT=560.025n

* CHECK dout1_7 Vdout1_7ck111 = 0.9 time = 560
.meas tran vdout1_7ck111 FIND v(dout1_7) AT=560.025n

* CHECK dout1_8 Vdout1_8ck111 = 0.9 time = 560
.meas tran vdout1_8ck111 FIND v(dout1_8) AT=560.025n

* CHECK dout1_9 Vdout1_9ck111 = 0 time = 560
.meas tran vdout1_9ck111 FIND v(dout1_9) AT=560.025n

* CHECK dout1_10 Vdout1_10ck111 = 0.9 time = 560
.meas tran vdout1_10ck111 FIND v(dout1_10) AT=560.025n

* CHECK dout1_11 Vdout1_11ck111 = 0 time = 560
.meas tran vdout1_11ck111 FIND v(dout1_11) AT=560.025n

* CHECK dout1_12 Vdout1_12ck111 = 0.9 time = 560
.meas tran vdout1_12ck111 FIND v(dout1_12) AT=560.025n

* CHECK dout1_13 Vdout1_13ck111 = 0.9 time = 560
.meas tran vdout1_13ck111 FIND v(dout1_13) AT=560.025n

* CHECK dout1_14 Vdout1_14ck111 = 0.9 time = 560
.meas tran vdout1_14ck111 FIND v(dout1_14) AT=560.025n

* CHECK dout1_15 Vdout1_15ck111 = 0 time = 560
.meas tran vdout1_15ck111 FIND v(dout1_15) AT=560.025n

* CHECK dout1_16 Vdout1_16ck111 = 0 time = 560
.meas tran vdout1_16ck111 FIND v(dout1_16) AT=560.025n

* CHECK dout1_17 Vdout1_17ck111 = 0 time = 560
.meas tran vdout1_17ck111 FIND v(dout1_17) AT=560.025n

* CHECK dout1_18 Vdout1_18ck111 = 0 time = 560
.meas tran vdout1_18ck111 FIND v(dout1_18) AT=560.025n

* CHECK dout1_19 Vdout1_19ck111 = 0.9 time = 560
.meas tran vdout1_19ck111 FIND v(dout1_19) AT=560.025n

* CHECK dout1_20 Vdout1_20ck111 = 0 time = 560
.meas tran vdout1_20ck111 FIND v(dout1_20) AT=560.025n

* CHECK dout1_21 Vdout1_21ck111 = 0 time = 560
.meas tran vdout1_21ck111 FIND v(dout1_21) AT=560.025n

* CHECK dout1_22 Vdout1_22ck111 = 0 time = 560
.meas tran vdout1_22ck111 FIND v(dout1_22) AT=560.025n

* CHECK dout1_23 Vdout1_23ck111 = 0.9 time = 560
.meas tran vdout1_23ck111 FIND v(dout1_23) AT=560.025n

* CHECK dout1_24 Vdout1_24ck111 = 0 time = 560
.meas tran vdout1_24ck111 FIND v(dout1_24) AT=560.025n

* CHECK dout1_25 Vdout1_25ck111 = 0.9 time = 560
.meas tran vdout1_25ck111 FIND v(dout1_25) AT=560.025n

* CHECK dout1_26 Vdout1_26ck111 = 0.9 time = 560
.meas tran vdout1_26ck111 FIND v(dout1_26) AT=560.025n

* CHECK dout1_27 Vdout1_27ck111 = 0.9 time = 560
.meas tran vdout1_27ck111 FIND v(dout1_27) AT=560.025n

* CHECK dout1_28 Vdout1_28ck111 = 0.9 time = 560
.meas tran vdout1_28ck111 FIND v(dout1_28) AT=560.025n

* CHECK dout1_29 Vdout1_29ck111 = 0.9 time = 560
.meas tran vdout1_29ck111 FIND v(dout1_29) AT=560.025n

* CHECK dout1_30 Vdout1_30ck111 = 0.9 time = 560
.meas tran vdout1_30ck111 FIND v(dout1_30) AT=560.025n

* CHECK dout1_31 Vdout1_31ck111 = 0.9 time = 560
.meas tran vdout1_31ck111 FIND v(dout1_31) AT=560.025n

* CHECK dout1_0 Vdout1_0ck113 = 0.9 time = 570
.meas tran vdout1_0ck113 FIND v(dout1_0) AT=570.025n

* CHECK dout1_1 Vdout1_1ck113 = 0.9 time = 570
.meas tran vdout1_1ck113 FIND v(dout1_1) AT=570.025n

* CHECK dout1_2 Vdout1_2ck113 = 0.9 time = 570
.meas tran vdout1_2ck113 FIND v(dout1_2) AT=570.025n

* CHECK dout1_3 Vdout1_3ck113 = 0 time = 570
.meas tran vdout1_3ck113 FIND v(dout1_3) AT=570.025n

* CHECK dout1_4 Vdout1_4ck113 = 0.9 time = 570
.meas tran vdout1_4ck113 FIND v(dout1_4) AT=570.025n

* CHECK dout1_5 Vdout1_5ck113 = 0 time = 570
.meas tran vdout1_5ck113 FIND v(dout1_5) AT=570.025n

* CHECK dout1_6 Vdout1_6ck113 = 0 time = 570
.meas tran vdout1_6ck113 FIND v(dout1_6) AT=570.025n

* CHECK dout1_7 Vdout1_7ck113 = 0.9 time = 570
.meas tran vdout1_7ck113 FIND v(dout1_7) AT=570.025n

* CHECK dout1_8 Vdout1_8ck113 = 0.9 time = 570
.meas tran vdout1_8ck113 FIND v(dout1_8) AT=570.025n

* CHECK dout1_9 Vdout1_9ck113 = 0 time = 570
.meas tran vdout1_9ck113 FIND v(dout1_9) AT=570.025n

* CHECK dout1_10 Vdout1_10ck113 = 0.9 time = 570
.meas tran vdout1_10ck113 FIND v(dout1_10) AT=570.025n

* CHECK dout1_11 Vdout1_11ck113 = 0 time = 570
.meas tran vdout1_11ck113 FIND v(dout1_11) AT=570.025n

* CHECK dout1_12 Vdout1_12ck113 = 0.9 time = 570
.meas tran vdout1_12ck113 FIND v(dout1_12) AT=570.025n

* CHECK dout1_13 Vdout1_13ck113 = 0.9 time = 570
.meas tran vdout1_13ck113 FIND v(dout1_13) AT=570.025n

* CHECK dout1_14 Vdout1_14ck113 = 0.9 time = 570
.meas tran vdout1_14ck113 FIND v(dout1_14) AT=570.025n

* CHECK dout1_15 Vdout1_15ck113 = 0 time = 570
.meas tran vdout1_15ck113 FIND v(dout1_15) AT=570.025n

* CHECK dout1_16 Vdout1_16ck113 = 0 time = 570
.meas tran vdout1_16ck113 FIND v(dout1_16) AT=570.025n

* CHECK dout1_17 Vdout1_17ck113 = 0 time = 570
.meas tran vdout1_17ck113 FIND v(dout1_17) AT=570.025n

* CHECK dout1_18 Vdout1_18ck113 = 0 time = 570
.meas tran vdout1_18ck113 FIND v(dout1_18) AT=570.025n

* CHECK dout1_19 Vdout1_19ck113 = 0.9 time = 570
.meas tran vdout1_19ck113 FIND v(dout1_19) AT=570.025n

* CHECK dout1_20 Vdout1_20ck113 = 0 time = 570
.meas tran vdout1_20ck113 FIND v(dout1_20) AT=570.025n

* CHECK dout1_21 Vdout1_21ck113 = 0 time = 570
.meas tran vdout1_21ck113 FIND v(dout1_21) AT=570.025n

* CHECK dout1_22 Vdout1_22ck113 = 0 time = 570
.meas tran vdout1_22ck113 FIND v(dout1_22) AT=570.025n

* CHECK dout1_23 Vdout1_23ck113 = 0.9 time = 570
.meas tran vdout1_23ck113 FIND v(dout1_23) AT=570.025n

* CHECK dout1_24 Vdout1_24ck113 = 0 time = 570
.meas tran vdout1_24ck113 FIND v(dout1_24) AT=570.025n

* CHECK dout1_25 Vdout1_25ck113 = 0.9 time = 570
.meas tran vdout1_25ck113 FIND v(dout1_25) AT=570.025n

* CHECK dout1_26 Vdout1_26ck113 = 0.9 time = 570
.meas tran vdout1_26ck113 FIND v(dout1_26) AT=570.025n

* CHECK dout1_27 Vdout1_27ck113 = 0.9 time = 570
.meas tran vdout1_27ck113 FIND v(dout1_27) AT=570.025n

* CHECK dout1_28 Vdout1_28ck113 = 0.9 time = 570
.meas tran vdout1_28ck113 FIND v(dout1_28) AT=570.025n

* CHECK dout1_29 Vdout1_29ck113 = 0.9 time = 570
.meas tran vdout1_29ck113 FIND v(dout1_29) AT=570.025n

* CHECK dout1_30 Vdout1_30ck113 = 0.9 time = 570
.meas tran vdout1_30ck113 FIND v(dout1_30) AT=570.025n

* CHECK dout1_31 Vdout1_31ck113 = 0.9 time = 570
.meas tran vdout1_31ck113 FIND v(dout1_31) AT=570.025n

* CHECK dout1_0 Vdout1_0ck115 = 0 time = 580
.meas tran vdout1_0ck115 FIND v(dout1_0) AT=580.025n

* CHECK dout1_1 Vdout1_1ck115 = 0.9 time = 580
.meas tran vdout1_1ck115 FIND v(dout1_1) AT=580.025n

* CHECK dout1_2 Vdout1_2ck115 = 0 time = 580
.meas tran vdout1_2ck115 FIND v(dout1_2) AT=580.025n

* CHECK dout1_3 Vdout1_3ck115 = 0 time = 580
.meas tran vdout1_3ck115 FIND v(dout1_3) AT=580.025n

* CHECK dout1_4 Vdout1_4ck115 = 0.9 time = 580
.meas tran vdout1_4ck115 FIND v(dout1_4) AT=580.025n

* CHECK dout1_5 Vdout1_5ck115 = 0.9 time = 580
.meas tran vdout1_5ck115 FIND v(dout1_5) AT=580.025n

* CHECK dout1_6 Vdout1_6ck115 = 0 time = 580
.meas tran vdout1_6ck115 FIND v(dout1_6) AT=580.025n

* CHECK dout1_7 Vdout1_7ck115 = 0.9 time = 580
.meas tran vdout1_7ck115 FIND v(dout1_7) AT=580.025n

* CHECK dout1_8 Vdout1_8ck115 = 0.9 time = 580
.meas tran vdout1_8ck115 FIND v(dout1_8) AT=580.025n

* CHECK dout1_9 Vdout1_9ck115 = 0 time = 580
.meas tran vdout1_9ck115 FIND v(dout1_9) AT=580.025n

* CHECK dout1_10 Vdout1_10ck115 = 0.9 time = 580
.meas tran vdout1_10ck115 FIND v(dout1_10) AT=580.025n

* CHECK dout1_11 Vdout1_11ck115 = 0.9 time = 580
.meas tran vdout1_11ck115 FIND v(dout1_11) AT=580.025n

* CHECK dout1_12 Vdout1_12ck115 = 0.9 time = 580
.meas tran vdout1_12ck115 FIND v(dout1_12) AT=580.025n

* CHECK dout1_13 Vdout1_13ck115 = 0.9 time = 580
.meas tran vdout1_13ck115 FIND v(dout1_13) AT=580.025n

* CHECK dout1_14 Vdout1_14ck115 = 0.9 time = 580
.meas tran vdout1_14ck115 FIND v(dout1_14) AT=580.025n

* CHECK dout1_15 Vdout1_15ck115 = 0.9 time = 580
.meas tran vdout1_15ck115 FIND v(dout1_15) AT=580.025n

* CHECK dout1_16 Vdout1_16ck115 = 0.9 time = 580
.meas tran vdout1_16ck115 FIND v(dout1_16) AT=580.025n

* CHECK dout1_17 Vdout1_17ck115 = 0.9 time = 580
.meas tran vdout1_17ck115 FIND v(dout1_17) AT=580.025n

* CHECK dout1_18 Vdout1_18ck115 = 0.9 time = 580
.meas tran vdout1_18ck115 FIND v(dout1_18) AT=580.025n

* CHECK dout1_19 Vdout1_19ck115 = 0.9 time = 580
.meas tran vdout1_19ck115 FIND v(dout1_19) AT=580.025n

* CHECK dout1_20 Vdout1_20ck115 = 0 time = 580
.meas tran vdout1_20ck115 FIND v(dout1_20) AT=580.025n

* CHECK dout1_21 Vdout1_21ck115 = 0 time = 580
.meas tran vdout1_21ck115 FIND v(dout1_21) AT=580.025n

* CHECK dout1_22 Vdout1_22ck115 = 0.9 time = 580
.meas tran vdout1_22ck115 FIND v(dout1_22) AT=580.025n

* CHECK dout1_23 Vdout1_23ck115 = 0 time = 580
.meas tran vdout1_23ck115 FIND v(dout1_23) AT=580.025n

* CHECK dout1_24 Vdout1_24ck115 = 0 time = 580
.meas tran vdout1_24ck115 FIND v(dout1_24) AT=580.025n

* CHECK dout1_25 Vdout1_25ck115 = 0.9 time = 580
.meas tran vdout1_25ck115 FIND v(dout1_25) AT=580.025n

* CHECK dout1_26 Vdout1_26ck115 = 0 time = 580
.meas tran vdout1_26ck115 FIND v(dout1_26) AT=580.025n

* CHECK dout1_27 Vdout1_27ck115 = 0.9 time = 580
.meas tran vdout1_27ck115 FIND v(dout1_27) AT=580.025n

* CHECK dout1_28 Vdout1_28ck115 = 0.9 time = 580
.meas tran vdout1_28ck115 FIND v(dout1_28) AT=580.025n

* CHECK dout1_29 Vdout1_29ck115 = 0.9 time = 580
.meas tran vdout1_29ck115 FIND v(dout1_29) AT=580.025n

* CHECK dout1_30 Vdout1_30ck115 = 0 time = 580
.meas tran vdout1_30ck115 FIND v(dout1_30) AT=580.025n

* CHECK dout1_31 Vdout1_31ck115 = 0.9 time = 580
.meas tran vdout1_31ck115 FIND v(dout1_31) AT=580.025n

* CHECK dout1_0 Vdout1_0ck121 = 0 time = 610
.meas tran vdout1_0ck121 FIND v(dout1_0) AT=610.025n

* CHECK dout1_1 Vdout1_1ck121 = 0.9 time = 610
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

* CHECK dout1_8 Vdout1_8ck121 = 0.9 time = 610
.meas tran vdout1_8ck121 FIND v(dout1_8) AT=610.025n

* CHECK dout1_9 Vdout1_9ck121 = 0 time = 610
.meas tran vdout1_9ck121 FIND v(dout1_9) AT=610.025n

* CHECK dout1_10 Vdout1_10ck121 = 0.9 time = 610
.meas tran vdout1_10ck121 FIND v(dout1_10) AT=610.025n

* CHECK dout1_11 Vdout1_11ck121 = 0.9 time = 610
.meas tran vdout1_11ck121 FIND v(dout1_11) AT=610.025n

* CHECK dout1_12 Vdout1_12ck121 = 0.9 time = 610
.meas tran vdout1_12ck121 FIND v(dout1_12) AT=610.025n

* CHECK dout1_13 Vdout1_13ck121 = 0.9 time = 610
.meas tran vdout1_13ck121 FIND v(dout1_13) AT=610.025n

* CHECK dout1_14 Vdout1_14ck121 = 0.9 time = 610
.meas tran vdout1_14ck121 FIND v(dout1_14) AT=610.025n

* CHECK dout1_15 Vdout1_15ck121 = 0.9 time = 610
.meas tran vdout1_15ck121 FIND v(dout1_15) AT=610.025n

* CHECK dout1_16 Vdout1_16ck121 = 0.9 time = 610
.meas tran vdout1_16ck121 FIND v(dout1_16) AT=610.025n

* CHECK dout1_17 Vdout1_17ck121 = 0.9 time = 610
.meas tran vdout1_17ck121 FIND v(dout1_17) AT=610.025n

* CHECK dout1_18 Vdout1_18ck121 = 0.9 time = 610
.meas tran vdout1_18ck121 FIND v(dout1_18) AT=610.025n

* CHECK dout1_19 Vdout1_19ck121 = 0.9 time = 610
.meas tran vdout1_19ck121 FIND v(dout1_19) AT=610.025n

* CHECK dout1_20 Vdout1_20ck121 = 0 time = 610
.meas tran vdout1_20ck121 FIND v(dout1_20) AT=610.025n

* CHECK dout1_21 Vdout1_21ck121 = 0 time = 610
.meas tran vdout1_21ck121 FIND v(dout1_21) AT=610.025n

* CHECK dout1_22 Vdout1_22ck121 = 0.9 time = 610
.meas tran vdout1_22ck121 FIND v(dout1_22) AT=610.025n

* CHECK dout1_23 Vdout1_23ck121 = 0 time = 610
.meas tran vdout1_23ck121 FIND v(dout1_23) AT=610.025n

* CHECK dout1_24 Vdout1_24ck121 = 0 time = 610
.meas tran vdout1_24ck121 FIND v(dout1_24) AT=610.025n

* CHECK dout1_25 Vdout1_25ck121 = 0.9 time = 610
.meas tran vdout1_25ck121 FIND v(dout1_25) AT=610.025n

* CHECK dout1_26 Vdout1_26ck121 = 0 time = 610
.meas tran vdout1_26ck121 FIND v(dout1_26) AT=610.025n

* CHECK dout1_27 Vdout1_27ck121 = 0.9 time = 610
.meas tran vdout1_27ck121 FIND v(dout1_27) AT=610.025n

* CHECK dout1_28 Vdout1_28ck121 = 0.9 time = 610
.meas tran vdout1_28ck121 FIND v(dout1_28) AT=610.025n

* CHECK dout1_29 Vdout1_29ck121 = 0.9 time = 610
.meas tran vdout1_29ck121 FIND v(dout1_29) AT=610.025n

* CHECK dout1_30 Vdout1_30ck121 = 0 time = 610
.meas tran vdout1_30ck121 FIND v(dout1_30) AT=610.025n

* CHECK dout1_31 Vdout1_31ck121 = 0.9 time = 610
.meas tran vdout1_31ck121 FIND v(dout1_31) AT=610.025n

* CHECK dout1_0 Vdout1_0ck125 = 0 time = 630
.meas tran vdout1_0ck125 FIND v(dout1_0) AT=630.025n

* CHECK dout1_1 Vdout1_1ck125 = 0.9 time = 630
.meas tran vdout1_1ck125 FIND v(dout1_1) AT=630.025n

* CHECK dout1_2 Vdout1_2ck125 = 0 time = 630
.meas tran vdout1_2ck125 FIND v(dout1_2) AT=630.025n

* CHECK dout1_3 Vdout1_3ck125 = 0.9 time = 630
.meas tran vdout1_3ck125 FIND v(dout1_3) AT=630.025n

* CHECK dout1_4 Vdout1_4ck125 = 0.9 time = 630
.meas tran vdout1_4ck125 FIND v(dout1_4) AT=630.025n

* CHECK dout1_5 Vdout1_5ck125 = 0.9 time = 630
.meas tran vdout1_5ck125 FIND v(dout1_5) AT=630.025n

* CHECK dout1_6 Vdout1_6ck125 = 0.9 time = 630
.meas tran vdout1_6ck125 FIND v(dout1_6) AT=630.025n

* CHECK dout1_7 Vdout1_7ck125 = 0 time = 630
.meas tran vdout1_7ck125 FIND v(dout1_7) AT=630.025n

* CHECK dout1_8 Vdout1_8ck125 = 0.9 time = 630
.meas tran vdout1_8ck125 FIND v(dout1_8) AT=630.025n

* CHECK dout1_9 Vdout1_9ck125 = 0.9 time = 630
.meas tran vdout1_9ck125 FIND v(dout1_9) AT=630.025n

* CHECK dout1_10 Vdout1_10ck125 = 0.9 time = 630
.meas tran vdout1_10ck125 FIND v(dout1_10) AT=630.025n

* CHECK dout1_11 Vdout1_11ck125 = 0.9 time = 630
.meas tran vdout1_11ck125 FIND v(dout1_11) AT=630.025n

* CHECK dout1_12 Vdout1_12ck125 = 0 time = 630
.meas tran vdout1_12ck125 FIND v(dout1_12) AT=630.025n

* CHECK dout1_13 Vdout1_13ck125 = 0 time = 630
.meas tran vdout1_13ck125 FIND v(dout1_13) AT=630.025n

* CHECK dout1_14 Vdout1_14ck125 = 0 time = 630
.meas tran vdout1_14ck125 FIND v(dout1_14) AT=630.025n

* CHECK dout1_15 Vdout1_15ck125 = 0.9 time = 630
.meas tran vdout1_15ck125 FIND v(dout1_15) AT=630.025n

* CHECK dout1_16 Vdout1_16ck125 = 0.9 time = 630
.meas tran vdout1_16ck125 FIND v(dout1_16) AT=630.025n

* CHECK dout1_17 Vdout1_17ck125 = 0 time = 630
.meas tran vdout1_17ck125 FIND v(dout1_17) AT=630.025n

* CHECK dout1_18 Vdout1_18ck125 = 0 time = 630
.meas tran vdout1_18ck125 FIND v(dout1_18) AT=630.025n

* CHECK dout1_19 Vdout1_19ck125 = 0 time = 630
.meas tran vdout1_19ck125 FIND v(dout1_19) AT=630.025n

* CHECK dout1_20 Vdout1_20ck125 = 0 time = 630
.meas tran vdout1_20ck125 FIND v(dout1_20) AT=630.025n

* CHECK dout1_21 Vdout1_21ck125 = 0.9 time = 630
.meas tran vdout1_21ck125 FIND v(dout1_21) AT=630.025n

* CHECK dout1_22 Vdout1_22ck125 = 0.9 time = 630
.meas tran vdout1_22ck125 FIND v(dout1_22) AT=630.025n

* CHECK dout1_23 Vdout1_23ck125 = 0 time = 630
.meas tran vdout1_23ck125 FIND v(dout1_23) AT=630.025n

* CHECK dout1_24 Vdout1_24ck125 = 0.9 time = 630
.meas tran vdout1_24ck125 FIND v(dout1_24) AT=630.025n

* CHECK dout1_25 Vdout1_25ck125 = 0.9 time = 630
.meas tran vdout1_25ck125 FIND v(dout1_25) AT=630.025n

* CHECK dout1_26 Vdout1_26ck125 = 0.9 time = 630
.meas tran vdout1_26ck125 FIND v(dout1_26) AT=630.025n

* CHECK dout1_27 Vdout1_27ck125 = 0 time = 630
.meas tran vdout1_27ck125 FIND v(dout1_27) AT=630.025n

* CHECK dout1_28 Vdout1_28ck125 = 0.9 time = 630
.meas tran vdout1_28ck125 FIND v(dout1_28) AT=630.025n

* CHECK dout1_29 Vdout1_29ck125 = 0.9 time = 630
.meas tran vdout1_29ck125 FIND v(dout1_29) AT=630.025n

* CHECK dout1_30 Vdout1_30ck125 = 0.9 time = 630
.meas tran vdout1_30ck125 FIND v(dout1_30) AT=630.025n

* CHECK dout1_31 Vdout1_31ck125 = 0.9 time = 630
.meas tran vdout1_31ck125 FIND v(dout1_31) AT=630.025n

* CHECK dout1_0 Vdout1_0ck126 = 0 time = 635
.meas tran vdout1_0ck126 FIND v(dout1_0) AT=635.025n

* CHECK dout1_1 Vdout1_1ck126 = 0.9 time = 635
.meas tran vdout1_1ck126 FIND v(dout1_1) AT=635.025n

* CHECK dout1_2 Vdout1_2ck126 = 0 time = 635
.meas tran vdout1_2ck126 FIND v(dout1_2) AT=635.025n

* CHECK dout1_3 Vdout1_3ck126 = 0.9 time = 635
.meas tran vdout1_3ck126 FIND v(dout1_3) AT=635.025n

* CHECK dout1_4 Vdout1_4ck126 = 0.9 time = 635
.meas tran vdout1_4ck126 FIND v(dout1_4) AT=635.025n

* CHECK dout1_5 Vdout1_5ck126 = 0.9 time = 635
.meas tran vdout1_5ck126 FIND v(dout1_5) AT=635.025n

* CHECK dout1_6 Vdout1_6ck126 = 0.9 time = 635
.meas tran vdout1_6ck126 FIND v(dout1_6) AT=635.025n

* CHECK dout1_7 Vdout1_7ck126 = 0 time = 635
.meas tran vdout1_7ck126 FIND v(dout1_7) AT=635.025n

* CHECK dout1_8 Vdout1_8ck126 = 0.9 time = 635
.meas tran vdout1_8ck126 FIND v(dout1_8) AT=635.025n

* CHECK dout1_9 Vdout1_9ck126 = 0.9 time = 635
.meas tran vdout1_9ck126 FIND v(dout1_9) AT=635.025n

* CHECK dout1_10 Vdout1_10ck126 = 0.9 time = 635
.meas tran vdout1_10ck126 FIND v(dout1_10) AT=635.025n

* CHECK dout1_11 Vdout1_11ck126 = 0.9 time = 635
.meas tran vdout1_11ck126 FIND v(dout1_11) AT=635.025n

* CHECK dout1_12 Vdout1_12ck126 = 0 time = 635
.meas tran vdout1_12ck126 FIND v(dout1_12) AT=635.025n

* CHECK dout1_13 Vdout1_13ck126 = 0 time = 635
.meas tran vdout1_13ck126 FIND v(dout1_13) AT=635.025n

* CHECK dout1_14 Vdout1_14ck126 = 0 time = 635
.meas tran vdout1_14ck126 FIND v(dout1_14) AT=635.025n

* CHECK dout1_15 Vdout1_15ck126 = 0.9 time = 635
.meas tran vdout1_15ck126 FIND v(dout1_15) AT=635.025n

* CHECK dout1_16 Vdout1_16ck126 = 0.9 time = 635
.meas tran vdout1_16ck126 FIND v(dout1_16) AT=635.025n

* CHECK dout1_17 Vdout1_17ck126 = 0 time = 635
.meas tran vdout1_17ck126 FIND v(dout1_17) AT=635.025n

* CHECK dout1_18 Vdout1_18ck126 = 0 time = 635
.meas tran vdout1_18ck126 FIND v(dout1_18) AT=635.025n

* CHECK dout1_19 Vdout1_19ck126 = 0 time = 635
.meas tran vdout1_19ck126 FIND v(dout1_19) AT=635.025n

* CHECK dout1_20 Vdout1_20ck126 = 0 time = 635
.meas tran vdout1_20ck126 FIND v(dout1_20) AT=635.025n

* CHECK dout1_21 Vdout1_21ck126 = 0.9 time = 635
.meas tran vdout1_21ck126 FIND v(dout1_21) AT=635.025n

* CHECK dout1_22 Vdout1_22ck126 = 0.9 time = 635
.meas tran vdout1_22ck126 FIND v(dout1_22) AT=635.025n

* CHECK dout1_23 Vdout1_23ck126 = 0 time = 635
.meas tran vdout1_23ck126 FIND v(dout1_23) AT=635.025n

* CHECK dout1_24 Vdout1_24ck126 = 0.9 time = 635
.meas tran vdout1_24ck126 FIND v(dout1_24) AT=635.025n

* CHECK dout1_25 Vdout1_25ck126 = 0.9 time = 635
.meas tran vdout1_25ck126 FIND v(dout1_25) AT=635.025n

* CHECK dout1_26 Vdout1_26ck126 = 0.9 time = 635
.meas tran vdout1_26ck126 FIND v(dout1_26) AT=635.025n

* CHECK dout1_27 Vdout1_27ck126 = 0 time = 635
.meas tran vdout1_27ck126 FIND v(dout1_27) AT=635.025n

* CHECK dout1_28 Vdout1_28ck126 = 0.9 time = 635
.meas tran vdout1_28ck126 FIND v(dout1_28) AT=635.025n

* CHECK dout1_29 Vdout1_29ck126 = 0.9 time = 635
.meas tran vdout1_29ck126 FIND v(dout1_29) AT=635.025n

* CHECK dout1_30 Vdout1_30ck126 = 0.9 time = 635
.meas tran vdout1_30ck126 FIND v(dout1_30) AT=635.025n

* CHECK dout1_31 Vdout1_31ck126 = 0.9 time = 635
.meas tran vdout1_31ck126 FIND v(dout1_31) AT=635.025n

* CHECK dout1_0 Vdout1_0ck127 = 0 time = 640
.meas tran vdout1_0ck127 FIND v(dout1_0) AT=640.025n

* CHECK dout1_1 Vdout1_1ck127 = 0.9 time = 640
.meas tran vdout1_1ck127 FIND v(dout1_1) AT=640.025n

* CHECK dout1_2 Vdout1_2ck127 = 0 time = 640
.meas tran vdout1_2ck127 FIND v(dout1_2) AT=640.025n

* CHECK dout1_3 Vdout1_3ck127 = 0.9 time = 640
.meas tran vdout1_3ck127 FIND v(dout1_3) AT=640.025n

* CHECK dout1_4 Vdout1_4ck127 = 0.9 time = 640
.meas tran vdout1_4ck127 FIND v(dout1_4) AT=640.025n

* CHECK dout1_5 Vdout1_5ck127 = 0.9 time = 640
.meas tran vdout1_5ck127 FIND v(dout1_5) AT=640.025n

* CHECK dout1_6 Vdout1_6ck127 = 0.9 time = 640
.meas tran vdout1_6ck127 FIND v(dout1_6) AT=640.025n

* CHECK dout1_7 Vdout1_7ck127 = 0 time = 640
.meas tran vdout1_7ck127 FIND v(dout1_7) AT=640.025n

* CHECK dout1_8 Vdout1_8ck127 = 0.9 time = 640
.meas tran vdout1_8ck127 FIND v(dout1_8) AT=640.025n

* CHECK dout1_9 Vdout1_9ck127 = 0.9 time = 640
.meas tran vdout1_9ck127 FIND v(dout1_9) AT=640.025n

* CHECK dout1_10 Vdout1_10ck127 = 0.9 time = 640
.meas tran vdout1_10ck127 FIND v(dout1_10) AT=640.025n

* CHECK dout1_11 Vdout1_11ck127 = 0.9 time = 640
.meas tran vdout1_11ck127 FIND v(dout1_11) AT=640.025n

* CHECK dout1_12 Vdout1_12ck127 = 0 time = 640
.meas tran vdout1_12ck127 FIND v(dout1_12) AT=640.025n

* CHECK dout1_13 Vdout1_13ck127 = 0 time = 640
.meas tran vdout1_13ck127 FIND v(dout1_13) AT=640.025n

* CHECK dout1_14 Vdout1_14ck127 = 0 time = 640
.meas tran vdout1_14ck127 FIND v(dout1_14) AT=640.025n

* CHECK dout1_15 Vdout1_15ck127 = 0.9 time = 640
.meas tran vdout1_15ck127 FIND v(dout1_15) AT=640.025n

* CHECK dout1_16 Vdout1_16ck127 = 0.9 time = 640
.meas tran vdout1_16ck127 FIND v(dout1_16) AT=640.025n

* CHECK dout1_17 Vdout1_17ck127 = 0 time = 640
.meas tran vdout1_17ck127 FIND v(dout1_17) AT=640.025n

* CHECK dout1_18 Vdout1_18ck127 = 0 time = 640
.meas tran vdout1_18ck127 FIND v(dout1_18) AT=640.025n

* CHECK dout1_19 Vdout1_19ck127 = 0 time = 640
.meas tran vdout1_19ck127 FIND v(dout1_19) AT=640.025n

* CHECK dout1_20 Vdout1_20ck127 = 0 time = 640
.meas tran vdout1_20ck127 FIND v(dout1_20) AT=640.025n

* CHECK dout1_21 Vdout1_21ck127 = 0.9 time = 640
.meas tran vdout1_21ck127 FIND v(dout1_21) AT=640.025n

* CHECK dout1_22 Vdout1_22ck127 = 0.9 time = 640
.meas tran vdout1_22ck127 FIND v(dout1_22) AT=640.025n

* CHECK dout1_23 Vdout1_23ck127 = 0 time = 640
.meas tran vdout1_23ck127 FIND v(dout1_23) AT=640.025n

* CHECK dout1_24 Vdout1_24ck127 = 0.9 time = 640
.meas tran vdout1_24ck127 FIND v(dout1_24) AT=640.025n

* CHECK dout1_25 Vdout1_25ck127 = 0.9 time = 640
.meas tran vdout1_25ck127 FIND v(dout1_25) AT=640.025n

* CHECK dout1_26 Vdout1_26ck127 = 0.9 time = 640
.meas tran vdout1_26ck127 FIND v(dout1_26) AT=640.025n

* CHECK dout1_27 Vdout1_27ck127 = 0 time = 640
.meas tran vdout1_27ck127 FIND v(dout1_27) AT=640.025n

* CHECK dout1_28 Vdout1_28ck127 = 0.9 time = 640
.meas tran vdout1_28ck127 FIND v(dout1_28) AT=640.025n

* CHECK dout1_29 Vdout1_29ck127 = 0.9 time = 640
.meas tran vdout1_29ck127 FIND v(dout1_29) AT=640.025n

* CHECK dout1_30 Vdout1_30ck127 = 0.9 time = 640
.meas tran vdout1_30ck127 FIND v(dout1_30) AT=640.025n

* CHECK dout1_31 Vdout1_31ck127 = 0.9 time = 640
.meas tran vdout1_31ck127 FIND v(dout1_31) AT=640.025n

* CHECK dout1_0 Vdout1_0ck128 = 0 time = 645
.meas tran vdout1_0ck128 FIND v(dout1_0) AT=645.025n

* CHECK dout1_1 Vdout1_1ck128 = 0.9 time = 645
.meas tran vdout1_1ck128 FIND v(dout1_1) AT=645.025n

* CHECK dout1_2 Vdout1_2ck128 = 0 time = 645
.meas tran vdout1_2ck128 FIND v(dout1_2) AT=645.025n

* CHECK dout1_3 Vdout1_3ck128 = 0.9 time = 645
.meas tran vdout1_3ck128 FIND v(dout1_3) AT=645.025n

* CHECK dout1_4 Vdout1_4ck128 = 0.9 time = 645
.meas tran vdout1_4ck128 FIND v(dout1_4) AT=645.025n

* CHECK dout1_5 Vdout1_5ck128 = 0.9 time = 645
.meas tran vdout1_5ck128 FIND v(dout1_5) AT=645.025n

* CHECK dout1_6 Vdout1_6ck128 = 0.9 time = 645
.meas tran vdout1_6ck128 FIND v(dout1_6) AT=645.025n

* CHECK dout1_7 Vdout1_7ck128 = 0 time = 645
.meas tran vdout1_7ck128 FIND v(dout1_7) AT=645.025n

* CHECK dout1_8 Vdout1_8ck128 = 0.9 time = 645
.meas tran vdout1_8ck128 FIND v(dout1_8) AT=645.025n

* CHECK dout1_9 Vdout1_9ck128 = 0.9 time = 645
.meas tran vdout1_9ck128 FIND v(dout1_9) AT=645.025n

* CHECK dout1_10 Vdout1_10ck128 = 0.9 time = 645
.meas tran vdout1_10ck128 FIND v(dout1_10) AT=645.025n

* CHECK dout1_11 Vdout1_11ck128 = 0.9 time = 645
.meas tran vdout1_11ck128 FIND v(dout1_11) AT=645.025n

* CHECK dout1_12 Vdout1_12ck128 = 0 time = 645
.meas tran vdout1_12ck128 FIND v(dout1_12) AT=645.025n

* CHECK dout1_13 Vdout1_13ck128 = 0 time = 645
.meas tran vdout1_13ck128 FIND v(dout1_13) AT=645.025n

* CHECK dout1_14 Vdout1_14ck128 = 0 time = 645
.meas tran vdout1_14ck128 FIND v(dout1_14) AT=645.025n

* CHECK dout1_15 Vdout1_15ck128 = 0.9 time = 645
.meas tran vdout1_15ck128 FIND v(dout1_15) AT=645.025n

* CHECK dout1_16 Vdout1_16ck128 = 0.9 time = 645
.meas tran vdout1_16ck128 FIND v(dout1_16) AT=645.025n

* CHECK dout1_17 Vdout1_17ck128 = 0 time = 645
.meas tran vdout1_17ck128 FIND v(dout1_17) AT=645.025n

* CHECK dout1_18 Vdout1_18ck128 = 0 time = 645
.meas tran vdout1_18ck128 FIND v(dout1_18) AT=645.025n

* CHECK dout1_19 Vdout1_19ck128 = 0 time = 645
.meas tran vdout1_19ck128 FIND v(dout1_19) AT=645.025n

* CHECK dout1_20 Vdout1_20ck128 = 0 time = 645
.meas tran vdout1_20ck128 FIND v(dout1_20) AT=645.025n

* CHECK dout1_21 Vdout1_21ck128 = 0.9 time = 645
.meas tran vdout1_21ck128 FIND v(dout1_21) AT=645.025n

* CHECK dout1_22 Vdout1_22ck128 = 0.9 time = 645
.meas tran vdout1_22ck128 FIND v(dout1_22) AT=645.025n

* CHECK dout1_23 Vdout1_23ck128 = 0 time = 645
.meas tran vdout1_23ck128 FIND v(dout1_23) AT=645.025n

* CHECK dout1_24 Vdout1_24ck128 = 0.9 time = 645
.meas tran vdout1_24ck128 FIND v(dout1_24) AT=645.025n

* CHECK dout1_25 Vdout1_25ck128 = 0.9 time = 645
.meas tran vdout1_25ck128 FIND v(dout1_25) AT=645.025n

* CHECK dout1_26 Vdout1_26ck128 = 0.9 time = 645
.meas tran vdout1_26ck128 FIND v(dout1_26) AT=645.025n

* CHECK dout1_27 Vdout1_27ck128 = 0 time = 645
.meas tran vdout1_27ck128 FIND v(dout1_27) AT=645.025n

* CHECK dout1_28 Vdout1_28ck128 = 0.9 time = 645
.meas tran vdout1_28ck128 FIND v(dout1_28) AT=645.025n

* CHECK dout1_29 Vdout1_29ck128 = 0.9 time = 645
.meas tran vdout1_29ck128 FIND v(dout1_29) AT=645.025n

* CHECK dout1_30 Vdout1_30ck128 = 0.9 time = 645
.meas tran vdout1_30ck128 FIND v(dout1_30) AT=645.025n

* CHECK dout1_31 Vdout1_31ck128 = 0.9 time = 645
.meas tran vdout1_31ck128 FIND v(dout1_31) AT=645.025n

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

* CHECK dout1_5 Vdout1_5ck129 = 0.9 time = 650
.meas tran vdout1_5ck129 FIND v(dout1_5) AT=650.025n

* CHECK dout1_6 Vdout1_6ck129 = 0.9 time = 650
.meas tran vdout1_6ck129 FIND v(dout1_6) AT=650.025n

* CHECK dout1_7 Vdout1_7ck129 = 0 time = 650
.meas tran vdout1_7ck129 FIND v(dout1_7) AT=650.025n

* CHECK dout1_8 Vdout1_8ck129 = 0.9 time = 650
.meas tran vdout1_8ck129 FIND v(dout1_8) AT=650.025n

* CHECK dout1_9 Vdout1_9ck129 = 0.9 time = 650
.meas tran vdout1_9ck129 FIND v(dout1_9) AT=650.025n

* CHECK dout1_10 Vdout1_10ck129 = 0 time = 650
.meas tran vdout1_10ck129 FIND v(dout1_10) AT=650.025n

* CHECK dout1_11 Vdout1_11ck129 = 0.9 time = 650
.meas tran vdout1_11ck129 FIND v(dout1_11) AT=650.025n

* CHECK dout1_12 Vdout1_12ck129 = 0.9 time = 650
.meas tran vdout1_12ck129 FIND v(dout1_12) AT=650.025n

* CHECK dout1_13 Vdout1_13ck129 = 0 time = 650
.meas tran vdout1_13ck129 FIND v(dout1_13) AT=650.025n

* CHECK dout1_14 Vdout1_14ck129 = 0 time = 650
.meas tran vdout1_14ck129 FIND v(dout1_14) AT=650.025n

* CHECK dout1_15 Vdout1_15ck129 = 0 time = 650
.meas tran vdout1_15ck129 FIND v(dout1_15) AT=650.025n

* CHECK dout1_16 Vdout1_16ck129 = 0.9 time = 650
.meas tran vdout1_16ck129 FIND v(dout1_16) AT=650.025n

* CHECK dout1_17 Vdout1_17ck129 = 0.9 time = 650
.meas tran vdout1_17ck129 FIND v(dout1_17) AT=650.025n

* CHECK dout1_18 Vdout1_18ck129 = 0.9 time = 650
.meas tran vdout1_18ck129 FIND v(dout1_18) AT=650.025n

* CHECK dout1_19 Vdout1_19ck129 = 0 time = 650
.meas tran vdout1_19ck129 FIND v(dout1_19) AT=650.025n

* CHECK dout1_20 Vdout1_20ck129 = 0 time = 650
.meas tran vdout1_20ck129 FIND v(dout1_20) AT=650.025n

* CHECK dout1_21 Vdout1_21ck129 = 0.9 time = 650
.meas tran vdout1_21ck129 FIND v(dout1_21) AT=650.025n

* CHECK dout1_22 Vdout1_22ck129 = 0.9 time = 650
.meas tran vdout1_22ck129 FIND v(dout1_22) AT=650.025n

* CHECK dout1_23 Vdout1_23ck129 = 0.9 time = 650
.meas tran vdout1_23ck129 FIND v(dout1_23) AT=650.025n

* CHECK dout1_24 Vdout1_24ck129 = 0 time = 650
.meas tran vdout1_24ck129 FIND v(dout1_24) AT=650.025n

* CHECK dout1_25 Vdout1_25ck129 = 0 time = 650
.meas tran vdout1_25ck129 FIND v(dout1_25) AT=650.025n

* CHECK dout1_26 Vdout1_26ck129 = 0 time = 650
.meas tran vdout1_26ck129 FIND v(dout1_26) AT=650.025n

* CHECK dout1_27 Vdout1_27ck129 = 0 time = 650
.meas tran vdout1_27ck129 FIND v(dout1_27) AT=650.025n

* CHECK dout1_28 Vdout1_28ck129 = 0.9 time = 650
.meas tran vdout1_28ck129 FIND v(dout1_28) AT=650.025n

* CHECK dout1_29 Vdout1_29ck129 = 0 time = 650
.meas tran vdout1_29ck129 FIND v(dout1_29) AT=650.025n

* CHECK dout1_30 Vdout1_30ck129 = 0.9 time = 650
.meas tran vdout1_30ck129 FIND v(dout1_30) AT=650.025n

* CHECK dout1_31 Vdout1_31ck129 = 0.9 time = 650
.meas tran vdout1_31ck129 FIND v(dout1_31) AT=650.025n

* CHECK dout1_0 Vdout1_0ck131 = 0 time = 660
.meas tran vdout1_0ck131 FIND v(dout1_0) AT=660.025n

* CHECK dout1_1 Vdout1_1ck131 = 0.9 time = 660
.meas tran vdout1_1ck131 FIND v(dout1_1) AT=660.025n

* CHECK dout1_2 Vdout1_2ck131 = 0 time = 660
.meas tran vdout1_2ck131 FIND v(dout1_2) AT=660.025n

* CHECK dout1_3 Vdout1_3ck131 = 0 time = 660
.meas tran vdout1_3ck131 FIND v(dout1_3) AT=660.025n

* CHECK dout1_4 Vdout1_4ck131 = 0 time = 660
.meas tran vdout1_4ck131 FIND v(dout1_4) AT=660.025n

* CHECK dout1_5 Vdout1_5ck131 = 0.9 time = 660
.meas tran vdout1_5ck131 FIND v(dout1_5) AT=660.025n

* CHECK dout1_6 Vdout1_6ck131 = 0 time = 660
.meas tran vdout1_6ck131 FIND v(dout1_6) AT=660.025n

* CHECK dout1_7 Vdout1_7ck131 = 0 time = 660
.meas tran vdout1_7ck131 FIND v(dout1_7) AT=660.025n

* CHECK dout1_8 Vdout1_8ck131 = 0 time = 660
.meas tran vdout1_8ck131 FIND v(dout1_8) AT=660.025n

* CHECK dout1_9 Vdout1_9ck131 = 0 time = 660
.meas tran vdout1_9ck131 FIND v(dout1_9) AT=660.025n

* CHECK dout1_10 Vdout1_10ck131 = 0.9 time = 660
.meas tran vdout1_10ck131 FIND v(dout1_10) AT=660.025n

* CHECK dout1_11 Vdout1_11ck131 = 0.9 time = 660
.meas tran vdout1_11ck131 FIND v(dout1_11) AT=660.025n

* CHECK dout1_12 Vdout1_12ck131 = 0 time = 660
.meas tran vdout1_12ck131 FIND v(dout1_12) AT=660.025n

* CHECK dout1_13 Vdout1_13ck131 = 0.9 time = 660
.meas tran vdout1_13ck131 FIND v(dout1_13) AT=660.025n

* CHECK dout1_14 Vdout1_14ck131 = 0.9 time = 660
.meas tran vdout1_14ck131 FIND v(dout1_14) AT=660.025n

* CHECK dout1_15 Vdout1_15ck131 = 0 time = 660
.meas tran vdout1_15ck131 FIND v(dout1_15) AT=660.025n

* CHECK dout1_16 Vdout1_16ck131 = 0.9 time = 660
.meas tran vdout1_16ck131 FIND v(dout1_16) AT=660.025n

* CHECK dout1_17 Vdout1_17ck131 = 0.9 time = 660
.meas tran vdout1_17ck131 FIND v(dout1_17) AT=660.025n

* CHECK dout1_18 Vdout1_18ck131 = 0.9 time = 660
.meas tran vdout1_18ck131 FIND v(dout1_18) AT=660.025n

* CHECK dout1_19 Vdout1_19ck131 = 0.9 time = 660
.meas tran vdout1_19ck131 FIND v(dout1_19) AT=660.025n

* CHECK dout1_20 Vdout1_20ck131 = 0 time = 660
.meas tran vdout1_20ck131 FIND v(dout1_20) AT=660.025n

* CHECK dout1_21 Vdout1_21ck131 = 0.9 time = 660
.meas tran vdout1_21ck131 FIND v(dout1_21) AT=660.025n

* CHECK dout1_22 Vdout1_22ck131 = 0.9 time = 660
.meas tran vdout1_22ck131 FIND v(dout1_22) AT=660.025n

* CHECK dout1_23 Vdout1_23ck131 = 0.9 time = 660
.meas tran vdout1_23ck131 FIND v(dout1_23) AT=660.025n

* CHECK dout1_24 Vdout1_24ck131 = 0 time = 660
.meas tran vdout1_24ck131 FIND v(dout1_24) AT=660.025n

* CHECK dout1_25 Vdout1_25ck131 = 0 time = 660
.meas tran vdout1_25ck131 FIND v(dout1_25) AT=660.025n

* CHECK dout1_26 Vdout1_26ck131 = 0 time = 660
.meas tran vdout1_26ck131 FIND v(dout1_26) AT=660.025n

* CHECK dout1_27 Vdout1_27ck131 = 0.9 time = 660
.meas tran vdout1_27ck131 FIND v(dout1_27) AT=660.025n

* CHECK dout1_28 Vdout1_28ck131 = 0.9 time = 660
.meas tran vdout1_28ck131 FIND v(dout1_28) AT=660.025n

* CHECK dout1_29 Vdout1_29ck131 = 0 time = 660
.meas tran vdout1_29ck131 FIND v(dout1_29) AT=660.025n

* CHECK dout1_30 Vdout1_30ck131 = 0 time = 660
.meas tran vdout1_30ck131 FIND v(dout1_30) AT=660.025n

* CHECK dout1_31 Vdout1_31ck131 = 0 time = 660
.meas tran vdout1_31ck131 FIND v(dout1_31) AT=660.025n

* CHECK dout1_0 Vdout1_0ck132 = 0 time = 665
.meas tran vdout1_0ck132 FIND v(dout1_0) AT=665.025n

* CHECK dout1_1 Vdout1_1ck132 = 0 time = 665
.meas tran vdout1_1ck132 FIND v(dout1_1) AT=665.025n

* CHECK dout1_2 Vdout1_2ck132 = 0 time = 665
.meas tran vdout1_2ck132 FIND v(dout1_2) AT=665.025n

* CHECK dout1_3 Vdout1_3ck132 = 0 time = 665
.meas tran vdout1_3ck132 FIND v(dout1_3) AT=665.025n

* CHECK dout1_4 Vdout1_4ck132 = 0 time = 665
.meas tran vdout1_4ck132 FIND v(dout1_4) AT=665.025n

* CHECK dout1_5 Vdout1_5ck132 = 0.9 time = 665
.meas tran vdout1_5ck132 FIND v(dout1_5) AT=665.025n

* CHECK dout1_6 Vdout1_6ck132 = 0 time = 665
.meas tran vdout1_6ck132 FIND v(dout1_6) AT=665.025n

* CHECK dout1_7 Vdout1_7ck132 = 0.9 time = 665
.meas tran vdout1_7ck132 FIND v(dout1_7) AT=665.025n

* CHECK dout1_8 Vdout1_8ck132 = 0.9 time = 665
.meas tran vdout1_8ck132 FIND v(dout1_8) AT=665.025n

* CHECK dout1_9 Vdout1_9ck132 = 0.9 time = 665
.meas tran vdout1_9ck132 FIND v(dout1_9) AT=665.025n

* CHECK dout1_10 Vdout1_10ck132 = 0.9 time = 665
.meas tran vdout1_10ck132 FIND v(dout1_10) AT=665.025n

* CHECK dout1_11 Vdout1_11ck132 = 0.9 time = 665
.meas tran vdout1_11ck132 FIND v(dout1_11) AT=665.025n

* CHECK dout1_12 Vdout1_12ck132 = 0.9 time = 665
.meas tran vdout1_12ck132 FIND v(dout1_12) AT=665.025n

* CHECK dout1_13 Vdout1_13ck132 = 0.9 time = 665
.meas tran vdout1_13ck132 FIND v(dout1_13) AT=665.025n

* CHECK dout1_14 Vdout1_14ck132 = 0 time = 665
.meas tran vdout1_14ck132 FIND v(dout1_14) AT=665.025n

* CHECK dout1_15 Vdout1_15ck132 = 0 time = 665
.meas tran vdout1_15ck132 FIND v(dout1_15) AT=665.025n

* CHECK dout1_16 Vdout1_16ck132 = 0 time = 665
.meas tran vdout1_16ck132 FIND v(dout1_16) AT=665.025n

* CHECK dout1_17 Vdout1_17ck132 = 0.9 time = 665
.meas tran vdout1_17ck132 FIND v(dout1_17) AT=665.025n

* CHECK dout1_18 Vdout1_18ck132 = 0.9 time = 665
.meas tran vdout1_18ck132 FIND v(dout1_18) AT=665.025n

* CHECK dout1_19 Vdout1_19ck132 = 0 time = 665
.meas tran vdout1_19ck132 FIND v(dout1_19) AT=665.025n

* CHECK dout1_20 Vdout1_20ck132 = 0 time = 665
.meas tran vdout1_20ck132 FIND v(dout1_20) AT=665.025n

* CHECK dout1_21 Vdout1_21ck132 = 0 time = 665
.meas tran vdout1_21ck132 FIND v(dout1_21) AT=665.025n

* CHECK dout1_22 Vdout1_22ck132 = 0 time = 665
.meas tran vdout1_22ck132 FIND v(dout1_22) AT=665.025n

* CHECK dout1_23 Vdout1_23ck132 = 0.9 time = 665
.meas tran vdout1_23ck132 FIND v(dout1_23) AT=665.025n

* CHECK dout1_24 Vdout1_24ck132 = 0 time = 665
.meas tran vdout1_24ck132 FIND v(dout1_24) AT=665.025n

* CHECK dout1_25 Vdout1_25ck132 = 0.9 time = 665
.meas tran vdout1_25ck132 FIND v(dout1_25) AT=665.025n

* CHECK dout1_26 Vdout1_26ck132 = 0 time = 665
.meas tran vdout1_26ck132 FIND v(dout1_26) AT=665.025n

* CHECK dout1_27 Vdout1_27ck132 = 0 time = 665
.meas tran vdout1_27ck132 FIND v(dout1_27) AT=665.025n

* CHECK dout1_28 Vdout1_28ck132 = 0 time = 665
.meas tran vdout1_28ck132 FIND v(dout1_28) AT=665.025n

* CHECK dout1_29 Vdout1_29ck132 = 0.9 time = 665
.meas tran vdout1_29ck132 FIND v(dout1_29) AT=665.025n

* CHECK dout1_30 Vdout1_30ck132 = 0.9 time = 665
.meas tran vdout1_30ck132 FIND v(dout1_30) AT=665.025n

* CHECK dout1_31 Vdout1_31ck132 = 0 time = 665
.meas tran vdout1_31ck132 FIND v(dout1_31) AT=665.025n

* CHECK dout1_0 Vdout1_0ck134 = 0 time = 675
.meas tran vdout1_0ck134 FIND v(dout1_0) AT=675.025n

* CHECK dout1_1 Vdout1_1ck134 = 0.9 time = 675
.meas tran vdout1_1ck134 FIND v(dout1_1) AT=675.025n

* CHECK dout1_2 Vdout1_2ck134 = 0 time = 675
.meas tran vdout1_2ck134 FIND v(dout1_2) AT=675.025n

* CHECK dout1_3 Vdout1_3ck134 = 0 time = 675
.meas tran vdout1_3ck134 FIND v(dout1_3) AT=675.025n

* CHECK dout1_4 Vdout1_4ck134 = 0 time = 675
.meas tran vdout1_4ck134 FIND v(dout1_4) AT=675.025n

* CHECK dout1_5 Vdout1_5ck134 = 0.9 time = 675
.meas tran vdout1_5ck134 FIND v(dout1_5) AT=675.025n

* CHECK dout1_6 Vdout1_6ck134 = 0 time = 675
.meas tran vdout1_6ck134 FIND v(dout1_6) AT=675.025n

* CHECK dout1_7 Vdout1_7ck134 = 0 time = 675
.meas tran vdout1_7ck134 FIND v(dout1_7) AT=675.025n

* CHECK dout1_8 Vdout1_8ck134 = 0 time = 675
.meas tran vdout1_8ck134 FIND v(dout1_8) AT=675.025n

* CHECK dout1_9 Vdout1_9ck134 = 0 time = 675
.meas tran vdout1_9ck134 FIND v(dout1_9) AT=675.025n

* CHECK dout1_10 Vdout1_10ck134 = 0.9 time = 675
.meas tran vdout1_10ck134 FIND v(dout1_10) AT=675.025n

* CHECK dout1_11 Vdout1_11ck134 = 0.9 time = 675
.meas tran vdout1_11ck134 FIND v(dout1_11) AT=675.025n

* CHECK dout1_12 Vdout1_12ck134 = 0 time = 675
.meas tran vdout1_12ck134 FIND v(dout1_12) AT=675.025n

* CHECK dout1_13 Vdout1_13ck134 = 0.9 time = 675
.meas tran vdout1_13ck134 FIND v(dout1_13) AT=675.025n

* CHECK dout1_14 Vdout1_14ck134 = 0.9 time = 675
.meas tran vdout1_14ck134 FIND v(dout1_14) AT=675.025n

* CHECK dout1_15 Vdout1_15ck134 = 0 time = 675
.meas tran vdout1_15ck134 FIND v(dout1_15) AT=675.025n

* CHECK dout1_16 Vdout1_16ck134 = 0.9 time = 675
.meas tran vdout1_16ck134 FIND v(dout1_16) AT=675.025n

* CHECK dout1_17 Vdout1_17ck134 = 0.9 time = 675
.meas tran vdout1_17ck134 FIND v(dout1_17) AT=675.025n

* CHECK dout1_18 Vdout1_18ck134 = 0.9 time = 675
.meas tran vdout1_18ck134 FIND v(dout1_18) AT=675.025n

* CHECK dout1_19 Vdout1_19ck134 = 0.9 time = 675
.meas tran vdout1_19ck134 FIND v(dout1_19) AT=675.025n

* CHECK dout1_20 Vdout1_20ck134 = 0 time = 675
.meas tran vdout1_20ck134 FIND v(dout1_20) AT=675.025n

* CHECK dout1_21 Vdout1_21ck134 = 0.9 time = 675
.meas tran vdout1_21ck134 FIND v(dout1_21) AT=675.025n

* CHECK dout1_22 Vdout1_22ck134 = 0.9 time = 675
.meas tran vdout1_22ck134 FIND v(dout1_22) AT=675.025n

* CHECK dout1_23 Vdout1_23ck134 = 0.9 time = 675
.meas tran vdout1_23ck134 FIND v(dout1_23) AT=675.025n

* CHECK dout1_24 Vdout1_24ck134 = 0 time = 675
.meas tran vdout1_24ck134 FIND v(dout1_24) AT=675.025n

* CHECK dout1_25 Vdout1_25ck134 = 0 time = 675
.meas tran vdout1_25ck134 FIND v(dout1_25) AT=675.025n

* CHECK dout1_26 Vdout1_26ck134 = 0 time = 675
.meas tran vdout1_26ck134 FIND v(dout1_26) AT=675.025n

* CHECK dout1_27 Vdout1_27ck134 = 0.9 time = 675
.meas tran vdout1_27ck134 FIND v(dout1_27) AT=675.025n

* CHECK dout1_28 Vdout1_28ck134 = 0.9 time = 675
.meas tran vdout1_28ck134 FIND v(dout1_28) AT=675.025n

* CHECK dout1_29 Vdout1_29ck134 = 0 time = 675
.meas tran vdout1_29ck134 FIND v(dout1_29) AT=675.025n

* CHECK dout1_30 Vdout1_30ck134 = 0 time = 675
.meas tran vdout1_30ck134 FIND v(dout1_30) AT=675.025n

* CHECK dout1_31 Vdout1_31ck134 = 0 time = 675
.meas tran vdout1_31ck134 FIND v(dout1_31) AT=675.025n

* CHECK dout1_0 Vdout1_0ck135 = 0 time = 680
.meas tran vdout1_0ck135 FIND v(dout1_0) AT=680.025n

* CHECK dout1_1 Vdout1_1ck135 = 0.9 time = 680
.meas tran vdout1_1ck135 FIND v(dout1_1) AT=680.025n

* CHECK dout1_2 Vdout1_2ck135 = 0 time = 680
.meas tran vdout1_2ck135 FIND v(dout1_2) AT=680.025n

* CHECK dout1_3 Vdout1_3ck135 = 0 time = 680
.meas tran vdout1_3ck135 FIND v(dout1_3) AT=680.025n

* CHECK dout1_4 Vdout1_4ck135 = 0 time = 680
.meas tran vdout1_4ck135 FIND v(dout1_4) AT=680.025n

* CHECK dout1_5 Vdout1_5ck135 = 0.9 time = 680
.meas tran vdout1_5ck135 FIND v(dout1_5) AT=680.025n

* CHECK dout1_6 Vdout1_6ck135 = 0 time = 680
.meas tran vdout1_6ck135 FIND v(dout1_6) AT=680.025n

* CHECK dout1_7 Vdout1_7ck135 = 0 time = 680
.meas tran vdout1_7ck135 FIND v(dout1_7) AT=680.025n

* CHECK dout1_8 Vdout1_8ck135 = 0 time = 680
.meas tran vdout1_8ck135 FIND v(dout1_8) AT=680.025n

* CHECK dout1_9 Vdout1_9ck135 = 0 time = 680
.meas tran vdout1_9ck135 FIND v(dout1_9) AT=680.025n

* CHECK dout1_10 Vdout1_10ck135 = 0.9 time = 680
.meas tran vdout1_10ck135 FIND v(dout1_10) AT=680.025n

* CHECK dout1_11 Vdout1_11ck135 = 0.9 time = 680
.meas tran vdout1_11ck135 FIND v(dout1_11) AT=680.025n

* CHECK dout1_12 Vdout1_12ck135 = 0 time = 680
.meas tran vdout1_12ck135 FIND v(dout1_12) AT=680.025n

* CHECK dout1_13 Vdout1_13ck135 = 0.9 time = 680
.meas tran vdout1_13ck135 FIND v(dout1_13) AT=680.025n

* CHECK dout1_14 Vdout1_14ck135 = 0.9 time = 680
.meas tran vdout1_14ck135 FIND v(dout1_14) AT=680.025n

* CHECK dout1_15 Vdout1_15ck135 = 0 time = 680
.meas tran vdout1_15ck135 FIND v(dout1_15) AT=680.025n

* CHECK dout1_16 Vdout1_16ck135 = 0.9 time = 680
.meas tran vdout1_16ck135 FIND v(dout1_16) AT=680.025n

* CHECK dout1_17 Vdout1_17ck135 = 0.9 time = 680
.meas tran vdout1_17ck135 FIND v(dout1_17) AT=680.025n

* CHECK dout1_18 Vdout1_18ck135 = 0.9 time = 680
.meas tran vdout1_18ck135 FIND v(dout1_18) AT=680.025n

* CHECK dout1_19 Vdout1_19ck135 = 0.9 time = 680
.meas tran vdout1_19ck135 FIND v(dout1_19) AT=680.025n

* CHECK dout1_20 Vdout1_20ck135 = 0 time = 680
.meas tran vdout1_20ck135 FIND v(dout1_20) AT=680.025n

* CHECK dout1_21 Vdout1_21ck135 = 0.9 time = 680
.meas tran vdout1_21ck135 FIND v(dout1_21) AT=680.025n

* CHECK dout1_22 Vdout1_22ck135 = 0.9 time = 680
.meas tran vdout1_22ck135 FIND v(dout1_22) AT=680.025n

* CHECK dout1_23 Vdout1_23ck135 = 0.9 time = 680
.meas tran vdout1_23ck135 FIND v(dout1_23) AT=680.025n

* CHECK dout1_24 Vdout1_24ck135 = 0 time = 680
.meas tran vdout1_24ck135 FIND v(dout1_24) AT=680.025n

* CHECK dout1_25 Vdout1_25ck135 = 0 time = 680
.meas tran vdout1_25ck135 FIND v(dout1_25) AT=680.025n

* CHECK dout1_26 Vdout1_26ck135 = 0 time = 680
.meas tran vdout1_26ck135 FIND v(dout1_26) AT=680.025n

* CHECK dout1_27 Vdout1_27ck135 = 0.9 time = 680
.meas tran vdout1_27ck135 FIND v(dout1_27) AT=680.025n

* CHECK dout1_28 Vdout1_28ck135 = 0.9 time = 680
.meas tran vdout1_28ck135 FIND v(dout1_28) AT=680.025n

* CHECK dout1_29 Vdout1_29ck135 = 0 time = 680
.meas tran vdout1_29ck135 FIND v(dout1_29) AT=680.025n

* CHECK dout1_30 Vdout1_30ck135 = 0 time = 680
.meas tran vdout1_30ck135 FIND v(dout1_30) AT=680.025n

* CHECK dout1_31 Vdout1_31ck135 = 0 time = 680
.meas tran vdout1_31ck135 FIND v(dout1_31) AT=680.025n

* CHECK dout1_0 Vdout1_0ck137 = 0.9 time = 690
.meas tran vdout1_0ck137 FIND v(dout1_0) AT=690.025n

* CHECK dout1_1 Vdout1_1ck137 = 0 time = 690
.meas tran vdout1_1ck137 FIND v(dout1_1) AT=690.025n

* CHECK dout1_2 Vdout1_2ck137 = 0 time = 690
.meas tran vdout1_2ck137 FIND v(dout1_2) AT=690.025n

* CHECK dout1_3 Vdout1_3ck137 = 0.9 time = 690
.meas tran vdout1_3ck137 FIND v(dout1_3) AT=690.025n

* CHECK dout1_4 Vdout1_4ck137 = 0.9 time = 690
.meas tran vdout1_4ck137 FIND v(dout1_4) AT=690.025n

* CHECK dout1_5 Vdout1_5ck137 = 0.9 time = 690
.meas tran vdout1_5ck137 FIND v(dout1_5) AT=690.025n

* CHECK dout1_6 Vdout1_6ck137 = 0 time = 690
.meas tran vdout1_6ck137 FIND v(dout1_6) AT=690.025n

* CHECK dout1_7 Vdout1_7ck137 = 0 time = 690
.meas tran vdout1_7ck137 FIND v(dout1_7) AT=690.025n

* CHECK dout1_8 Vdout1_8ck137 = 0.9 time = 690
.meas tran vdout1_8ck137 FIND v(dout1_8) AT=690.025n

* CHECK dout1_9 Vdout1_9ck137 = 0 time = 690
.meas tran vdout1_9ck137 FIND v(dout1_9) AT=690.025n

* CHECK dout1_10 Vdout1_10ck137 = 0 time = 690
.meas tran vdout1_10ck137 FIND v(dout1_10) AT=690.025n

* CHECK dout1_11 Vdout1_11ck137 = 0 time = 690
.meas tran vdout1_11ck137 FIND v(dout1_11) AT=690.025n

* CHECK dout1_12 Vdout1_12ck137 = 0.9 time = 690
.meas tran vdout1_12ck137 FIND v(dout1_12) AT=690.025n

* CHECK dout1_13 Vdout1_13ck137 = 0.9 time = 690
.meas tran vdout1_13ck137 FIND v(dout1_13) AT=690.025n

* CHECK dout1_14 Vdout1_14ck137 = 0.9 time = 690
.meas tran vdout1_14ck137 FIND v(dout1_14) AT=690.025n

* CHECK dout1_15 Vdout1_15ck137 = 0.9 time = 690
.meas tran vdout1_15ck137 FIND v(dout1_15) AT=690.025n

* CHECK dout1_16 Vdout1_16ck137 = 0.9 time = 690
.meas tran vdout1_16ck137 FIND v(dout1_16) AT=690.025n

* CHECK dout1_17 Vdout1_17ck137 = 0.9 time = 690
.meas tran vdout1_17ck137 FIND v(dout1_17) AT=690.025n

* CHECK dout1_18 Vdout1_18ck137 = 0 time = 690
.meas tran vdout1_18ck137 FIND v(dout1_18) AT=690.025n

* CHECK dout1_19 Vdout1_19ck137 = 0 time = 690
.meas tran vdout1_19ck137 FIND v(dout1_19) AT=690.025n

* CHECK dout1_20 Vdout1_20ck137 = 0 time = 690
.meas tran vdout1_20ck137 FIND v(dout1_20) AT=690.025n

* CHECK dout1_21 Vdout1_21ck137 = 0.9 time = 690
.meas tran vdout1_21ck137 FIND v(dout1_21) AT=690.025n

* CHECK dout1_22 Vdout1_22ck137 = 0 time = 690
.meas tran vdout1_22ck137 FIND v(dout1_22) AT=690.025n

* CHECK dout1_23 Vdout1_23ck137 = 0 time = 690
.meas tran vdout1_23ck137 FIND v(dout1_23) AT=690.025n

* CHECK dout1_24 Vdout1_24ck137 = 0 time = 690
.meas tran vdout1_24ck137 FIND v(dout1_24) AT=690.025n

* CHECK dout1_25 Vdout1_25ck137 = 0 time = 690
.meas tran vdout1_25ck137 FIND v(dout1_25) AT=690.025n

* CHECK dout1_26 Vdout1_26ck137 = 0 time = 690
.meas tran vdout1_26ck137 FIND v(dout1_26) AT=690.025n

* CHECK dout1_27 Vdout1_27ck137 = 0 time = 690
.meas tran vdout1_27ck137 FIND v(dout1_27) AT=690.025n

* CHECK dout1_28 Vdout1_28ck137 = 0 time = 690
.meas tran vdout1_28ck137 FIND v(dout1_28) AT=690.025n

* CHECK dout1_29 Vdout1_29ck137 = 0.9 time = 690
.meas tran vdout1_29ck137 FIND v(dout1_29) AT=690.025n

* CHECK dout1_30 Vdout1_30ck137 = 0.9 time = 690
.meas tran vdout1_30ck137 FIND v(dout1_30) AT=690.025n

* CHECK dout1_31 Vdout1_31ck137 = 0 time = 690
.meas tran vdout1_31ck137 FIND v(dout1_31) AT=690.025n

* CHECK dout1_0 Vdout1_0ck138 = 0.9 time = 695
.meas tran vdout1_0ck138 FIND v(dout1_0) AT=695.025n

* CHECK dout1_1 Vdout1_1ck138 = 0 time = 695
.meas tran vdout1_1ck138 FIND v(dout1_1) AT=695.025n

* CHECK dout1_2 Vdout1_2ck138 = 0 time = 695
.meas tran vdout1_2ck138 FIND v(dout1_2) AT=695.025n

* CHECK dout1_3 Vdout1_3ck138 = 0.9 time = 695
.meas tran vdout1_3ck138 FIND v(dout1_3) AT=695.025n

* CHECK dout1_4 Vdout1_4ck138 = 0.9 time = 695
.meas tran vdout1_4ck138 FIND v(dout1_4) AT=695.025n

* CHECK dout1_5 Vdout1_5ck138 = 0.9 time = 695
.meas tran vdout1_5ck138 FIND v(dout1_5) AT=695.025n

* CHECK dout1_6 Vdout1_6ck138 = 0 time = 695
.meas tran vdout1_6ck138 FIND v(dout1_6) AT=695.025n

* CHECK dout1_7 Vdout1_7ck138 = 0 time = 695
.meas tran vdout1_7ck138 FIND v(dout1_7) AT=695.025n

* CHECK dout1_8 Vdout1_8ck138 = 0.9 time = 695
.meas tran vdout1_8ck138 FIND v(dout1_8) AT=695.025n

* CHECK dout1_9 Vdout1_9ck138 = 0 time = 695
.meas tran vdout1_9ck138 FIND v(dout1_9) AT=695.025n

* CHECK dout1_10 Vdout1_10ck138 = 0 time = 695
.meas tran vdout1_10ck138 FIND v(dout1_10) AT=695.025n

* CHECK dout1_11 Vdout1_11ck138 = 0 time = 695
.meas tran vdout1_11ck138 FIND v(dout1_11) AT=695.025n

* CHECK dout1_12 Vdout1_12ck138 = 0.9 time = 695
.meas tran vdout1_12ck138 FIND v(dout1_12) AT=695.025n

* CHECK dout1_13 Vdout1_13ck138 = 0.9 time = 695
.meas tran vdout1_13ck138 FIND v(dout1_13) AT=695.025n

* CHECK dout1_14 Vdout1_14ck138 = 0.9 time = 695
.meas tran vdout1_14ck138 FIND v(dout1_14) AT=695.025n

* CHECK dout1_15 Vdout1_15ck138 = 0.9 time = 695
.meas tran vdout1_15ck138 FIND v(dout1_15) AT=695.025n

* CHECK dout1_16 Vdout1_16ck138 = 0.9 time = 695
.meas tran vdout1_16ck138 FIND v(dout1_16) AT=695.025n

* CHECK dout1_17 Vdout1_17ck138 = 0.9 time = 695
.meas tran vdout1_17ck138 FIND v(dout1_17) AT=695.025n

* CHECK dout1_18 Vdout1_18ck138 = 0 time = 695
.meas tran vdout1_18ck138 FIND v(dout1_18) AT=695.025n

* CHECK dout1_19 Vdout1_19ck138 = 0 time = 695
.meas tran vdout1_19ck138 FIND v(dout1_19) AT=695.025n

* CHECK dout1_20 Vdout1_20ck138 = 0 time = 695
.meas tran vdout1_20ck138 FIND v(dout1_20) AT=695.025n

* CHECK dout1_21 Vdout1_21ck138 = 0.9 time = 695
.meas tran vdout1_21ck138 FIND v(dout1_21) AT=695.025n

* CHECK dout1_22 Vdout1_22ck138 = 0 time = 695
.meas tran vdout1_22ck138 FIND v(dout1_22) AT=695.025n

* CHECK dout1_23 Vdout1_23ck138 = 0 time = 695
.meas tran vdout1_23ck138 FIND v(dout1_23) AT=695.025n

* CHECK dout1_24 Vdout1_24ck138 = 0 time = 695
.meas tran vdout1_24ck138 FIND v(dout1_24) AT=695.025n

* CHECK dout1_25 Vdout1_25ck138 = 0 time = 695
.meas tran vdout1_25ck138 FIND v(dout1_25) AT=695.025n

* CHECK dout1_26 Vdout1_26ck138 = 0 time = 695
.meas tran vdout1_26ck138 FIND v(dout1_26) AT=695.025n

* CHECK dout1_27 Vdout1_27ck138 = 0 time = 695
.meas tran vdout1_27ck138 FIND v(dout1_27) AT=695.025n

* CHECK dout1_28 Vdout1_28ck138 = 0 time = 695
.meas tran vdout1_28ck138 FIND v(dout1_28) AT=695.025n

* CHECK dout1_29 Vdout1_29ck138 = 0.9 time = 695
.meas tran vdout1_29ck138 FIND v(dout1_29) AT=695.025n

* CHECK dout1_30 Vdout1_30ck138 = 0.9 time = 695
.meas tran vdout1_30ck138 FIND v(dout1_30) AT=695.025n

* CHECK dout1_31 Vdout1_31ck138 = 0 time = 695
.meas tran vdout1_31ck138 FIND v(dout1_31) AT=695.025n

* CHECK dout1_0 Vdout1_0ck143 = 0.9 time = 720
.meas tran vdout1_0ck143 FIND v(dout1_0) AT=720.025n

* CHECK dout1_1 Vdout1_1ck143 = 0 time = 720
.meas tran vdout1_1ck143 FIND v(dout1_1) AT=720.025n

* CHECK dout1_2 Vdout1_2ck143 = 0 time = 720
.meas tran vdout1_2ck143 FIND v(dout1_2) AT=720.025n

* CHECK dout1_3 Vdout1_3ck143 = 0.9 time = 720
.meas tran vdout1_3ck143 FIND v(dout1_3) AT=720.025n

* CHECK dout1_4 Vdout1_4ck143 = 0.9 time = 720
.meas tran vdout1_4ck143 FIND v(dout1_4) AT=720.025n

* CHECK dout1_5 Vdout1_5ck143 = 0.9 time = 720
.meas tran vdout1_5ck143 FIND v(dout1_5) AT=720.025n

* CHECK dout1_6 Vdout1_6ck143 = 0 time = 720
.meas tran vdout1_6ck143 FIND v(dout1_6) AT=720.025n

* CHECK dout1_7 Vdout1_7ck143 = 0 time = 720
.meas tran vdout1_7ck143 FIND v(dout1_7) AT=720.025n

* CHECK dout1_8 Vdout1_8ck143 = 0.9 time = 720
.meas tran vdout1_8ck143 FIND v(dout1_8) AT=720.025n

* CHECK dout1_9 Vdout1_9ck143 = 0 time = 720
.meas tran vdout1_9ck143 FIND v(dout1_9) AT=720.025n

* CHECK dout1_10 Vdout1_10ck143 = 0 time = 720
.meas tran vdout1_10ck143 FIND v(dout1_10) AT=720.025n

* CHECK dout1_11 Vdout1_11ck143 = 0 time = 720
.meas tran vdout1_11ck143 FIND v(dout1_11) AT=720.025n

* CHECK dout1_12 Vdout1_12ck143 = 0.9 time = 720
.meas tran vdout1_12ck143 FIND v(dout1_12) AT=720.025n

* CHECK dout1_13 Vdout1_13ck143 = 0.9 time = 720
.meas tran vdout1_13ck143 FIND v(dout1_13) AT=720.025n

* CHECK dout1_14 Vdout1_14ck143 = 0.9 time = 720
.meas tran vdout1_14ck143 FIND v(dout1_14) AT=720.025n

* CHECK dout1_15 Vdout1_15ck143 = 0.9 time = 720
.meas tran vdout1_15ck143 FIND v(dout1_15) AT=720.025n

* CHECK dout1_16 Vdout1_16ck143 = 0.9 time = 720
.meas tran vdout1_16ck143 FIND v(dout1_16) AT=720.025n

* CHECK dout1_17 Vdout1_17ck143 = 0.9 time = 720
.meas tran vdout1_17ck143 FIND v(dout1_17) AT=720.025n

* CHECK dout1_18 Vdout1_18ck143 = 0 time = 720
.meas tran vdout1_18ck143 FIND v(dout1_18) AT=720.025n

* CHECK dout1_19 Vdout1_19ck143 = 0 time = 720
.meas tran vdout1_19ck143 FIND v(dout1_19) AT=720.025n

* CHECK dout1_20 Vdout1_20ck143 = 0 time = 720
.meas tran vdout1_20ck143 FIND v(dout1_20) AT=720.025n

* CHECK dout1_21 Vdout1_21ck143 = 0.9 time = 720
.meas tran vdout1_21ck143 FIND v(dout1_21) AT=720.025n

* CHECK dout1_22 Vdout1_22ck143 = 0 time = 720
.meas tran vdout1_22ck143 FIND v(dout1_22) AT=720.025n

* CHECK dout1_23 Vdout1_23ck143 = 0 time = 720
.meas tran vdout1_23ck143 FIND v(dout1_23) AT=720.025n

* CHECK dout1_24 Vdout1_24ck143 = 0 time = 720
.meas tran vdout1_24ck143 FIND v(dout1_24) AT=720.025n

* CHECK dout1_25 Vdout1_25ck143 = 0 time = 720
.meas tran vdout1_25ck143 FIND v(dout1_25) AT=720.025n

* CHECK dout1_26 Vdout1_26ck143 = 0 time = 720
.meas tran vdout1_26ck143 FIND v(dout1_26) AT=720.025n

* CHECK dout1_27 Vdout1_27ck143 = 0 time = 720
.meas tran vdout1_27ck143 FIND v(dout1_27) AT=720.025n

* CHECK dout1_28 Vdout1_28ck143 = 0 time = 720
.meas tran vdout1_28ck143 FIND v(dout1_28) AT=720.025n

* CHECK dout1_29 Vdout1_29ck143 = 0.9 time = 720
.meas tran vdout1_29ck143 FIND v(dout1_29) AT=720.025n

* CHECK dout1_30 Vdout1_30ck143 = 0.9 time = 720
.meas tran vdout1_30ck143 FIND v(dout1_30) AT=720.025n

* CHECK dout1_31 Vdout1_31ck143 = 0 time = 720
.meas tran vdout1_31ck143 FIND v(dout1_31) AT=720.025n

* CHECK dout1_0 Vdout1_0ck144 = 0.9 time = 725
.meas tran vdout1_0ck144 FIND v(dout1_0) AT=725.025n

* CHECK dout1_1 Vdout1_1ck144 = 0 time = 725
.meas tran vdout1_1ck144 FIND v(dout1_1) AT=725.025n

* CHECK dout1_2 Vdout1_2ck144 = 0 time = 725
.meas tran vdout1_2ck144 FIND v(dout1_2) AT=725.025n

* CHECK dout1_3 Vdout1_3ck144 = 0.9 time = 725
.meas tran vdout1_3ck144 FIND v(dout1_3) AT=725.025n

* CHECK dout1_4 Vdout1_4ck144 = 0.9 time = 725
.meas tran vdout1_4ck144 FIND v(dout1_4) AT=725.025n

* CHECK dout1_5 Vdout1_5ck144 = 0.9 time = 725
.meas tran vdout1_5ck144 FIND v(dout1_5) AT=725.025n

* CHECK dout1_6 Vdout1_6ck144 = 0 time = 725
.meas tran vdout1_6ck144 FIND v(dout1_6) AT=725.025n

* CHECK dout1_7 Vdout1_7ck144 = 0 time = 725
.meas tran vdout1_7ck144 FIND v(dout1_7) AT=725.025n

* CHECK dout1_8 Vdout1_8ck144 = 0.9 time = 725
.meas tran vdout1_8ck144 FIND v(dout1_8) AT=725.025n

* CHECK dout1_9 Vdout1_9ck144 = 0 time = 725
.meas tran vdout1_9ck144 FIND v(dout1_9) AT=725.025n

* CHECK dout1_10 Vdout1_10ck144 = 0 time = 725
.meas tran vdout1_10ck144 FIND v(dout1_10) AT=725.025n

* CHECK dout1_11 Vdout1_11ck144 = 0 time = 725
.meas tran vdout1_11ck144 FIND v(dout1_11) AT=725.025n

* CHECK dout1_12 Vdout1_12ck144 = 0.9 time = 725
.meas tran vdout1_12ck144 FIND v(dout1_12) AT=725.025n

* CHECK dout1_13 Vdout1_13ck144 = 0.9 time = 725
.meas tran vdout1_13ck144 FIND v(dout1_13) AT=725.025n

* CHECK dout1_14 Vdout1_14ck144 = 0.9 time = 725
.meas tran vdout1_14ck144 FIND v(dout1_14) AT=725.025n

* CHECK dout1_15 Vdout1_15ck144 = 0.9 time = 725
.meas tran vdout1_15ck144 FIND v(dout1_15) AT=725.025n

* CHECK dout1_16 Vdout1_16ck144 = 0.9 time = 725
.meas tran vdout1_16ck144 FIND v(dout1_16) AT=725.025n

* CHECK dout1_17 Vdout1_17ck144 = 0.9 time = 725
.meas tran vdout1_17ck144 FIND v(dout1_17) AT=725.025n

* CHECK dout1_18 Vdout1_18ck144 = 0 time = 725
.meas tran vdout1_18ck144 FIND v(dout1_18) AT=725.025n

* CHECK dout1_19 Vdout1_19ck144 = 0 time = 725
.meas tran vdout1_19ck144 FIND v(dout1_19) AT=725.025n

* CHECK dout1_20 Vdout1_20ck144 = 0 time = 725
.meas tran vdout1_20ck144 FIND v(dout1_20) AT=725.025n

* CHECK dout1_21 Vdout1_21ck144 = 0.9 time = 725
.meas tran vdout1_21ck144 FIND v(dout1_21) AT=725.025n

* CHECK dout1_22 Vdout1_22ck144 = 0 time = 725
.meas tran vdout1_22ck144 FIND v(dout1_22) AT=725.025n

* CHECK dout1_23 Vdout1_23ck144 = 0 time = 725
.meas tran vdout1_23ck144 FIND v(dout1_23) AT=725.025n

* CHECK dout1_24 Vdout1_24ck144 = 0 time = 725
.meas tran vdout1_24ck144 FIND v(dout1_24) AT=725.025n

* CHECK dout1_25 Vdout1_25ck144 = 0 time = 725
.meas tran vdout1_25ck144 FIND v(dout1_25) AT=725.025n

* CHECK dout1_26 Vdout1_26ck144 = 0 time = 725
.meas tran vdout1_26ck144 FIND v(dout1_26) AT=725.025n

* CHECK dout1_27 Vdout1_27ck144 = 0 time = 725
.meas tran vdout1_27ck144 FIND v(dout1_27) AT=725.025n

* CHECK dout1_28 Vdout1_28ck144 = 0 time = 725
.meas tran vdout1_28ck144 FIND v(dout1_28) AT=725.025n

* CHECK dout1_29 Vdout1_29ck144 = 0.9 time = 725
.meas tran vdout1_29ck144 FIND v(dout1_29) AT=725.025n

* CHECK dout1_30 Vdout1_30ck144 = 0.9 time = 725
.meas tran vdout1_30ck144 FIND v(dout1_30) AT=725.025n

* CHECK dout1_31 Vdout1_31ck144 = 0 time = 725
.meas tran vdout1_31ck144 FIND v(dout1_31) AT=725.025n

* CHECK dout1_0 Vdout1_0ck145 = 0.9 time = 730
.meas tran vdout1_0ck145 FIND v(dout1_0) AT=730.025n

* CHECK dout1_1 Vdout1_1ck145 = 0.9 time = 730
.meas tran vdout1_1ck145 FIND v(dout1_1) AT=730.025n

* CHECK dout1_2 Vdout1_2ck145 = 0.9 time = 730
.meas tran vdout1_2ck145 FIND v(dout1_2) AT=730.025n

* CHECK dout1_3 Vdout1_3ck145 = 0 time = 730
.meas tran vdout1_3ck145 FIND v(dout1_3) AT=730.025n

* CHECK dout1_4 Vdout1_4ck145 = 0 time = 730
.meas tran vdout1_4ck145 FIND v(dout1_4) AT=730.025n

* CHECK dout1_5 Vdout1_5ck145 = 0 time = 730
.meas tran vdout1_5ck145 FIND v(dout1_5) AT=730.025n

* CHECK dout1_6 Vdout1_6ck145 = 0 time = 730
.meas tran vdout1_6ck145 FIND v(dout1_6) AT=730.025n

* CHECK dout1_7 Vdout1_7ck145 = 0 time = 730
.meas tran vdout1_7ck145 FIND v(dout1_7) AT=730.025n

* CHECK dout1_8 Vdout1_8ck145 = 0 time = 730
.meas tran vdout1_8ck145 FIND v(dout1_8) AT=730.025n

* CHECK dout1_9 Vdout1_9ck145 = 0.9 time = 730
.meas tran vdout1_9ck145 FIND v(dout1_9) AT=730.025n

* CHECK dout1_10 Vdout1_10ck145 = 0 time = 730
.meas tran vdout1_10ck145 FIND v(dout1_10) AT=730.025n

* CHECK dout1_11 Vdout1_11ck145 = 0.9 time = 730
.meas tran vdout1_11ck145 FIND v(dout1_11) AT=730.025n

* CHECK dout1_12 Vdout1_12ck145 = 0 time = 730
.meas tran vdout1_12ck145 FIND v(dout1_12) AT=730.025n

* CHECK dout1_13 Vdout1_13ck145 = 0.9 time = 730
.meas tran vdout1_13ck145 FIND v(dout1_13) AT=730.025n

* CHECK dout1_14 Vdout1_14ck145 = 0 time = 730
.meas tran vdout1_14ck145 FIND v(dout1_14) AT=730.025n

* CHECK dout1_15 Vdout1_15ck145 = 0 time = 730
.meas tran vdout1_15ck145 FIND v(dout1_15) AT=730.025n

* CHECK dout1_16 Vdout1_16ck145 = 0.9 time = 730
.meas tran vdout1_16ck145 FIND v(dout1_16) AT=730.025n

* CHECK dout1_17 Vdout1_17ck145 = 0 time = 730
.meas tran vdout1_17ck145 FIND v(dout1_17) AT=730.025n

* CHECK dout1_18 Vdout1_18ck145 = 0 time = 730
.meas tran vdout1_18ck145 FIND v(dout1_18) AT=730.025n

* CHECK dout1_19 Vdout1_19ck145 = 0 time = 730
.meas tran vdout1_19ck145 FIND v(dout1_19) AT=730.025n

* CHECK dout1_20 Vdout1_20ck145 = 0.9 time = 730
.meas tran vdout1_20ck145 FIND v(dout1_20) AT=730.025n

* CHECK dout1_21 Vdout1_21ck145 = 0 time = 730
.meas tran vdout1_21ck145 FIND v(dout1_21) AT=730.025n

* CHECK dout1_22 Vdout1_22ck145 = 0.9 time = 730
.meas tran vdout1_22ck145 FIND v(dout1_22) AT=730.025n

* CHECK dout1_23 Vdout1_23ck145 = 0.9 time = 730
.meas tran vdout1_23ck145 FIND v(dout1_23) AT=730.025n

* CHECK dout1_24 Vdout1_24ck145 = 0.9 time = 730
.meas tran vdout1_24ck145 FIND v(dout1_24) AT=730.025n

* CHECK dout1_25 Vdout1_25ck145 = 0.9 time = 730
.meas tran vdout1_25ck145 FIND v(dout1_25) AT=730.025n

* CHECK dout1_26 Vdout1_26ck145 = 0.9 time = 730
.meas tran vdout1_26ck145 FIND v(dout1_26) AT=730.025n

* CHECK dout1_27 Vdout1_27ck145 = 0.9 time = 730
.meas tran vdout1_27ck145 FIND v(dout1_27) AT=730.025n

* CHECK dout1_28 Vdout1_28ck145 = 0 time = 730
.meas tran vdout1_28ck145 FIND v(dout1_28) AT=730.025n

* CHECK dout1_29 Vdout1_29ck145 = 0 time = 730
.meas tran vdout1_29ck145 FIND v(dout1_29) AT=730.025n

* CHECK dout1_30 Vdout1_30ck145 = 0.9 time = 730
.meas tran vdout1_30ck145 FIND v(dout1_30) AT=730.025n

* CHECK dout1_31 Vdout1_31ck145 = 0 time = 730
.meas tran vdout1_31ck145 FIND v(dout1_31) AT=730.025n

* CHECK dout1_0 Vdout1_0ck146 = 0.9 time = 735
.meas tran vdout1_0ck146 FIND v(dout1_0) AT=735.025n

* CHECK dout1_1 Vdout1_1ck146 = 0 time = 735
.meas tran vdout1_1ck146 FIND v(dout1_1) AT=735.025n

* CHECK dout1_2 Vdout1_2ck146 = 0 time = 735
.meas tran vdout1_2ck146 FIND v(dout1_2) AT=735.025n

* CHECK dout1_3 Vdout1_3ck146 = 0.9 time = 735
.meas tran vdout1_3ck146 FIND v(dout1_3) AT=735.025n

* CHECK dout1_4 Vdout1_4ck146 = 0.9 time = 735
.meas tran vdout1_4ck146 FIND v(dout1_4) AT=735.025n

* CHECK dout1_5 Vdout1_5ck146 = 0.9 time = 735
.meas tran vdout1_5ck146 FIND v(dout1_5) AT=735.025n

* CHECK dout1_6 Vdout1_6ck146 = 0 time = 735
.meas tran vdout1_6ck146 FIND v(dout1_6) AT=735.025n

* CHECK dout1_7 Vdout1_7ck146 = 0 time = 735
.meas tran vdout1_7ck146 FIND v(dout1_7) AT=735.025n

* CHECK dout1_8 Vdout1_8ck146 = 0.9 time = 735
.meas tran vdout1_8ck146 FIND v(dout1_8) AT=735.025n

* CHECK dout1_9 Vdout1_9ck146 = 0 time = 735
.meas tran vdout1_9ck146 FIND v(dout1_9) AT=735.025n

* CHECK dout1_10 Vdout1_10ck146 = 0 time = 735
.meas tran vdout1_10ck146 FIND v(dout1_10) AT=735.025n

* CHECK dout1_11 Vdout1_11ck146 = 0 time = 735
.meas tran vdout1_11ck146 FIND v(dout1_11) AT=735.025n

* CHECK dout1_12 Vdout1_12ck146 = 0.9 time = 735
.meas tran vdout1_12ck146 FIND v(dout1_12) AT=735.025n

* CHECK dout1_13 Vdout1_13ck146 = 0.9 time = 735
.meas tran vdout1_13ck146 FIND v(dout1_13) AT=735.025n

* CHECK dout1_14 Vdout1_14ck146 = 0.9 time = 735
.meas tran vdout1_14ck146 FIND v(dout1_14) AT=735.025n

* CHECK dout1_15 Vdout1_15ck146 = 0.9 time = 735
.meas tran vdout1_15ck146 FIND v(dout1_15) AT=735.025n

* CHECK dout1_16 Vdout1_16ck146 = 0.9 time = 735
.meas tran vdout1_16ck146 FIND v(dout1_16) AT=735.025n

* CHECK dout1_17 Vdout1_17ck146 = 0.9 time = 735
.meas tran vdout1_17ck146 FIND v(dout1_17) AT=735.025n

* CHECK dout1_18 Vdout1_18ck146 = 0 time = 735
.meas tran vdout1_18ck146 FIND v(dout1_18) AT=735.025n

* CHECK dout1_19 Vdout1_19ck146 = 0 time = 735
.meas tran vdout1_19ck146 FIND v(dout1_19) AT=735.025n

* CHECK dout1_20 Vdout1_20ck146 = 0 time = 735
.meas tran vdout1_20ck146 FIND v(dout1_20) AT=735.025n

* CHECK dout1_21 Vdout1_21ck146 = 0.9 time = 735
.meas tran vdout1_21ck146 FIND v(dout1_21) AT=735.025n

* CHECK dout1_22 Vdout1_22ck146 = 0 time = 735
.meas tran vdout1_22ck146 FIND v(dout1_22) AT=735.025n

* CHECK dout1_23 Vdout1_23ck146 = 0 time = 735
.meas tran vdout1_23ck146 FIND v(dout1_23) AT=735.025n

* CHECK dout1_24 Vdout1_24ck146 = 0 time = 735
.meas tran vdout1_24ck146 FIND v(dout1_24) AT=735.025n

* CHECK dout1_25 Vdout1_25ck146 = 0 time = 735
.meas tran vdout1_25ck146 FIND v(dout1_25) AT=735.025n

* CHECK dout1_26 Vdout1_26ck146 = 0 time = 735
.meas tran vdout1_26ck146 FIND v(dout1_26) AT=735.025n

* CHECK dout1_27 Vdout1_27ck146 = 0 time = 735
.meas tran vdout1_27ck146 FIND v(dout1_27) AT=735.025n

* CHECK dout1_28 Vdout1_28ck146 = 0 time = 735
.meas tran vdout1_28ck146 FIND v(dout1_28) AT=735.025n

* CHECK dout1_29 Vdout1_29ck146 = 0.9 time = 735
.meas tran vdout1_29ck146 FIND v(dout1_29) AT=735.025n

* CHECK dout1_30 Vdout1_30ck146 = 0.9 time = 735
.meas tran vdout1_30ck146 FIND v(dout1_30) AT=735.025n

* CHECK dout1_31 Vdout1_31ck146 = 0 time = 735
.meas tran vdout1_31ck146 FIND v(dout1_31) AT=735.025n

* CHECK dout1_0 Vdout1_0ck149 = 0.9 time = 750
.meas tran vdout1_0ck149 FIND v(dout1_0) AT=750.025n

* CHECK dout1_1 Vdout1_1ck149 = 0.9 time = 750
.meas tran vdout1_1ck149 FIND v(dout1_1) AT=750.025n

* CHECK dout1_2 Vdout1_2ck149 = 0 time = 750
.meas tran vdout1_2ck149 FIND v(dout1_2) AT=750.025n

* CHECK dout1_3 Vdout1_3ck149 = 0 time = 750
.meas tran vdout1_3ck149 FIND v(dout1_3) AT=750.025n

* CHECK dout1_4 Vdout1_4ck149 = 0 time = 750
.meas tran vdout1_4ck149 FIND v(dout1_4) AT=750.025n

* CHECK dout1_5 Vdout1_5ck149 = 0 time = 750
.meas tran vdout1_5ck149 FIND v(dout1_5) AT=750.025n

* CHECK dout1_6 Vdout1_6ck149 = 0 time = 750
.meas tran vdout1_6ck149 FIND v(dout1_6) AT=750.025n

* CHECK dout1_7 Vdout1_7ck149 = 0.9 time = 750
.meas tran vdout1_7ck149 FIND v(dout1_7) AT=750.025n

* CHECK dout1_8 Vdout1_8ck149 = 0.9 time = 750
.meas tran vdout1_8ck149 FIND v(dout1_8) AT=750.025n

* CHECK dout1_9 Vdout1_9ck149 = 0 time = 750
.meas tran vdout1_9ck149 FIND v(dout1_9) AT=750.025n

* CHECK dout1_10 Vdout1_10ck149 = 0 time = 750
.meas tran vdout1_10ck149 FIND v(dout1_10) AT=750.025n

* CHECK dout1_11 Vdout1_11ck149 = 0.9 time = 750
.meas tran vdout1_11ck149 FIND v(dout1_11) AT=750.025n

* CHECK dout1_12 Vdout1_12ck149 = 0.9 time = 750
.meas tran vdout1_12ck149 FIND v(dout1_12) AT=750.025n

* CHECK dout1_13 Vdout1_13ck149 = 0 time = 750
.meas tran vdout1_13ck149 FIND v(dout1_13) AT=750.025n

* CHECK dout1_14 Vdout1_14ck149 = 0 time = 750
.meas tran vdout1_14ck149 FIND v(dout1_14) AT=750.025n

* CHECK dout1_15 Vdout1_15ck149 = 0.9 time = 750
.meas tran vdout1_15ck149 FIND v(dout1_15) AT=750.025n

* CHECK dout1_16 Vdout1_16ck149 = 0 time = 750
.meas tran vdout1_16ck149 FIND v(dout1_16) AT=750.025n

* CHECK dout1_17 Vdout1_17ck149 = 0.9 time = 750
.meas tran vdout1_17ck149 FIND v(dout1_17) AT=750.025n

* CHECK dout1_18 Vdout1_18ck149 = 0.9 time = 750
.meas tran vdout1_18ck149 FIND v(dout1_18) AT=750.025n

* CHECK dout1_19 Vdout1_19ck149 = 0.9 time = 750
.meas tran vdout1_19ck149 FIND v(dout1_19) AT=750.025n

* CHECK dout1_20 Vdout1_20ck149 = 0.9 time = 750
.meas tran vdout1_20ck149 FIND v(dout1_20) AT=750.025n

* CHECK dout1_21 Vdout1_21ck149 = 0.9 time = 750
.meas tran vdout1_21ck149 FIND v(dout1_21) AT=750.025n

* CHECK dout1_22 Vdout1_22ck149 = 0.9 time = 750
.meas tran vdout1_22ck149 FIND v(dout1_22) AT=750.025n

* CHECK dout1_23 Vdout1_23ck149 = 0.9 time = 750
.meas tran vdout1_23ck149 FIND v(dout1_23) AT=750.025n

* CHECK dout1_24 Vdout1_24ck149 = 0.9 time = 750
.meas tran vdout1_24ck149 FIND v(dout1_24) AT=750.025n

* CHECK dout1_25 Vdout1_25ck149 = 0.9 time = 750
.meas tran vdout1_25ck149 FIND v(dout1_25) AT=750.025n

* CHECK dout1_26 Vdout1_26ck149 = 0 time = 750
.meas tran vdout1_26ck149 FIND v(dout1_26) AT=750.025n

* CHECK dout1_27 Vdout1_27ck149 = 0 time = 750
.meas tran vdout1_27ck149 FIND v(dout1_27) AT=750.025n

* CHECK dout1_28 Vdout1_28ck149 = 0.9 time = 750
.meas tran vdout1_28ck149 FIND v(dout1_28) AT=750.025n

* CHECK dout1_29 Vdout1_29ck149 = 0 time = 750
.meas tran vdout1_29ck149 FIND v(dout1_29) AT=750.025n

* CHECK dout1_30 Vdout1_30ck149 = 0.9 time = 750
.meas tran vdout1_30ck149 FIND v(dout1_30) AT=750.025n

* CHECK dout1_31 Vdout1_31ck149 = 0 time = 750
.meas tran vdout1_31ck149 FIND v(dout1_31) AT=750.025n

* CHECK dout1_0 Vdout1_0ck150 = 0.9 time = 755
.meas tran vdout1_0ck150 FIND v(dout1_0) AT=755.025n

* CHECK dout1_1 Vdout1_1ck150 = 0.9 time = 755
.meas tran vdout1_1ck150 FIND v(dout1_1) AT=755.025n

* CHECK dout1_2 Vdout1_2ck150 = 0.9 time = 755
.meas tran vdout1_2ck150 FIND v(dout1_2) AT=755.025n

* CHECK dout1_3 Vdout1_3ck150 = 0 time = 755
.meas tran vdout1_3ck150 FIND v(dout1_3) AT=755.025n

* CHECK dout1_4 Vdout1_4ck150 = 0 time = 755
.meas tran vdout1_4ck150 FIND v(dout1_4) AT=755.025n

* CHECK dout1_5 Vdout1_5ck150 = 0 time = 755
.meas tran vdout1_5ck150 FIND v(dout1_5) AT=755.025n

* CHECK dout1_6 Vdout1_6ck150 = 0 time = 755
.meas tran vdout1_6ck150 FIND v(dout1_6) AT=755.025n

* CHECK dout1_7 Vdout1_7ck150 = 0 time = 755
.meas tran vdout1_7ck150 FIND v(dout1_7) AT=755.025n

* CHECK dout1_8 Vdout1_8ck150 = 0 time = 755
.meas tran vdout1_8ck150 FIND v(dout1_8) AT=755.025n

* CHECK dout1_9 Vdout1_9ck150 = 0.9 time = 755
.meas tran vdout1_9ck150 FIND v(dout1_9) AT=755.025n

* CHECK dout1_10 Vdout1_10ck150 = 0 time = 755
.meas tran vdout1_10ck150 FIND v(dout1_10) AT=755.025n

* CHECK dout1_11 Vdout1_11ck150 = 0.9 time = 755
.meas tran vdout1_11ck150 FIND v(dout1_11) AT=755.025n

* CHECK dout1_12 Vdout1_12ck150 = 0 time = 755
.meas tran vdout1_12ck150 FIND v(dout1_12) AT=755.025n

* CHECK dout1_13 Vdout1_13ck150 = 0.9 time = 755
.meas tran vdout1_13ck150 FIND v(dout1_13) AT=755.025n

* CHECK dout1_14 Vdout1_14ck150 = 0 time = 755
.meas tran vdout1_14ck150 FIND v(dout1_14) AT=755.025n

* CHECK dout1_15 Vdout1_15ck150 = 0 time = 755
.meas tran vdout1_15ck150 FIND v(dout1_15) AT=755.025n

* CHECK dout1_16 Vdout1_16ck150 = 0.9 time = 755
.meas tran vdout1_16ck150 FIND v(dout1_16) AT=755.025n

* CHECK dout1_17 Vdout1_17ck150 = 0 time = 755
.meas tran vdout1_17ck150 FIND v(dout1_17) AT=755.025n

* CHECK dout1_18 Vdout1_18ck150 = 0 time = 755
.meas tran vdout1_18ck150 FIND v(dout1_18) AT=755.025n

* CHECK dout1_19 Vdout1_19ck150 = 0 time = 755
.meas tran vdout1_19ck150 FIND v(dout1_19) AT=755.025n

* CHECK dout1_20 Vdout1_20ck150 = 0.9 time = 755
.meas tran vdout1_20ck150 FIND v(dout1_20) AT=755.025n

* CHECK dout1_21 Vdout1_21ck150 = 0 time = 755
.meas tran vdout1_21ck150 FIND v(dout1_21) AT=755.025n

* CHECK dout1_22 Vdout1_22ck150 = 0.9 time = 755
.meas tran vdout1_22ck150 FIND v(dout1_22) AT=755.025n

* CHECK dout1_23 Vdout1_23ck150 = 0.9 time = 755
.meas tran vdout1_23ck150 FIND v(dout1_23) AT=755.025n

* CHECK dout1_24 Vdout1_24ck150 = 0.9 time = 755
.meas tran vdout1_24ck150 FIND v(dout1_24) AT=755.025n

* CHECK dout1_25 Vdout1_25ck150 = 0.9 time = 755
.meas tran vdout1_25ck150 FIND v(dout1_25) AT=755.025n

* CHECK dout1_26 Vdout1_26ck150 = 0.9 time = 755
.meas tran vdout1_26ck150 FIND v(dout1_26) AT=755.025n

* CHECK dout1_27 Vdout1_27ck150 = 0.9 time = 755
.meas tran vdout1_27ck150 FIND v(dout1_27) AT=755.025n

* CHECK dout1_28 Vdout1_28ck150 = 0 time = 755
.meas tran vdout1_28ck150 FIND v(dout1_28) AT=755.025n

* CHECK dout1_29 Vdout1_29ck150 = 0 time = 755
.meas tran vdout1_29ck150 FIND v(dout1_29) AT=755.025n

* CHECK dout1_30 Vdout1_30ck150 = 0.9 time = 755
.meas tran vdout1_30ck150 FIND v(dout1_30) AT=755.025n

* CHECK dout1_31 Vdout1_31ck150 = 0 time = 755
.meas tran vdout1_31ck150 FIND v(dout1_31) AT=755.025n

* CHECK dout1_0 Vdout1_0ck151 = 0.9 time = 760
.meas tran vdout1_0ck151 FIND v(dout1_0) AT=760.025n

* CHECK dout1_1 Vdout1_1ck151 = 0.9 time = 760
.meas tran vdout1_1ck151 FIND v(dout1_1) AT=760.025n

* CHECK dout1_2 Vdout1_2ck151 = 0 time = 760
.meas tran vdout1_2ck151 FIND v(dout1_2) AT=760.025n

* CHECK dout1_3 Vdout1_3ck151 = 0 time = 760
.meas tran vdout1_3ck151 FIND v(dout1_3) AT=760.025n

* CHECK dout1_4 Vdout1_4ck151 = 0 time = 760
.meas tran vdout1_4ck151 FIND v(dout1_4) AT=760.025n

* CHECK dout1_5 Vdout1_5ck151 = 0 time = 760
.meas tran vdout1_5ck151 FIND v(dout1_5) AT=760.025n

* CHECK dout1_6 Vdout1_6ck151 = 0 time = 760
.meas tran vdout1_6ck151 FIND v(dout1_6) AT=760.025n

* CHECK dout1_7 Vdout1_7ck151 = 0.9 time = 760
.meas tran vdout1_7ck151 FIND v(dout1_7) AT=760.025n

* CHECK dout1_8 Vdout1_8ck151 = 0.9 time = 760
.meas tran vdout1_8ck151 FIND v(dout1_8) AT=760.025n

* CHECK dout1_9 Vdout1_9ck151 = 0 time = 760
.meas tran vdout1_9ck151 FIND v(dout1_9) AT=760.025n

* CHECK dout1_10 Vdout1_10ck151 = 0 time = 760
.meas tran vdout1_10ck151 FIND v(dout1_10) AT=760.025n

* CHECK dout1_11 Vdout1_11ck151 = 0.9 time = 760
.meas tran vdout1_11ck151 FIND v(dout1_11) AT=760.025n

* CHECK dout1_12 Vdout1_12ck151 = 0.9 time = 760
.meas tran vdout1_12ck151 FIND v(dout1_12) AT=760.025n

* CHECK dout1_13 Vdout1_13ck151 = 0 time = 760
.meas tran vdout1_13ck151 FIND v(dout1_13) AT=760.025n

* CHECK dout1_14 Vdout1_14ck151 = 0 time = 760
.meas tran vdout1_14ck151 FIND v(dout1_14) AT=760.025n

* CHECK dout1_15 Vdout1_15ck151 = 0.9 time = 760
.meas tran vdout1_15ck151 FIND v(dout1_15) AT=760.025n

* CHECK dout1_16 Vdout1_16ck151 = 0 time = 760
.meas tran vdout1_16ck151 FIND v(dout1_16) AT=760.025n

* CHECK dout1_17 Vdout1_17ck151 = 0.9 time = 760
.meas tran vdout1_17ck151 FIND v(dout1_17) AT=760.025n

* CHECK dout1_18 Vdout1_18ck151 = 0.9 time = 760
.meas tran vdout1_18ck151 FIND v(dout1_18) AT=760.025n

* CHECK dout1_19 Vdout1_19ck151 = 0.9 time = 760
.meas tran vdout1_19ck151 FIND v(dout1_19) AT=760.025n

* CHECK dout1_20 Vdout1_20ck151 = 0.9 time = 760
.meas tran vdout1_20ck151 FIND v(dout1_20) AT=760.025n

* CHECK dout1_21 Vdout1_21ck151 = 0.9 time = 760
.meas tran vdout1_21ck151 FIND v(dout1_21) AT=760.025n

* CHECK dout1_22 Vdout1_22ck151 = 0.9 time = 760
.meas tran vdout1_22ck151 FIND v(dout1_22) AT=760.025n

* CHECK dout1_23 Vdout1_23ck151 = 0.9 time = 760
.meas tran vdout1_23ck151 FIND v(dout1_23) AT=760.025n

* CHECK dout1_24 Vdout1_24ck151 = 0.9 time = 760
.meas tran vdout1_24ck151 FIND v(dout1_24) AT=760.025n

* CHECK dout1_25 Vdout1_25ck151 = 0.9 time = 760
.meas tran vdout1_25ck151 FIND v(dout1_25) AT=760.025n

* CHECK dout1_26 Vdout1_26ck151 = 0 time = 760
.meas tran vdout1_26ck151 FIND v(dout1_26) AT=760.025n

* CHECK dout1_27 Vdout1_27ck151 = 0 time = 760
.meas tran vdout1_27ck151 FIND v(dout1_27) AT=760.025n

* CHECK dout1_28 Vdout1_28ck151 = 0.9 time = 760
.meas tran vdout1_28ck151 FIND v(dout1_28) AT=760.025n

* CHECK dout1_29 Vdout1_29ck151 = 0 time = 760
.meas tran vdout1_29ck151 FIND v(dout1_29) AT=760.025n

* CHECK dout1_30 Vdout1_30ck151 = 0.9 time = 760
.meas tran vdout1_30ck151 FIND v(dout1_30) AT=760.025n

* CHECK dout1_31 Vdout1_31ck151 = 0 time = 760
.meas tran vdout1_31ck151 FIND v(dout1_31) AT=760.025n

* CHECK dout1_0 Vdout1_0ck153 = 0.9 time = 770
.meas tran vdout1_0ck153 FIND v(dout1_0) AT=770.025n

* CHECK dout1_1 Vdout1_1ck153 = 0.9 time = 770
.meas tran vdout1_1ck153 FIND v(dout1_1) AT=770.025n

* CHECK dout1_2 Vdout1_2ck153 = 0 time = 770
.meas tran vdout1_2ck153 FIND v(dout1_2) AT=770.025n

* CHECK dout1_3 Vdout1_3ck153 = 0 time = 770
.meas tran vdout1_3ck153 FIND v(dout1_3) AT=770.025n

* CHECK dout1_4 Vdout1_4ck153 = 0 time = 770
.meas tran vdout1_4ck153 FIND v(dout1_4) AT=770.025n

* CHECK dout1_5 Vdout1_5ck153 = 0 time = 770
.meas tran vdout1_5ck153 FIND v(dout1_5) AT=770.025n

* CHECK dout1_6 Vdout1_6ck153 = 0 time = 770
.meas tran vdout1_6ck153 FIND v(dout1_6) AT=770.025n

* CHECK dout1_7 Vdout1_7ck153 = 0.9 time = 770
.meas tran vdout1_7ck153 FIND v(dout1_7) AT=770.025n

* CHECK dout1_8 Vdout1_8ck153 = 0.9 time = 770
.meas tran vdout1_8ck153 FIND v(dout1_8) AT=770.025n

* CHECK dout1_9 Vdout1_9ck153 = 0 time = 770
.meas tran vdout1_9ck153 FIND v(dout1_9) AT=770.025n

* CHECK dout1_10 Vdout1_10ck153 = 0 time = 770
.meas tran vdout1_10ck153 FIND v(dout1_10) AT=770.025n

* CHECK dout1_11 Vdout1_11ck153 = 0.9 time = 770
.meas tran vdout1_11ck153 FIND v(dout1_11) AT=770.025n

* CHECK dout1_12 Vdout1_12ck153 = 0.9 time = 770
.meas tran vdout1_12ck153 FIND v(dout1_12) AT=770.025n

* CHECK dout1_13 Vdout1_13ck153 = 0 time = 770
.meas tran vdout1_13ck153 FIND v(dout1_13) AT=770.025n

* CHECK dout1_14 Vdout1_14ck153 = 0 time = 770
.meas tran vdout1_14ck153 FIND v(dout1_14) AT=770.025n

* CHECK dout1_15 Vdout1_15ck153 = 0.9 time = 770
.meas tran vdout1_15ck153 FIND v(dout1_15) AT=770.025n

* CHECK dout1_16 Vdout1_16ck153 = 0 time = 770
.meas tran vdout1_16ck153 FIND v(dout1_16) AT=770.025n

* CHECK dout1_17 Vdout1_17ck153 = 0.9 time = 770
.meas tran vdout1_17ck153 FIND v(dout1_17) AT=770.025n

* CHECK dout1_18 Vdout1_18ck153 = 0.9 time = 770
.meas tran vdout1_18ck153 FIND v(dout1_18) AT=770.025n

* CHECK dout1_19 Vdout1_19ck153 = 0.9 time = 770
.meas tran vdout1_19ck153 FIND v(dout1_19) AT=770.025n

* CHECK dout1_20 Vdout1_20ck153 = 0.9 time = 770
.meas tran vdout1_20ck153 FIND v(dout1_20) AT=770.025n

* CHECK dout1_21 Vdout1_21ck153 = 0.9 time = 770
.meas tran vdout1_21ck153 FIND v(dout1_21) AT=770.025n

* CHECK dout1_22 Vdout1_22ck153 = 0.9 time = 770
.meas tran vdout1_22ck153 FIND v(dout1_22) AT=770.025n

* CHECK dout1_23 Vdout1_23ck153 = 0.9 time = 770
.meas tran vdout1_23ck153 FIND v(dout1_23) AT=770.025n

* CHECK dout1_24 Vdout1_24ck153 = 0.9 time = 770
.meas tran vdout1_24ck153 FIND v(dout1_24) AT=770.025n

* CHECK dout1_25 Vdout1_25ck153 = 0.9 time = 770
.meas tran vdout1_25ck153 FIND v(dout1_25) AT=770.025n

* CHECK dout1_26 Vdout1_26ck153 = 0 time = 770
.meas tran vdout1_26ck153 FIND v(dout1_26) AT=770.025n

* CHECK dout1_27 Vdout1_27ck153 = 0 time = 770
.meas tran vdout1_27ck153 FIND v(dout1_27) AT=770.025n

* CHECK dout1_28 Vdout1_28ck153 = 0.9 time = 770
.meas tran vdout1_28ck153 FIND v(dout1_28) AT=770.025n

* CHECK dout1_29 Vdout1_29ck153 = 0 time = 770
.meas tran vdout1_29ck153 FIND v(dout1_29) AT=770.025n

* CHECK dout1_30 Vdout1_30ck153 = 0.9 time = 770
.meas tran vdout1_30ck153 FIND v(dout1_30) AT=770.025n

* CHECK dout1_31 Vdout1_31ck153 = 0 time = 770
.meas tran vdout1_31ck153 FIND v(dout1_31) AT=770.025n

* CHECK dout1_0 Vdout1_0ck154 = 0.9 time = 775
.meas tran vdout1_0ck154 FIND v(dout1_0) AT=775.025n

* CHECK dout1_1 Vdout1_1ck154 = 0 time = 775
.meas tran vdout1_1ck154 FIND v(dout1_1) AT=775.025n

* CHECK dout1_2 Vdout1_2ck154 = 0.9 time = 775
.meas tran vdout1_2ck154 FIND v(dout1_2) AT=775.025n

* CHECK dout1_3 Vdout1_3ck154 = 0 time = 775
.meas tran vdout1_3ck154 FIND v(dout1_3) AT=775.025n

* CHECK dout1_4 Vdout1_4ck154 = 0 time = 775
.meas tran vdout1_4ck154 FIND v(dout1_4) AT=775.025n

* CHECK dout1_5 Vdout1_5ck154 = 0.9 time = 775
.meas tran vdout1_5ck154 FIND v(dout1_5) AT=775.025n

* CHECK dout1_6 Vdout1_6ck154 = 0.9 time = 775
.meas tran vdout1_6ck154 FIND v(dout1_6) AT=775.025n

* CHECK dout1_7 Vdout1_7ck154 = 0 time = 775
.meas tran vdout1_7ck154 FIND v(dout1_7) AT=775.025n

* CHECK dout1_8 Vdout1_8ck154 = 0 time = 775
.meas tran vdout1_8ck154 FIND v(dout1_8) AT=775.025n

* CHECK dout1_9 Vdout1_9ck154 = 0.9 time = 775
.meas tran vdout1_9ck154 FIND v(dout1_9) AT=775.025n

* CHECK dout1_10 Vdout1_10ck154 = 0 time = 775
.meas tran vdout1_10ck154 FIND v(dout1_10) AT=775.025n

* CHECK dout1_11 Vdout1_11ck154 = 0.9 time = 775
.meas tran vdout1_11ck154 FIND v(dout1_11) AT=775.025n

* CHECK dout1_12 Vdout1_12ck154 = 0.9 time = 775
.meas tran vdout1_12ck154 FIND v(dout1_12) AT=775.025n

* CHECK dout1_13 Vdout1_13ck154 = 0 time = 775
.meas tran vdout1_13ck154 FIND v(dout1_13) AT=775.025n

* CHECK dout1_14 Vdout1_14ck154 = 0 time = 775
.meas tran vdout1_14ck154 FIND v(dout1_14) AT=775.025n

* CHECK dout1_15 Vdout1_15ck154 = 0 time = 775
.meas tran vdout1_15ck154 FIND v(dout1_15) AT=775.025n

* CHECK dout1_16 Vdout1_16ck154 = 0.9 time = 775
.meas tran vdout1_16ck154 FIND v(dout1_16) AT=775.025n

* CHECK dout1_17 Vdout1_17ck154 = 0.9 time = 775
.meas tran vdout1_17ck154 FIND v(dout1_17) AT=775.025n

* CHECK dout1_18 Vdout1_18ck154 = 0.9 time = 775
.meas tran vdout1_18ck154 FIND v(dout1_18) AT=775.025n

* CHECK dout1_19 Vdout1_19ck154 = 0 time = 775
.meas tran vdout1_19ck154 FIND v(dout1_19) AT=775.025n

* CHECK dout1_20 Vdout1_20ck154 = 0.9 time = 775
.meas tran vdout1_20ck154 FIND v(dout1_20) AT=775.025n

* CHECK dout1_21 Vdout1_21ck154 = 0 time = 775
.meas tran vdout1_21ck154 FIND v(dout1_21) AT=775.025n

* CHECK dout1_22 Vdout1_22ck154 = 0.9 time = 775
.meas tran vdout1_22ck154 FIND v(dout1_22) AT=775.025n

* CHECK dout1_23 Vdout1_23ck154 = 0 time = 775
.meas tran vdout1_23ck154 FIND v(dout1_23) AT=775.025n

* CHECK dout1_24 Vdout1_24ck154 = 0 time = 775
.meas tran vdout1_24ck154 FIND v(dout1_24) AT=775.025n

* CHECK dout1_25 Vdout1_25ck154 = 0 time = 775
.meas tran vdout1_25ck154 FIND v(dout1_25) AT=775.025n

* CHECK dout1_26 Vdout1_26ck154 = 0 time = 775
.meas tran vdout1_26ck154 FIND v(dout1_26) AT=775.025n

* CHECK dout1_27 Vdout1_27ck154 = 0 time = 775
.meas tran vdout1_27ck154 FIND v(dout1_27) AT=775.025n

* CHECK dout1_28 Vdout1_28ck154 = 0 time = 775
.meas tran vdout1_28ck154 FIND v(dout1_28) AT=775.025n

* CHECK dout1_29 Vdout1_29ck154 = 0 time = 775
.meas tran vdout1_29ck154 FIND v(dout1_29) AT=775.025n

* CHECK dout1_30 Vdout1_30ck154 = 0 time = 775
.meas tran vdout1_30ck154 FIND v(dout1_30) AT=775.025n

* CHECK dout1_31 Vdout1_31ck154 = 0 time = 775
.meas tran vdout1_31ck154 FIND v(dout1_31) AT=775.025n

* CHECK dout1_0 Vdout1_0ck155 = 0 time = 780
.meas tran vdout1_0ck155 FIND v(dout1_0) AT=780.025n

* CHECK dout1_1 Vdout1_1ck155 = 0.9 time = 780
.meas tran vdout1_1ck155 FIND v(dout1_1) AT=780.025n

* CHECK dout1_2 Vdout1_2ck155 = 0 time = 780
.meas tran vdout1_2ck155 FIND v(dout1_2) AT=780.025n

* CHECK dout1_3 Vdout1_3ck155 = 0 time = 780
.meas tran vdout1_3ck155 FIND v(dout1_3) AT=780.025n

* CHECK dout1_4 Vdout1_4ck155 = 0 time = 780
.meas tran vdout1_4ck155 FIND v(dout1_4) AT=780.025n

* CHECK dout1_5 Vdout1_5ck155 = 0.9 time = 780
.meas tran vdout1_5ck155 FIND v(dout1_5) AT=780.025n

* CHECK dout1_6 Vdout1_6ck155 = 0 time = 780
.meas tran vdout1_6ck155 FIND v(dout1_6) AT=780.025n

* CHECK dout1_7 Vdout1_7ck155 = 0.9 time = 780
.meas tran vdout1_7ck155 FIND v(dout1_7) AT=780.025n

* CHECK dout1_8 Vdout1_8ck155 = 0 time = 780
.meas tran vdout1_8ck155 FIND v(dout1_8) AT=780.025n

* CHECK dout1_9 Vdout1_9ck155 = 0 time = 780
.meas tran vdout1_9ck155 FIND v(dout1_9) AT=780.025n

* CHECK dout1_10 Vdout1_10ck155 = 0 time = 780
.meas tran vdout1_10ck155 FIND v(dout1_10) AT=780.025n

* CHECK dout1_11 Vdout1_11ck155 = 0 time = 780
.meas tran vdout1_11ck155 FIND v(dout1_11) AT=780.025n

* CHECK dout1_12 Vdout1_12ck155 = 0 time = 780
.meas tran vdout1_12ck155 FIND v(dout1_12) AT=780.025n

* CHECK dout1_13 Vdout1_13ck155 = 0 time = 780
.meas tran vdout1_13ck155 FIND v(dout1_13) AT=780.025n

* CHECK dout1_14 Vdout1_14ck155 = 0 time = 780
.meas tran vdout1_14ck155 FIND v(dout1_14) AT=780.025n

* CHECK dout1_15 Vdout1_15ck155 = 0.9 time = 780
.meas tran vdout1_15ck155 FIND v(dout1_15) AT=780.025n

* CHECK dout1_16 Vdout1_16ck155 = 0.9 time = 780
.meas tran vdout1_16ck155 FIND v(dout1_16) AT=780.025n

* CHECK dout1_17 Vdout1_17ck155 = 0.9 time = 780
.meas tran vdout1_17ck155 FIND v(dout1_17) AT=780.025n

* CHECK dout1_18 Vdout1_18ck155 = 0.9 time = 780
.meas tran vdout1_18ck155 FIND v(dout1_18) AT=780.025n

* CHECK dout1_19 Vdout1_19ck155 = 0 time = 780
.meas tran vdout1_19ck155 FIND v(dout1_19) AT=780.025n

* CHECK dout1_20 Vdout1_20ck155 = 0.9 time = 780
.meas tran vdout1_20ck155 FIND v(dout1_20) AT=780.025n

* CHECK dout1_21 Vdout1_21ck155 = 0 time = 780
.meas tran vdout1_21ck155 FIND v(dout1_21) AT=780.025n

* CHECK dout1_22 Vdout1_22ck155 = 0 time = 780
.meas tran vdout1_22ck155 FIND v(dout1_22) AT=780.025n

* CHECK dout1_23 Vdout1_23ck155 = 0 time = 780
.meas tran vdout1_23ck155 FIND v(dout1_23) AT=780.025n

* CHECK dout1_24 Vdout1_24ck155 = 0 time = 780
.meas tran vdout1_24ck155 FIND v(dout1_24) AT=780.025n

* CHECK dout1_25 Vdout1_25ck155 = 0 time = 780
.meas tran vdout1_25ck155 FIND v(dout1_25) AT=780.025n

* CHECK dout1_26 Vdout1_26ck155 = 0.9 time = 780
.meas tran vdout1_26ck155 FIND v(dout1_26) AT=780.025n

* CHECK dout1_27 Vdout1_27ck155 = 0 time = 780
.meas tran vdout1_27ck155 FIND v(dout1_27) AT=780.025n

* CHECK dout1_28 Vdout1_28ck155 = 0.9 time = 780
.meas tran vdout1_28ck155 FIND v(dout1_28) AT=780.025n

* CHECK dout1_29 Vdout1_29ck155 = 0 time = 780
.meas tran vdout1_29ck155 FIND v(dout1_29) AT=780.025n

* CHECK dout1_30 Vdout1_30ck155 = 0.9 time = 780
.meas tran vdout1_30ck155 FIND v(dout1_30) AT=780.025n

* CHECK dout1_31 Vdout1_31ck155 = 0 time = 780
.meas tran vdout1_31ck155 FIND v(dout1_31) AT=780.025n

* CHECK dout1_0 Vdout1_0ck164 = 0 time = 825
.meas tran vdout1_0ck164 FIND v(dout1_0) AT=825.025n

* CHECK dout1_1 Vdout1_1ck164 = 0 time = 825
.meas tran vdout1_1ck164 FIND v(dout1_1) AT=825.025n

* CHECK dout1_2 Vdout1_2ck164 = 0.9 time = 825
.meas tran vdout1_2ck164 FIND v(dout1_2) AT=825.025n

* CHECK dout1_3 Vdout1_3ck164 = 0 time = 825
.meas tran vdout1_3ck164 FIND v(dout1_3) AT=825.025n

* CHECK dout1_4 Vdout1_4ck164 = 0 time = 825
.meas tran vdout1_4ck164 FIND v(dout1_4) AT=825.025n

* CHECK dout1_5 Vdout1_5ck164 = 0.9 time = 825
.meas tran vdout1_5ck164 FIND v(dout1_5) AT=825.025n

* CHECK dout1_6 Vdout1_6ck164 = 0.9 time = 825
.meas tran vdout1_6ck164 FIND v(dout1_6) AT=825.025n

* CHECK dout1_7 Vdout1_7ck164 = 0.9 time = 825
.meas tran vdout1_7ck164 FIND v(dout1_7) AT=825.025n

* CHECK dout1_8 Vdout1_8ck164 = 0 time = 825
.meas tran vdout1_8ck164 FIND v(dout1_8) AT=825.025n

* CHECK dout1_9 Vdout1_9ck164 = 0 time = 825
.meas tran vdout1_9ck164 FIND v(dout1_9) AT=825.025n

* CHECK dout1_10 Vdout1_10ck164 = 0.9 time = 825
.meas tran vdout1_10ck164 FIND v(dout1_10) AT=825.025n

* CHECK dout1_11 Vdout1_11ck164 = 0 time = 825
.meas tran vdout1_11ck164 FIND v(dout1_11) AT=825.025n

* CHECK dout1_12 Vdout1_12ck164 = 0.9 time = 825
.meas tran vdout1_12ck164 FIND v(dout1_12) AT=825.025n

* CHECK dout1_13 Vdout1_13ck164 = 0 time = 825
.meas tran vdout1_13ck164 FIND v(dout1_13) AT=825.025n

* CHECK dout1_14 Vdout1_14ck164 = 0 time = 825
.meas tran vdout1_14ck164 FIND v(dout1_14) AT=825.025n

* CHECK dout1_15 Vdout1_15ck164 = 0.9 time = 825
.meas tran vdout1_15ck164 FIND v(dout1_15) AT=825.025n

* CHECK dout1_16 Vdout1_16ck164 = 0 time = 825
.meas tran vdout1_16ck164 FIND v(dout1_16) AT=825.025n

* CHECK dout1_17 Vdout1_17ck164 = 0.9 time = 825
.meas tran vdout1_17ck164 FIND v(dout1_17) AT=825.025n

* CHECK dout1_18 Vdout1_18ck164 = 0.9 time = 825
.meas tran vdout1_18ck164 FIND v(dout1_18) AT=825.025n

* CHECK dout1_19 Vdout1_19ck164 = 0.9 time = 825
.meas tran vdout1_19ck164 FIND v(dout1_19) AT=825.025n

* CHECK dout1_20 Vdout1_20ck164 = 0.9 time = 825
.meas tran vdout1_20ck164 FIND v(dout1_20) AT=825.025n

* CHECK dout1_21 Vdout1_21ck164 = 0.9 time = 825
.meas tran vdout1_21ck164 FIND v(dout1_21) AT=825.025n

* CHECK dout1_22 Vdout1_22ck164 = 0 time = 825
.meas tran vdout1_22ck164 FIND v(dout1_22) AT=825.025n

* CHECK dout1_23 Vdout1_23ck164 = 0.9 time = 825
.meas tran vdout1_23ck164 FIND v(dout1_23) AT=825.025n

* CHECK dout1_24 Vdout1_24ck164 = 0 time = 825
.meas tran vdout1_24ck164 FIND v(dout1_24) AT=825.025n

* CHECK dout1_25 Vdout1_25ck164 = 0.9 time = 825
.meas tran vdout1_25ck164 FIND v(dout1_25) AT=825.025n

* CHECK dout1_26 Vdout1_26ck164 = 0.9 time = 825
.meas tran vdout1_26ck164 FIND v(dout1_26) AT=825.025n

* CHECK dout1_27 Vdout1_27ck164 = 0 time = 825
.meas tran vdout1_27ck164 FIND v(dout1_27) AT=825.025n

* CHECK dout1_28 Vdout1_28ck164 = 0 time = 825
.meas tran vdout1_28ck164 FIND v(dout1_28) AT=825.025n

* CHECK dout1_29 Vdout1_29ck164 = 0 time = 825
.meas tran vdout1_29ck164 FIND v(dout1_29) AT=825.025n

* CHECK dout1_30 Vdout1_30ck164 = 0 time = 825
.meas tran vdout1_30ck164 FIND v(dout1_30) AT=825.025n

* CHECK dout1_31 Vdout1_31ck164 = 0.9 time = 825
.meas tran vdout1_31ck164 FIND v(dout1_31) AT=825.025n

* CHECK dout1_0 Vdout1_0ck165 = 0 time = 830
.meas tran vdout1_0ck165 FIND v(dout1_0) AT=830.025n

* CHECK dout1_1 Vdout1_1ck165 = 0 time = 830
.meas tran vdout1_1ck165 FIND v(dout1_1) AT=830.025n

* CHECK dout1_2 Vdout1_2ck165 = 0.9 time = 830
.meas tran vdout1_2ck165 FIND v(dout1_2) AT=830.025n

* CHECK dout1_3 Vdout1_3ck165 = 0 time = 830
.meas tran vdout1_3ck165 FIND v(dout1_3) AT=830.025n

* CHECK dout1_4 Vdout1_4ck165 = 0 time = 830
.meas tran vdout1_4ck165 FIND v(dout1_4) AT=830.025n

* CHECK dout1_5 Vdout1_5ck165 = 0.9 time = 830
.meas tran vdout1_5ck165 FIND v(dout1_5) AT=830.025n

* CHECK dout1_6 Vdout1_6ck165 = 0.9 time = 830
.meas tran vdout1_6ck165 FIND v(dout1_6) AT=830.025n

* CHECK dout1_7 Vdout1_7ck165 = 0.9 time = 830
.meas tran vdout1_7ck165 FIND v(dout1_7) AT=830.025n

* CHECK dout1_8 Vdout1_8ck165 = 0 time = 830
.meas tran vdout1_8ck165 FIND v(dout1_8) AT=830.025n

* CHECK dout1_9 Vdout1_9ck165 = 0 time = 830
.meas tran vdout1_9ck165 FIND v(dout1_9) AT=830.025n

* CHECK dout1_10 Vdout1_10ck165 = 0.9 time = 830
.meas tran vdout1_10ck165 FIND v(dout1_10) AT=830.025n

* CHECK dout1_11 Vdout1_11ck165 = 0 time = 830
.meas tran vdout1_11ck165 FIND v(dout1_11) AT=830.025n

* CHECK dout1_12 Vdout1_12ck165 = 0.9 time = 830
.meas tran vdout1_12ck165 FIND v(dout1_12) AT=830.025n

* CHECK dout1_13 Vdout1_13ck165 = 0 time = 830
.meas tran vdout1_13ck165 FIND v(dout1_13) AT=830.025n

* CHECK dout1_14 Vdout1_14ck165 = 0 time = 830
.meas tran vdout1_14ck165 FIND v(dout1_14) AT=830.025n

* CHECK dout1_15 Vdout1_15ck165 = 0.9 time = 830
.meas tran vdout1_15ck165 FIND v(dout1_15) AT=830.025n

* CHECK dout1_16 Vdout1_16ck165 = 0 time = 830
.meas tran vdout1_16ck165 FIND v(dout1_16) AT=830.025n

* CHECK dout1_17 Vdout1_17ck165 = 0.9 time = 830
.meas tran vdout1_17ck165 FIND v(dout1_17) AT=830.025n

* CHECK dout1_18 Vdout1_18ck165 = 0.9 time = 830
.meas tran vdout1_18ck165 FIND v(dout1_18) AT=830.025n

* CHECK dout1_19 Vdout1_19ck165 = 0.9 time = 830
.meas tran vdout1_19ck165 FIND v(dout1_19) AT=830.025n

* CHECK dout1_20 Vdout1_20ck165 = 0.9 time = 830
.meas tran vdout1_20ck165 FIND v(dout1_20) AT=830.025n

* CHECK dout1_21 Vdout1_21ck165 = 0.9 time = 830
.meas tran vdout1_21ck165 FIND v(dout1_21) AT=830.025n

* CHECK dout1_22 Vdout1_22ck165 = 0 time = 830
.meas tran vdout1_22ck165 FIND v(dout1_22) AT=830.025n

* CHECK dout1_23 Vdout1_23ck165 = 0.9 time = 830
.meas tran vdout1_23ck165 FIND v(dout1_23) AT=830.025n

* CHECK dout1_24 Vdout1_24ck165 = 0 time = 830
.meas tran vdout1_24ck165 FIND v(dout1_24) AT=830.025n

* CHECK dout1_25 Vdout1_25ck165 = 0.9 time = 830
.meas tran vdout1_25ck165 FIND v(dout1_25) AT=830.025n

* CHECK dout1_26 Vdout1_26ck165 = 0.9 time = 830
.meas tran vdout1_26ck165 FIND v(dout1_26) AT=830.025n

* CHECK dout1_27 Vdout1_27ck165 = 0 time = 830
.meas tran vdout1_27ck165 FIND v(dout1_27) AT=830.025n

* CHECK dout1_28 Vdout1_28ck165 = 0 time = 830
.meas tran vdout1_28ck165 FIND v(dout1_28) AT=830.025n

* CHECK dout1_29 Vdout1_29ck165 = 0 time = 830
.meas tran vdout1_29ck165 FIND v(dout1_29) AT=830.025n

* CHECK dout1_30 Vdout1_30ck165 = 0 time = 830
.meas tran vdout1_30ck165 FIND v(dout1_30) AT=830.025n

* CHECK dout1_31 Vdout1_31ck165 = 0.9 time = 830
.meas tran vdout1_31ck165 FIND v(dout1_31) AT=830.025n

* CHECK dout1_0 Vdout1_0ck170 = 0 time = 855
.meas tran vdout1_0ck170 FIND v(dout1_0) AT=855.025n

* CHECK dout1_1 Vdout1_1ck170 = 0 time = 855
.meas tran vdout1_1ck170 FIND v(dout1_1) AT=855.025n

* CHECK dout1_2 Vdout1_2ck170 = 0.9 time = 855
.meas tran vdout1_2ck170 FIND v(dout1_2) AT=855.025n

* CHECK dout1_3 Vdout1_3ck170 = 0 time = 855
.meas tran vdout1_3ck170 FIND v(dout1_3) AT=855.025n

* CHECK dout1_4 Vdout1_4ck170 = 0 time = 855
.meas tran vdout1_4ck170 FIND v(dout1_4) AT=855.025n

* CHECK dout1_5 Vdout1_5ck170 = 0.9 time = 855
.meas tran vdout1_5ck170 FIND v(dout1_5) AT=855.025n

* CHECK dout1_6 Vdout1_6ck170 = 0.9 time = 855
.meas tran vdout1_6ck170 FIND v(dout1_6) AT=855.025n

* CHECK dout1_7 Vdout1_7ck170 = 0.9 time = 855
.meas tran vdout1_7ck170 FIND v(dout1_7) AT=855.025n

* CHECK dout1_8 Vdout1_8ck170 = 0 time = 855
.meas tran vdout1_8ck170 FIND v(dout1_8) AT=855.025n

* CHECK dout1_9 Vdout1_9ck170 = 0 time = 855
.meas tran vdout1_9ck170 FIND v(dout1_9) AT=855.025n

* CHECK dout1_10 Vdout1_10ck170 = 0.9 time = 855
.meas tran vdout1_10ck170 FIND v(dout1_10) AT=855.025n

* CHECK dout1_11 Vdout1_11ck170 = 0 time = 855
.meas tran vdout1_11ck170 FIND v(dout1_11) AT=855.025n

* CHECK dout1_12 Vdout1_12ck170 = 0.9 time = 855
.meas tran vdout1_12ck170 FIND v(dout1_12) AT=855.025n

* CHECK dout1_13 Vdout1_13ck170 = 0 time = 855
.meas tran vdout1_13ck170 FIND v(dout1_13) AT=855.025n

* CHECK dout1_14 Vdout1_14ck170 = 0 time = 855
.meas tran vdout1_14ck170 FIND v(dout1_14) AT=855.025n

* CHECK dout1_15 Vdout1_15ck170 = 0.9 time = 855
.meas tran vdout1_15ck170 FIND v(dout1_15) AT=855.025n

* CHECK dout1_16 Vdout1_16ck170 = 0 time = 855
.meas tran vdout1_16ck170 FIND v(dout1_16) AT=855.025n

* CHECK dout1_17 Vdout1_17ck170 = 0.9 time = 855
.meas tran vdout1_17ck170 FIND v(dout1_17) AT=855.025n

* CHECK dout1_18 Vdout1_18ck170 = 0.9 time = 855
.meas tran vdout1_18ck170 FIND v(dout1_18) AT=855.025n

* CHECK dout1_19 Vdout1_19ck170 = 0.9 time = 855
.meas tran vdout1_19ck170 FIND v(dout1_19) AT=855.025n

* CHECK dout1_20 Vdout1_20ck170 = 0.9 time = 855
.meas tran vdout1_20ck170 FIND v(dout1_20) AT=855.025n

* CHECK dout1_21 Vdout1_21ck170 = 0.9 time = 855
.meas tran vdout1_21ck170 FIND v(dout1_21) AT=855.025n

* CHECK dout1_22 Vdout1_22ck170 = 0 time = 855
.meas tran vdout1_22ck170 FIND v(dout1_22) AT=855.025n

* CHECK dout1_23 Vdout1_23ck170 = 0.9 time = 855
.meas tran vdout1_23ck170 FIND v(dout1_23) AT=855.025n

* CHECK dout1_24 Vdout1_24ck170 = 0 time = 855
.meas tran vdout1_24ck170 FIND v(dout1_24) AT=855.025n

* CHECK dout1_25 Vdout1_25ck170 = 0.9 time = 855
.meas tran vdout1_25ck170 FIND v(dout1_25) AT=855.025n

* CHECK dout1_26 Vdout1_26ck170 = 0.9 time = 855
.meas tran vdout1_26ck170 FIND v(dout1_26) AT=855.025n

* CHECK dout1_27 Vdout1_27ck170 = 0 time = 855
.meas tran vdout1_27ck170 FIND v(dout1_27) AT=855.025n

* CHECK dout1_28 Vdout1_28ck170 = 0 time = 855
.meas tran vdout1_28ck170 FIND v(dout1_28) AT=855.025n

* CHECK dout1_29 Vdout1_29ck170 = 0 time = 855
.meas tran vdout1_29ck170 FIND v(dout1_29) AT=855.025n

* CHECK dout1_30 Vdout1_30ck170 = 0 time = 855
.meas tran vdout1_30ck170 FIND v(dout1_30) AT=855.025n

* CHECK dout1_31 Vdout1_31ck170 = 0.9 time = 855
.meas tran vdout1_31ck170 FIND v(dout1_31) AT=855.025n

* CHECK dout1_0 Vdout1_0ck171 = 0 time = 860
.meas tran vdout1_0ck171 FIND v(dout1_0) AT=860.025n

* CHECK dout1_1 Vdout1_1ck171 = 0 time = 860
.meas tran vdout1_1ck171 FIND v(dout1_1) AT=860.025n

* CHECK dout1_2 Vdout1_2ck171 = 0.9 time = 860
.meas tran vdout1_2ck171 FIND v(dout1_2) AT=860.025n

* CHECK dout1_3 Vdout1_3ck171 = 0 time = 860
.meas tran vdout1_3ck171 FIND v(dout1_3) AT=860.025n

* CHECK dout1_4 Vdout1_4ck171 = 0 time = 860
.meas tran vdout1_4ck171 FIND v(dout1_4) AT=860.025n

* CHECK dout1_5 Vdout1_5ck171 = 0.9 time = 860
.meas tran vdout1_5ck171 FIND v(dout1_5) AT=860.025n

* CHECK dout1_6 Vdout1_6ck171 = 0.9 time = 860
.meas tran vdout1_6ck171 FIND v(dout1_6) AT=860.025n

* CHECK dout1_7 Vdout1_7ck171 = 0.9 time = 860
.meas tran vdout1_7ck171 FIND v(dout1_7) AT=860.025n

* CHECK dout1_8 Vdout1_8ck171 = 0 time = 860
.meas tran vdout1_8ck171 FIND v(dout1_8) AT=860.025n

* CHECK dout1_9 Vdout1_9ck171 = 0 time = 860
.meas tran vdout1_9ck171 FIND v(dout1_9) AT=860.025n

* CHECK dout1_10 Vdout1_10ck171 = 0.9 time = 860
.meas tran vdout1_10ck171 FIND v(dout1_10) AT=860.025n

* CHECK dout1_11 Vdout1_11ck171 = 0 time = 860
.meas tran vdout1_11ck171 FIND v(dout1_11) AT=860.025n

* CHECK dout1_12 Vdout1_12ck171 = 0.9 time = 860
.meas tran vdout1_12ck171 FIND v(dout1_12) AT=860.025n

* CHECK dout1_13 Vdout1_13ck171 = 0 time = 860
.meas tran vdout1_13ck171 FIND v(dout1_13) AT=860.025n

* CHECK dout1_14 Vdout1_14ck171 = 0 time = 860
.meas tran vdout1_14ck171 FIND v(dout1_14) AT=860.025n

* CHECK dout1_15 Vdout1_15ck171 = 0.9 time = 860
.meas tran vdout1_15ck171 FIND v(dout1_15) AT=860.025n

* CHECK dout1_16 Vdout1_16ck171 = 0 time = 860
.meas tran vdout1_16ck171 FIND v(dout1_16) AT=860.025n

* CHECK dout1_17 Vdout1_17ck171 = 0.9 time = 860
.meas tran vdout1_17ck171 FIND v(dout1_17) AT=860.025n

* CHECK dout1_18 Vdout1_18ck171 = 0.9 time = 860
.meas tran vdout1_18ck171 FIND v(dout1_18) AT=860.025n

* CHECK dout1_19 Vdout1_19ck171 = 0.9 time = 860
.meas tran vdout1_19ck171 FIND v(dout1_19) AT=860.025n

* CHECK dout1_20 Vdout1_20ck171 = 0.9 time = 860
.meas tran vdout1_20ck171 FIND v(dout1_20) AT=860.025n

* CHECK dout1_21 Vdout1_21ck171 = 0.9 time = 860
.meas tran vdout1_21ck171 FIND v(dout1_21) AT=860.025n

* CHECK dout1_22 Vdout1_22ck171 = 0 time = 860
.meas tran vdout1_22ck171 FIND v(dout1_22) AT=860.025n

* CHECK dout1_23 Vdout1_23ck171 = 0.9 time = 860
.meas tran vdout1_23ck171 FIND v(dout1_23) AT=860.025n

* CHECK dout1_24 Vdout1_24ck171 = 0 time = 860
.meas tran vdout1_24ck171 FIND v(dout1_24) AT=860.025n

* CHECK dout1_25 Vdout1_25ck171 = 0.9 time = 860
.meas tran vdout1_25ck171 FIND v(dout1_25) AT=860.025n

* CHECK dout1_26 Vdout1_26ck171 = 0.9 time = 860
.meas tran vdout1_26ck171 FIND v(dout1_26) AT=860.025n

* CHECK dout1_27 Vdout1_27ck171 = 0 time = 860
.meas tran vdout1_27ck171 FIND v(dout1_27) AT=860.025n

* CHECK dout1_28 Vdout1_28ck171 = 0 time = 860
.meas tran vdout1_28ck171 FIND v(dout1_28) AT=860.025n

* CHECK dout1_29 Vdout1_29ck171 = 0 time = 860
.meas tran vdout1_29ck171 FIND v(dout1_29) AT=860.025n

* CHECK dout1_30 Vdout1_30ck171 = 0 time = 860
.meas tran vdout1_30ck171 FIND v(dout1_30) AT=860.025n

* CHECK dout1_31 Vdout1_31ck171 = 0.9 time = 860
.meas tran vdout1_31ck171 FIND v(dout1_31) AT=860.025n

* CHECK dout1_0 Vdout1_0ck172 = 0.9 time = 865
.meas tran vdout1_0ck172 FIND v(dout1_0) AT=865.025n

* CHECK dout1_1 Vdout1_1ck172 = 0.9 time = 865
.meas tran vdout1_1ck172 FIND v(dout1_1) AT=865.025n

* CHECK dout1_2 Vdout1_2ck172 = 0 time = 865
.meas tran vdout1_2ck172 FIND v(dout1_2) AT=865.025n

* CHECK dout1_3 Vdout1_3ck172 = 0 time = 865
.meas tran vdout1_3ck172 FIND v(dout1_3) AT=865.025n

* CHECK dout1_4 Vdout1_4ck172 = 0 time = 865
.meas tran vdout1_4ck172 FIND v(dout1_4) AT=865.025n

* CHECK dout1_5 Vdout1_5ck172 = 0 time = 865
.meas tran vdout1_5ck172 FIND v(dout1_5) AT=865.025n

* CHECK dout1_6 Vdout1_6ck172 = 0 time = 865
.meas tran vdout1_6ck172 FIND v(dout1_6) AT=865.025n

* CHECK dout1_7 Vdout1_7ck172 = 0.9 time = 865
.meas tran vdout1_7ck172 FIND v(dout1_7) AT=865.025n

* CHECK dout1_8 Vdout1_8ck172 = 0.9 time = 865
.meas tran vdout1_8ck172 FIND v(dout1_8) AT=865.025n

* CHECK dout1_9 Vdout1_9ck172 = 0 time = 865
.meas tran vdout1_9ck172 FIND v(dout1_9) AT=865.025n

* CHECK dout1_10 Vdout1_10ck172 = 0.9 time = 865
.meas tran vdout1_10ck172 FIND v(dout1_10) AT=865.025n

* CHECK dout1_11 Vdout1_11ck172 = 0 time = 865
.meas tran vdout1_11ck172 FIND v(dout1_11) AT=865.025n

* CHECK dout1_12 Vdout1_12ck172 = 0 time = 865
.meas tran vdout1_12ck172 FIND v(dout1_12) AT=865.025n

* CHECK dout1_13 Vdout1_13ck172 = 0 time = 865
.meas tran vdout1_13ck172 FIND v(dout1_13) AT=865.025n

* CHECK dout1_14 Vdout1_14ck172 = 0.9 time = 865
.meas tran vdout1_14ck172 FIND v(dout1_14) AT=865.025n

* CHECK dout1_15 Vdout1_15ck172 = 0 time = 865
.meas tran vdout1_15ck172 FIND v(dout1_15) AT=865.025n

* CHECK dout1_16 Vdout1_16ck172 = 0 time = 865
.meas tran vdout1_16ck172 FIND v(dout1_16) AT=865.025n

* CHECK dout1_17 Vdout1_17ck172 = 0.9 time = 865
.meas tran vdout1_17ck172 FIND v(dout1_17) AT=865.025n

* CHECK dout1_18 Vdout1_18ck172 = 0.9 time = 865
.meas tran vdout1_18ck172 FIND v(dout1_18) AT=865.025n

* CHECK dout1_19 Vdout1_19ck172 = 0.9 time = 865
.meas tran vdout1_19ck172 FIND v(dout1_19) AT=865.025n

* CHECK dout1_20 Vdout1_20ck172 = 0 time = 865
.meas tran vdout1_20ck172 FIND v(dout1_20) AT=865.025n

* CHECK dout1_21 Vdout1_21ck172 = 0.9 time = 865
.meas tran vdout1_21ck172 FIND v(dout1_21) AT=865.025n

* CHECK dout1_22 Vdout1_22ck172 = 0 time = 865
.meas tran vdout1_22ck172 FIND v(dout1_22) AT=865.025n

* CHECK dout1_23 Vdout1_23ck172 = 0 time = 865
.meas tran vdout1_23ck172 FIND v(dout1_23) AT=865.025n

* CHECK dout1_24 Vdout1_24ck172 = 0 time = 865
.meas tran vdout1_24ck172 FIND v(dout1_24) AT=865.025n

* CHECK dout1_25 Vdout1_25ck172 = 0.9 time = 865
.meas tran vdout1_25ck172 FIND v(dout1_25) AT=865.025n

* CHECK dout1_26 Vdout1_26ck172 = 0.9 time = 865
.meas tran vdout1_26ck172 FIND v(dout1_26) AT=865.025n

* CHECK dout1_27 Vdout1_27ck172 = 0 time = 865
.meas tran vdout1_27ck172 FIND v(dout1_27) AT=865.025n

* CHECK dout1_28 Vdout1_28ck172 = 0 time = 865
.meas tran vdout1_28ck172 FIND v(dout1_28) AT=865.025n

* CHECK dout1_29 Vdout1_29ck172 = 0 time = 865
.meas tran vdout1_29ck172 FIND v(dout1_29) AT=865.025n

* CHECK dout1_30 Vdout1_30ck172 = 0 time = 865
.meas tran vdout1_30ck172 FIND v(dout1_30) AT=865.025n

* CHECK dout1_31 Vdout1_31ck172 = 0 time = 865
.meas tran vdout1_31ck172 FIND v(dout1_31) AT=865.025n

* CHECK dout1_0 Vdout1_0ck174 = 0.9 time = 875
.meas tran vdout1_0ck174 FIND v(dout1_0) AT=875.025n

* CHECK dout1_1 Vdout1_1ck174 = 0.9 time = 875
.meas tran vdout1_1ck174 FIND v(dout1_1) AT=875.025n

* CHECK dout1_2 Vdout1_2ck174 = 0 time = 875
.meas tran vdout1_2ck174 FIND v(dout1_2) AT=875.025n

* CHECK dout1_3 Vdout1_3ck174 = 0 time = 875
.meas tran vdout1_3ck174 FIND v(dout1_3) AT=875.025n

* CHECK dout1_4 Vdout1_4ck174 = 0 time = 875
.meas tran vdout1_4ck174 FIND v(dout1_4) AT=875.025n

* CHECK dout1_5 Vdout1_5ck174 = 0 time = 875
.meas tran vdout1_5ck174 FIND v(dout1_5) AT=875.025n

* CHECK dout1_6 Vdout1_6ck174 = 0.9 time = 875
.meas tran vdout1_6ck174 FIND v(dout1_6) AT=875.025n

* CHECK dout1_7 Vdout1_7ck174 = 0 time = 875
.meas tran vdout1_7ck174 FIND v(dout1_7) AT=875.025n

* CHECK dout1_8 Vdout1_8ck174 = 0.9 time = 875
.meas tran vdout1_8ck174 FIND v(dout1_8) AT=875.025n

* CHECK dout1_9 Vdout1_9ck174 = 0 time = 875
.meas tran vdout1_9ck174 FIND v(dout1_9) AT=875.025n

* CHECK dout1_10 Vdout1_10ck174 = 0 time = 875
.meas tran vdout1_10ck174 FIND v(dout1_10) AT=875.025n

* CHECK dout1_11 Vdout1_11ck174 = 0 time = 875
.meas tran vdout1_11ck174 FIND v(dout1_11) AT=875.025n

* CHECK dout1_12 Vdout1_12ck174 = 0.9 time = 875
.meas tran vdout1_12ck174 FIND v(dout1_12) AT=875.025n

* CHECK dout1_13 Vdout1_13ck174 = 0 time = 875
.meas tran vdout1_13ck174 FIND v(dout1_13) AT=875.025n

* CHECK dout1_14 Vdout1_14ck174 = 0.9 time = 875
.meas tran vdout1_14ck174 FIND v(dout1_14) AT=875.025n

* CHECK dout1_15 Vdout1_15ck174 = 0.9 time = 875
.meas tran vdout1_15ck174 FIND v(dout1_15) AT=875.025n

* CHECK dout1_16 Vdout1_16ck174 = 0 time = 875
.meas tran vdout1_16ck174 FIND v(dout1_16) AT=875.025n

* CHECK dout1_17 Vdout1_17ck174 = 0 time = 875
.meas tran vdout1_17ck174 FIND v(dout1_17) AT=875.025n

* CHECK dout1_18 Vdout1_18ck174 = 0 time = 875
.meas tran vdout1_18ck174 FIND v(dout1_18) AT=875.025n

* CHECK dout1_19 Vdout1_19ck174 = 0 time = 875
.meas tran vdout1_19ck174 FIND v(dout1_19) AT=875.025n

* CHECK dout1_20 Vdout1_20ck174 = 0.9 time = 875
.meas tran vdout1_20ck174 FIND v(dout1_20) AT=875.025n

* CHECK dout1_21 Vdout1_21ck174 = 0 time = 875
.meas tran vdout1_21ck174 FIND v(dout1_21) AT=875.025n

* CHECK dout1_22 Vdout1_22ck174 = 0.9 time = 875
.meas tran vdout1_22ck174 FIND v(dout1_22) AT=875.025n

* CHECK dout1_23 Vdout1_23ck174 = 0 time = 875
.meas tran vdout1_23ck174 FIND v(dout1_23) AT=875.025n

* CHECK dout1_24 Vdout1_24ck174 = 0.9 time = 875
.meas tran vdout1_24ck174 FIND v(dout1_24) AT=875.025n

* CHECK dout1_25 Vdout1_25ck174 = 0 time = 875
.meas tran vdout1_25ck174 FIND v(dout1_25) AT=875.025n

* CHECK dout1_26 Vdout1_26ck174 = 0 time = 875
.meas tran vdout1_26ck174 FIND v(dout1_26) AT=875.025n

* CHECK dout1_27 Vdout1_27ck174 = 0 time = 875
.meas tran vdout1_27ck174 FIND v(dout1_27) AT=875.025n

* CHECK dout1_28 Vdout1_28ck174 = 0 time = 875
.meas tran vdout1_28ck174 FIND v(dout1_28) AT=875.025n

* CHECK dout1_29 Vdout1_29ck174 = 0 time = 875
.meas tran vdout1_29ck174 FIND v(dout1_29) AT=875.025n

* CHECK dout1_30 Vdout1_30ck174 = 0.9 time = 875
.meas tran vdout1_30ck174 FIND v(dout1_30) AT=875.025n

* CHECK dout1_31 Vdout1_31ck174 = 0.9 time = 875
.meas tran vdout1_31ck174 FIND v(dout1_31) AT=875.025n

* CHECK dout1_0 Vdout1_0ck175 = 0.9 time = 880
.meas tran vdout1_0ck175 FIND v(dout1_0) AT=880.025n

* CHECK dout1_1 Vdout1_1ck175 = 0.9 time = 880
.meas tran vdout1_1ck175 FIND v(dout1_1) AT=880.025n

* CHECK dout1_2 Vdout1_2ck175 = 0 time = 880
.meas tran vdout1_2ck175 FIND v(dout1_2) AT=880.025n

* CHECK dout1_3 Vdout1_3ck175 = 0 time = 880
.meas tran vdout1_3ck175 FIND v(dout1_3) AT=880.025n

* CHECK dout1_4 Vdout1_4ck175 = 0 time = 880
.meas tran vdout1_4ck175 FIND v(dout1_4) AT=880.025n

* CHECK dout1_5 Vdout1_5ck175 = 0 time = 880
.meas tran vdout1_5ck175 FIND v(dout1_5) AT=880.025n

* CHECK dout1_6 Vdout1_6ck175 = 0.9 time = 880
.meas tran vdout1_6ck175 FIND v(dout1_6) AT=880.025n

* CHECK dout1_7 Vdout1_7ck175 = 0 time = 880
.meas tran vdout1_7ck175 FIND v(dout1_7) AT=880.025n

* CHECK dout1_8 Vdout1_8ck175 = 0.9 time = 880
.meas tran vdout1_8ck175 FIND v(dout1_8) AT=880.025n

* CHECK dout1_9 Vdout1_9ck175 = 0 time = 880
.meas tran vdout1_9ck175 FIND v(dout1_9) AT=880.025n

* CHECK dout1_10 Vdout1_10ck175 = 0 time = 880
.meas tran vdout1_10ck175 FIND v(dout1_10) AT=880.025n

* CHECK dout1_11 Vdout1_11ck175 = 0 time = 880
.meas tran vdout1_11ck175 FIND v(dout1_11) AT=880.025n

* CHECK dout1_12 Vdout1_12ck175 = 0.9 time = 880
.meas tran vdout1_12ck175 FIND v(dout1_12) AT=880.025n

* CHECK dout1_13 Vdout1_13ck175 = 0 time = 880
.meas tran vdout1_13ck175 FIND v(dout1_13) AT=880.025n

* CHECK dout1_14 Vdout1_14ck175 = 0.9 time = 880
.meas tran vdout1_14ck175 FIND v(dout1_14) AT=880.025n

* CHECK dout1_15 Vdout1_15ck175 = 0.9 time = 880
.meas tran vdout1_15ck175 FIND v(dout1_15) AT=880.025n

* CHECK dout1_16 Vdout1_16ck175 = 0 time = 880
.meas tran vdout1_16ck175 FIND v(dout1_16) AT=880.025n

* CHECK dout1_17 Vdout1_17ck175 = 0 time = 880
.meas tran vdout1_17ck175 FIND v(dout1_17) AT=880.025n

* CHECK dout1_18 Vdout1_18ck175 = 0 time = 880
.meas tran vdout1_18ck175 FIND v(dout1_18) AT=880.025n

* CHECK dout1_19 Vdout1_19ck175 = 0 time = 880
.meas tran vdout1_19ck175 FIND v(dout1_19) AT=880.025n

* CHECK dout1_20 Vdout1_20ck175 = 0.9 time = 880
.meas tran vdout1_20ck175 FIND v(dout1_20) AT=880.025n

* CHECK dout1_21 Vdout1_21ck175 = 0 time = 880
.meas tran vdout1_21ck175 FIND v(dout1_21) AT=880.025n

* CHECK dout1_22 Vdout1_22ck175 = 0.9 time = 880
.meas tran vdout1_22ck175 FIND v(dout1_22) AT=880.025n

* CHECK dout1_23 Vdout1_23ck175 = 0 time = 880
.meas tran vdout1_23ck175 FIND v(dout1_23) AT=880.025n

* CHECK dout1_24 Vdout1_24ck175 = 0.9 time = 880
.meas tran vdout1_24ck175 FIND v(dout1_24) AT=880.025n

* CHECK dout1_25 Vdout1_25ck175 = 0 time = 880
.meas tran vdout1_25ck175 FIND v(dout1_25) AT=880.025n

* CHECK dout1_26 Vdout1_26ck175 = 0 time = 880
.meas tran vdout1_26ck175 FIND v(dout1_26) AT=880.025n

* CHECK dout1_27 Vdout1_27ck175 = 0 time = 880
.meas tran vdout1_27ck175 FIND v(dout1_27) AT=880.025n

* CHECK dout1_28 Vdout1_28ck175 = 0 time = 880
.meas tran vdout1_28ck175 FIND v(dout1_28) AT=880.025n

* CHECK dout1_29 Vdout1_29ck175 = 0 time = 880
.meas tran vdout1_29ck175 FIND v(dout1_29) AT=880.025n

* CHECK dout1_30 Vdout1_30ck175 = 0.9 time = 880
.meas tran vdout1_30ck175 FIND v(dout1_30) AT=880.025n

* CHECK dout1_31 Vdout1_31ck175 = 0.9 time = 880
.meas tran vdout1_31ck175 FIND v(dout1_31) AT=880.025n

* CHECK dout1_0 Vdout1_0ck179 = 0.9 time = 900
.meas tran vdout1_0ck179 FIND v(dout1_0) AT=900.025n

* CHECK dout1_1 Vdout1_1ck179 = 0.9 time = 900
.meas tran vdout1_1ck179 FIND v(dout1_1) AT=900.025n

* CHECK dout1_2 Vdout1_2ck179 = 0 time = 900
.meas tran vdout1_2ck179 FIND v(dout1_2) AT=900.025n

* CHECK dout1_3 Vdout1_3ck179 = 0 time = 900
.meas tran vdout1_3ck179 FIND v(dout1_3) AT=900.025n

* CHECK dout1_4 Vdout1_4ck179 = 0 time = 900
.meas tran vdout1_4ck179 FIND v(dout1_4) AT=900.025n

* CHECK dout1_5 Vdout1_5ck179 = 0 time = 900
.meas tran vdout1_5ck179 FIND v(dout1_5) AT=900.025n

* CHECK dout1_6 Vdout1_6ck179 = 0.9 time = 900
.meas tran vdout1_6ck179 FIND v(dout1_6) AT=900.025n

* CHECK dout1_7 Vdout1_7ck179 = 0 time = 900
.meas tran vdout1_7ck179 FIND v(dout1_7) AT=900.025n

* CHECK dout1_8 Vdout1_8ck179 = 0.9 time = 900
.meas tran vdout1_8ck179 FIND v(dout1_8) AT=900.025n

* CHECK dout1_9 Vdout1_9ck179 = 0 time = 900
.meas tran vdout1_9ck179 FIND v(dout1_9) AT=900.025n

* CHECK dout1_10 Vdout1_10ck179 = 0 time = 900
.meas tran vdout1_10ck179 FIND v(dout1_10) AT=900.025n

* CHECK dout1_11 Vdout1_11ck179 = 0 time = 900
.meas tran vdout1_11ck179 FIND v(dout1_11) AT=900.025n

* CHECK dout1_12 Vdout1_12ck179 = 0.9 time = 900
.meas tran vdout1_12ck179 FIND v(dout1_12) AT=900.025n

* CHECK dout1_13 Vdout1_13ck179 = 0 time = 900
.meas tran vdout1_13ck179 FIND v(dout1_13) AT=900.025n

* CHECK dout1_14 Vdout1_14ck179 = 0.9 time = 900
.meas tran vdout1_14ck179 FIND v(dout1_14) AT=900.025n

* CHECK dout1_15 Vdout1_15ck179 = 0.9 time = 900
.meas tran vdout1_15ck179 FIND v(dout1_15) AT=900.025n

* CHECK dout1_16 Vdout1_16ck179 = 0 time = 900
.meas tran vdout1_16ck179 FIND v(dout1_16) AT=900.025n

* CHECK dout1_17 Vdout1_17ck179 = 0 time = 900
.meas tran vdout1_17ck179 FIND v(dout1_17) AT=900.025n

* CHECK dout1_18 Vdout1_18ck179 = 0 time = 900
.meas tran vdout1_18ck179 FIND v(dout1_18) AT=900.025n

* CHECK dout1_19 Vdout1_19ck179 = 0 time = 900
.meas tran vdout1_19ck179 FIND v(dout1_19) AT=900.025n

* CHECK dout1_20 Vdout1_20ck179 = 0.9 time = 900
.meas tran vdout1_20ck179 FIND v(dout1_20) AT=900.025n

* CHECK dout1_21 Vdout1_21ck179 = 0 time = 900
.meas tran vdout1_21ck179 FIND v(dout1_21) AT=900.025n

* CHECK dout1_22 Vdout1_22ck179 = 0.9 time = 900
.meas tran vdout1_22ck179 FIND v(dout1_22) AT=900.025n

* CHECK dout1_23 Vdout1_23ck179 = 0 time = 900
.meas tran vdout1_23ck179 FIND v(dout1_23) AT=900.025n

* CHECK dout1_24 Vdout1_24ck179 = 0.9 time = 900
.meas tran vdout1_24ck179 FIND v(dout1_24) AT=900.025n

* CHECK dout1_25 Vdout1_25ck179 = 0 time = 900
.meas tran vdout1_25ck179 FIND v(dout1_25) AT=900.025n

* CHECK dout1_26 Vdout1_26ck179 = 0 time = 900
.meas tran vdout1_26ck179 FIND v(dout1_26) AT=900.025n

* CHECK dout1_27 Vdout1_27ck179 = 0 time = 900
.meas tran vdout1_27ck179 FIND v(dout1_27) AT=900.025n

* CHECK dout1_28 Vdout1_28ck179 = 0 time = 900
.meas tran vdout1_28ck179 FIND v(dout1_28) AT=900.025n

* CHECK dout1_29 Vdout1_29ck179 = 0 time = 900
.meas tran vdout1_29ck179 FIND v(dout1_29) AT=900.025n

* CHECK dout1_30 Vdout1_30ck179 = 0.9 time = 900
.meas tran vdout1_30ck179 FIND v(dout1_30) AT=900.025n

* CHECK dout1_31 Vdout1_31ck179 = 0.9 time = 900
.meas tran vdout1_31ck179 FIND v(dout1_31) AT=900.025n

* CHECK dout1_0 Vdout1_0ck180 = 0.9 time = 905
.meas tran vdout1_0ck180 FIND v(dout1_0) AT=905.025n

* CHECK dout1_1 Vdout1_1ck180 = 0.9 time = 905
.meas tran vdout1_1ck180 FIND v(dout1_1) AT=905.025n

* CHECK dout1_2 Vdout1_2ck180 = 0 time = 905
.meas tran vdout1_2ck180 FIND v(dout1_2) AT=905.025n

* CHECK dout1_3 Vdout1_3ck180 = 0.9 time = 905
.meas tran vdout1_3ck180 FIND v(dout1_3) AT=905.025n

* CHECK dout1_4 Vdout1_4ck180 = 0.9 time = 905
.meas tran vdout1_4ck180 FIND v(dout1_4) AT=905.025n

* CHECK dout1_5 Vdout1_5ck180 = 0 time = 905
.meas tran vdout1_5ck180 FIND v(dout1_5) AT=905.025n

* CHECK dout1_6 Vdout1_6ck180 = 0.9 time = 905
.meas tran vdout1_6ck180 FIND v(dout1_6) AT=905.025n

* CHECK dout1_7 Vdout1_7ck180 = 0.9 time = 905
.meas tran vdout1_7ck180 FIND v(dout1_7) AT=905.025n

* CHECK dout1_8 Vdout1_8ck180 = 0 time = 905
.meas tran vdout1_8ck180 FIND v(dout1_8) AT=905.025n

* CHECK dout1_9 Vdout1_9ck180 = 0.9 time = 905
.meas tran vdout1_9ck180 FIND v(dout1_9) AT=905.025n

* CHECK dout1_10 Vdout1_10ck180 = 0 time = 905
.meas tran vdout1_10ck180 FIND v(dout1_10) AT=905.025n

* CHECK dout1_11 Vdout1_11ck180 = 0.9 time = 905
.meas tran vdout1_11ck180 FIND v(dout1_11) AT=905.025n

* CHECK dout1_12 Vdout1_12ck180 = 0.9 time = 905
.meas tran vdout1_12ck180 FIND v(dout1_12) AT=905.025n

* CHECK dout1_13 Vdout1_13ck180 = 0 time = 905
.meas tran vdout1_13ck180 FIND v(dout1_13) AT=905.025n

* CHECK dout1_14 Vdout1_14ck180 = 0.9 time = 905
.meas tran vdout1_14ck180 FIND v(dout1_14) AT=905.025n

* CHECK dout1_15 Vdout1_15ck180 = 0.9 time = 905
.meas tran vdout1_15ck180 FIND v(dout1_15) AT=905.025n

* CHECK dout1_16 Vdout1_16ck180 = 0.9 time = 905
.meas tran vdout1_16ck180 FIND v(dout1_16) AT=905.025n

* CHECK dout1_17 Vdout1_17ck180 = 0 time = 905
.meas tran vdout1_17ck180 FIND v(dout1_17) AT=905.025n

* CHECK dout1_18 Vdout1_18ck180 = 0 time = 905
.meas tran vdout1_18ck180 FIND v(dout1_18) AT=905.025n

* CHECK dout1_19 Vdout1_19ck180 = 0.9 time = 905
.meas tran vdout1_19ck180 FIND v(dout1_19) AT=905.025n

* CHECK dout1_20 Vdout1_20ck180 = 0 time = 905
.meas tran vdout1_20ck180 FIND v(dout1_20) AT=905.025n

* CHECK dout1_21 Vdout1_21ck180 = 0 time = 905
.meas tran vdout1_21ck180 FIND v(dout1_21) AT=905.025n

* CHECK dout1_22 Vdout1_22ck180 = 0 time = 905
.meas tran vdout1_22ck180 FIND v(dout1_22) AT=905.025n

* CHECK dout1_23 Vdout1_23ck180 = 0 time = 905
.meas tran vdout1_23ck180 FIND v(dout1_23) AT=905.025n

* CHECK dout1_24 Vdout1_24ck180 = 0 time = 905
.meas tran vdout1_24ck180 FIND v(dout1_24) AT=905.025n

* CHECK dout1_25 Vdout1_25ck180 = 0 time = 905
.meas tran vdout1_25ck180 FIND v(dout1_25) AT=905.025n

* CHECK dout1_26 Vdout1_26ck180 = 0.9 time = 905
.meas tran vdout1_26ck180 FIND v(dout1_26) AT=905.025n

* CHECK dout1_27 Vdout1_27ck180 = 0 time = 905
.meas tran vdout1_27ck180 FIND v(dout1_27) AT=905.025n

* CHECK dout1_28 Vdout1_28ck180 = 0 time = 905
.meas tran vdout1_28ck180 FIND v(dout1_28) AT=905.025n

* CHECK dout1_29 Vdout1_29ck180 = 0 time = 905
.meas tran vdout1_29ck180 FIND v(dout1_29) AT=905.025n

* CHECK dout1_30 Vdout1_30ck180 = 0 time = 905
.meas tran vdout1_30ck180 FIND v(dout1_30) AT=905.025n

* CHECK dout1_31 Vdout1_31ck180 = 0 time = 905
.meas tran vdout1_31ck180 FIND v(dout1_31) AT=905.025n

* CHECK dout1_0 Vdout1_0ck188 = 0.9 time = 945
.meas tran vdout1_0ck188 FIND v(dout1_0) AT=945.025n

* CHECK dout1_1 Vdout1_1ck188 = 0.9 time = 945
.meas tran vdout1_1ck188 FIND v(dout1_1) AT=945.025n

* CHECK dout1_2 Vdout1_2ck188 = 0.9 time = 945
.meas tran vdout1_2ck188 FIND v(dout1_2) AT=945.025n

* CHECK dout1_3 Vdout1_3ck188 = 0 time = 945
.meas tran vdout1_3ck188 FIND v(dout1_3) AT=945.025n

* CHECK dout1_4 Vdout1_4ck188 = 0 time = 945
.meas tran vdout1_4ck188 FIND v(dout1_4) AT=945.025n

* CHECK dout1_5 Vdout1_5ck188 = 0 time = 945
.meas tran vdout1_5ck188 FIND v(dout1_5) AT=945.025n

* CHECK dout1_6 Vdout1_6ck188 = 0.9 time = 945
.meas tran vdout1_6ck188 FIND v(dout1_6) AT=945.025n

* CHECK dout1_7 Vdout1_7ck188 = 0 time = 945
.meas tran vdout1_7ck188 FIND v(dout1_7) AT=945.025n

* CHECK dout1_8 Vdout1_8ck188 = 0.9 time = 945
.meas tran vdout1_8ck188 FIND v(dout1_8) AT=945.025n

* CHECK dout1_9 Vdout1_9ck188 = 0.9 time = 945
.meas tran vdout1_9ck188 FIND v(dout1_9) AT=945.025n

* CHECK dout1_10 Vdout1_10ck188 = 0 time = 945
.meas tran vdout1_10ck188 FIND v(dout1_10) AT=945.025n

* CHECK dout1_11 Vdout1_11ck188 = 0 time = 945
.meas tran vdout1_11ck188 FIND v(dout1_11) AT=945.025n

* CHECK dout1_12 Vdout1_12ck188 = 0 time = 945
.meas tran vdout1_12ck188 FIND v(dout1_12) AT=945.025n

* CHECK dout1_13 Vdout1_13ck188 = 0.9 time = 945
.meas tran vdout1_13ck188 FIND v(dout1_13) AT=945.025n

* CHECK dout1_14 Vdout1_14ck188 = 0 time = 945
.meas tran vdout1_14ck188 FIND v(dout1_14) AT=945.025n

* CHECK dout1_15 Vdout1_15ck188 = 0 time = 945
.meas tran vdout1_15ck188 FIND v(dout1_15) AT=945.025n

* CHECK dout1_16 Vdout1_16ck188 = 0.9 time = 945
.meas tran vdout1_16ck188 FIND v(dout1_16) AT=945.025n

* CHECK dout1_17 Vdout1_17ck188 = 0.9 time = 945
.meas tran vdout1_17ck188 FIND v(dout1_17) AT=945.025n

* CHECK dout1_18 Vdout1_18ck188 = 0.9 time = 945
.meas tran vdout1_18ck188 FIND v(dout1_18) AT=945.025n

* CHECK dout1_19 Vdout1_19ck188 = 0 time = 945
.meas tran vdout1_19ck188 FIND v(dout1_19) AT=945.025n

* CHECK dout1_20 Vdout1_20ck188 = 0 time = 945
.meas tran vdout1_20ck188 FIND v(dout1_20) AT=945.025n

* CHECK dout1_21 Vdout1_21ck188 = 0.9 time = 945
.meas tran vdout1_21ck188 FIND v(dout1_21) AT=945.025n

* CHECK dout1_22 Vdout1_22ck188 = 0.9 time = 945
.meas tran vdout1_22ck188 FIND v(dout1_22) AT=945.025n

* CHECK dout1_23 Vdout1_23ck188 = 0.9 time = 945
.meas tran vdout1_23ck188 FIND v(dout1_23) AT=945.025n

* CHECK dout1_24 Vdout1_24ck188 = 0.9 time = 945
.meas tran vdout1_24ck188 FIND v(dout1_24) AT=945.025n

* CHECK dout1_25 Vdout1_25ck188 = 0.9 time = 945
.meas tran vdout1_25ck188 FIND v(dout1_25) AT=945.025n

* CHECK dout1_26 Vdout1_26ck188 = 0.9 time = 945
.meas tran vdout1_26ck188 FIND v(dout1_26) AT=945.025n

* CHECK dout1_27 Vdout1_27ck188 = 0.9 time = 945
.meas tran vdout1_27ck188 FIND v(dout1_27) AT=945.025n

* CHECK dout1_28 Vdout1_28ck188 = 0.9 time = 945
.meas tran vdout1_28ck188 FIND v(dout1_28) AT=945.025n

* CHECK dout1_29 Vdout1_29ck188 = 0.9 time = 945
.meas tran vdout1_29ck188 FIND v(dout1_29) AT=945.025n

* CHECK dout1_30 Vdout1_30ck188 = 0.9 time = 945
.meas tran vdout1_30ck188 FIND v(dout1_30) AT=945.025n

* CHECK dout1_31 Vdout1_31ck188 = 0 time = 945
.meas tran vdout1_31ck188 FIND v(dout1_31) AT=945.025n

* CHECK dout1_0 Vdout1_0ck189 = 0.9 time = 950
.meas tran vdout1_0ck189 FIND v(dout1_0) AT=950.025n

* CHECK dout1_1 Vdout1_1ck189 = 0.9 time = 950
.meas tran vdout1_1ck189 FIND v(dout1_1) AT=950.025n

* CHECK dout1_2 Vdout1_2ck189 = 0.9 time = 950
.meas tran vdout1_2ck189 FIND v(dout1_2) AT=950.025n

* CHECK dout1_3 Vdout1_3ck189 = 0 time = 950
.meas tran vdout1_3ck189 FIND v(dout1_3) AT=950.025n

* CHECK dout1_4 Vdout1_4ck189 = 0 time = 950
.meas tran vdout1_4ck189 FIND v(dout1_4) AT=950.025n

* CHECK dout1_5 Vdout1_5ck189 = 0 time = 950
.meas tran vdout1_5ck189 FIND v(dout1_5) AT=950.025n

* CHECK dout1_6 Vdout1_6ck189 = 0.9 time = 950
.meas tran vdout1_6ck189 FIND v(dout1_6) AT=950.025n

* CHECK dout1_7 Vdout1_7ck189 = 0 time = 950
.meas tran vdout1_7ck189 FIND v(dout1_7) AT=950.025n

* CHECK dout1_8 Vdout1_8ck189 = 0.9 time = 950
.meas tran vdout1_8ck189 FIND v(dout1_8) AT=950.025n

* CHECK dout1_9 Vdout1_9ck189 = 0.9 time = 950
.meas tran vdout1_9ck189 FIND v(dout1_9) AT=950.025n

* CHECK dout1_10 Vdout1_10ck189 = 0 time = 950
.meas tran vdout1_10ck189 FIND v(dout1_10) AT=950.025n

* CHECK dout1_11 Vdout1_11ck189 = 0 time = 950
.meas tran vdout1_11ck189 FIND v(dout1_11) AT=950.025n

* CHECK dout1_12 Vdout1_12ck189 = 0 time = 950
.meas tran vdout1_12ck189 FIND v(dout1_12) AT=950.025n

* CHECK dout1_13 Vdout1_13ck189 = 0.9 time = 950
.meas tran vdout1_13ck189 FIND v(dout1_13) AT=950.025n

* CHECK dout1_14 Vdout1_14ck189 = 0 time = 950
.meas tran vdout1_14ck189 FIND v(dout1_14) AT=950.025n

* CHECK dout1_15 Vdout1_15ck189 = 0 time = 950
.meas tran vdout1_15ck189 FIND v(dout1_15) AT=950.025n

* CHECK dout1_16 Vdout1_16ck189 = 0.9 time = 950
.meas tran vdout1_16ck189 FIND v(dout1_16) AT=950.025n

* CHECK dout1_17 Vdout1_17ck189 = 0.9 time = 950
.meas tran vdout1_17ck189 FIND v(dout1_17) AT=950.025n

* CHECK dout1_18 Vdout1_18ck189 = 0.9 time = 950
.meas tran vdout1_18ck189 FIND v(dout1_18) AT=950.025n

* CHECK dout1_19 Vdout1_19ck189 = 0 time = 950
.meas tran vdout1_19ck189 FIND v(dout1_19) AT=950.025n

* CHECK dout1_20 Vdout1_20ck189 = 0 time = 950
.meas tran vdout1_20ck189 FIND v(dout1_20) AT=950.025n

* CHECK dout1_21 Vdout1_21ck189 = 0.9 time = 950
.meas tran vdout1_21ck189 FIND v(dout1_21) AT=950.025n

* CHECK dout1_22 Vdout1_22ck189 = 0.9 time = 950
.meas tran vdout1_22ck189 FIND v(dout1_22) AT=950.025n

* CHECK dout1_23 Vdout1_23ck189 = 0.9 time = 950
.meas tran vdout1_23ck189 FIND v(dout1_23) AT=950.025n

* CHECK dout1_24 Vdout1_24ck189 = 0.9 time = 950
.meas tran vdout1_24ck189 FIND v(dout1_24) AT=950.025n

* CHECK dout1_25 Vdout1_25ck189 = 0.9 time = 950
.meas tran vdout1_25ck189 FIND v(dout1_25) AT=950.025n

* CHECK dout1_26 Vdout1_26ck189 = 0.9 time = 950
.meas tran vdout1_26ck189 FIND v(dout1_26) AT=950.025n

* CHECK dout1_27 Vdout1_27ck189 = 0.9 time = 950
.meas tran vdout1_27ck189 FIND v(dout1_27) AT=950.025n

* CHECK dout1_28 Vdout1_28ck189 = 0.9 time = 950
.meas tran vdout1_28ck189 FIND v(dout1_28) AT=950.025n

* CHECK dout1_29 Vdout1_29ck189 = 0.9 time = 950
.meas tran vdout1_29ck189 FIND v(dout1_29) AT=950.025n

* CHECK dout1_30 Vdout1_30ck189 = 0.9 time = 950
.meas tran vdout1_30ck189 FIND v(dout1_30) AT=950.025n

* CHECK dout1_31 Vdout1_31ck189 = 0 time = 950
.meas tran vdout1_31ck189 FIND v(dout1_31) AT=950.025n

* CHECK dout1_0 Vdout1_0ck191 = 0.9 time = 960
.meas tran vdout1_0ck191 FIND v(dout1_0) AT=960.025n

* CHECK dout1_1 Vdout1_1ck191 = 0.9 time = 960
.meas tran vdout1_1ck191 FIND v(dout1_1) AT=960.025n

* CHECK dout1_2 Vdout1_2ck191 = 0.9 time = 960
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

* CHECK dout1_8 Vdout1_8ck191 = 0 time = 960
.meas tran vdout1_8ck191 FIND v(dout1_8) AT=960.025n

* CHECK dout1_9 Vdout1_9ck191 = 0.9 time = 960
.meas tran vdout1_9ck191 FIND v(dout1_9) AT=960.025n

* CHECK dout1_10 Vdout1_10ck191 = 0 time = 960
.meas tran vdout1_10ck191 FIND v(dout1_10) AT=960.025n

* CHECK dout1_11 Vdout1_11ck191 = 0.9 time = 960
.meas tran vdout1_11ck191 FIND v(dout1_11) AT=960.025n

* CHECK dout1_12 Vdout1_12ck191 = 0.9 time = 960
.meas tran vdout1_12ck191 FIND v(dout1_12) AT=960.025n

* CHECK dout1_13 Vdout1_13ck191 = 0.9 time = 960
.meas tran vdout1_13ck191 FIND v(dout1_13) AT=960.025n

* CHECK dout1_14 Vdout1_14ck191 = 0.9 time = 960
.meas tran vdout1_14ck191 FIND v(dout1_14) AT=960.025n

* CHECK dout1_15 Vdout1_15ck191 = 0 time = 960
.meas tran vdout1_15ck191 FIND v(dout1_15) AT=960.025n

* CHECK dout1_16 Vdout1_16ck191 = 0.9 time = 960
.meas tran vdout1_16ck191 FIND v(dout1_16) AT=960.025n

* CHECK dout1_17 Vdout1_17ck191 = 0.9 time = 960
.meas tran vdout1_17ck191 FIND v(dout1_17) AT=960.025n

* CHECK dout1_18 Vdout1_18ck191 = 0.9 time = 960
.meas tran vdout1_18ck191 FIND v(dout1_18) AT=960.025n

* CHECK dout1_19 Vdout1_19ck191 = 0 time = 960
.meas tran vdout1_19ck191 FIND v(dout1_19) AT=960.025n

* CHECK dout1_20 Vdout1_20ck191 = 0 time = 960
.meas tran vdout1_20ck191 FIND v(dout1_20) AT=960.025n

* CHECK dout1_21 Vdout1_21ck191 = 0 time = 960
.meas tran vdout1_21ck191 FIND v(dout1_21) AT=960.025n

* CHECK dout1_22 Vdout1_22ck191 = 0 time = 960
.meas tran vdout1_22ck191 FIND v(dout1_22) AT=960.025n

* CHECK dout1_23 Vdout1_23ck191 = 0 time = 960
.meas tran vdout1_23ck191 FIND v(dout1_23) AT=960.025n

* CHECK dout1_24 Vdout1_24ck191 = 0.9 time = 960
.meas tran vdout1_24ck191 FIND v(dout1_24) AT=960.025n

* CHECK dout1_25 Vdout1_25ck191 = 0.9 time = 960
.meas tran vdout1_25ck191 FIND v(dout1_25) AT=960.025n

* CHECK dout1_26 Vdout1_26ck191 = 0 time = 960
.meas tran vdout1_26ck191 FIND v(dout1_26) AT=960.025n

* CHECK dout1_27 Vdout1_27ck191 = 0.9 time = 960
.meas tran vdout1_27ck191 FIND v(dout1_27) AT=960.025n

* CHECK dout1_28 Vdout1_28ck191 = 0.9 time = 960
.meas tran vdout1_28ck191 FIND v(dout1_28) AT=960.025n

* CHECK dout1_29 Vdout1_29ck191 = 0 time = 960
.meas tran vdout1_29ck191 FIND v(dout1_29) AT=960.025n

* CHECK dout1_30 Vdout1_30ck191 = 0 time = 960
.meas tran vdout1_30ck191 FIND v(dout1_30) AT=960.025n

* CHECK dout1_31 Vdout1_31ck191 = 0 time = 960
.meas tran vdout1_31ck191 FIND v(dout1_31) AT=960.025n

* CHECK dout1_0 Vdout1_0ck193 = 0 time = 970
.meas tran vdout1_0ck193 FIND v(dout1_0) AT=970.025n

* CHECK dout1_1 Vdout1_1ck193 = 0.9 time = 970
.meas tran vdout1_1ck193 FIND v(dout1_1) AT=970.025n

* CHECK dout1_2 Vdout1_2ck193 = 0 time = 970
.meas tran vdout1_2ck193 FIND v(dout1_2) AT=970.025n

* CHECK dout1_3 Vdout1_3ck193 = 0.9 time = 970
.meas tran vdout1_3ck193 FIND v(dout1_3) AT=970.025n

* CHECK dout1_4 Vdout1_4ck193 = 0.9 time = 970
.meas tran vdout1_4ck193 FIND v(dout1_4) AT=970.025n

* CHECK dout1_5 Vdout1_5ck193 = 0.9 time = 970
.meas tran vdout1_5ck193 FIND v(dout1_5) AT=970.025n

* CHECK dout1_6 Vdout1_6ck193 = 0 time = 970
.meas tran vdout1_6ck193 FIND v(dout1_6) AT=970.025n

* CHECK dout1_7 Vdout1_7ck193 = 0 time = 970
.meas tran vdout1_7ck193 FIND v(dout1_7) AT=970.025n

* CHECK dout1_8 Vdout1_8ck193 = 0.9 time = 970
.meas tran vdout1_8ck193 FIND v(dout1_8) AT=970.025n

* CHECK dout1_9 Vdout1_9ck193 = 0.9 time = 970
.meas tran vdout1_9ck193 FIND v(dout1_9) AT=970.025n

* CHECK dout1_10 Vdout1_10ck193 = 0 time = 970
.meas tran vdout1_10ck193 FIND v(dout1_10) AT=970.025n

* CHECK dout1_11 Vdout1_11ck193 = 0.9 time = 970
.meas tran vdout1_11ck193 FIND v(dout1_11) AT=970.025n

* CHECK dout1_12 Vdout1_12ck193 = 0.9 time = 970
.meas tran vdout1_12ck193 FIND v(dout1_12) AT=970.025n

* CHECK dout1_13 Vdout1_13ck193 = 0 time = 970
.meas tran vdout1_13ck193 FIND v(dout1_13) AT=970.025n

* CHECK dout1_14 Vdout1_14ck193 = 0 time = 970
.meas tran vdout1_14ck193 FIND v(dout1_14) AT=970.025n

* CHECK dout1_15 Vdout1_15ck193 = 0 time = 970
.meas tran vdout1_15ck193 FIND v(dout1_15) AT=970.025n

* CHECK dout1_16 Vdout1_16ck193 = 0.9 time = 970
.meas tran vdout1_16ck193 FIND v(dout1_16) AT=970.025n

* CHECK dout1_17 Vdout1_17ck193 = 0.9 time = 970
.meas tran vdout1_17ck193 FIND v(dout1_17) AT=970.025n

* CHECK dout1_18 Vdout1_18ck193 = 0.9 time = 970
.meas tran vdout1_18ck193 FIND v(dout1_18) AT=970.025n

* CHECK dout1_19 Vdout1_19ck193 = 0.9 time = 970
.meas tran vdout1_19ck193 FIND v(dout1_19) AT=970.025n

* CHECK dout1_20 Vdout1_20ck193 = 0 time = 970
.meas tran vdout1_20ck193 FIND v(dout1_20) AT=970.025n

* CHECK dout1_21 Vdout1_21ck193 = 0 time = 970
.meas tran vdout1_21ck193 FIND v(dout1_21) AT=970.025n

* CHECK dout1_22 Vdout1_22ck193 = 0 time = 970
.meas tran vdout1_22ck193 FIND v(dout1_22) AT=970.025n

* CHECK dout1_23 Vdout1_23ck193 = 0.9 time = 970
.meas tran vdout1_23ck193 FIND v(dout1_23) AT=970.025n

* CHECK dout1_24 Vdout1_24ck193 = 0 time = 970
.meas tran vdout1_24ck193 FIND v(dout1_24) AT=970.025n

* CHECK dout1_25 Vdout1_25ck193 = 0 time = 970
.meas tran vdout1_25ck193 FIND v(dout1_25) AT=970.025n

* CHECK dout1_26 Vdout1_26ck193 = 0 time = 970
.meas tran vdout1_26ck193 FIND v(dout1_26) AT=970.025n

* CHECK dout1_27 Vdout1_27ck193 = 0.9 time = 970
.meas tran vdout1_27ck193 FIND v(dout1_27) AT=970.025n

* CHECK dout1_28 Vdout1_28ck193 = 0.9 time = 970
.meas tran vdout1_28ck193 FIND v(dout1_28) AT=970.025n

* CHECK dout1_29 Vdout1_29ck193 = 0 time = 970
.meas tran vdout1_29ck193 FIND v(dout1_29) AT=970.025n

* CHECK dout1_30 Vdout1_30ck193 = 0.9 time = 970
.meas tran vdout1_30ck193 FIND v(dout1_30) AT=970.025n

* CHECK dout1_31 Vdout1_31ck193 = 0 time = 970
.meas tran vdout1_31ck193 FIND v(dout1_31) AT=970.025n

* CHECK dout1_0 Vdout1_0ck195 = 0 time = 980
.meas tran vdout1_0ck195 FIND v(dout1_0) AT=980.025n

* CHECK dout1_1 Vdout1_1ck195 = 0 time = 980
.meas tran vdout1_1ck195 FIND v(dout1_1) AT=980.025n

* CHECK dout1_2 Vdout1_2ck195 = 0 time = 980
.meas tran vdout1_2ck195 FIND v(dout1_2) AT=980.025n

* CHECK dout1_3 Vdout1_3ck195 = 0 time = 980
.meas tran vdout1_3ck195 FIND v(dout1_3) AT=980.025n

* CHECK dout1_4 Vdout1_4ck195 = 0 time = 980
.meas tran vdout1_4ck195 FIND v(dout1_4) AT=980.025n

* CHECK dout1_5 Vdout1_5ck195 = 0.9 time = 980
.meas tran vdout1_5ck195 FIND v(dout1_5) AT=980.025n

* CHECK dout1_6 Vdout1_6ck195 = 0 time = 980
.meas tran vdout1_6ck195 FIND v(dout1_6) AT=980.025n

* CHECK dout1_7 Vdout1_7ck195 = 0.9 time = 980
.meas tran vdout1_7ck195 FIND v(dout1_7) AT=980.025n

* CHECK dout1_8 Vdout1_8ck195 = 0 time = 980
.meas tran vdout1_8ck195 FIND v(dout1_8) AT=980.025n

* CHECK dout1_9 Vdout1_9ck195 = 0.9 time = 980
.meas tran vdout1_9ck195 FIND v(dout1_9) AT=980.025n

* CHECK dout1_10 Vdout1_10ck195 = 0 time = 980
.meas tran vdout1_10ck195 FIND v(dout1_10) AT=980.025n

* CHECK dout1_11 Vdout1_11ck195 = 0.9 time = 980
.meas tran vdout1_11ck195 FIND v(dout1_11) AT=980.025n

* CHECK dout1_12 Vdout1_12ck195 = 0 time = 980
.meas tran vdout1_12ck195 FIND v(dout1_12) AT=980.025n

* CHECK dout1_13 Vdout1_13ck195 = 0.9 time = 980
.meas tran vdout1_13ck195 FIND v(dout1_13) AT=980.025n

* CHECK dout1_14 Vdout1_14ck195 = 0 time = 980
.meas tran vdout1_14ck195 FIND v(dout1_14) AT=980.025n

* CHECK dout1_15 Vdout1_15ck195 = 0.9 time = 980
.meas tran vdout1_15ck195 FIND v(dout1_15) AT=980.025n

* CHECK dout1_16 Vdout1_16ck195 = 0.9 time = 980
.meas tran vdout1_16ck195 FIND v(dout1_16) AT=980.025n

* CHECK dout1_17 Vdout1_17ck195 = 0.9 time = 980
.meas tran vdout1_17ck195 FIND v(dout1_17) AT=980.025n

* CHECK dout1_18 Vdout1_18ck195 = 0.9 time = 980
.meas tran vdout1_18ck195 FIND v(dout1_18) AT=980.025n

* CHECK dout1_19 Vdout1_19ck195 = 0 time = 980
.meas tran vdout1_19ck195 FIND v(dout1_19) AT=980.025n

* CHECK dout1_20 Vdout1_20ck195 = 0.9 time = 980
.meas tran vdout1_20ck195 FIND v(dout1_20) AT=980.025n

* CHECK dout1_21 Vdout1_21ck195 = 0 time = 980
.meas tran vdout1_21ck195 FIND v(dout1_21) AT=980.025n

* CHECK dout1_22 Vdout1_22ck195 = 0 time = 980
.meas tran vdout1_22ck195 FIND v(dout1_22) AT=980.025n

* CHECK dout1_23 Vdout1_23ck195 = 0 time = 980
.meas tran vdout1_23ck195 FIND v(dout1_23) AT=980.025n

* CHECK dout1_24 Vdout1_24ck195 = 0.9 time = 980
.meas tran vdout1_24ck195 FIND v(dout1_24) AT=980.025n

* CHECK dout1_25 Vdout1_25ck195 = 0 time = 980
.meas tran vdout1_25ck195 FIND v(dout1_25) AT=980.025n

* CHECK dout1_26 Vdout1_26ck195 = 0.9 time = 980
.meas tran vdout1_26ck195 FIND v(dout1_26) AT=980.025n

* CHECK dout1_27 Vdout1_27ck195 = 0 time = 980
.meas tran vdout1_27ck195 FIND v(dout1_27) AT=980.025n

* CHECK dout1_28 Vdout1_28ck195 = 0.9 time = 980
.meas tran vdout1_28ck195 FIND v(dout1_28) AT=980.025n

* CHECK dout1_29 Vdout1_29ck195 = 0 time = 980
.meas tran vdout1_29ck195 FIND v(dout1_29) AT=980.025n

* CHECK dout1_30 Vdout1_30ck195 = 0.9 time = 980
.meas tran vdout1_30ck195 FIND v(dout1_30) AT=980.025n

* CHECK dout1_31 Vdout1_31ck195 = 0.9 time = 980
.meas tran vdout1_31ck195 FIND v(dout1_31) AT=980.025n

* CHECK dout1_0 Vdout1_0ck200 = 0 time = 1005
.meas tran vdout1_0ck200 FIND v(dout1_0) AT=1005.025n

* CHECK dout1_1 Vdout1_1ck200 = 0 time = 1005
.meas tran vdout1_1ck200 FIND v(dout1_1) AT=1005.025n

* CHECK dout1_2 Vdout1_2ck200 = 0.9 time = 1005
.meas tran vdout1_2ck200 FIND v(dout1_2) AT=1005.025n

* CHECK dout1_3 Vdout1_3ck200 = 0.9 time = 1005
.meas tran vdout1_3ck200 FIND v(dout1_3) AT=1005.025n

* CHECK dout1_4 Vdout1_4ck200 = 0.9 time = 1005
.meas tran vdout1_4ck200 FIND v(dout1_4) AT=1005.025n

* CHECK dout1_5 Vdout1_5ck200 = 0 time = 1005
.meas tran vdout1_5ck200 FIND v(dout1_5) AT=1005.025n

* CHECK dout1_6 Vdout1_6ck200 = 0.9 time = 1005
.meas tran vdout1_6ck200 FIND v(dout1_6) AT=1005.025n

* CHECK dout1_7 Vdout1_7ck200 = 0.9 time = 1005
.meas tran vdout1_7ck200 FIND v(dout1_7) AT=1005.025n

* CHECK dout1_8 Vdout1_8ck200 = 0.9 time = 1005
.meas tran vdout1_8ck200 FIND v(dout1_8) AT=1005.025n

* CHECK dout1_9 Vdout1_9ck200 = 0.9 time = 1005
.meas tran vdout1_9ck200 FIND v(dout1_9) AT=1005.025n

* CHECK dout1_10 Vdout1_10ck200 = 0 time = 1005
.meas tran vdout1_10ck200 FIND v(dout1_10) AT=1005.025n

* CHECK dout1_11 Vdout1_11ck200 = 0.9 time = 1005
.meas tran vdout1_11ck200 FIND v(dout1_11) AT=1005.025n

* CHECK dout1_12 Vdout1_12ck200 = 0.9 time = 1005
.meas tran vdout1_12ck200 FIND v(dout1_12) AT=1005.025n

* CHECK dout1_13 Vdout1_13ck200 = 0 time = 1005
.meas tran vdout1_13ck200 FIND v(dout1_13) AT=1005.025n

* CHECK dout1_14 Vdout1_14ck200 = 0.9 time = 1005
.meas tran vdout1_14ck200 FIND v(dout1_14) AT=1005.025n

* CHECK dout1_15 Vdout1_15ck200 = 0.9 time = 1005
.meas tran vdout1_15ck200 FIND v(dout1_15) AT=1005.025n

* CHECK dout1_16 Vdout1_16ck200 = 0 time = 1005
.meas tran vdout1_16ck200 FIND v(dout1_16) AT=1005.025n

* CHECK dout1_17 Vdout1_17ck200 = 0 time = 1005
.meas tran vdout1_17ck200 FIND v(dout1_17) AT=1005.025n

* CHECK dout1_18 Vdout1_18ck200 = 0 time = 1005
.meas tran vdout1_18ck200 FIND v(dout1_18) AT=1005.025n

* CHECK dout1_19 Vdout1_19ck200 = 0.9 time = 1005
.meas tran vdout1_19ck200 FIND v(dout1_19) AT=1005.025n

* CHECK dout1_20 Vdout1_20ck200 = 0.9 time = 1005
.meas tran vdout1_20ck200 FIND v(dout1_20) AT=1005.025n

* CHECK dout1_21 Vdout1_21ck200 = 0.9 time = 1005
.meas tran vdout1_21ck200 FIND v(dout1_21) AT=1005.025n

* CHECK dout1_22 Vdout1_22ck200 = 0.9 time = 1005
.meas tran vdout1_22ck200 FIND v(dout1_22) AT=1005.025n

* CHECK dout1_23 Vdout1_23ck200 = 0 time = 1005
.meas tran vdout1_23ck200 FIND v(dout1_23) AT=1005.025n

* CHECK dout1_24 Vdout1_24ck200 = 0.9 time = 1005
.meas tran vdout1_24ck200 FIND v(dout1_24) AT=1005.025n

* CHECK dout1_25 Vdout1_25ck200 = 0 time = 1005
.meas tran vdout1_25ck200 FIND v(dout1_25) AT=1005.025n

* CHECK dout1_26 Vdout1_26ck200 = 0 time = 1005
.meas tran vdout1_26ck200 FIND v(dout1_26) AT=1005.025n

* CHECK dout1_27 Vdout1_27ck200 = 0.9 time = 1005
.meas tran vdout1_27ck200 FIND v(dout1_27) AT=1005.025n

* CHECK dout1_28 Vdout1_28ck200 = 0.9 time = 1005
.meas tran vdout1_28ck200 FIND v(dout1_28) AT=1005.025n

* CHECK dout1_29 Vdout1_29ck200 = 0 time = 1005
.meas tran vdout1_29ck200 FIND v(dout1_29) AT=1005.025n

* CHECK dout1_30 Vdout1_30ck200 = 0 time = 1005
.meas tran vdout1_30ck200 FIND v(dout1_30) AT=1005.025n

* CHECK dout1_31 Vdout1_31ck200 = 0 time = 1005
.meas tran vdout1_31ck200 FIND v(dout1_31) AT=1005.025n

* CHECK dout1_0 Vdout1_0ck202 = 0 time = 1015
.meas tran vdout1_0ck202 FIND v(dout1_0) AT=1015.025n

* CHECK dout1_1 Vdout1_1ck202 = 0 time = 1015
.meas tran vdout1_1ck202 FIND v(dout1_1) AT=1015.025n

* CHECK dout1_2 Vdout1_2ck202 = 0.9 time = 1015
.meas tran vdout1_2ck202 FIND v(dout1_2) AT=1015.025n

* CHECK dout1_3 Vdout1_3ck202 = 0.9 time = 1015
.meas tran vdout1_3ck202 FIND v(dout1_3) AT=1015.025n

* CHECK dout1_4 Vdout1_4ck202 = 0.9 time = 1015
.meas tran vdout1_4ck202 FIND v(dout1_4) AT=1015.025n

* CHECK dout1_5 Vdout1_5ck202 = 0 time = 1015
.meas tran vdout1_5ck202 FIND v(dout1_5) AT=1015.025n

* CHECK dout1_6 Vdout1_6ck202 = 0.9 time = 1015
.meas tran vdout1_6ck202 FIND v(dout1_6) AT=1015.025n

* CHECK dout1_7 Vdout1_7ck202 = 0.9 time = 1015
.meas tran vdout1_7ck202 FIND v(dout1_7) AT=1015.025n

* CHECK dout1_8 Vdout1_8ck202 = 0.9 time = 1015
.meas tran vdout1_8ck202 FIND v(dout1_8) AT=1015.025n

* CHECK dout1_9 Vdout1_9ck202 = 0.9 time = 1015
.meas tran vdout1_9ck202 FIND v(dout1_9) AT=1015.025n

* CHECK dout1_10 Vdout1_10ck202 = 0 time = 1015
.meas tran vdout1_10ck202 FIND v(dout1_10) AT=1015.025n

* CHECK dout1_11 Vdout1_11ck202 = 0.9 time = 1015
.meas tran vdout1_11ck202 FIND v(dout1_11) AT=1015.025n

* CHECK dout1_12 Vdout1_12ck202 = 0.9 time = 1015
.meas tran vdout1_12ck202 FIND v(dout1_12) AT=1015.025n

* CHECK dout1_13 Vdout1_13ck202 = 0 time = 1015
.meas tran vdout1_13ck202 FIND v(dout1_13) AT=1015.025n

* CHECK dout1_14 Vdout1_14ck202 = 0.9 time = 1015
.meas tran vdout1_14ck202 FIND v(dout1_14) AT=1015.025n

* CHECK dout1_15 Vdout1_15ck202 = 0.9 time = 1015
.meas tran vdout1_15ck202 FIND v(dout1_15) AT=1015.025n

* CHECK dout1_16 Vdout1_16ck202 = 0 time = 1015
.meas tran vdout1_16ck202 FIND v(dout1_16) AT=1015.025n

* CHECK dout1_17 Vdout1_17ck202 = 0 time = 1015
.meas tran vdout1_17ck202 FIND v(dout1_17) AT=1015.025n

* CHECK dout1_18 Vdout1_18ck202 = 0 time = 1015
.meas tran vdout1_18ck202 FIND v(dout1_18) AT=1015.025n

* CHECK dout1_19 Vdout1_19ck202 = 0.9 time = 1015
.meas tran vdout1_19ck202 FIND v(dout1_19) AT=1015.025n

* CHECK dout1_20 Vdout1_20ck202 = 0.9 time = 1015
.meas tran vdout1_20ck202 FIND v(dout1_20) AT=1015.025n

* CHECK dout1_21 Vdout1_21ck202 = 0.9 time = 1015
.meas tran vdout1_21ck202 FIND v(dout1_21) AT=1015.025n

* CHECK dout1_22 Vdout1_22ck202 = 0.9 time = 1015
.meas tran vdout1_22ck202 FIND v(dout1_22) AT=1015.025n

* CHECK dout1_23 Vdout1_23ck202 = 0 time = 1015
.meas tran vdout1_23ck202 FIND v(dout1_23) AT=1015.025n

* CHECK dout1_24 Vdout1_24ck202 = 0.9 time = 1015
.meas tran vdout1_24ck202 FIND v(dout1_24) AT=1015.025n

* CHECK dout1_25 Vdout1_25ck202 = 0 time = 1015
.meas tran vdout1_25ck202 FIND v(dout1_25) AT=1015.025n

* CHECK dout1_26 Vdout1_26ck202 = 0 time = 1015
.meas tran vdout1_26ck202 FIND v(dout1_26) AT=1015.025n

* CHECK dout1_27 Vdout1_27ck202 = 0.9 time = 1015
.meas tran vdout1_27ck202 FIND v(dout1_27) AT=1015.025n

* CHECK dout1_28 Vdout1_28ck202 = 0.9 time = 1015
.meas tran vdout1_28ck202 FIND v(dout1_28) AT=1015.025n

* CHECK dout1_29 Vdout1_29ck202 = 0 time = 1015
.meas tran vdout1_29ck202 FIND v(dout1_29) AT=1015.025n

* CHECK dout1_30 Vdout1_30ck202 = 0 time = 1015
.meas tran vdout1_30ck202 FIND v(dout1_30) AT=1015.025n

* CHECK dout1_31 Vdout1_31ck202 = 0 time = 1015
.meas tran vdout1_31ck202 FIND v(dout1_31) AT=1015.025n

* probe is used for hspice/xa, while plot is used in ngspice
.plot V(*)
.end

