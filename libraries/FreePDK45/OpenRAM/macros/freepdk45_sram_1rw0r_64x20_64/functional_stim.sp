* Functional test stimulus file for 5ns period

* TT process corner
.include "/home/jp502/Projects/system-PPA/OpenRAM/technology/freepdk45/models/tran_models/models_nom/PMOS_VTG.inc"
.include "/home/jp502/Projects/system-PPA/OpenRAM/technology/freepdk45/models/tran_models/models_nom/NMOS_VTG.inc"
.include "freepdk45_sram_1rw0r_64x20_64.sp"

* Global Power Supplies
Vvdd vdd 0 0.9

*Nodes gnd and 0 are the same global ground node in ngspice/hspice/xa. Otherwise, this source may be needed.
*Vgnd gnd 0 0.0

* Instantiation of the SRAM
Xfreepdk45_sram_1rw0r_64x20_64 din0_0 din0_1 din0_2 din0_3 din0_4 din0_5 din0_6 din0_7 din0_8 din0_9 din0_10 din0_11 din0_12 din0_13 din0_14 din0_15 din0_16 din0_17 din0_18 din0_19 a0_0 a0_1 a0_2 a0_3 a0_4 a0_5 CSB0 WEB0 clk0 WMASK0_0 dout0_0 dout0_1 dout0_2 dout0_3 dout0_4 dout0_5 dout0_6 dout0_7 dout0_8 dout0_9 dout0_10 dout0_11 dout0_12 dout0_13 dout0_14 dout0_15 dout0_16 dout0_17 dout0_18 dout0_19 vdd gnd freepdk45_sram_1rw0r_64x20_64

* SRAM output loads
CD00 dout0_0  0 0.8364f
CD01 dout0_1  0 0.8364f
CD02 dout0_2  0 0.8364f
CD03 dout0_3  0 0.8364f
CD04 dout0_4  0 0.8364f
CD05 dout0_5  0 0.8364f
CD06 dout0_6  0 0.8364f
CD07 dout0_7  0 0.8364f
CD08 dout0_8  0 0.8364f
CD09 dout0_9  0 0.8364f
CD010 dout0_10  0 0.8364f
CD011 dout0_11  0 0.8364f
CD012 dout0_12  0 0.8364f
CD013 dout0_13  0 0.8364f
CD014 dout0_14  0 0.8364f
CD015 dout0_15  0 0.8364f
CD016 dout0_16  0 0.8364f
CD017 dout0_17  0 0.8364f
CD018 dout0_18  0 0.8364f
CD019 dout0_19  0 0.8364f


* Important signals for debug
* bl:	xfreepdk45_sram_1rw0r_64x20_64.xbank0.bl_0_0
* br:	xfreepdk45_sram_1rw0r_64x20_64.xbank0.br_0_0
* s_en:	xfreepdk45_sram_1rw0r_64x20_64.s_en
* q:	xfreepdk45_sram_1rw0r_64x20_64.xbank0.xbitcell_array.xreplica_bitcell_array.xbitcell_array.xbit_r0_c0.Q
* qbar:	xfreepdk45_sram_1rw0r_64x20_64.xbank0.xbitcell_array.xreplica_bitcell_array.xbitcell_array.xbit_r0_c0.Q_bar


* Sequence of operations
*	Idle during cycle 0 (0ns - 5ns)
*	Writing 11011101110101111110  to  address 000000 (from port 0) during cycle 1 (5ns - 10ns)
*	Writing 10111000100111010000  to  address 111110 (from port 0) during cycle 2 (10ns - 15ns)
*	Writing 11100001010001011010  to  address 111101 (from port 0) during cycle 3 (15ns - 20ns)
*	Reading 11011101110101111110 from address 000000 (from port 0) during cycle 4 (20ns - 25ns)
*	Reading 10111000100111010000 from address 111110 (from port 0) during cycle 5 (25ns - 30ns)
*	Reading 10111000100111010000 from address 111110 (from port 0) during cycle 6 (30ns - 35ns)
*	Writing (partial) 01101000011100001110  to  address 111110 with mask bit 1 (from port 0) during cycle 7 (35ns - 40ns)
*	Writing (partial) 10010010001100001100  to  address 111101 with mask bit 1 (from port 0) during cycle 8 (40ns - 45ns)
*	Writing (partial) 11010001010001000111  to  address 111101 with mask bit 0 (from port 0) during cycle 9 (45ns - 50ns)
*	Writing (partial) 10100100110011000011  to  address 111101 with mask bit 1 (from port 0) during cycle 10 (50ns - 55ns)
*	Reading 11011101110101111110 from address 000000 (from port 0) during cycle 12 (60ns - 65ns)
*	Writing (partial) 01010100101111101010  to  address 000000 with mask bit 0 (from port 0) during cycle 13 (65ns - 70ns)
*	Writing (partial) 11010110011001001101  to  address 000000 with mask bit 1 (from port 0) during cycle 14 (70ns - 75ns)
*	Writing 01110111110110000110  to  address 000000 (from port 0) during cycle 15 (75ns - 80ns)
*	Writing (partial) 00001011000101100110  to  address 111101 with mask bit 0 (from port 0) during cycle 17 (85ns - 90ns)
*	Reading 01110111110110000110 from address 000000 (from port 0) during cycle 18 (90ns - 95ns)
*	Reading 01101000011100001110 from address 111110 (from port 0) during cycle 19 (95ns - 100ns)
*	Writing 11001010001111001001  to  address 000001 (from port 0) during cycle 20 (100ns - 105ns)
*	Writing 00101111010011011001  to  address 111110 (from port 0) during cycle 23 (115ns - 120ns)
*	Reading 01110111110110000110 from address 000000 (from port 0) during cycle 24 (120ns - 125ns)
*	Writing 11010010101100111111  to  address 111101 (from port 0) during cycle 25 (125ns - 130ns)
*	Writing (partial) 00000011011000100010  to  address 111110 with mask bit 0 (from port 0) during cycle 26 (130ns - 135ns)
*	Writing (partial) 00101111001010001011  to  address 000000 with mask bit 1 (from port 0) during cycle 27 (135ns - 140ns)
*	Reading 11010010101100111111 from address 111101 (from port 0) during cycle 28 (140ns - 145ns)
*	Reading 00101111001010001011 from address 000000 (from port 0) during cycle 29 (145ns - 150ns)
*	Writing 00000111111101101001  to  address 111110 (from port 0) during cycle 30 (150ns - 155ns)
*	Writing (partial) 01011111010111100010  to  address 000000 with mask bit 0 (from port 0) during cycle 31 (155ns - 160ns)
*	Writing 01001011111100000100  to  address 111110 (from port 0) during cycle 33 (165ns - 170ns)
*	Writing (partial) 11101101110110110101  to  address 000001 with mask bit 1 (from port 0) during cycle 34 (170ns - 175ns)
*	Reading 00101111001010001011 from address 000000 (from port 0) during cycle 35 (175ns - 180ns)
*	Writing (partial) 11111111111111100101  to  address 000001 with mask bit 1 (from port 0) during cycle 37 (185ns - 190ns)
*	Writing (partial) 11100001000100111100  to  address 111101 with mask bit 1 (from port 0) during cycle 38 (190ns - 195ns)
*	Reading 11111111111111100101 from address 000001 (from port 0) during cycle 39 (195ns - 200ns)
*	Reading 11111111111111100101 from address 000001 (from port 0) during cycle 40 (200ns - 205ns)
*	Reading 00101111001010001011 from address 000000 (from port 0) during cycle 41 (205ns - 210ns)
*	Reading 01001011111100000100 from address 111110 (from port 0) during cycle 42 (210ns - 215ns)
*	Reading 01001011111100000100 from address 111110 (from port 0) during cycle 43 (215ns - 220ns)
*	Reading 01001011111100000100 from address 111110 (from port 0) during cycle 44 (220ns - 225ns)
*	Writing 01010010011011111000  to  address 111101 (from port 0) during cycle 45 (225ns - 230ns)
*	Reading 11111111111111100101 from address 000001 (from port 0) during cycle 46 (230ns - 235ns)
*	Writing (partial) 11110010010000110110  to  address 111101 with mask bit 1 (from port 0) during cycle 47 (235ns - 240ns)
*	Writing (partial) 11100010111011111110  to  address 111101 with mask bit 1 (from port 0) during cycle 49 (245ns - 250ns)
*	Reading 11111111111111100101 from address 000001 (from port 0) during cycle 50 (250ns - 255ns)
*	Writing 10111001111011110000  to  address 000000 (from port 0) during cycle 51 (255ns - 260ns)
*	Writing (partial) 10100111110101111000  to  address 000001 with mask bit 1 (from port 0) during cycle 53 (265ns - 270ns)
*	Reading 10111001111011110000 from address 000000 (from port 0) during cycle 54 (270ns - 275ns)
*	Reading 01001011111100000100 from address 111110 (from port 0) during cycle 55 (275ns - 280ns)
*	Reading 10100111110101111000 from address 000001 (from port 0) during cycle 56 (280ns - 285ns)
*	Reading 01001011111100000100 from address 111110 (from port 0) during cycle 57 (285ns - 290ns)
*	Writing 00011011110110010111  to  address 111110 (from port 0) during cycle 58 (290ns - 295ns)
*	Reading 00011011110110010111 from address 111110 (from port 0) during cycle 60 (300ns - 305ns)
*	Reading 10111001111011110000 from address 000000 (from port 0) during cycle 61 (305ns - 310ns)
*	Reading 10100111110101111000 from address 000001 (from port 0) during cycle 62 (310ns - 315ns)
*	Reading 00011011110110010111 from address 111110 (from port 0) during cycle 63 (315ns - 320ns)
*	Writing (partial) 01010111011111100000  to  address 111110 with mask bit 0 (from port 0) during cycle 64 (320ns - 325ns)
*	Reading 00011011110110010111 from address 111110 (from port 0) during cycle 65 (325ns - 330ns)
*	Reading 11100010111011111110 from address 111101 (from port 0) during cycle 66 (330ns - 335ns)
*	Reading 11100010111011111110 from address 111101 (from port 0) during cycle 67 (335ns - 340ns)
*	Writing (partial) 11011001110111100110  to  address 111101 with mask bit 0 (from port 0) during cycle 68 (340ns - 345ns)
*	Reading 10100111110101111000 from address 000001 (from port 0) during cycle 69 (345ns - 350ns)
*	Writing (partial) 11010001010100110110  to  address 111110 with mask bit 0 (from port 0) during cycle 70 (350ns - 355ns)
*	Writing 00001001010100101011  to  address 000001 (from port 0) during cycle 71 (355ns - 360ns)
*	Writing 11101111100001011110  to  address 111101 (from port 0) during cycle 72 (360ns - 365ns)
*	Writing (partial) 00011111111011010100  to  address 000001 with mask bit 0 (from port 0) during cycle 73 (365ns - 370ns)
*	Reading 00001001010100101011 from address 000001 (from port 0) during cycle 74 (370ns - 375ns)
*	Reading 10111001111011110000 from address 000000 (from port 0) during cycle 78 (390ns - 395ns)
*	Writing (partial) 01110011011101010100  to  address 111101 with mask bit 1 (from port 0) during cycle 79 (395ns - 400ns)
*	Reading 10111001111011110000 from address 000000 (from port 0) during cycle 80 (400ns - 405ns)
*	Writing (partial) 01100010100000110010  to  address 000001 with mask bit 0 (from port 0) during cycle 81 (405ns - 410ns)
*	Writing (partial) 00011001110011011100  to  address 111110 with mask bit 1 (from port 0) during cycle 82 (410ns - 415ns)
*	Reading 10111001111011110000 from address 000000 (from port 0) during cycle 83 (415ns - 420ns)
*	Writing 11011000111110110011  to  address 000000 (from port 0) during cycle 84 (420ns - 425ns)
*	Reading 00001001010100101011 from address 000001 (from port 0) during cycle 86 (430ns - 435ns)
*	Reading 11011000111110110011 from address 000000 (from port 0) during cycle 88 (440ns - 445ns)
*	Reading 11011000111110110011 from address 000000 (from port 0) during cycle 90 (450ns - 455ns)
*	Writing 00100001111101010111  to  address 000001 (from port 0) during cycle 91 (455ns - 460ns)
*	Reading 01110011011101010100 from address 111101 (from port 0) during cycle 92 (460ns - 465ns)
*	Reading 11011000111110110011 from address 000000 (from port 0) during cycle 94 (470ns - 475ns)
*	Reading 01110011011101010100 from address 111101 (from port 0) during cycle 95 (475ns - 480ns)
*	Writing 01011011000011011001  to  address 111101 (from port 0) during cycle 96 (480ns - 485ns)
*	Reading 11011000111110110011 from address 000000 (from port 0) during cycle 98 (490ns - 495ns)
*	Writing 10100011101011110001  to  address 000001 (from port 0) during cycle 99 (495ns - 500ns)
*	Reading 10100011101011110001 from address 000001 (from port 0) during cycle 100 (500ns - 505ns)
*	Writing 11010111101011000101  to  address 000001 (from port 0) during cycle 101 (505ns - 510ns)
*	Reading 11010111101011000101 from address 000001 (from port 0) during cycle 102 (510ns - 515ns)
*	Writing (partial) 01110111011110111100  to  address 000000 with mask bit 0 (from port 0) during cycle 103 (515ns - 520ns)
*	Reading 01011011000011011001 from address 111101 (from port 0) during cycle 104 (520ns - 525ns)
*	Reading 11011000111110110011 from address 000000 (from port 0) during cycle 105 (525ns - 530ns)
*	Reading 01011011000011011001 from address 111101 (from port 0) during cycle 106 (530ns - 535ns)
*	Reading 01011011000011011001 from address 111101 (from port 0) during cycle 107 (535ns - 540ns)
*	Reading 01011011000011011001 from address 111101 (from port 0) during cycle 109 (545ns - 550ns)
*	Writing 11110010010000011000  to  address 000000 (from port 0) during cycle 110 (550ns - 555ns)
*	Writing (partial) 00001100111111000000  to  address 000000 with mask bit 0 (from port 0) during cycle 111 (555ns - 560ns)
*	Writing 00011001000100011110  to  address 111110 (from port 0) during cycle 112 (560ns - 565ns)
*	Writing (partial) 00101100111011011100  to  address 111110 with mask bit 0 (from port 0) during cycle 113 (565ns - 570ns)
*	Reading 11010111101011000101 from address 000001 (from port 0) during cycle 115 (575ns - 580ns)
*	Reading 01011011000011011001 from address 111101 (from port 0) during cycle 116 (580ns - 585ns)
*	Writing (partial) 10110110110011010000  to  address 111101 with mask bit 0 (from port 0) during cycle 117 (585ns - 590ns)
*	Reading 11110010010000011000 from address 000000 (from port 0) during cycle 118 (590ns - 595ns)
*	Reading 11110010010000011000 from address 000000 (from port 0) during cycle 119 (595ns - 600ns)
*	Writing (partial) 01110011011101100001  to  address 000000 with mask bit 0 (from port 0) during cycle 121 (605ns - 610ns)
*	Writing (partial) 00011011111100010110  to  address 000001 with mask bit 0 (from port 0) during cycle 122 (610ns - 615ns)
*	Reading 01011011000011011001 from address 111101 (from port 0) during cycle 123 (615ns - 620ns)
*	Reading 01011011000011011001 from address 111101 (from port 0) during cycle 125 (625ns - 630ns)
*	Writing 00001010010011001000  to  address 000000 (from port 0) during cycle 127 (635ns - 640ns)
*	Writing (partial) 00011000001101000010  to  address 000001 with mask bit 0 (from port 0) during cycle 129 (645ns - 650ns)
*	Reading 00011001000100011110 from address 111110 (from port 0) during cycle 131 (655ns - 660ns)
*	Writing 11111000010000010100  to  address 111101 (from port 0) during cycle 132 (660ns - 665ns)
*	Reading 00001010010011001000 from address 000000 (from port 0) during cycle 133 (665ns - 670ns)
*	Writing 00110111110110111100  to  address 111110 (from port 0) during cycle 134 (670ns - 675ns)
*	Reading 11111000010000010100 from address 111101 (from port 0) during cycle 136 (680ns - 685ns)
*	Writing 01110010110111000000  to  address 111101 (from port 0) during cycle 138 (690ns - 695ns)
*	Reading 00110111110110111100 from address 111110 (from port 0) during cycle 140 (700ns - 705ns)
*	Reading 00110111110110111100 from address 111110 (from port 0) during cycle 141 (705ns - 710ns)
*	Writing 11001000000000001111  to  address 111101 (from port 0) during cycle 142 (710ns - 715ns)
*	Reading 11001000000000001111 from address 111101 (from port 0) during cycle 143 (715ns - 720ns)
*	Reading 00001010010011001000 from address 000000 (from port 0) during cycle 144 (720ns - 725ns)
*	Writing 01100110111111010001  to  address 000001 (from port 0) during cycle 145 (725ns - 730ns)
*	Writing (partial) 01010110010100110001  to  address 111101 with mask bit 1 (from port 0) during cycle 146 (730ns - 735ns)
*	Writing 00110111111101010111  to  address 111110 (from port 0) during cycle 147 (735ns - 740ns)
*	Reading 01100110111111010001 from address 000001 (from port 0) during cycle 148 (740ns - 745ns)
*	Reading 00110111111101010111 from address 111110 (from port 0) during cycle 149 (745ns - 750ns)
*	Writing 11101110000011110000  to  address 111110 (from port 0) during cycle 150 (750ns - 755ns)
*	Writing 00110000100011101100  to  address 000001 (from port 0) during cycle 151 (755ns - 760ns)
*	Writing 01001000011011010110  to  address 000001 (from port 0) during cycle 152 (760ns - 765ns)
*	Reading 00001010010011001000 from address 000000 (from port 0) during cycle 154 (770ns - 775ns)
*	Writing (partial) 11000110001000101001  to  address 111101 with mask bit 1 (from port 0) during cycle 155 (775ns - 780ns)
*	Reading 01001000011011010110 from address 000001 (from port 0) during cycle 156 (780ns - 785ns)
*	Reading 11000110001000101001 from address 111101 (from port 0) during cycle 157 (785ns - 790ns)
*	Reading 00001010010011001000 from address 000000 (from port 0) during cycle 158 (790ns - 795ns)
*	Reading 01001000011011010110 from address 000001 (from port 0) during cycle 159 (795ns - 800ns)
*	Writing 11011001111101101010  to  address 111110 (from port 0) during cycle 160 (800ns - 805ns)
*	Writing 11011111100011101001  to  address 111101 (from port 0) during cycle 162 (810ns - 815ns)
*	Reading 11011001111101101010 from address 111110 (from port 0) during cycle 163 (815ns - 820ns)
*	Writing 01110001010101001011  to  address 111101 (from port 0) during cycle 164 (820ns - 825ns)
*	Reading 01001000011011010110 from address 000001 (from port 0) during cycle 167 (835ns - 840ns)
*	Writing 11101111111001010110  to  address 111101 (from port 0) during cycle 168 (840ns - 845ns)
*	Writing (partial) 00000011100010010100  to  address 000001 with mask bit 0 (from port 0) during cycle 169 (845ns - 850ns)
*	Reading 00001010010011001000 from address 000000 (from port 0) during cycle 170 (850ns - 855ns)
*	Reading 11101111111001010110 from address 111101 (from port 0) during cycle 171 (855ns - 860ns)
*	Writing 10101000100001101110  to  address 111101 (from port 0) during cycle 172 (860ns - 865ns)
*	Writing (partial) 00110011111011011111  to  address 111110 with mask bit 1 (from port 0) during cycle 173 (865ns - 870ns)
*	Reading 10101000100001101110 from address 111101 (from port 0) during cycle 174 (870ns - 875ns)
*	Reading 01001000011011010110 from address 000001 (from port 0) during cycle 177 (885ns - 890ns)
*	Writing 10110000101111001011  to  address 111110 (from port 0) during cycle 178 (890ns - 895ns)
*	Reading 00001010010011001000 from address 000000 (from port 0) during cycle 180 (900ns - 905ns)
*	Reading 00001010010011001000 from address 000000 (from port 0) during cycle 182 (910ns - 915ns)
*	Writing (partial) 10101011000101111010  to  address 111110 with mask bit 1 (from port 0) during cycle 183 (915ns - 920ns)
*	Reading 10101011000101111010 from address 111110 (from port 0) during cycle 185 (925ns - 930ns)
*	Writing 01101000000110001111  to  address 000001 (from port 0) during cycle 186 (930ns - 935ns)
*	Reading 10101011000101111010 from address 111110 (from port 0) during cycle 187 (935ns - 940ns)
*	Reading 01101000000110001111 from address 000001 (from port 0) during cycle 188 (940ns - 945ns)
*	Writing 11111111110001101100  to  address 111110 (from port 0) during cycle 189 (945ns - 950ns)
*	Reading 10101000100001101110 from address 111101 (from port 0) during cycle 191 (955ns - 960ns)
*	Writing (partial) 10110100110011111111  to  address 000001 with mask bit 0 (from port 0) during cycle 192 (960ns - 965ns)
*	Writing (partial) 11111000010100010000  to  address 000001 with mask bit 1 (from port 0) during cycle 193 (965ns - 970ns)
*	Reading 11111000010100010000 from address 000001 (from port 0) during cycle 194 (970ns - 975ns)
*	Reading 10101000100001101110 from address 111101 (from port 0) during cycle 195 (975ns - 980ns)
*	Writing 10101000011100000110  to  address 000000 (from port 0) during cycle 196 (980ns - 985ns)
*	Reading 11111111110001101100 from address 111110 (from port 0) during cycle 197 (985ns - 990ns)
*	Writing 01011010000111101100  to  address 111101 (from port 0) during cycle 198 (990ns - 995ns)
*	Writing 00001110101011101111  to  address 111110 (from port 0) during cycle 199 (995ns - 1000ns)
*	Reading 00001110101011101111 from address 111110 (from port 0) during cycle 200 (1000ns - 1005ns)
*	Reading 01011010000111101100 from address 111101 (from port 0) during cycle 201 (1005ns - 1010ns)
*	Writing (partial) 00110010110010000110  to  address 000001 with mask bit 0 (from port 0) during cycle 202 (1010ns - 1015ns)
*	Writing 10010101001011010110  to  address 000000 (from port 0) during cycle 203 (1015ns - 1020ns)
*	Reading 11111000010100010000 from address 000001 (from port 0) during cycle 204 (1020ns - 1025ns)
*	Idle during cycle 205 (1025ns - 1030ns)

* Generation of data and address signals
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 1), (50, 1), (55, 1), (60, 1), (65, 0), (70, 1), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 1), (130, 0), (135, 1), (140, 1), (145, 1), (150, 1), (155, 0), (160, 0), (165, 0), (170, 1), (175, 1), (180, 1), (185, 1), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 1), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 1), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 0), (605, 1), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 0), (805, 0), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 0), (920, 0), (925, 0), (930, 1), (935, 1), (940, 1), (945, 0), (950, 0), (955, 0), (960, 1), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 1), (1000, 1), (1005, 1), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_0  din0_0  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.9v 59.745n 0.9v 59.755n 0.9v 64.745n 0.9v 64.755n 0.0v 69.745n 0.0v 69.755n 0.9v 74.745n 0.9v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.9v 129.745n 0.9v 129.755n 0.0v 134.745n 0.0v 134.755n 0.9v 139.745n 0.9v 139.755n 0.9v 144.745n 0.9v 144.755n 0.9v 149.745n 0.9v 149.755n 0.9v 154.745n 0.9v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.9v 174.745n 0.9v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.9v 359.745n 0.9v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.9v 424.745n 0.9v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.9v 474.745n 0.9v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.9v 509.745n 0.9v 509.755n 0.9v 514.745n 0.9v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.9v 609.745n 0.9v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.9v 739.745n 0.9v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.9v 779.745n 0.9v 779.755n 0.9v 784.745n 0.9v 784.755n 0.9v 789.745n 0.9v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.9v 894.745n 0.9v 894.755n 0.9v 899.745n 0.9v 899.755n 0.9v 904.745n 0.9v 904.755n 0.9v 909.745n 0.9v 909.755n 0.9v 914.745n 0.9v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.9v 944.745n 0.9v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.9v 964.745n 0.9v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 0), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 0), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 0), (155, 1), (160, 1), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 1), (240, 1), (245, 1), (250, 1), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 0), (325, 0), (330, 0), (335, 0), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 1), (410, 0), (415, 0), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 1), (565, 0), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 0), (605, 0), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 0), (640, 0), (645, 1), (650, 1), (655, 1), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 1), (715, 1), (720, 1), (725, 0), (730, 0), (735, 1), (740, 1), (745, 1), (750, 0), (755, 0), (760, 1), (765, 1), (770, 1), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 1), (805, 1), (810, 0), (815, 0), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 0), (850, 0), (855, 0), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 1), (945, 0), (950, 0), (955, 0), (960, 1), (965, 0), (970, 0), (975, 0), (980, 1), (985, 1), (990, 0), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_1  din0_1  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.0v 14.745n 0.0v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.0v 44.745n 0.0v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.9v 59.745n 0.9v 59.755n 0.9v 64.745n 0.9v 64.755n 0.9v 69.745n 0.9v 69.755n 0.0v 74.745n 0.0v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.9v 139.745n 0.9v 139.755n 0.9v 144.745n 0.9v 144.755n 0.9v 149.745n 0.9v 149.755n 0.0v 154.745n 0.0v 154.755n 0.9v 159.745n 0.9v 159.755n 0.9v 164.745n 0.9v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.9v 364.745n 0.9v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.9v 409.745n 0.9v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.9v 424.745n 0.9v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.9v 474.745n 0.9v 474.755n 0.9v 479.745n 0.9v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.9v 564.745n 0.9v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.9v 614.745n 0.9v 614.755n 0.9v 619.745n 0.9v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.9v 649.745n 0.9v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.9v 739.745n 0.9v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.9v 764.745n 0.9v 764.755n 0.9v 769.745n 0.9v 769.755n 0.9v 774.745n 0.9v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.9v 864.745n 0.9v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.9v 894.745n 0.9v 894.755n 0.9v 899.745n 0.9v 899.755n 0.9v 904.745n 0.9v 904.755n 0.9v 909.745n 0.9v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.9v 944.745n 0.9v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.9v 964.745n 0.9v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.0v 994.745n 0.0v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 1), (40, 1), (45, 1), (50, 0), (55, 0), (60, 0), (65, 0), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 1), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 0), (230, 0), (235, 1), (240, 1), (245, 1), (250, 1), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 0), (325, 0), (330, 0), (335, 0), (340, 1), (345, 1), (350, 1), (355, 0), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 0), (410, 1), (415, 1), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 0), (555, 0), (560, 1), (565, 1), (570, 1), (575, 1), (580, 1), (585, 0), (590, 0), (595, 0), (600, 0), (605, 0), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 0), (695, 0), (700, 0), (705, 0), (710, 1), (715, 1), (720, 1), (725, 0), (730, 0), (735, 1), (740, 1), (745, 1), (750, 0), (755, 1), (760, 1), (765, 1), (770, 1), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 1), (935, 1), (940, 1), (945, 1), (950, 1), (955, 1), (960, 1), (965, 0), (970, 0), (975, 0), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_2  din0_2  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.9v 39.745n 0.9v 39.755n 0.9v 44.745n 0.9v 44.755n 0.9v 49.745n 0.9v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.9v 74.745n 0.9v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.9v 129.745n 0.9v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.9v 169.745n 0.9v 169.755n 0.9v 174.745n 0.9v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.9v 194.745n 0.9v 194.755n 0.9v 199.745n 0.9v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.0v 359.745n 0.0v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.9v 404.745n 0.9v 404.755n 0.0v 409.745n 0.0v 409.755n 0.9v 414.745n 0.9v 414.755n 0.9v 419.745n 0.9v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.9v 474.745n 0.9v 474.755n 0.9v 479.745n 0.9v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.9v 509.745n 0.9v 509.755n 0.9v 514.745n 0.9v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.9v 564.745n 0.9v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.9v 614.745n 0.9v 614.755n 0.9v 619.745n 0.9v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.9v 664.745n 0.9v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.9v 739.745n 0.9v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.0v 754.745n 0.0v 754.755n 0.9v 759.745n 0.9v 759.755n 0.9v 764.745n 0.9v 764.755n 0.9v 769.745n 0.9v 769.755n 0.9v 774.745n 0.9v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.9v 854.745n 0.9v 854.755n 0.9v 859.745n 0.9v 859.755n 0.9v 864.745n 0.9v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.9v 964.745n 0.9v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 0), (50, 0), (55, 0), (60, 0), (65, 1), (70, 1), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 1), (130, 0), (135, 1), (140, 1), (145, 1), (150, 1), (155, 0), (160, 0), (165, 0), (170, 0), (175, 0), (180, 0), (185, 0), (190, 1), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 1), (230, 1), (235, 0), (240, 0), (245, 1), (250, 1), (255, 0), (260, 0), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 1), (360, 1), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 1), (415, 1), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 1), (485, 1), (490, 1), (495, 0), (500, 0), (505, 0), (510, 0), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 0), (560, 1), (565, 1), (570, 1), (575, 1), (580, 1), (585, 0), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 1), (640, 1), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 1), (675, 1), (680, 1), (685, 1), (690, 0), (695, 0), (700, 0), (705, 0), (710, 1), (715, 1), (720, 1), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 1), (760, 0), (765, 0), (770, 0), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 0), (845, 0), (850, 0), (855, 0), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 1), (945, 1), (950, 1), (955, 1), (960, 1), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_3  din0_3  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.0v 14.745n 0.0v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.9v 44.745n 0.9v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.9v 69.745n 0.9v 69.755n 0.9v 74.745n 0.9v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.9v 129.745n 0.9v 129.755n 0.0v 134.745n 0.0v 134.755n 0.9v 139.745n 0.9v 139.755n 0.9v 144.745n 0.9v 144.755n 0.9v 149.745n 0.9v 149.755n 0.9v 154.745n 0.9v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.9v 194.745n 0.9v 194.755n 0.9v 199.745n 0.9v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.9v 229.745n 0.9v 229.755n 0.9v 234.745n 0.9v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.9v 289.745n 0.9v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.9v 359.745n 0.9v 359.755n 0.9v 364.745n 0.9v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.9v 414.745n 0.9v 414.755n 0.9v 419.745n 0.9v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.0v 559.745n 0.0v 559.755n 0.9v 564.745n 0.9v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.9v 639.745n 0.9v 639.755n 0.9v 644.745n 0.9v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.9v 759.745n 0.9v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.9v 779.745n 0.9v 779.755n 0.9v 784.745n 0.9v 784.755n 0.9v 789.745n 0.9v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.9v 864.745n 0.9v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.9v 894.745n 0.9v 894.755n 0.9v 899.745n 0.9v 899.755n 0.9v 904.745n 0.9v 904.755n 0.9v 909.745n 0.9v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.9v 964.745n 0.9v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 1), (120, 1), (125, 1), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 1), (175, 1), (180, 1), (185, 0), (190, 1), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 1), (355, 0), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 0), (510, 0), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 0), (560, 1), (565, 1), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 0), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 0), (760, 1), (765, 1), (770, 1), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 1), (845, 1), (850, 1), (855, 1), (860, 0), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 1), (920, 1), (925, 1), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 1), (965, 1), (970, 1), (975, 1), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_4  din0_4  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.9v 14.745n 0.9v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.9v 34.745n 0.9v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.9v 129.745n 0.9v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.9v 174.745n 0.9v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.0v 189.745n 0.0v 189.755n 0.9v 194.745n 0.9v 194.755n 0.9v 199.745n 0.9v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.9v 229.745n 0.9v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.9v 354.745n 0.9v 354.755n 0.0v 359.745n 0.0v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.9v 404.745n 0.9v 404.755n 0.9v 409.745n 0.9v 409.755n 0.9v 414.745n 0.9v 414.755n 0.9v 419.745n 0.9v 419.755n 0.9v 424.745n 0.9v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.9v 474.745n 0.9v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.0v 559.745n 0.0v 559.755n 0.9v 564.745n 0.9v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.9v 604.745n 0.9v 604.755n 0.0v 609.745n 0.0v 609.755n 0.9v 614.745n 0.9v 614.755n 0.9v 619.745n 0.9v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.9v 664.745n 0.9v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.9v 739.745n 0.9v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.0v 759.745n 0.0v 759.755n 0.9v 764.745n 0.9v 764.755n 0.9v 769.745n 0.9v 769.755n 0.9v 774.745n 0.9v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.9v 854.745n 0.9v 854.755n 0.9v 859.745n 0.9v 859.755n 0.0v 864.745n 0.0v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.9v 979.745n 0.9v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 1), (70, 0), (75, 0), (80, 0), (85, 1), (90, 1), (95, 1), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 1), (130, 1), (135, 0), (140, 0), (145, 0), (150, 1), (155, 1), (160, 1), (165, 0), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 1), (410, 0), (415, 0), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 1), (500, 1), (505, 0), (510, 0), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 0), (605, 1), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 1), (675, 1), (680, 1), (685, 1), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 1), (735, 0), (740, 0), (745, 0), (750, 1), (755, 1), (760, 0), (765, 0), (770, 0), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 1), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 1), (920, 1), (925, 1), (930, 0), (935, 0), (940, 0), (945, 1), (950, 1), (955, 1), (960, 1), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_5  din0_5  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.9v 69.745n 0.9v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.9v 154.745n 0.9v 154.755n 0.9v 159.745n 0.9v 159.755n 0.9v 164.745n 0.9v 164.755n 0.0v 169.745n 0.0v 169.755n 0.9v 174.745n 0.9v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.9v 194.745n 0.9v 194.755n 0.9v 199.745n 0.9v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.9v 229.745n 0.9v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.9v 289.745n 0.9v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.9v 409.745n 0.9v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.9v 424.745n 0.9v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.9v 609.745n 0.9v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.9v 734.745n 0.9v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.9v 754.745n 0.9v 754.755n 0.9v 759.745n 0.9v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.9v 779.745n 0.9v 779.755n 0.9v 784.745n 0.9v 784.755n 0.9v 789.745n 0.9v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.9v 864.745n 0.9v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.9v 964.745n 0.9v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 0), (40, 0), (45, 1), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 0), (80, 0), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 1), (155, 1), (160, 1), (165, 0), (170, 0), (175, 0), (180, 0), (185, 1), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 1), (230, 1), (235, 0), (240, 0), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 0), (355, 0), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 0), (410, 1), (415, 1), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 1), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 1), (560, 0), (565, 1), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 1), (695, 1), (700, 1), (705, 1), (710, 0), (715, 0), (720, 0), (725, 1), (730, 0), (735, 1), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 1), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 0), (850, 0), (855, 0), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 0), (935, 0), (940, 0), (945, 1), (950, 1), (955, 1), (960, 1), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 0), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_6  din0_6  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.9v 14.745n 0.9v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.9v 34.745n 0.9v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.9v 59.745n 0.9v 59.755n 0.9v 64.745n 0.9v 64.755n 0.9v 69.745n 0.9v 69.755n 0.9v 74.745n 0.9v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.9v 154.745n 0.9v 154.755n 0.9v 159.745n 0.9v 159.755n 0.9v 164.745n 0.9v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.9v 189.745n 0.9v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.9v 229.745n 0.9v 229.755n 0.9v 234.745n 0.9v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.9v 289.745n 0.9v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.9v 404.745n 0.9v 404.755n 0.0v 409.745n 0.0v 409.755n 0.9v 414.745n 0.9v 414.755n 0.9v 419.745n 0.9v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.9v 474.745n 0.9v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.9v 509.745n 0.9v 509.755n 0.9v 514.745n 0.9v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.9v 559.745n 0.9v 559.755n 0.0v 564.745n 0.0v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.9v 639.745n 0.9v 639.755n 0.9v 644.745n 0.9v 644.755n 0.9v 649.745n 0.9v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.9v 729.745n 0.9v 729.755n 0.0v 734.745n 0.0v 734.755n 0.9v 739.745n 0.9v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.9v 759.745n 0.9v 759.755n 0.9v 764.745n 0.9v 764.755n 0.9v 769.745n 0.9v 769.755n 0.9v 774.745n 0.9v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.9v 864.745n 0.9v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.9v 894.745n 0.9v 894.755n 0.9v 899.745n 0.9v 899.755n 0.9v 904.745n 0.9v 904.755n 0.9v 909.745n 0.9v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.9v 964.745n 0.9v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 1), (55, 1), (60, 1), (65, 1), (70, 0), (75, 1), (80, 1), (85, 0), (90, 0), (95, 0), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 0), (130, 0), (135, 1), (140, 1), (145, 1), (150, 0), (155, 1), (160, 1), (165, 0), (170, 1), (175, 1), (180, 1), (185, 1), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 1), (230, 1), (235, 0), (240, 0), (245, 1), (250, 1), (255, 1), (260, 1), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 0), (355, 0), (360, 0), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 0), (400, 0), (405, 0), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 0), (555, 1), (560, 0), (565, 1), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 1), (640, 1), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 0), (715, 0), (720, 0), (725, 1), (730, 0), (735, 0), (740, 0), (745, 0), (750, 1), (755, 1), (760, 1), (765, 1), (770, 1), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 1), (815, 1), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 1), (850, 1), (855, 1), (860, 0), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 0), (920, 0), (925, 0), (930, 1), (935, 1), (940, 1), (945, 0), (950, 0), (955, 0), (960, 1), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_7  din0_7  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.9v 14.745n 0.9v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.9v 54.745n 0.9v 54.755n 0.9v 59.745n 0.9v 59.755n 0.9v 64.745n 0.9v 64.755n 0.9v 69.745n 0.9v 69.755n 0.0v 74.745n 0.0v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.9v 139.745n 0.9v 139.755n 0.9v 144.745n 0.9v 144.755n 0.9v 149.745n 0.9v 149.755n 0.0v 154.745n 0.0v 154.755n 0.9v 159.745n 0.9v 159.755n 0.9v 164.745n 0.9v 164.755n 0.0v 169.745n 0.0v 169.755n 0.9v 174.745n 0.9v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.9v 229.745n 0.9v 229.755n 0.9v 234.745n 0.9v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.9v 414.745n 0.9v 414.755n 0.9v 419.745n 0.9v 419.755n 0.9v 424.745n 0.9v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.9v 509.745n 0.9v 509.755n 0.9v 514.745n 0.9v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.0v 554.745n 0.0v 554.755n 0.9v 559.745n 0.9v 559.755n 0.0v 564.745n 0.0v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.9v 604.745n 0.9v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.9v 639.745n 0.9v 639.755n 0.9v 644.745n 0.9v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.9v 729.745n 0.9v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.9v 754.745n 0.9v 754.755n 0.9v 759.745n 0.9v 759.755n 0.9v 764.745n 0.9v 764.755n 0.9v 769.745n 0.9v 769.755n 0.9v 774.745n 0.9v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.9v 849.745n 0.9v 849.755n 0.9v 854.745n 0.9v 854.755n 0.9v 859.745n 0.9v 859.755n 0.0v 864.745n 0.0v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.9v 894.745n 0.9v 894.755n 0.9v 899.745n 0.9v 899.755n 0.9v 904.745n 0.9v 904.755n 0.9v 909.745n 0.9v 909.755n 0.9v 914.745n 0.9v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.9v 944.745n 0.9v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.9v 964.745n 0.9v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 0), (20, 0), (25, 0), (30, 0), (35, 1), (40, 1), (45, 0), (50, 0), (55, 0), (60, 0), (65, 1), (70, 0), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 0), (120, 0), (125, 1), (130, 0), (135, 0), (140, 0), (145, 0), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 1), (400, 1), (405, 0), (410, 0), (415, 0), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 0), (555, 1), (560, 1), (565, 0), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 0), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 0), (640, 0), (645, 1), (650, 1), (655, 1), (660, 0), (665, 0), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 0), (715, 0), (720, 0), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 1), (805, 1), (810, 0), (815, 0), (820, 1), (825, 1), (830, 1), (835, 1), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 1), (945, 0), (950, 0), (955, 0), (960, 0), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 1), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_8  din0_8  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.9v 14.745n 0.9v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.9v 39.745n 0.9v 39.755n 0.9v 44.745n 0.9v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.9v 69.745n 0.9v 69.755n 0.0v 74.745n 0.0v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.9v 129.745n 0.9v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.9v 154.745n 0.9v 154.755n 0.9v 159.745n 0.9v 159.755n 0.9v 164.745n 0.9v 164.755n 0.9v 169.745n 0.9v 169.755n 0.9v 174.745n 0.9v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.9v 194.745n 0.9v 194.755n 0.9v 199.745n 0.9v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.9v 399.745n 0.9v 399.755n 0.9v 404.745n 0.9v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.9v 424.745n 0.9v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.9v 474.745n 0.9v 474.755n 0.9v 479.745n 0.9v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.0v 554.745n 0.0v 554.755n 0.9v 559.745n 0.9v 559.755n 0.9v 564.745n 0.9v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.9v 619.745n 0.9v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.9v 649.745n 0.9v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.9v 739.745n 0.9v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.9v 894.745n 0.9v 894.755n 0.9v 899.745n 0.9v 899.755n 0.9v 904.745n 0.9v 904.755n 0.9v 909.745n 0.9v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.9v 944.745n 0.9v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.9v 994.745n 0.9v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 1), (40, 1), (45, 0), (50, 0), (55, 0), (60, 0), (65, 1), (70, 1), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 1), (105, 1), (110, 1), (115, 0), (120, 0), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 0), (160, 0), (165, 1), (170, 0), (175, 0), (180, 0), (185, 1), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 1), (230, 1), (235, 0), (240, 0), (245, 1), (250, 1), (255, 1), (260, 1), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 1), (325, 1), (330, 1), (335, 1), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 0), (410, 0), (415, 0), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 0), (485, 0), (490, 0), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 0), (555, 1), (560, 0), (565, 1), (570, 1), (575, 1), (580, 1), (585, 0), (590, 0), (595, 0), (600, 0), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 0), (640, 0), (645, 1), (650, 1), (655, 1), (660, 0), (665, 0), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 0), (735, 1), (740, 1), (745, 1), (750, 0), (755, 0), (760, 1), (765, 1), (770, 1), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 0), (815, 0), (820, 0), (825, 0), (830, 0), (835, 0), (840, 1), (845, 0), (850, 0), (855, 0), (860, 0), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 0), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 1), (985, 1), (990, 0), (995, 1), (1000, 1), (1005, 1), (1010, 0), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_9  din0_9  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.9v 39.745n 0.9v 39.755n 0.9v 44.745n 0.9v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.9v 69.745n 0.9v 69.755n 0.9v 74.745n 0.9v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.9v 139.745n 0.9v 139.755n 0.9v 144.745n 0.9v 144.755n 0.9v 149.745n 0.9v 149.755n 0.9v 154.745n 0.9v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.9v 169.745n 0.9v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.9v 189.745n 0.9v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.9v 229.745n 0.9v 229.755n 0.9v 234.745n 0.9v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.9v 404.745n 0.9v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.9v 424.745n 0.9v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.9v 474.745n 0.9v 474.755n 0.9v 479.745n 0.9v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.9v 509.745n 0.9v 509.755n 0.9v 514.745n 0.9v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.0v 554.745n 0.0v 554.755n 0.9v 559.745n 0.9v 559.755n 0.0v 564.745n 0.0v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.9v 619.745n 0.9v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.9v 649.745n 0.9v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.9v 729.745n 0.9v 729.755n 0.0v 734.745n 0.0v 734.755n 0.9v 739.745n 0.9v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.9v 764.745n 0.9v 764.755n 0.9v 769.745n 0.9v 769.755n 0.9v 774.745n 0.9v 774.755n 0.9v 779.745n 0.9v 779.755n 0.9v 784.745n 0.9v 784.755n 0.9v 789.745n 0.9v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.9v 844.745n 0.9v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.9v 894.745n 0.9v 894.755n 0.9v 899.745n 0.9v 899.755n 0.9v 904.745n 0.9v 904.755n 0.9v 909.745n 0.9v 909.755n 0.9v 914.745n 0.9v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.0v 994.745n 0.0v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 0), (45, 1), (50, 1), (55, 1), (60, 1), (65, 0), (70, 1), (75, 1), (80, 1), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 1), (120, 1), (125, 0), (130, 1), (135, 0), (140, 0), (145, 0), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 0), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 0), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 1), (560, 0), (565, 1), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 0), (650, 0), (655, 0), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 0), (715, 0), (720, 0), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 0), (755, 0), (760, 1), (765, 1), (770, 1), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 1), (805, 1), (810, 0), (815, 0), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 0), (850, 0), (855, 0), (860, 0), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 1), (950, 1), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 1), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_10  din0_10  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.0v 14.745n 0.0v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.0v 44.745n 0.0v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.9v 59.745n 0.9v 59.755n 0.9v 64.745n 0.9v 64.755n 0.0v 69.745n 0.0v 69.755n 0.9v 74.745n 0.9v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.0v 129.745n 0.0v 129.755n 0.9v 134.745n 0.9v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.9v 154.745n 0.9v 154.755n 0.9v 159.745n 0.9v 159.755n 0.9v 164.745n 0.9v 164.755n 0.9v 169.745n 0.9v 169.755n 0.9v 174.745n 0.9v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.9v 229.745n 0.9v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.0v 364.745n 0.0v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.9v 404.745n 0.9v 404.755n 0.0v 409.745n 0.0v 409.755n 0.9v 414.745n 0.9v 414.755n 0.9v 419.745n 0.9v 419.755n 0.9v 424.745n 0.9v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.9v 474.745n 0.9v 474.755n 0.9v 479.745n 0.9v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.9v 559.745n 0.9v 559.755n 0.0v 564.745n 0.0v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.9v 619.745n 0.9v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.9v 639.745n 0.9v 639.755n 0.9v 644.745n 0.9v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.9v 664.745n 0.9v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.9v 739.745n 0.9v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.9v 764.745n 0.9v 764.755n 0.9v 769.745n 0.9v 769.755n 0.9v 774.745n 0.9v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 1), (55, 1), (60, 1), (65, 1), (70, 0), (75, 1), (80, 1), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 1), (130, 0), (135, 0), (140, 0), (145, 0), (150, 1), (155, 0), (160, 0), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 0), (325, 0), (330, 0), (335, 0), (340, 1), (345, 1), (350, 0), (355, 0), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 0), (400, 0), (405, 1), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 0), (485, 0), (490, 0), (495, 1), (500, 1), (505, 1), (510, 1), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 1), (560, 0), (565, 1), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 0), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 0), (715, 0), (720, 0), (725, 1), (730, 0), (735, 1), (740, 1), (745, 1), (750, 0), (755, 1), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 1), (805, 1), (810, 1), (815, 1), (820, 0), (825, 0), (830, 0), (835, 0), (840, 1), (845, 1), (850, 1), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 1), (950, 1), (955, 1), (960, 1), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_11  din0_11  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.9v 14.745n 0.9v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.9v 54.745n 0.9v 54.755n 0.9v 59.745n 0.9v 59.755n 0.9v 64.745n 0.9v 64.755n 0.9v 69.745n 0.9v 69.755n 0.0v 74.745n 0.0v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.9v 129.745n 0.9v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.9v 154.745n 0.9v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.9v 169.745n 0.9v 169.755n 0.9v 174.745n 0.9v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.9v 409.745n 0.9v 409.755n 0.9v 414.745n 0.9v 414.755n 0.9v 419.745n 0.9v 419.755n 0.9v 424.745n 0.9v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.9v 474.745n 0.9v 474.755n 0.9v 479.745n 0.9v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.9v 509.745n 0.9v 509.755n 0.9v 514.745n 0.9v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.9v 559.745n 0.9v 559.755n 0.0v 564.745n 0.0v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.9v 604.745n 0.9v 604.755n 0.0v 609.745n 0.0v 609.755n 0.9v 614.745n 0.9v 614.755n 0.9v 619.745n 0.9v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.9v 729.745n 0.9v 729.755n 0.0v 734.745n 0.0v 734.755n 0.9v 739.745n 0.9v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.0v 754.745n 0.0v 754.755n 0.9v 759.745n 0.9v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.9v 854.745n 0.9v 854.755n 0.9v 859.745n 0.9v 859.755n 0.9v 864.745n 0.9v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.9v 894.745n 0.9v 894.755n 0.9v 899.745n 0.9v 899.755n 0.9v 904.745n 0.9v 904.755n 0.9v 909.745n 0.9v 909.755n 0.9v 914.745n 0.9v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.9v 964.745n 0.9v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 1), (20, 1), (25, 1), (30, 1), (35, 0), (40, 0), (45, 1), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 0), (105, 0), (110, 0), (115, 1), (120, 1), (125, 0), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 0), (410, 1), (415, 1), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 0), (555, 0), (560, 1), (565, 0), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 0), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 1), (675, 1), (680, 1), (685, 1), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 1), (740, 1), (745, 1), (750, 0), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 1), (855, 1), (860, 0), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 1), (920, 1), (925, 1), (930, 0), (935, 0), (940, 0), (945, 1), (950, 1), (955, 1), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_12  din0_12  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.0v 14.745n 0.0v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.9v 34.745n 0.9v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.9v 49.745n 0.9v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.0v 129.745n 0.0v 129.755n 0.9v 134.745n 0.9v 134.755n 0.9v 139.745n 0.9v 139.755n 0.9v 144.745n 0.9v 144.755n 0.9v 149.745n 0.9v 149.755n 0.9v 154.745n 0.9v 154.755n 0.9v 159.745n 0.9v 159.755n 0.9v 164.745n 0.9v 164.755n 0.9v 169.745n 0.9v 169.755n 0.9v 174.745n 0.9v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.9v 194.745n 0.9v 194.755n 0.9v 199.745n 0.9v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.9v 359.745n 0.9v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.9v 404.745n 0.9v 404.755n 0.0v 409.745n 0.0v 409.755n 0.9v 414.745n 0.9v 414.755n 0.9v 419.745n 0.9v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.9v 474.745n 0.9v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.9v 509.745n 0.9v 509.755n 0.9v 514.745n 0.9v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.9v 564.745n 0.9v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.9v 619.745n 0.9v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.9v 739.745n 0.9v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.9v 854.745n 0.9v 854.755n 0.9v 859.745n 0.9v 859.755n 0.0v 864.745n 0.0v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 1), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 1), (75, 1), (80, 1), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 1), (130, 1), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 1), (170, 0), (175, 0), (180, 0), (185, 1), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 0), (260, 0), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 0), (345, 0), (350, 0), (355, 0), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 1), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 0), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 0), (715, 0), (720, 0), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 0), (760, 0), (765, 0), (770, 0), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 0), (805, 0), (810, 1), (815, 1), (820, 0), (825, 0), (830, 0), (835, 0), (840, 1), (845, 1), (850, 1), (855, 1), (860, 0), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 1), (920, 1), (925, 1), (930, 0), (935, 0), (940, 0), (945, 1), (950, 1), (955, 1), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 1), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_13  din0_13  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.9v 44.745n 0.9v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.9v 74.745n 0.9v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.9v 139.745n 0.9v 139.755n 0.9v 144.745n 0.9v 144.755n 0.9v 149.745n 0.9v 149.755n 0.9v 154.745n 0.9v 154.755n 0.9v 159.745n 0.9v 159.755n 0.9v 164.745n 0.9v 164.755n 0.9v 169.745n 0.9v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.9v 189.745n 0.9v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.9v 229.745n 0.9v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.9v 404.745n 0.9v 404.755n 0.9v 409.745n 0.9v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.9v 509.745n 0.9v 509.755n 0.9v 514.745n 0.9v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.9v 619.745n 0.9v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.9v 639.745n 0.9v 639.755n 0.9v 644.745n 0.9v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.9v 739.745n 0.9v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.9v 779.745n 0.9v 779.755n 0.9v 784.745n 0.9v 784.755n 0.9v 789.745n 0.9v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.9v 854.745n 0.9v 854.755n 0.9v 859.745n 0.9v 859.755n 0.0v 864.745n 0.0v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 1), (55, 1), (60, 1), (65, 1), (70, 1), (75, 1), (80, 1), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 1), (120, 1), (125, 0), (130, 0), (135, 1), (140, 1), (145, 1), (150, 1), (155, 1), (160, 1), (165, 0), (170, 1), (175, 1), (180, 1), (185, 1), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 1), (325, 1), (330, 1), (335, 1), (340, 0), (345, 0), (350, 0), (355, 0), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 0), (555, 1), (560, 0), (565, 1), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 0), (665, 0), (670, 1), (675, 1), (680, 1), (685, 1), (690, 0), (695, 0), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 0), (760, 0), (765, 0), (770, 0), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 0), (805, 0), (810, 1), (815, 1), (820, 0), (825, 0), (830, 0), (835, 0), (840, 1), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 1), (950, 1), (955, 1), (960, 1), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 1), (1000, 1), (1005, 1), (1010, 0), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_14  din0_14  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.9v 54.745n 0.9v 54.755n 0.9v 59.745n 0.9v 59.755n 0.9v 64.745n 0.9v 64.755n 0.9v 69.745n 0.9v 69.755n 0.9v 74.745n 0.9v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.9v 139.745n 0.9v 139.755n 0.9v 144.745n 0.9v 144.755n 0.9v 149.745n 0.9v 149.755n 0.9v 154.745n 0.9v 154.755n 0.9v 159.745n 0.9v 159.755n 0.9v 164.745n 0.9v 164.755n 0.0v 169.745n 0.0v 169.755n 0.9v 174.745n 0.9v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.9v 289.745n 0.9v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.9v 509.745n 0.9v 509.755n 0.9v 514.745n 0.9v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.0v 554.745n 0.0v 554.755n 0.9v 559.745n 0.9v 559.755n 0.0v 564.745n 0.0v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.9v 604.745n 0.9v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.9v 739.745n 0.9v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.9v 779.745n 0.9v 779.755n 0.9v 784.745n 0.9v 784.755n 0.9v 789.745n 0.9v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.9v 844.745n 0.9v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.9v 964.745n 0.9v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 0), (20, 0), (25, 0), (30, 0), (35, 1), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 1), (90, 1), (95, 1), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 0), (130, 0), (135, 1), (140, 1), (145, 1), (150, 0), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 1), (260, 1), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 0), (325, 0), (330, 0), (335, 0), (340, 1), (345, 1), (350, 0), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 0), (400, 0), (405, 0), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 1), (485, 1), (490, 1), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 1), (560, 1), (565, 1), (570, 1), (575, 1), (580, 1), (585, 0), (590, 0), (595, 0), (600, 0), (605, 0), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 1), (640, 1), (645, 1), (650, 1), (655, 1), (660, 1), (665, 1), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 1), (715, 1), (720, 1), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 1), (755, 0), (760, 1), (765, 1), (770, 1), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 1), (805, 1), (810, 1), (815, 1), (820, 0), (825, 0), (830, 0), (835, 0), (840, 1), (845, 0), (850, 0), (855, 0), (860, 1), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 1), (945, 1), (950, 1), (955, 1), (960, 0), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_15  din0_15  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.9v 14.745n 0.9v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.9v 39.745n 0.9v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.9v 89.745n 0.9v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.9v 139.745n 0.9v 139.755n 0.9v 144.745n 0.9v 144.755n 0.9v 149.745n 0.9v 149.755n 0.0v 154.745n 0.0v 154.755n 0.9v 159.745n 0.9v 159.755n 0.9v 164.745n 0.9v 164.755n 0.9v 169.745n 0.9v 169.755n 0.9v 174.745n 0.9v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.0v 354.745n 0.0v 354.755n 0.9v 359.745n 0.9v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.9v 414.745n 0.9v 414.755n 0.9v 419.745n 0.9v 419.755n 0.9v 424.745n 0.9v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.9v 559.745n 0.9v 559.755n 0.9v 564.745n 0.9v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.9v 614.745n 0.9v 614.755n 0.9v 619.745n 0.9v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.9v 639.745n 0.9v 639.755n 0.9v 644.745n 0.9v 644.755n 0.9v 649.745n 0.9v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.9v 669.745n 0.9v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.9v 754.745n 0.9v 754.755n 0.0v 759.745n 0.0v 759.755n 0.9v 764.745n 0.9v 764.755n 0.9v 769.745n 0.9v 769.755n 0.9v 774.745n 0.9v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.9v 844.745n 0.9v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.9v 864.745n 0.9v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.0v 964.745n 0.0v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 1), (45, 1), (50, 0), (55, 0), (60, 0), (65, 1), (70, 1), (75, 1), (80, 1), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 0), (120, 0), (125, 1), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 1), (160, 1), (165, 0), (170, 0), (175, 0), (180, 0), (185, 1), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 1), (230, 1), (235, 1), (240, 1), (245, 0), (250, 0), (255, 1), (260, 1), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 0), (360, 0), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 1), (400, 1), (405, 0), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 1), (485, 1), (490, 1), (495, 0), (500, 0), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 0), (560, 1), (565, 0), (570, 0), (575, 0), (580, 0), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 0), (640, 0), (645, 1), (650, 1), (655, 1), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 0), (715, 0), (720, 0), (725, 0), (730, 1), (735, 1), (740, 1), (745, 1), (750, 0), (755, 1), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 0), (920, 0), (925, 0), (930, 0), (935, 0), (940, 0), (945, 1), (950, 1), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 0), (985, 0), (990, 1), (995, 0), (1000, 0), (1005, 0), (1010, 1), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_16  din0_16  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.9v 14.745n 0.9v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.9v 44.745n 0.9v 44.755n 0.9v 49.745n 0.9v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.9v 69.745n 0.9v 69.755n 0.9v 74.745n 0.9v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.9v 129.745n 0.9v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.9v 159.745n 0.9v 159.755n 0.9v 164.745n 0.9v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.9v 189.745n 0.9v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.9v 229.745n 0.9v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.9v 399.745n 0.9v 399.755n 0.9v 404.745n 0.9v 404.755n 0.0v 409.745n 0.0v 409.755n 0.9v 414.745n 0.9v 414.755n 0.9v 419.745n 0.9v 419.755n 0.9v 424.745n 0.9v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.9v 509.745n 0.9v 509.755n 0.9v 514.745n 0.9v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.0v 559.745n 0.0v 559.755n 0.9v 564.745n 0.9v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.9v 614.745n 0.9v 614.755n 0.9v 619.745n 0.9v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.9v 649.745n 0.9v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.9v 734.745n 0.9v 734.755n 0.9v 739.745n 0.9v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.0v 754.745n 0.0v 754.755n 0.9v 759.745n 0.9v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.9v 894.745n 0.9v 894.755n 0.9v 899.745n 0.9v 899.755n 0.9v 904.745n 0.9v 904.755n 0.9v 909.745n 0.9v 909.755n 0.9v 914.745n 0.9v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.9v 979.745n 0.9v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.9v 994.745n 0.9v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 0), (45, 0), (50, 1), (55, 1), (60, 1), (65, 0), (70, 0), (75, 1), (80, 1), (85, 0), (90, 0), (95, 0), (100, 0), (105, 0), (110, 0), (115, 1), (120, 1), (125, 0), (130, 0), (135, 1), (140, 1), (145, 1), (150, 0), (155, 0), (160, 0), (165, 0), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 0), (230, 0), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 1), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 1), (400, 1), (405, 1), (410, 0), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 0), (485, 0), (490, 0), (495, 1), (500, 1), (505, 0), (510, 0), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 0), (560, 0), (565, 1), (570, 1), (575, 1), (580, 1), (585, 1), (590, 1), (595, 1), (600, 1), (605, 1), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 0), (715, 0), (720, 0), (725, 1), (730, 0), (735, 1), (740, 1), (745, 1), (750, 1), (755, 1), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 0), (810, 0), (815, 0), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 0), (850, 0), (855, 0), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 1), (945, 1), (950, 1), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 1), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_17  din0_17  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.9v 14.745n 0.9v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.9v 54.745n 0.9v 54.755n 0.9v 59.745n 0.9v 59.755n 0.9v 64.745n 0.9v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.9v 139.745n 0.9v 139.755n 0.9v 144.745n 0.9v 144.755n 0.9v 149.745n 0.9v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.9v 174.745n 0.9v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.9v 194.745n 0.9v 194.755n 0.9v 199.745n 0.9v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.9v 289.745n 0.9v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.9v 364.745n 0.9v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.9v 399.745n 0.9v 399.755n 0.9v 404.745n 0.9v 404.755n 0.9v 409.745n 0.9v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.9v 474.745n 0.9v 474.755n 0.9v 479.745n 0.9v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.9v 604.745n 0.9v 604.755n 0.9v 609.745n 0.9v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.9v 664.745n 0.9v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.9v 729.745n 0.9v 729.755n 0.0v 734.745n 0.0v 734.755n 0.9v 739.745n 0.9v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.9v 759.745n 0.9v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.9v 864.745n 0.9v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.9v 894.745n 0.9v 894.755n 0.9v 899.745n 0.9v 899.755n 0.9v 904.745n 0.9v 904.755n 0.9v 909.745n 0.9v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 0), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 0), (45, 1), (50, 0), (55, 0), (60, 0), (65, 1), (70, 1), (75, 1), (80, 1), (85, 0), (90, 0), (95, 0), (100, 1), (105, 1), (110, 1), (115, 0), (120, 0), (125, 1), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 1), (160, 1), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 0), (260, 0), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 1), (350, 1), (355, 0), (360, 1), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 1), (400, 1), (405, 1), (410, 0), (415, 0), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 1), (485, 1), (490, 1), (495, 0), (500, 0), (505, 1), (510, 1), (515, 1), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 1), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 0), (605, 1), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 1), (665, 1), (670, 0), (675, 0), (680, 0), (685, 0), (690, 1), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 0), (740, 0), (745, 0), (750, 1), (755, 0), (760, 1), (765, 1), (770, 1), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 1), (935, 1), (940, 1), (945, 1), (950, 1), (955, 1), (960, 0), (965, 1), (970, 1), (975, 1), (980, 0), (985, 0), (990, 1), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Vdin0_18  din0_18  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.0v 14.745n 0.0v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.0v 44.745n 0.0v 44.755n 0.9v 49.745n 0.9v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.9v 69.745n 0.9v 69.755n 0.9v 74.745n 0.9v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.9v 129.745n 0.9v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.9v 159.745n 0.9v 159.755n 0.9v 164.745n 0.9v 164.755n 0.9v 169.745n 0.9v 169.755n 0.9v 174.745n 0.9v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.9v 194.745n 0.9v 194.755n 0.9v 199.745n 0.9v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.9v 229.745n 0.9v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.0v 359.745n 0.0v 359.755n 0.9v 364.745n 0.9v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.9v 399.745n 0.9v 399.755n 0.9v 404.745n 0.9v 404.755n 0.9v 409.745n 0.9v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.9v 424.745n 0.9v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.9v 509.745n 0.9v 509.755n 0.9v 514.745n 0.9v 514.755n 0.9v 519.745n 0.9v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.9v 554.745n 0.9v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.9v 609.745n 0.9v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.9v 664.745n 0.9v 664.755n 0.9v 669.745n 0.9v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.9v 754.745n 0.9v 754.755n 0.0v 759.745n 0.0v 759.755n 0.9v 764.745n 0.9v 764.755n 0.9v 769.745n 0.9v 769.755n 0.9v 774.745n 0.9v 774.755n 0.9v 779.745n 0.9v 779.755n 0.9v 784.745n 0.9v 784.755n 0.9v 789.745n 0.9v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.0v 964.745n 0.0v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.9v 979.745n 0.9v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.9v 994.745n 0.9v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 0), (40, 1), (45, 1), (50, 1), (55, 1), (60, 1), (65, 0), (70, 1), (75, 0), (80, 0), (85, 0), (90, 0), (95, 0), (100, 1), (105, 1), (110, 1), (115, 0), (120, 0), (125, 1), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 0), (230, 0), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 0), (295, 0), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 1), (345, 1), (350, 1), (355, 0), (360, 1), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 1), (500, 1), (505, 1), (510, 1), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 1), (555, 0), (560, 0), (565, 0), (570, 0), (575, 0), (580, 0), (585, 1), (590, 1), (595, 1), (600, 1), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 0), (660, 1), (665, 1), (670, 0), (675, 0), (680, 0), (685, 0), (690, 0), (695, 0), (700, 0), (705, 0), (710, 1), (715, 1), (720, 1), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 1), (755, 0), (760, 0), (765, 0), (770, 0), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 0), (825, 0), (830, 0), (835, 0), (840, 1), (845, 0), (850, 0), (855, 0), (860, 1), (865, 0), (870, 0), (875, 0), (880, 0), (885, 0), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 0), (935, 0), (940, 0), (945, 1), (950, 1), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 1), (1020, 1), (1025, 1)]
Vdin0_19  din0_19  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.9v 14.745n 0.9v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.9v 34.745n 0.9v 34.755n 0.0v 39.745n 0.0v 39.755n 0.9v 44.745n 0.9v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.9v 59.745n 0.9v 59.755n 0.9v 64.745n 0.9v 64.755n 0.0v 69.745n 0.0v 69.755n 0.9v 74.745n 0.9v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.9v 129.745n 0.9v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.9v 174.745n 0.9v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.9v 194.745n 0.9v 194.755n 0.9v 199.745n 0.9v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.9v 289.745n 0.9v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.9v 354.745n 0.9v 354.755n 0.0v 359.745n 0.0v 359.755n 0.9v 364.745n 0.9v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.9v 424.745n 0.9v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.9v 509.745n 0.9v 509.755n 0.9v 514.745n 0.9v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.9v 554.745n 0.9v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.9v 589.745n 0.9v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.9v 604.745n 0.9v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.9v 664.745n 0.9v 664.755n 0.9v 669.745n 0.9v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.9v 754.745n 0.9v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.9v 779.745n 0.9v 779.755n 0.9v 784.745n 0.9v 784.755n 0.9v 789.745n 0.9v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.9v 844.745n 0.9v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.9v 864.745n 0.9v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.9v 894.745n 0.9v 894.755n 0.9v 899.745n 0.9v 899.755n 0.9v 904.745n 0.9v 904.755n 0.9v 909.745n 0.9v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 0), (10, 0), (15, 1), (20, 0), (25, 0), (30, 0), (35, 0), (40, 1), (45, 1), (50, 1), (55, 1), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 1), (90, 0), (95, 0), (100, 1), (105, 1), (110, 1), (115, 0), (120, 0), (125, 1), (130, 0), (135, 0), (140, 1), (145, 0), (150, 0), (155, 0), (160, 0), (165, 0), (170, 1), (175, 0), (180, 0), (185, 1), (190, 1), (195, 1), (200, 1), (205, 0), (210, 0), (215, 0), (220, 0), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 0), (260, 0), (265, 1), (270, 0), (275, 0), (280, 1), (285, 0), (290, 0), (295, 0), (300, 0), (305, 0), (310, 1), (315, 0), (320, 0), (325, 0), (330, 1), (335, 1), (340, 1), (345, 1), (350, 0), (355, 1), (360, 1), (365, 1), (370, 1), (375, 1), (380, 1), (385, 1), (390, 0), (395, 1), (400, 0), (405, 1), (410, 0), (415, 0), (420, 0), (425, 0), (430, 1), (435, 1), (440, 0), (445, 0), (450, 0), (455, 1), (460, 1), (465, 1), (470, 0), (475, 1), (480, 1), (485, 1), (490, 0), (495, 1), (500, 1), (505, 1), (510, 1), (515, 0), (520, 1), (525, 0), (530, 1), (535, 1), (540, 1), (545, 1), (550, 0), (555, 0), (560, 0), (565, 0), (570, 0), (575, 1), (580, 1), (585, 1), (590, 0), (595, 0), (600, 0), (605, 0), (610, 1), (615, 1), (620, 1), (625, 1), (630, 1), (635, 0), (640, 0), (645, 1), (650, 1), (655, 0), (660, 1), (665, 0), (670, 0), (675, 0), (680, 1), (685, 1), (690, 1), (695, 1), (700, 0), (705, 0), (710, 1), (715, 1), (720, 0), (725, 1), (730, 1), (735, 0), (740, 1), (745, 0), (750, 0), (755, 1), (760, 1), (765, 1), (770, 0), (775, 1), (780, 1), (785, 1), (790, 0), (795, 1), (800, 0), (805, 0), (810, 1), (815, 0), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 1), (850, 0), (855, 1), (860, 1), (865, 0), (870, 1), (875, 1), (880, 1), (885, 1), (890, 0), (895, 0), (900, 0), (905, 0), (910, 0), (915, 0), (920, 0), (925, 0), (930, 1), (935, 0), (940, 1), (945, 0), (950, 0), (955, 1), (960, 1), (965, 1), (970, 1), (975, 1), (980, 0), (985, 0), (990, 1), (995, 0), (1000, 0), (1005, 1), (1010, 1), (1015, 0), (1020, 1), (1025, 1)]
Va0_0  a0_0  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.9v 19.745n 0.9v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.9v 44.745n 0.9v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.9v 59.745n 0.9v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.9v 89.745n 0.9v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.9v 129.745n 0.9v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.9v 144.745n 0.9v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.0v 169.745n 0.0v 169.755n 0.9v 174.745n 0.9v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.9v 189.745n 0.9v 189.755n 0.9v 194.745n 0.9v 194.755n 0.9v 199.745n 0.9v 199.755n 0.9v 204.745n 0.9v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.9v 229.745n 0.9v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.9v 269.745n 0.9v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.9v 284.745n 0.9v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.0v 299.745n 0.0v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.9v 314.745n 0.9v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.9v 349.745n 0.9v 349.755n 0.0v 354.745n 0.0v 354.755n 0.9v 359.745n 0.9v 359.755n 0.9v 364.745n 0.9v 364.755n 0.9v 369.745n 0.9v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.0v 394.745n 0.0v 394.755n 0.9v 399.745n 0.9v 399.755n 0.0v 404.745n 0.0v 404.755n 0.9v 409.745n 0.9v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.0v 474.745n 0.0v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.0v 494.745n 0.0v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.9v 509.745n 0.9v 509.755n 0.9v 514.745n 0.9v 514.755n 0.0v 519.745n 0.0v 519.755n 0.9v 524.745n 0.9v 524.755n 0.0v 529.745n 0.0v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.9v 614.745n 0.9v 614.755n 0.9v 619.745n 0.9v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.9v 649.745n 0.9v 649.755n 0.9v 654.745n 0.9v 654.755n 0.0v 659.745n 0.0v 659.755n 0.9v 664.745n 0.9v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.0v 679.745n 0.0v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.0v 724.745n 0.0v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.0v 739.745n 0.0v 739.755n 0.9v 744.745n 0.9v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.9v 759.745n 0.9v 759.755n 0.9v 764.745n 0.9v 764.755n 0.9v 769.745n 0.9v 769.755n 0.0v 774.745n 0.0v 774.755n 0.9v 779.745n 0.9v 779.755n 0.9v 784.745n 0.9v 784.755n 0.9v 789.745n 0.9v 789.755n 0.0v 794.745n 0.0v 794.755n 0.9v 799.745n 0.9v 799.755n 0.0v 804.745n 0.0v 804.755n 0.0v 809.745n 0.0v 809.755n 0.9v 814.745n 0.9v 814.755n 0.0v 819.745n 0.0v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.9v 849.745n 0.9v 849.755n 0.0v 854.745n 0.0v 854.755n 0.9v 859.745n 0.9v 859.755n 0.9v 864.745n 0.9v 864.755n 0.0v 869.745n 0.0v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.0v 894.745n 0.0v 894.755n 0.0v 899.745n 0.0v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.0v 924.745n 0.0v 924.755n 0.0v 929.745n 0.0v 929.755n 0.9v 934.745n 0.9v 934.755n 0.0v 939.745n 0.0v 939.755n 0.9v 944.745n 0.9v 944.755n 0.0v 949.745n 0.0v 949.755n 0.0v 954.745n 0.0v 954.755n 0.9v 959.745n 0.9v 959.755n 0.9v 964.745n 0.9v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.9v 979.745n 0.9v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.9v 994.745n 0.9v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.9v 1014.745n 0.9v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 0), (20, 0), (25, 1), (30, 1), (35, 1), (40, 0), (45, 0), (50, 0), (55, 0), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 0), (90, 0), (95, 1), (100, 0), (105, 0), (110, 0), (115, 1), (120, 0), (125, 0), (130, 1), (135, 0), (140, 0), (145, 0), (150, 1), (155, 0), (160, 0), (165, 1), (170, 0), (175, 0), (180, 0), (185, 0), (190, 0), (195, 0), (200, 0), (205, 0), (210, 1), (215, 1), (220, 1), (225, 0), (230, 0), (235, 0), (240, 0), (245, 0), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 1), (280, 0), (285, 1), (290, 1), (295, 1), (300, 1), (305, 0), (310, 0), (315, 1), (320, 1), (325, 1), (330, 0), (335, 0), (340, 0), (345, 0), (350, 1), (355, 0), (360, 0), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 0), (400, 0), (405, 0), (410, 1), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 0), (465, 0), (470, 0), (475, 0), (480, 0), (485, 0), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 0), (555, 0), (560, 1), (565, 1), (570, 1), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 0), (640, 0), (645, 0), (650, 0), (655, 1), (660, 0), (665, 0), (670, 1), (675, 1), (680, 0), (685, 0), (690, 0), (695, 0), (700, 1), (705, 1), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 1), (740, 0), (745, 1), (750, 1), (755, 0), (760, 0), (765, 0), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 1), (805, 1), (810, 0), (815, 1), (820, 0), (825, 0), (830, 0), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 1), (870, 0), (875, 0), (880, 0), (885, 0), (890, 1), (895, 1), (900, 0), (905, 0), (910, 0), (915, 1), (920, 1), (925, 1), (930, 0), (935, 1), (940, 0), (945, 1), (950, 1), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 1), (990, 0), (995, 1), (1000, 1), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va0_1  a0_1  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.9v 14.745n 0.9v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.9v 29.745n 0.9v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.0v 59.745n 0.0v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.9v 99.745n 0.9v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.9v 119.745n 0.9v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.9v 134.745n 0.9v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.9v 154.745n 0.9v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.9v 169.745n 0.9v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.0v 244.745n 0.0v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.9v 279.745n 0.9v 279.755n 0.0v 284.745n 0.0v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.9v 354.745n 0.9v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.9v 414.745n 0.9v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.0v 469.745n 0.0v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.0v 489.745n 0.0v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.9v 564.745n 0.9v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.9v 659.745n 0.9v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.0v 684.745n 0.0v 684.755n 0.0v 689.745n 0.0v 689.755n 0.0v 694.745n 0.0v 694.755n 0.0v 699.745n 0.0v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.9v 739.745n 0.9v 739.755n 0.0v 744.745n 0.0v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.0v 814.745n 0.0v 814.755n 0.9v 819.745n 0.9v 819.755n 0.0v 824.745n 0.0v 824.755n 0.0v 829.745n 0.0v 829.755n 0.0v 834.745n 0.0v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.9v 869.745n 0.9v 869.755n 0.0v 874.745n 0.0v 874.755n 0.0v 879.745n 0.0v 879.755n 0.0v 884.745n 0.0v 884.755n 0.0v 889.745n 0.0v 889.755n 0.9v 894.745n 0.9v 894.755n 0.9v 899.745n 0.9v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.0v 934.745n 0.0v 934.755n 0.9v 939.745n 0.9v 939.755n 0.0v 944.745n 0.0v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.9v 989.745n 0.9v 989.755n 0.0v 994.745n 0.0v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 1), (20, 0), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 1), (90, 0), (95, 1), (100, 0), (105, 0), (110, 0), (115, 1), (120, 0), (125, 1), (130, 1), (135, 0), (140, 1), (145, 0), (150, 1), (155, 0), (160, 0), (165, 1), (170, 0), (175, 0), (180, 0), (185, 0), (190, 1), (195, 0), (200, 0), (205, 0), (210, 1), (215, 1), (220, 1), (225, 1), (230, 0), (235, 1), (240, 1), (245, 1), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 1), (280, 0), (285, 1), (290, 1), (295, 1), (300, 1), (305, 0), (310, 0), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 0), (350, 1), (355, 0), (360, 1), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 1), (400, 0), (405, 0), (410, 1), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 1), (465, 1), (470, 0), (475, 1), (480, 1), (485, 1), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 1), (525, 0), (530, 1), (535, 1), (540, 1), (545, 1), (550, 0), (555, 0), (560, 1), (565, 1), (570, 1), (575, 0), (580, 1), (585, 1), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 1), (620, 1), (625, 1), (630, 1), (635, 0), (640, 0), (645, 0), (650, 0), (655, 1), (660, 1), (665, 0), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 0), (725, 0), (730, 1), (735, 1), (740, 0), (745, 1), (750, 1), (755, 0), (760, 0), (765, 0), (770, 0), (775, 1), (780, 0), (785, 1), (790, 0), (795, 0), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 0), (840, 1), (845, 0), (850, 0), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 0), (890, 1), (895, 1), (900, 0), (905, 0), (910, 0), (915, 1), (920, 1), (925, 1), (930, 0), (935, 1), (940, 0), (945, 1), (950, 1), (955, 1), (960, 0), (965, 0), (970, 0), (975, 1), (980, 0), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va0_2  a0_2  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.9v 14.745n 0.9v 14.755n 0.9v 19.745n 0.9v 19.755n 0.0v 24.745n 0.0v 24.755n 0.9v 29.745n 0.9v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.9v 44.745n 0.9v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.9v 59.745n 0.9v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.9v 89.745n 0.9v 89.755n 0.0v 94.745n 0.0v 94.755n 0.9v 99.745n 0.9v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.9v 119.745n 0.9v 119.755n 0.0v 124.745n 0.0v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.0v 139.745n 0.0v 139.755n 0.9v 144.745n 0.9v 144.755n 0.0v 149.745n 0.0v 149.755n 0.9v 154.745n 0.9v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.9v 169.745n 0.9v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.9v 194.745n 0.9v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.9v 229.745n 0.9v 229.755n 0.0v 234.745n 0.0v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.9v 279.745n 0.9v 279.755n 0.0v 284.745n 0.0v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.0v 349.745n 0.0v 349.755n 0.9v 354.745n 0.9v 354.755n 0.0v 359.745n 0.0v 359.755n 0.9v 364.745n 0.9v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.9v 399.745n 0.9v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.9v 414.745n 0.9v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.0v 474.745n 0.0v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.9v 524.745n 0.9v 524.755n 0.0v 529.745n 0.0v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.9v 564.745n 0.9v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.0v 579.745n 0.0v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.9v 619.745n 0.9v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.0v 669.745n 0.0v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.9v 734.745n 0.9v 734.755n 0.9v 739.745n 0.9v 739.755n 0.0v 744.745n 0.0v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.9v 779.745n 0.9v 779.755n 0.0v 784.745n 0.0v 784.755n 0.9v 789.745n 0.9v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.0v 839.745n 0.0v 839.755n 0.9v 844.745n 0.9v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.9v 859.745n 0.9v 859.755n 0.9v 864.745n 0.9v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.0v 889.745n 0.0v 889.755n 0.9v 894.745n 0.9v 894.755n 0.9v 899.745n 0.9v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.0v 934.745n 0.0v 934.755n 0.9v 939.745n 0.9v 939.755n 0.0v 944.745n 0.0v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.9v 979.745n 0.9v 979.755n 0.0v 984.745n 0.0v 984.755n 0.9v 989.745n 0.9v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 1), (20, 0), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 1), (90, 0), (95, 1), (100, 0), (105, 0), (110, 0), (115, 1), (120, 0), (125, 1), (130, 1), (135, 0), (140, 1), (145, 0), (150, 1), (155, 0), (160, 0), (165, 1), (170, 0), (175, 0), (180, 0), (185, 0), (190, 1), (195, 0), (200, 0), (205, 0), (210, 1), (215, 1), (220, 1), (225, 1), (230, 0), (235, 1), (240, 1), (245, 1), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 1), (280, 0), (285, 1), (290, 1), (295, 1), (300, 1), (305, 0), (310, 0), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 0), (350, 1), (355, 0), (360, 1), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 1), (400, 0), (405, 0), (410, 1), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 1), (465, 1), (470, 0), (475, 1), (480, 1), (485, 1), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 1), (525, 0), (530, 1), (535, 1), (540, 1), (545, 1), (550, 0), (555, 0), (560, 1), (565, 1), (570, 1), (575, 0), (580, 1), (585, 1), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 1), (620, 1), (625, 1), (630, 1), (635, 0), (640, 0), (645, 0), (650, 0), (655, 1), (660, 1), (665, 0), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 0), (725, 0), (730, 1), (735, 1), (740, 0), (745, 1), (750, 1), (755, 0), (760, 0), (765, 0), (770, 0), (775, 1), (780, 0), (785, 1), (790, 0), (795, 0), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 0), (840, 1), (845, 0), (850, 0), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 0), (890, 1), (895, 1), (900, 0), (905, 0), (910, 0), (915, 1), (920, 1), (925, 1), (930, 0), (935, 1), (940, 0), (945, 1), (950, 1), (955, 1), (960, 0), (965, 0), (970, 0), (975, 1), (980, 0), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va0_3  a0_3  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.9v 14.745n 0.9v 14.755n 0.9v 19.745n 0.9v 19.755n 0.0v 24.745n 0.0v 24.755n 0.9v 29.745n 0.9v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.9v 44.745n 0.9v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.9v 59.745n 0.9v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.9v 89.745n 0.9v 89.755n 0.0v 94.745n 0.0v 94.755n 0.9v 99.745n 0.9v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.9v 119.745n 0.9v 119.755n 0.0v 124.745n 0.0v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.0v 139.745n 0.0v 139.755n 0.9v 144.745n 0.9v 144.755n 0.0v 149.745n 0.0v 149.755n 0.9v 154.745n 0.9v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.9v 169.745n 0.9v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.9v 194.745n 0.9v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.9v 229.745n 0.9v 229.755n 0.0v 234.745n 0.0v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.9v 279.745n 0.9v 279.755n 0.0v 284.745n 0.0v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.0v 349.745n 0.0v 349.755n 0.9v 354.745n 0.9v 354.755n 0.0v 359.745n 0.0v 359.755n 0.9v 364.745n 0.9v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.9v 399.745n 0.9v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.9v 414.745n 0.9v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.0v 474.745n 0.0v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.9v 524.745n 0.9v 524.755n 0.0v 529.745n 0.0v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.9v 564.745n 0.9v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.0v 579.745n 0.0v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.9v 619.745n 0.9v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.0v 669.745n 0.0v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.9v 734.745n 0.9v 734.755n 0.9v 739.745n 0.9v 739.755n 0.0v 744.745n 0.0v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.9v 779.745n 0.9v 779.755n 0.0v 784.745n 0.0v 784.755n 0.9v 789.745n 0.9v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.0v 839.745n 0.0v 839.755n 0.9v 844.745n 0.9v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.9v 859.745n 0.9v 859.755n 0.9v 864.745n 0.9v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.0v 889.745n 0.0v 889.755n 0.9v 894.745n 0.9v 894.755n 0.9v 899.745n 0.9v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.0v 934.745n 0.0v 934.755n 0.9v 939.745n 0.9v 939.755n 0.0v 944.745n 0.0v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.9v 979.745n 0.9v 979.755n 0.0v 984.745n 0.0v 984.755n 0.9v 989.745n 0.9v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 1), (20, 0), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 1), (90, 0), (95, 1), (100, 0), (105, 0), (110, 0), (115, 1), (120, 0), (125, 1), (130, 1), (135, 0), (140, 1), (145, 0), (150, 1), (155, 0), (160, 0), (165, 1), (170, 0), (175, 0), (180, 0), (185, 0), (190, 1), (195, 0), (200, 0), (205, 0), (210, 1), (215, 1), (220, 1), (225, 1), (230, 0), (235, 1), (240, 1), (245, 1), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 1), (280, 0), (285, 1), (290, 1), (295, 1), (300, 1), (305, 0), (310, 0), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 0), (350, 1), (355, 0), (360, 1), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 1), (400, 0), (405, 0), (410, 1), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 1), (465, 1), (470, 0), (475, 1), (480, 1), (485, 1), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 1), (525, 0), (530, 1), (535, 1), (540, 1), (545, 1), (550, 0), (555, 0), (560, 1), (565, 1), (570, 1), (575, 0), (580, 1), (585, 1), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 1), (620, 1), (625, 1), (630, 1), (635, 0), (640, 0), (645, 0), (650, 0), (655, 1), (660, 1), (665, 0), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 0), (725, 0), (730, 1), (735, 1), (740, 0), (745, 1), (750, 1), (755, 0), (760, 0), (765, 0), (770, 0), (775, 1), (780, 0), (785, 1), (790, 0), (795, 0), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 0), (840, 1), (845, 0), (850, 0), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 0), (890, 1), (895, 1), (900, 0), (905, 0), (910, 0), (915, 1), (920, 1), (925, 1), (930, 0), (935, 1), (940, 0), (945, 1), (950, 1), (955, 1), (960, 0), (965, 0), (970, 0), (975, 1), (980, 0), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va0_4  a0_4  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.9v 14.745n 0.9v 14.755n 0.9v 19.745n 0.9v 19.755n 0.0v 24.745n 0.0v 24.755n 0.9v 29.745n 0.9v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.9v 44.745n 0.9v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.9v 59.745n 0.9v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.9v 89.745n 0.9v 89.755n 0.0v 94.745n 0.0v 94.755n 0.9v 99.745n 0.9v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.9v 119.745n 0.9v 119.755n 0.0v 124.745n 0.0v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.0v 139.745n 0.0v 139.755n 0.9v 144.745n 0.9v 144.755n 0.0v 149.745n 0.0v 149.755n 0.9v 154.745n 0.9v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.9v 169.745n 0.9v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.9v 194.745n 0.9v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.9v 229.745n 0.9v 229.755n 0.0v 234.745n 0.0v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.9v 279.745n 0.9v 279.755n 0.0v 284.745n 0.0v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.0v 349.745n 0.0v 349.755n 0.9v 354.745n 0.9v 354.755n 0.0v 359.745n 0.0v 359.755n 0.9v 364.745n 0.9v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.9v 399.745n 0.9v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.9v 414.745n 0.9v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.0v 474.745n 0.0v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.9v 524.745n 0.9v 524.755n 0.0v 529.745n 0.0v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.9v 564.745n 0.9v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.0v 579.745n 0.0v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.9v 619.745n 0.9v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.0v 669.745n 0.0v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.9v 734.745n 0.9v 734.755n 0.9v 739.745n 0.9v 739.755n 0.0v 744.745n 0.0v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.9v 779.745n 0.9v 779.755n 0.0v 784.745n 0.0v 784.755n 0.9v 789.745n 0.9v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.0v 839.745n 0.0v 839.755n 0.9v 844.745n 0.9v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.9v 859.745n 0.9v 859.755n 0.9v 864.745n 0.9v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.0v 889.745n 0.0v 889.755n 0.9v 894.745n 0.9v 894.755n 0.9v 899.745n 0.9v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.0v 934.745n 0.0v 934.755n 0.9v 939.745n 0.9v 939.755n 0.0v 944.745n 0.0v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.9v 979.745n 0.9v 979.755n 0.0v 984.745n 0.0v 984.755n 0.9v 989.745n 0.9v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )
* (time, data): [(0, 0), (5, 0), (10, 1), (15, 1), (20, 0), (25, 1), (30, 1), (35, 1), (40, 1), (45, 1), (50, 1), (55, 1), (60, 0), (65, 0), (70, 0), (75, 0), (80, 0), (85, 1), (90, 0), (95, 1), (100, 0), (105, 0), (110, 0), (115, 1), (120, 0), (125, 1), (130, 1), (135, 0), (140, 1), (145, 0), (150, 1), (155, 0), (160, 0), (165, 1), (170, 0), (175, 0), (180, 0), (185, 0), (190, 1), (195, 0), (200, 0), (205, 0), (210, 1), (215, 1), (220, 1), (225, 1), (230, 0), (235, 1), (240, 1), (245, 1), (250, 0), (255, 0), (260, 0), (265, 0), (270, 0), (275, 1), (280, 0), (285, 1), (290, 1), (295, 1), (300, 1), (305, 0), (310, 0), (315, 1), (320, 1), (325, 1), (330, 1), (335, 1), (340, 1), (345, 0), (350, 1), (355, 0), (360, 1), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 1), (400, 0), (405, 0), (410, 1), (415, 0), (420, 0), (425, 0), (430, 0), (435, 0), (440, 0), (445, 0), (450, 0), (455, 0), (460, 1), (465, 1), (470, 0), (475, 1), (480, 1), (485, 1), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 1), (525, 0), (530, 1), (535, 1), (540, 1), (545, 1), (550, 0), (555, 0), (560, 1), (565, 1), (570, 1), (575, 0), (580, 1), (585, 1), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 1), (620, 1), (625, 1), (630, 1), (635, 0), (640, 0), (645, 0), (650, 0), (655, 1), (660, 1), (665, 0), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 0), (725, 0), (730, 1), (735, 1), (740, 0), (745, 1), (750, 1), (755, 0), (760, 0), (765, 0), (770, 0), (775, 1), (780, 0), (785, 1), (790, 0), (795, 0), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 0), (840, 1), (845, 0), (850, 0), (855, 1), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 0), (890, 1), (895, 1), (900, 0), (905, 0), (910, 0), (915, 1), (920, 1), (925, 1), (930, 0), (935, 1), (940, 0), (945, 1), (950, 1), (955, 1), (960, 0), (965, 0), (970, 0), (975, 1), (980, 0), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 0), (1015, 0), (1020, 0), (1025, 0)]
Va0_5  a0_5  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.0v 9.745n 0.0v 9.755n 0.9v 14.745n 0.9v 14.755n 0.9v 19.745n 0.9v 19.755n 0.0v 24.745n 0.0v 24.755n 0.9v 29.745n 0.9v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.9v 44.745n 0.9v 44.755n 0.9v 49.745n 0.9v 49.755n 0.9v 54.745n 0.9v 54.755n 0.9v 59.745n 0.9v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.0v 84.745n 0.0v 84.755n 0.9v 89.745n 0.9v 89.755n 0.0v 94.745n 0.0v 94.755n 0.9v 99.745n 0.9v 99.755n 0.0v 104.745n 0.0v 104.755n 0.0v 109.745n 0.0v 109.755n 0.0v 114.745n 0.0v 114.755n 0.9v 119.745n 0.9v 119.755n 0.0v 124.745n 0.0v 124.755n 0.9v 129.745n 0.9v 129.755n 0.9v 134.745n 0.9v 134.755n 0.0v 139.745n 0.0v 139.755n 0.9v 144.745n 0.9v 144.755n 0.0v 149.745n 0.0v 149.755n 0.9v 154.745n 0.9v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.9v 169.745n 0.9v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.0v 184.745n 0.0v 184.755n 0.0v 189.745n 0.0v 189.755n 0.9v 194.745n 0.9v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.9v 229.745n 0.9v 229.755n 0.0v 234.745n 0.0v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.0v 264.745n 0.0v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.9v 279.745n 0.9v 279.755n 0.0v 284.745n 0.0v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.9v 319.745n 0.9v 319.755n 0.9v 324.745n 0.9v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.9v 344.745n 0.9v 344.755n 0.0v 349.745n 0.0v 349.755n 0.9v 354.745n 0.9v 354.755n 0.0v 359.745n 0.0v 359.755n 0.9v 364.745n 0.9v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.9v 399.745n 0.9v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.9v 414.745n 0.9v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.0v 429.745n 0.0v 429.755n 0.0v 434.745n 0.0v 434.755n 0.0v 439.745n 0.0v 439.755n 0.0v 444.745n 0.0v 444.755n 0.0v 449.745n 0.0v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.0v 474.745n 0.0v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.9v 524.745n 0.9v 524.755n 0.0v 529.745n 0.0v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.9v 564.745n 0.9v 564.755n 0.9v 569.745n 0.9v 569.755n 0.9v 574.745n 0.9v 574.755n 0.0v 579.745n 0.0v 579.755n 0.9v 584.745n 0.9v 584.755n 0.9v 589.745n 0.9v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.9v 619.745n 0.9v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.0v 639.745n 0.0v 639.755n 0.0v 644.745n 0.0v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.9v 659.745n 0.9v 659.755n 0.9v 664.745n 0.9v 664.755n 0.0v 669.745n 0.0v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.9v 734.745n 0.9v 734.755n 0.9v 739.745n 0.9v 739.755n 0.0v 744.745n 0.0v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.0v 769.745n 0.0v 769.755n 0.0v 774.745n 0.0v 774.755n 0.9v 779.745n 0.9v 779.755n 0.0v 784.745n 0.0v 784.755n 0.9v 789.745n 0.9v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.0v 839.745n 0.0v 839.755n 0.9v 844.745n 0.9v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.9v 859.745n 0.9v 859.755n 0.9v 864.745n 0.9v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.0v 889.745n 0.0v 889.755n 0.9v 894.745n 0.9v 894.755n 0.9v 899.745n 0.9v 899.755n 0.0v 904.745n 0.0v 904.755n 0.0v 909.745n 0.0v 909.755n 0.0v 914.745n 0.0v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.0v 934.745n 0.0v 934.755n 0.9v 939.745n 0.9v 939.755n 0.0v 944.745n 0.0v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.9v 979.745n 0.9v 979.755n 0.0v 984.745n 0.0v 984.755n 0.9v 989.745n 0.9v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.0v )

 * Generation of control signals
* (time, data): [(0, 1), (5, 0), (10, 0), (15, 0), (20, 0), (25, 0), (30, 0), (35, 0), (40, 0), (45, 0), (50, 0), (55, 1), (60, 0), (65, 0), (70, 0), (75, 0), (80, 1), (85, 0), (90, 0), (95, 0), (100, 0), (105, 1), (110, 1), (115, 0), (120, 0), (125, 0), (130, 0), (135, 0), (140, 0), (145, 0), (150, 0), (155, 0), (160, 1), (165, 0), (170, 0), (175, 0), (180, 1), (185, 0), (190, 0), (195, 0), (200, 0), (205, 0), (210, 0), (215, 0), (220, 0), (225, 0), (230, 0), (235, 0), (240, 1), (245, 0), (250, 0), (255, 0), (260, 1), (265, 0), (270, 0), (275, 0), (280, 0), (285, 0), (290, 0), (295, 1), (300, 0), (305, 0), (310, 0), (315, 0), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 0), (360, 0), (365, 0), (370, 0), (375, 1), (380, 1), (385, 1), (390, 0), (395, 0), (400, 0), (405, 0), (410, 0), (415, 0), (420, 0), (425, 1), (430, 0), (435, 1), (440, 0), (445, 1), (450, 0), (455, 0), (460, 0), (465, 1), (470, 0), (475, 0), (480, 0), (485, 1), (490, 0), (495, 0), (500, 0), (505, 0), (510, 0), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 1), (545, 0), (550, 0), (555, 0), (560, 0), (565, 0), (570, 1), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 1), (605, 0), (610, 0), (615, 0), (620, 1), (625, 0), (630, 1), (635, 0), (640, 1), (645, 0), (650, 1), (655, 0), (660, 0), (665, 0), (670, 0), (675, 1), (680, 0), (685, 1), (690, 0), (695, 1), (700, 0), (705, 0), (710, 0), (715, 0), (720, 0), (725, 0), (730, 0), (735, 0), (740, 0), (745, 0), (750, 0), (755, 0), (760, 0), (765, 1), (770, 0), (775, 0), (780, 0), (785, 0), (790, 0), (795, 0), (800, 0), (805, 1), (810, 0), (815, 0), (820, 0), (825, 1), (830, 1), (835, 0), (840, 0), (845, 0), (850, 0), (855, 0), (860, 0), (865, 0), (870, 0), (875, 1), (880, 1), (885, 0), (890, 0), (895, 1), (900, 0), (905, 1), (910, 0), (915, 0), (920, 1), (925, 0), (930, 0), (935, 0), (940, 0), (945, 0), (950, 1), (955, 0), (960, 0), (965, 0), (970, 0), (975, 0), (980, 0), (985, 0), (990, 0), (995, 0), (1000, 0), (1005, 0), (1010, 0), (1015, 0), (1020, 0), (1025, 1)]
VCSB0 CSB0 0 PWL (0n 0.9v 4.745n 0.9v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.0v 24.745n 0.0v 24.755n 0.0v 29.745n 0.0v 29.755n 0.0v 34.745n 0.0v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.9v 59.745n 0.9v 59.755n 0.0v 64.745n 0.0v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.9v 84.745n 0.9v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.0v 104.745n 0.0v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.0v 119.745n 0.0v 119.755n 0.0v 124.745n 0.0v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.0v 144.745n 0.0v 144.755n 0.0v 149.745n 0.0v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.9v 164.745n 0.9v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.0v 179.745n 0.0v 179.755n 0.9v 184.745n 0.9v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.0v 199.745n 0.0v 199.755n 0.0v 204.745n 0.0v 204.755n 0.0v 209.745n 0.0v 209.755n 0.0v 214.745n 0.0v 214.755n 0.0v 219.745n 0.0v 219.755n 0.0v 224.745n 0.0v 224.755n 0.0v 229.745n 0.0v 229.755n 0.0v 234.745n 0.0v 234.755n 0.0v 239.745n 0.0v 239.755n 0.9v 244.745n 0.9v 244.755n 0.0v 249.745n 0.0v 249.755n 0.0v 254.745n 0.0v 254.755n 0.0v 259.745n 0.0v 259.755n 0.9v 264.745n 0.9v 264.755n 0.0v 269.745n 0.0v 269.755n 0.0v 274.745n 0.0v 274.755n 0.0v 279.745n 0.0v 279.755n 0.0v 284.745n 0.0v 284.755n 0.0v 289.745n 0.0v 289.755n 0.0v 294.745n 0.0v 294.755n 0.9v 299.745n 0.9v 299.755n 0.0v 304.745n 0.0v 304.755n 0.0v 309.745n 0.0v 309.755n 0.0v 314.745n 0.0v 314.755n 0.0v 319.745n 0.0v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.0v 394.745n 0.0v 394.755n 0.0v 399.745n 0.0v 399.755n 0.0v 404.745n 0.0v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.0v 419.745n 0.0v 419.755n 0.0v 424.745n 0.0v 424.755n 0.9v 429.745n 0.9v 429.755n 0.0v 434.745n 0.0v 434.755n 0.9v 439.745n 0.9v 439.755n 0.0v 444.745n 0.0v 444.755n 0.9v 449.745n 0.9v 449.755n 0.0v 454.745n 0.0v 454.755n 0.0v 459.745n 0.0v 459.755n 0.0v 464.745n 0.0v 464.755n 0.9v 469.745n 0.9v 469.755n 0.0v 474.745n 0.0v 474.755n 0.0v 479.745n 0.0v 479.755n 0.0v 484.745n 0.0v 484.755n 0.9v 489.745n 0.9v 489.755n 0.0v 494.745n 0.0v 494.755n 0.0v 499.745n 0.0v 499.755n 0.0v 504.745n 0.0v 504.755n 0.0v 509.745n 0.0v 509.755n 0.0v 514.745n 0.0v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.9v 544.745n 0.9v 544.755n 0.0v 549.745n 0.0v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.9v 574.745n 0.9v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.9v 604.745n 0.9v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.9v 624.745n 0.9v 624.755n 0.0v 629.745n 0.0v 629.755n 0.9v 634.745n 0.9v 634.755n 0.0v 639.745n 0.0v 639.755n 0.9v 644.745n 0.9v 644.755n 0.0v 649.745n 0.0v 649.755n 0.9v 654.745n 0.9v 654.755n 0.0v 659.745n 0.0v 659.755n 0.0v 664.745n 0.0v 664.755n 0.0v 669.745n 0.0v 669.755n 0.0v 674.745n 0.0v 674.755n 0.9v 679.745n 0.9v 679.755n 0.0v 684.745n 0.0v 684.755n 0.9v 689.745n 0.9v 689.755n 0.0v 694.745n 0.0v 694.755n 0.9v 699.745n 0.9v 699.755n 0.0v 704.745n 0.0v 704.755n 0.0v 709.745n 0.0v 709.755n 0.0v 714.745n 0.0v 714.755n 0.0v 719.745n 0.0v 719.755n 0.0v 724.745n 0.0v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.0v 744.745n 0.0v 744.755n 0.0v 749.745n 0.0v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.9v 769.745n 0.9v 769.755n 0.0v 774.745n 0.0v 774.755n 0.0v 779.745n 0.0v 779.755n 0.0v 784.745n 0.0v 784.755n 0.0v 789.745n 0.0v 789.755n 0.0v 794.745n 0.0v 794.755n 0.0v 799.745n 0.0v 799.755n 0.0v 804.745n 0.0v 804.755n 0.9v 809.745n 0.9v 809.755n 0.0v 814.745n 0.0v 814.755n 0.0v 819.745n 0.0v 819.755n 0.0v 824.745n 0.0v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.0v 839.745n 0.0v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.0v 874.745n 0.0v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.0v 889.745n 0.0v 889.755n 0.0v 894.745n 0.0v 894.755n 0.9v 899.745n 0.9v 899.755n 0.0v 904.745n 0.0v 904.755n 0.9v 909.745n 0.9v 909.755n 0.0v 914.745n 0.0v 914.755n 0.0v 919.745n 0.0v 919.755n 0.9v 924.745n 0.9v 924.755n 0.0v 929.745n 0.0v 929.755n 0.0v 934.745n 0.0v 934.755n 0.0v 939.745n 0.0v 939.755n 0.0v 944.745n 0.0v 944.755n 0.0v 949.745n 0.0v 949.755n 0.9v 954.745n 0.9v 954.755n 0.0v 959.745n 0.0v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.0v 974.745n 0.0v 974.755n 0.0v 979.745n 0.0v 979.755n 0.0v 984.745n 0.0v 984.755n 0.0v 989.745n 0.0v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.0v 1004.745n 0.0v 1004.755n 0.0v 1009.745n 0.0v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.0v 1024.745n 0.0v 1024.755n 0.9v )
* (time, data): [(0, 1), (5, 0), (10, 0), (15, 0), (20, 1), (25, 1), (30, 1), (35, 0), (40, 0), (45, 0), (50, 0), (55, 1), (60, 1), (65, 0), (70, 0), (75, 0), (80, 1), (85, 0), (90, 1), (95, 1), (100, 0), (105, 1), (110, 1), (115, 0), (120, 1), (125, 0), (130, 0), (135, 0), (140, 1), (145, 1), (150, 0), (155, 0), (160, 1), (165, 0), (170, 0), (175, 1), (180, 1), (185, 0), (190, 0), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 0), (230, 1), (235, 0), (240, 1), (245, 0), (250, 1), (255, 0), (260, 1), (265, 0), (270, 1), (275, 1), (280, 1), (285, 1), (290, 0), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 0), (325, 1), (330, 1), (335, 1), (340, 0), (345, 1), (350, 0), (355, 0), (360, 0), (365, 0), (370, 1), (375, 1), (380, 1), (385, 1), (390, 1), (395, 0), (400, 1), (405, 0), (410, 0), (415, 1), (420, 0), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 0), (460, 1), (465, 1), (470, 1), (475, 1), (480, 0), (485, 1), (490, 1), (495, 0), (500, 1), (505, 0), (510, 1), (515, 0), (520, 1), (525, 1), (530, 1), (535, 1), (540, 1), (545, 1), (550, 0), (555, 0), (560, 0), (565, 0), (570, 1), (575, 1), (580, 1), (585, 0), (590, 1), (595, 1), (600, 1), (605, 0), (610, 0), (615, 1), (620, 1), (625, 1), (630, 1), (635, 0), (640, 1), (645, 0), (650, 1), (655, 1), (660, 0), (665, 1), (670, 0), (675, 1), (680, 1), (685, 1), (690, 0), (695, 1), (700, 1), (705, 1), (710, 0), (715, 1), (720, 1), (725, 0), (730, 0), (735, 0), (740, 1), (745, 1), (750, 0), (755, 0), (760, 0), (765, 1), (770, 1), (775, 0), (780, 1), (785, 1), (790, 1), (795, 1), (800, 0), (805, 1), (810, 0), (815, 1), (820, 0), (825, 1), (830, 1), (835, 1), (840, 0), (845, 0), (850, 1), (855, 1), (860, 0), (865, 0), (870, 1), (875, 1), (880, 1), (885, 1), (890, 0), (895, 1), (900, 1), (905, 1), (910, 1), (915, 0), (920, 1), (925, 1), (930, 0), (935, 1), (940, 1), (945, 0), (950, 1), (955, 1), (960, 0), (965, 0), (970, 1), (975, 1), (980, 0), (985, 1), (990, 0), (995, 0), (1000, 1), (1005, 1), (1010, 0), (1015, 0), (1020, 1), (1025, 1)]
VWEB0 WEB0 0 PWL (0n 0.9v 4.745n 0.9v 4.755n 0.0v 9.745n 0.0v 9.755n 0.0v 14.745n 0.0v 14.755n 0.0v 19.745n 0.0v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.9v 34.745n 0.9v 34.755n 0.0v 39.745n 0.0v 39.755n 0.0v 44.745n 0.0v 44.755n 0.0v 49.745n 0.0v 49.755n 0.0v 54.745n 0.0v 54.755n 0.9v 59.745n 0.9v 59.755n 0.9v 64.745n 0.9v 64.755n 0.0v 69.745n 0.0v 69.755n 0.0v 74.745n 0.0v 74.755n 0.0v 79.745n 0.0v 79.755n 0.9v 84.745n 0.9v 84.755n 0.0v 89.745n 0.0v 89.755n 0.9v 94.745n 0.9v 94.755n 0.9v 99.745n 0.9v 99.755n 0.0v 104.745n 0.0v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.0v 119.745n 0.0v 119.755n 0.9v 124.745n 0.9v 124.755n 0.0v 129.745n 0.0v 129.755n 0.0v 134.745n 0.0v 134.755n 0.0v 139.745n 0.0v 139.755n 0.9v 144.745n 0.9v 144.755n 0.9v 149.745n 0.9v 149.755n 0.0v 154.745n 0.0v 154.755n 0.0v 159.745n 0.0v 159.755n 0.9v 164.745n 0.9v 164.755n 0.0v 169.745n 0.0v 169.755n 0.0v 174.745n 0.0v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.0v 189.745n 0.0v 189.755n 0.0v 194.745n 0.0v 194.755n 0.9v 199.745n 0.9v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.0v 229.745n 0.0v 229.755n 0.9v 234.745n 0.9v 234.755n 0.0v 239.745n 0.0v 239.755n 0.9v 244.745n 0.9v 244.755n 0.0v 249.745n 0.0v 249.755n 0.9v 254.745n 0.9v 254.755n 0.0v 259.745n 0.0v 259.755n 0.9v 264.745n 0.9v 264.755n 0.0v 269.745n 0.0v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.9v 289.745n 0.9v 289.755n 0.0v 294.745n 0.0v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.0v 324.745n 0.0v 324.755n 0.9v 329.745n 0.9v 329.755n 0.9v 334.745n 0.9v 334.755n 0.9v 339.745n 0.9v 339.755n 0.0v 344.745n 0.0v 344.755n 0.9v 349.745n 0.9v 349.755n 0.0v 354.745n 0.0v 354.755n 0.0v 359.745n 0.0v 359.755n 0.0v 364.745n 0.0v 364.755n 0.0v 369.745n 0.0v 369.755n 0.9v 374.745n 0.9v 374.755n 0.9v 379.745n 0.9v 379.755n 0.9v 384.745n 0.9v 384.755n 0.9v 389.745n 0.9v 389.755n 0.9v 394.745n 0.9v 394.755n 0.0v 399.745n 0.0v 399.755n 0.9v 404.745n 0.9v 404.755n 0.0v 409.745n 0.0v 409.755n 0.0v 414.745n 0.0v 414.755n 0.9v 419.745n 0.9v 419.755n 0.0v 424.745n 0.0v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.0v 459.745n 0.0v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.9v 474.745n 0.9v 474.755n 0.9v 479.745n 0.9v 479.755n 0.0v 484.745n 0.0v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.0v 499.745n 0.0v 499.755n 0.9v 504.745n 0.9v 504.755n 0.0v 509.745n 0.0v 509.755n 0.9v 514.745n 0.9v 514.755n 0.0v 519.745n 0.0v 519.755n 0.9v 524.745n 0.9v 524.755n 0.9v 529.745n 0.9v 529.755n 0.9v 534.745n 0.9v 534.755n 0.9v 539.745n 0.9v 539.755n 0.9v 544.745n 0.9v 544.755n 0.9v 549.745n 0.9v 549.755n 0.0v 554.745n 0.0v 554.755n 0.0v 559.745n 0.0v 559.755n 0.0v 564.745n 0.0v 564.755n 0.0v 569.745n 0.0v 569.755n 0.9v 574.745n 0.9v 574.755n 0.9v 579.745n 0.9v 579.755n 0.9v 584.745n 0.9v 584.755n 0.0v 589.745n 0.0v 589.755n 0.9v 594.745n 0.9v 594.755n 0.9v 599.745n 0.9v 599.755n 0.9v 604.745n 0.9v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.9v 619.745n 0.9v 619.755n 0.9v 624.745n 0.9v 624.755n 0.9v 629.745n 0.9v 629.755n 0.9v 634.745n 0.9v 634.755n 0.0v 639.745n 0.0v 639.755n 0.9v 644.745n 0.9v 644.755n 0.0v 649.745n 0.0v 649.755n 0.9v 654.745n 0.9v 654.755n 0.9v 659.745n 0.9v 659.755n 0.0v 664.745n 0.0v 664.755n 0.9v 669.745n 0.9v 669.755n 0.0v 674.745n 0.0v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.0v 694.745n 0.0v 694.755n 0.9v 699.745n 0.9v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.0v 714.745n 0.0v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.0v 729.745n 0.0v 729.755n 0.0v 734.745n 0.0v 734.755n 0.0v 739.745n 0.0v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.0v 754.745n 0.0v 754.755n 0.0v 759.745n 0.0v 759.755n 0.0v 764.745n 0.0v 764.755n 0.9v 769.745n 0.9v 769.755n 0.9v 774.745n 0.9v 774.755n 0.0v 779.745n 0.0v 779.755n 0.9v 784.745n 0.9v 784.755n 0.9v 789.745n 0.9v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.0v 804.745n 0.0v 804.755n 0.9v 809.745n 0.9v 809.755n 0.0v 814.745n 0.0v 814.755n 0.9v 819.745n 0.9v 819.755n 0.0v 824.745n 0.0v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.0v 844.745n 0.0v 844.755n 0.0v 849.745n 0.0v 849.755n 0.9v 854.745n 0.9v 854.755n 0.9v 859.745n 0.9v 859.755n 0.0v 864.745n 0.0v 864.755n 0.0v 869.745n 0.0v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.0v 894.745n 0.0v 894.755n 0.9v 899.745n 0.9v 899.755n 0.9v 904.745n 0.9v 904.755n 0.9v 909.745n 0.9v 909.755n 0.9v 914.745n 0.9v 914.755n 0.0v 919.745n 0.0v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.0v 934.745n 0.0v 934.755n 0.9v 939.745n 0.9v 939.755n 0.9v 944.745n 0.9v 944.755n 0.0v 949.745n 0.0v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.0v 964.745n 0.0v 964.755n 0.0v 969.745n 0.0v 969.755n 0.9v 974.745n 0.9v 974.755n 0.9v 979.745n 0.9v 979.755n 0.0v 984.745n 0.0v 984.755n 0.9v 989.745n 0.9v 989.755n 0.0v 994.745n 0.0v 994.755n 0.0v 999.745n 0.0v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.0v 1019.745n 0.0v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )

* Generation of wmask signals
* (time, data): [(0, 0), (5, 1), (10, 1), (15, 1), (20, 1), (25, 1), (30, 1), (35, 1), (40, 1), (45, 0), (50, 1), (55, 1), (60, 1), (65, 0), (70, 1), (75, 1), (80, 1), (85, 0), (90, 0), (95, 0), (100, 1), (105, 1), (110, 1), (115, 1), (120, 1), (125, 1), (130, 0), (135, 1), (140, 1), (145, 1), (150, 1), (155, 0), (160, 0), (165, 1), (170, 1), (175, 1), (180, 1), (185, 1), (190, 1), (195, 1), (200, 1), (205, 1), (210, 1), (215, 1), (220, 1), (225, 1), (230, 1), (235, 1), (240, 1), (245, 1), (250, 1), (255, 1), (260, 1), (265, 1), (270, 1), (275, 1), (280, 1), (285, 1), (290, 1), (295, 1), (300, 1), (305, 1), (310, 1), (315, 1), (320, 0), (325, 0), (330, 0), (335, 0), (340, 0), (345, 0), (350, 0), (355, 1), (360, 1), (365, 0), (370, 0), (375, 0), (380, 0), (385, 0), (390, 0), (395, 1), (400, 1), (405, 0), (410, 1), (415, 1), (420, 1), (425, 1), (430, 1), (435, 1), (440, 1), (445, 1), (450, 1), (455, 1), (460, 1), (465, 1), (470, 1), (475, 1), (480, 1), (485, 1), (490, 1), (495, 1), (500, 1), (505, 1), (510, 1), (515, 0), (520, 0), (525, 0), (530, 0), (535, 0), (540, 0), (545, 0), (550, 1), (555, 0), (560, 1), (565, 0), (570, 0), (575, 0), (580, 0), (585, 0), (590, 0), (595, 0), (600, 0), (605, 0), (610, 0), (615, 0), (620, 0), (625, 0), (630, 0), (635, 1), (640, 1), (645, 0), (650, 0), (655, 0), (660, 1), (665, 1), (670, 1), (675, 1), (680, 1), (685, 1), (690, 1), (695, 1), (700, 1), (705, 1), (710, 1), (715, 1), (720, 1), (725, 1), (730, 1), (735, 1), (740, 1), (745, 1), (750, 1), (755, 1), (760, 1), (765, 1), (770, 1), (775, 1), (780, 1), (785, 1), (790, 1), (795, 1), (800, 1), (805, 1), (810, 1), (815, 1), (820, 1), (825, 1), (830, 1), (835, 1), (840, 1), (845, 0), (850, 0), (855, 0), (860, 1), (865, 1), (870, 1), (875, 1), (880, 1), (885, 1), (890, 1), (895, 1), (900, 1), (905, 1), (910, 1), (915, 1), (920, 1), (925, 1), (930, 1), (935, 1), (940, 1), (945, 1), (950, 1), (955, 1), (960, 0), (965, 1), (970, 1), (975, 1), (980, 1), (985, 1), (990, 1), (995, 1), (1000, 1), (1005, 1), (1010, 0), (1015, 1), (1020, 1), (1025, 1)]
VWMASK0_0  WMASK0_0  0 PWL (0n 0.0v 4.745n 0.0v 4.755n 0.9v 9.745n 0.9v 9.755n 0.9v 14.745n 0.9v 14.755n 0.9v 19.745n 0.9v 19.755n 0.9v 24.745n 0.9v 24.755n 0.9v 29.745n 0.9v 29.755n 0.9v 34.745n 0.9v 34.755n 0.9v 39.745n 0.9v 39.755n 0.9v 44.745n 0.9v 44.755n 0.0v 49.745n 0.0v 49.755n 0.9v 54.745n 0.9v 54.755n 0.9v 59.745n 0.9v 59.755n 0.9v 64.745n 0.9v 64.755n 0.0v 69.745n 0.0v 69.755n 0.9v 74.745n 0.9v 74.755n 0.9v 79.745n 0.9v 79.755n 0.9v 84.745n 0.9v 84.755n 0.0v 89.745n 0.0v 89.755n 0.0v 94.745n 0.0v 94.755n 0.0v 99.745n 0.0v 99.755n 0.9v 104.745n 0.9v 104.755n 0.9v 109.745n 0.9v 109.755n 0.9v 114.745n 0.9v 114.755n 0.9v 119.745n 0.9v 119.755n 0.9v 124.745n 0.9v 124.755n 0.9v 129.745n 0.9v 129.755n 0.0v 134.745n 0.0v 134.755n 0.9v 139.745n 0.9v 139.755n 0.9v 144.745n 0.9v 144.755n 0.9v 149.745n 0.9v 149.755n 0.9v 154.745n 0.9v 154.755n 0.0v 159.745n 0.0v 159.755n 0.0v 164.745n 0.0v 164.755n 0.9v 169.745n 0.9v 169.755n 0.9v 174.745n 0.9v 174.755n 0.9v 179.745n 0.9v 179.755n 0.9v 184.745n 0.9v 184.755n 0.9v 189.745n 0.9v 189.755n 0.9v 194.745n 0.9v 194.755n 0.9v 199.745n 0.9v 199.755n 0.9v 204.745n 0.9v 204.755n 0.9v 209.745n 0.9v 209.755n 0.9v 214.745n 0.9v 214.755n 0.9v 219.745n 0.9v 219.755n 0.9v 224.745n 0.9v 224.755n 0.9v 229.745n 0.9v 229.755n 0.9v 234.745n 0.9v 234.755n 0.9v 239.745n 0.9v 239.755n 0.9v 244.745n 0.9v 244.755n 0.9v 249.745n 0.9v 249.755n 0.9v 254.745n 0.9v 254.755n 0.9v 259.745n 0.9v 259.755n 0.9v 264.745n 0.9v 264.755n 0.9v 269.745n 0.9v 269.755n 0.9v 274.745n 0.9v 274.755n 0.9v 279.745n 0.9v 279.755n 0.9v 284.745n 0.9v 284.755n 0.9v 289.745n 0.9v 289.755n 0.9v 294.745n 0.9v 294.755n 0.9v 299.745n 0.9v 299.755n 0.9v 304.745n 0.9v 304.755n 0.9v 309.745n 0.9v 309.755n 0.9v 314.745n 0.9v 314.755n 0.9v 319.745n 0.9v 319.755n 0.0v 324.745n 0.0v 324.755n 0.0v 329.745n 0.0v 329.755n 0.0v 334.745n 0.0v 334.755n 0.0v 339.745n 0.0v 339.755n 0.0v 344.745n 0.0v 344.755n 0.0v 349.745n 0.0v 349.755n 0.0v 354.745n 0.0v 354.755n 0.9v 359.745n 0.9v 359.755n 0.9v 364.745n 0.9v 364.755n 0.0v 369.745n 0.0v 369.755n 0.0v 374.745n 0.0v 374.755n 0.0v 379.745n 0.0v 379.755n 0.0v 384.745n 0.0v 384.755n 0.0v 389.745n 0.0v 389.755n 0.0v 394.745n 0.0v 394.755n 0.9v 399.745n 0.9v 399.755n 0.9v 404.745n 0.9v 404.755n 0.0v 409.745n 0.0v 409.755n 0.9v 414.745n 0.9v 414.755n 0.9v 419.745n 0.9v 419.755n 0.9v 424.745n 0.9v 424.755n 0.9v 429.745n 0.9v 429.755n 0.9v 434.745n 0.9v 434.755n 0.9v 439.745n 0.9v 439.755n 0.9v 444.745n 0.9v 444.755n 0.9v 449.745n 0.9v 449.755n 0.9v 454.745n 0.9v 454.755n 0.9v 459.745n 0.9v 459.755n 0.9v 464.745n 0.9v 464.755n 0.9v 469.745n 0.9v 469.755n 0.9v 474.745n 0.9v 474.755n 0.9v 479.745n 0.9v 479.755n 0.9v 484.745n 0.9v 484.755n 0.9v 489.745n 0.9v 489.755n 0.9v 494.745n 0.9v 494.755n 0.9v 499.745n 0.9v 499.755n 0.9v 504.745n 0.9v 504.755n 0.9v 509.745n 0.9v 509.755n 0.9v 514.745n 0.9v 514.755n 0.0v 519.745n 0.0v 519.755n 0.0v 524.745n 0.0v 524.755n 0.0v 529.745n 0.0v 529.755n 0.0v 534.745n 0.0v 534.755n 0.0v 539.745n 0.0v 539.755n 0.0v 544.745n 0.0v 544.755n 0.0v 549.745n 0.0v 549.755n 0.9v 554.745n 0.9v 554.755n 0.0v 559.745n 0.0v 559.755n 0.9v 564.745n 0.9v 564.755n 0.0v 569.745n 0.0v 569.755n 0.0v 574.745n 0.0v 574.755n 0.0v 579.745n 0.0v 579.755n 0.0v 584.745n 0.0v 584.755n 0.0v 589.745n 0.0v 589.755n 0.0v 594.745n 0.0v 594.755n 0.0v 599.745n 0.0v 599.755n 0.0v 604.745n 0.0v 604.755n 0.0v 609.745n 0.0v 609.755n 0.0v 614.745n 0.0v 614.755n 0.0v 619.745n 0.0v 619.755n 0.0v 624.745n 0.0v 624.755n 0.0v 629.745n 0.0v 629.755n 0.0v 634.745n 0.0v 634.755n 0.9v 639.745n 0.9v 639.755n 0.9v 644.745n 0.9v 644.755n 0.0v 649.745n 0.0v 649.755n 0.0v 654.745n 0.0v 654.755n 0.0v 659.745n 0.0v 659.755n 0.9v 664.745n 0.9v 664.755n 0.9v 669.745n 0.9v 669.755n 0.9v 674.745n 0.9v 674.755n 0.9v 679.745n 0.9v 679.755n 0.9v 684.745n 0.9v 684.755n 0.9v 689.745n 0.9v 689.755n 0.9v 694.745n 0.9v 694.755n 0.9v 699.745n 0.9v 699.755n 0.9v 704.745n 0.9v 704.755n 0.9v 709.745n 0.9v 709.755n 0.9v 714.745n 0.9v 714.755n 0.9v 719.745n 0.9v 719.755n 0.9v 724.745n 0.9v 724.755n 0.9v 729.745n 0.9v 729.755n 0.9v 734.745n 0.9v 734.755n 0.9v 739.745n 0.9v 739.755n 0.9v 744.745n 0.9v 744.755n 0.9v 749.745n 0.9v 749.755n 0.9v 754.745n 0.9v 754.755n 0.9v 759.745n 0.9v 759.755n 0.9v 764.745n 0.9v 764.755n 0.9v 769.745n 0.9v 769.755n 0.9v 774.745n 0.9v 774.755n 0.9v 779.745n 0.9v 779.755n 0.9v 784.745n 0.9v 784.755n 0.9v 789.745n 0.9v 789.755n 0.9v 794.745n 0.9v 794.755n 0.9v 799.745n 0.9v 799.755n 0.9v 804.745n 0.9v 804.755n 0.9v 809.745n 0.9v 809.755n 0.9v 814.745n 0.9v 814.755n 0.9v 819.745n 0.9v 819.755n 0.9v 824.745n 0.9v 824.755n 0.9v 829.745n 0.9v 829.755n 0.9v 834.745n 0.9v 834.755n 0.9v 839.745n 0.9v 839.755n 0.9v 844.745n 0.9v 844.755n 0.0v 849.745n 0.0v 849.755n 0.0v 854.745n 0.0v 854.755n 0.0v 859.745n 0.0v 859.755n 0.9v 864.745n 0.9v 864.755n 0.9v 869.745n 0.9v 869.755n 0.9v 874.745n 0.9v 874.755n 0.9v 879.745n 0.9v 879.755n 0.9v 884.745n 0.9v 884.755n 0.9v 889.745n 0.9v 889.755n 0.9v 894.745n 0.9v 894.755n 0.9v 899.745n 0.9v 899.755n 0.9v 904.745n 0.9v 904.755n 0.9v 909.745n 0.9v 909.755n 0.9v 914.745n 0.9v 914.755n 0.9v 919.745n 0.9v 919.755n 0.9v 924.745n 0.9v 924.755n 0.9v 929.745n 0.9v 929.755n 0.9v 934.745n 0.9v 934.755n 0.9v 939.745n 0.9v 939.755n 0.9v 944.745n 0.9v 944.755n 0.9v 949.745n 0.9v 949.755n 0.9v 954.745n 0.9v 954.755n 0.9v 959.745n 0.9v 959.755n 0.0v 964.745n 0.0v 964.755n 0.9v 969.745n 0.9v 969.755n 0.9v 974.745n 0.9v 974.755n 0.9v 979.745n 0.9v 979.755n 0.9v 984.745n 0.9v 984.755n 0.9v 989.745n 0.9v 989.755n 0.9v 994.745n 0.9v 994.755n 0.9v 999.745n 0.9v 999.755n 0.9v 1004.745n 0.9v 1004.755n 0.9v 1009.745n 0.9v 1009.755n 0.0v 1014.745n 0.0v 1014.755n 0.9v 1019.745n 0.9v 1019.755n 0.9v 1024.745n 0.9v 1024.755n 0.9v )
* PULSE: period=5
Vclk0 clk0 0 PULSE (0 0.9 4.995n 0.01n 0.01n 2.49n 5n)

 * Generation of dout measurements
* CHECK dout0_0 Vdout0_0ck4 = 0 time = 25
.meas tran vdout0_0ck4 FIND v(dout0_0) AT=25.025n

* CHECK dout0_1 Vdout0_1ck4 = 0.9 time = 25
.meas tran vdout0_1ck4 FIND v(dout0_1) AT=25.025n

* CHECK dout0_2 Vdout0_2ck4 = 0.9 time = 25
.meas tran vdout0_2ck4 FIND v(dout0_2) AT=25.025n

* CHECK dout0_3 Vdout0_3ck4 = 0.9 time = 25
.meas tran vdout0_3ck4 FIND v(dout0_3) AT=25.025n

* CHECK dout0_4 Vdout0_4ck4 = 0.9 time = 25
.meas tran vdout0_4ck4 FIND v(dout0_4) AT=25.025n

* CHECK dout0_5 Vdout0_5ck4 = 0.9 time = 25
.meas tran vdout0_5ck4 FIND v(dout0_5) AT=25.025n

* CHECK dout0_6 Vdout0_6ck4 = 0.9 time = 25
.meas tran vdout0_6ck4 FIND v(dout0_6) AT=25.025n

* CHECK dout0_7 Vdout0_7ck4 = 0 time = 25
.meas tran vdout0_7ck4 FIND v(dout0_7) AT=25.025n

* CHECK dout0_8 Vdout0_8ck4 = 0.9 time = 25
.meas tran vdout0_8ck4 FIND v(dout0_8) AT=25.025n

* CHECK dout0_9 Vdout0_9ck4 = 0 time = 25
.meas tran vdout0_9ck4 FIND v(dout0_9) AT=25.025n

* CHECK dout0_10 Vdout0_10ck4 = 0.9 time = 25
.meas tran vdout0_10ck4 FIND v(dout0_10) AT=25.025n

* CHECK dout0_11 Vdout0_11ck4 = 0.9 time = 25
.meas tran vdout0_11ck4 FIND v(dout0_11) AT=25.025n

* CHECK dout0_12 Vdout0_12ck4 = 0.9 time = 25
.meas tran vdout0_12ck4 FIND v(dout0_12) AT=25.025n

* CHECK dout0_13 Vdout0_13ck4 = 0 time = 25
.meas tran vdout0_13ck4 FIND v(dout0_13) AT=25.025n

* CHECK dout0_14 Vdout0_14ck4 = 0.9 time = 25
.meas tran vdout0_14ck4 FIND v(dout0_14) AT=25.025n

* CHECK dout0_15 Vdout0_15ck4 = 0.9 time = 25
.meas tran vdout0_15ck4 FIND v(dout0_15) AT=25.025n

* CHECK dout0_16 Vdout0_16ck4 = 0.9 time = 25
.meas tran vdout0_16ck4 FIND v(dout0_16) AT=25.025n

* CHECK dout0_17 Vdout0_17ck4 = 0 time = 25
.meas tran vdout0_17ck4 FIND v(dout0_17) AT=25.025n

* CHECK dout0_18 Vdout0_18ck4 = 0.9 time = 25
.meas tran vdout0_18ck4 FIND v(dout0_18) AT=25.025n

* CHECK dout0_19 Vdout0_19ck4 = 0.9 time = 25
.meas tran vdout0_19ck4 FIND v(dout0_19) AT=25.025n

* CHECK dout0_0 Vdout0_0ck5 = 0 time = 30
.meas tran vdout0_0ck5 FIND v(dout0_0) AT=30.025n

* CHECK dout0_1 Vdout0_1ck5 = 0 time = 30
.meas tran vdout0_1ck5 FIND v(dout0_1) AT=30.025n

* CHECK dout0_2 Vdout0_2ck5 = 0 time = 30
.meas tran vdout0_2ck5 FIND v(dout0_2) AT=30.025n

* CHECK dout0_3 Vdout0_3ck5 = 0 time = 30
.meas tran vdout0_3ck5 FIND v(dout0_3) AT=30.025n

* CHECK dout0_4 Vdout0_4ck5 = 0.9 time = 30
.meas tran vdout0_4ck5 FIND v(dout0_4) AT=30.025n

* CHECK dout0_5 Vdout0_5ck5 = 0 time = 30
.meas tran vdout0_5ck5 FIND v(dout0_5) AT=30.025n

* CHECK dout0_6 Vdout0_6ck5 = 0.9 time = 30
.meas tran vdout0_6ck5 FIND v(dout0_6) AT=30.025n

* CHECK dout0_7 Vdout0_7ck5 = 0.9 time = 30
.meas tran vdout0_7ck5 FIND v(dout0_7) AT=30.025n

* CHECK dout0_8 Vdout0_8ck5 = 0.9 time = 30
.meas tran vdout0_8ck5 FIND v(dout0_8) AT=30.025n

* CHECK dout0_9 Vdout0_9ck5 = 0 time = 30
.meas tran vdout0_9ck5 FIND v(dout0_9) AT=30.025n

* CHECK dout0_10 Vdout0_10ck5 = 0 time = 30
.meas tran vdout0_10ck5 FIND v(dout0_10) AT=30.025n

* CHECK dout0_11 Vdout0_11ck5 = 0.9 time = 30
.meas tran vdout0_11ck5 FIND v(dout0_11) AT=30.025n

* CHECK dout0_12 Vdout0_12ck5 = 0 time = 30
.meas tran vdout0_12ck5 FIND v(dout0_12) AT=30.025n

* CHECK dout0_13 Vdout0_13ck5 = 0 time = 30
.meas tran vdout0_13ck5 FIND v(dout0_13) AT=30.025n

* CHECK dout0_14 Vdout0_14ck5 = 0 time = 30
.meas tran vdout0_14ck5 FIND v(dout0_14) AT=30.025n

* CHECK dout0_15 Vdout0_15ck5 = 0.9 time = 30
.meas tran vdout0_15ck5 FIND v(dout0_15) AT=30.025n

* CHECK dout0_16 Vdout0_16ck5 = 0.9 time = 30
.meas tran vdout0_16ck5 FIND v(dout0_16) AT=30.025n

* CHECK dout0_17 Vdout0_17ck5 = 0.9 time = 30
.meas tran vdout0_17ck5 FIND v(dout0_17) AT=30.025n

* CHECK dout0_18 Vdout0_18ck5 = 0 time = 30
.meas tran vdout0_18ck5 FIND v(dout0_18) AT=30.025n

* CHECK dout0_19 Vdout0_19ck5 = 0.9 time = 30
.meas tran vdout0_19ck5 FIND v(dout0_19) AT=30.025n

* CHECK dout0_0 Vdout0_0ck6 = 0 time = 35
.meas tran vdout0_0ck6 FIND v(dout0_0) AT=35.025n

* CHECK dout0_1 Vdout0_1ck6 = 0 time = 35
.meas tran vdout0_1ck6 FIND v(dout0_1) AT=35.025n

* CHECK dout0_2 Vdout0_2ck6 = 0 time = 35
.meas tran vdout0_2ck6 FIND v(dout0_2) AT=35.025n

* CHECK dout0_3 Vdout0_3ck6 = 0 time = 35
.meas tran vdout0_3ck6 FIND v(dout0_3) AT=35.025n

* CHECK dout0_4 Vdout0_4ck6 = 0.9 time = 35
.meas tran vdout0_4ck6 FIND v(dout0_4) AT=35.025n

* CHECK dout0_5 Vdout0_5ck6 = 0 time = 35
.meas tran vdout0_5ck6 FIND v(dout0_5) AT=35.025n

* CHECK dout0_6 Vdout0_6ck6 = 0.9 time = 35
.meas tran vdout0_6ck6 FIND v(dout0_6) AT=35.025n

* CHECK dout0_7 Vdout0_7ck6 = 0.9 time = 35
.meas tran vdout0_7ck6 FIND v(dout0_7) AT=35.025n

* CHECK dout0_8 Vdout0_8ck6 = 0.9 time = 35
.meas tran vdout0_8ck6 FIND v(dout0_8) AT=35.025n

* CHECK dout0_9 Vdout0_9ck6 = 0 time = 35
.meas tran vdout0_9ck6 FIND v(dout0_9) AT=35.025n

* CHECK dout0_10 Vdout0_10ck6 = 0 time = 35
.meas tran vdout0_10ck6 FIND v(dout0_10) AT=35.025n

* CHECK dout0_11 Vdout0_11ck6 = 0.9 time = 35
.meas tran vdout0_11ck6 FIND v(dout0_11) AT=35.025n

* CHECK dout0_12 Vdout0_12ck6 = 0 time = 35
.meas tran vdout0_12ck6 FIND v(dout0_12) AT=35.025n

* CHECK dout0_13 Vdout0_13ck6 = 0 time = 35
.meas tran vdout0_13ck6 FIND v(dout0_13) AT=35.025n

* CHECK dout0_14 Vdout0_14ck6 = 0 time = 35
.meas tran vdout0_14ck6 FIND v(dout0_14) AT=35.025n

* CHECK dout0_15 Vdout0_15ck6 = 0.9 time = 35
.meas tran vdout0_15ck6 FIND v(dout0_15) AT=35.025n

* CHECK dout0_16 Vdout0_16ck6 = 0.9 time = 35
.meas tran vdout0_16ck6 FIND v(dout0_16) AT=35.025n

* CHECK dout0_17 Vdout0_17ck6 = 0.9 time = 35
.meas tran vdout0_17ck6 FIND v(dout0_17) AT=35.025n

* CHECK dout0_18 Vdout0_18ck6 = 0 time = 35
.meas tran vdout0_18ck6 FIND v(dout0_18) AT=35.025n

* CHECK dout0_19 Vdout0_19ck6 = 0.9 time = 35
.meas tran vdout0_19ck6 FIND v(dout0_19) AT=35.025n

* CHECK dout0_0 Vdout0_0ck12 = 0 time = 65
.meas tran vdout0_0ck12 FIND v(dout0_0) AT=65.025n

* CHECK dout0_1 Vdout0_1ck12 = 0.9 time = 65
.meas tran vdout0_1ck12 FIND v(dout0_1) AT=65.025n

* CHECK dout0_2 Vdout0_2ck12 = 0.9 time = 65
.meas tran vdout0_2ck12 FIND v(dout0_2) AT=65.025n

* CHECK dout0_3 Vdout0_3ck12 = 0.9 time = 65
.meas tran vdout0_3ck12 FIND v(dout0_3) AT=65.025n

* CHECK dout0_4 Vdout0_4ck12 = 0.9 time = 65
.meas tran vdout0_4ck12 FIND v(dout0_4) AT=65.025n

* CHECK dout0_5 Vdout0_5ck12 = 0.9 time = 65
.meas tran vdout0_5ck12 FIND v(dout0_5) AT=65.025n

* CHECK dout0_6 Vdout0_6ck12 = 0.9 time = 65
.meas tran vdout0_6ck12 FIND v(dout0_6) AT=65.025n

* CHECK dout0_7 Vdout0_7ck12 = 0 time = 65
.meas tran vdout0_7ck12 FIND v(dout0_7) AT=65.025n

* CHECK dout0_8 Vdout0_8ck12 = 0.9 time = 65
.meas tran vdout0_8ck12 FIND v(dout0_8) AT=65.025n

* CHECK dout0_9 Vdout0_9ck12 = 0 time = 65
.meas tran vdout0_9ck12 FIND v(dout0_9) AT=65.025n

* CHECK dout0_10 Vdout0_10ck12 = 0.9 time = 65
.meas tran vdout0_10ck12 FIND v(dout0_10) AT=65.025n

* CHECK dout0_11 Vdout0_11ck12 = 0.9 time = 65
.meas tran vdout0_11ck12 FIND v(dout0_11) AT=65.025n

* CHECK dout0_12 Vdout0_12ck12 = 0.9 time = 65
.meas tran vdout0_12ck12 FIND v(dout0_12) AT=65.025n

* CHECK dout0_13 Vdout0_13ck12 = 0 time = 65
.meas tran vdout0_13ck12 FIND v(dout0_13) AT=65.025n

* CHECK dout0_14 Vdout0_14ck12 = 0.9 time = 65
.meas tran vdout0_14ck12 FIND v(dout0_14) AT=65.025n

* CHECK dout0_15 Vdout0_15ck12 = 0.9 time = 65
.meas tran vdout0_15ck12 FIND v(dout0_15) AT=65.025n

* CHECK dout0_16 Vdout0_16ck12 = 0.9 time = 65
.meas tran vdout0_16ck12 FIND v(dout0_16) AT=65.025n

* CHECK dout0_17 Vdout0_17ck12 = 0 time = 65
.meas tran vdout0_17ck12 FIND v(dout0_17) AT=65.025n

* CHECK dout0_18 Vdout0_18ck12 = 0.9 time = 65
.meas tran vdout0_18ck12 FIND v(dout0_18) AT=65.025n

* CHECK dout0_19 Vdout0_19ck12 = 0.9 time = 65
.meas tran vdout0_19ck12 FIND v(dout0_19) AT=65.025n

* CHECK dout0_0 Vdout0_0ck18 = 0 time = 95
.meas tran vdout0_0ck18 FIND v(dout0_0) AT=95.025n

* CHECK dout0_1 Vdout0_1ck18 = 0.9 time = 95
.meas tran vdout0_1ck18 FIND v(dout0_1) AT=95.025n

* CHECK dout0_2 Vdout0_2ck18 = 0.9 time = 95
.meas tran vdout0_2ck18 FIND v(dout0_2) AT=95.025n

* CHECK dout0_3 Vdout0_3ck18 = 0 time = 95
.meas tran vdout0_3ck18 FIND v(dout0_3) AT=95.025n

* CHECK dout0_4 Vdout0_4ck18 = 0 time = 95
.meas tran vdout0_4ck18 FIND v(dout0_4) AT=95.025n

* CHECK dout0_5 Vdout0_5ck18 = 0 time = 95
.meas tran vdout0_5ck18 FIND v(dout0_5) AT=95.025n

* CHECK dout0_6 Vdout0_6ck18 = 0 time = 95
.meas tran vdout0_6ck18 FIND v(dout0_6) AT=95.025n

* CHECK dout0_7 Vdout0_7ck18 = 0.9 time = 95
.meas tran vdout0_7ck18 FIND v(dout0_7) AT=95.025n

* CHECK dout0_8 Vdout0_8ck18 = 0.9 time = 95
.meas tran vdout0_8ck18 FIND v(dout0_8) AT=95.025n

* CHECK dout0_9 Vdout0_9ck18 = 0 time = 95
.meas tran vdout0_9ck18 FIND v(dout0_9) AT=95.025n

* CHECK dout0_10 Vdout0_10ck18 = 0.9 time = 95
.meas tran vdout0_10ck18 FIND v(dout0_10) AT=95.025n

* CHECK dout0_11 Vdout0_11ck18 = 0.9 time = 95
.meas tran vdout0_11ck18 FIND v(dout0_11) AT=95.025n

* CHECK dout0_12 Vdout0_12ck18 = 0.9 time = 95
.meas tran vdout0_12ck18 FIND v(dout0_12) AT=95.025n

* CHECK dout0_13 Vdout0_13ck18 = 0.9 time = 95
.meas tran vdout0_13ck18 FIND v(dout0_13) AT=95.025n

* CHECK dout0_14 Vdout0_14ck18 = 0.9 time = 95
.meas tran vdout0_14ck18 FIND v(dout0_14) AT=95.025n

* CHECK dout0_15 Vdout0_15ck18 = 0 time = 95
.meas tran vdout0_15ck18 FIND v(dout0_15) AT=95.025n

* CHECK dout0_16 Vdout0_16ck18 = 0.9 time = 95
.meas tran vdout0_16ck18 FIND v(dout0_16) AT=95.025n

* CHECK dout0_17 Vdout0_17ck18 = 0.9 time = 95
.meas tran vdout0_17ck18 FIND v(dout0_17) AT=95.025n

* CHECK dout0_18 Vdout0_18ck18 = 0.9 time = 95
.meas tran vdout0_18ck18 FIND v(dout0_18) AT=95.025n

* CHECK dout0_19 Vdout0_19ck18 = 0 time = 95
.meas tran vdout0_19ck18 FIND v(dout0_19) AT=95.025n

* CHECK dout0_0 Vdout0_0ck19 = 0 time = 100
.meas tran vdout0_0ck19 FIND v(dout0_0) AT=100.025n

* CHECK dout0_1 Vdout0_1ck19 = 0.9 time = 100
.meas tran vdout0_1ck19 FIND v(dout0_1) AT=100.025n

* CHECK dout0_2 Vdout0_2ck19 = 0.9 time = 100
.meas tran vdout0_2ck19 FIND v(dout0_2) AT=100.025n

* CHECK dout0_3 Vdout0_3ck19 = 0.9 time = 100
.meas tran vdout0_3ck19 FIND v(dout0_3) AT=100.025n

* CHECK dout0_4 Vdout0_4ck19 = 0 time = 100
.meas tran vdout0_4ck19 FIND v(dout0_4) AT=100.025n

* CHECK dout0_5 Vdout0_5ck19 = 0 time = 100
.meas tran vdout0_5ck19 FIND v(dout0_5) AT=100.025n

* CHECK dout0_6 Vdout0_6ck19 = 0 time = 100
.meas tran vdout0_6ck19 FIND v(dout0_6) AT=100.025n

* CHECK dout0_7 Vdout0_7ck19 = 0 time = 100
.meas tran vdout0_7ck19 FIND v(dout0_7) AT=100.025n

* CHECK dout0_8 Vdout0_8ck19 = 0.9 time = 100
.meas tran vdout0_8ck19 FIND v(dout0_8) AT=100.025n

* CHECK dout0_9 Vdout0_9ck19 = 0.9 time = 100
.meas tran vdout0_9ck19 FIND v(dout0_9) AT=100.025n

* CHECK dout0_10 Vdout0_10ck19 = 0.9 time = 100
.meas tran vdout0_10ck19 FIND v(dout0_10) AT=100.025n

* CHECK dout0_11 Vdout0_11ck19 = 0 time = 100
.meas tran vdout0_11ck19 FIND v(dout0_11) AT=100.025n

* CHECK dout0_12 Vdout0_12ck19 = 0 time = 100
.meas tran vdout0_12ck19 FIND v(dout0_12) AT=100.025n

* CHECK dout0_13 Vdout0_13ck19 = 0 time = 100
.meas tran vdout0_13ck19 FIND v(dout0_13) AT=100.025n

* CHECK dout0_14 Vdout0_14ck19 = 0 time = 100
.meas tran vdout0_14ck19 FIND v(dout0_14) AT=100.025n

* CHECK dout0_15 Vdout0_15ck19 = 0.9 time = 100
.meas tran vdout0_15ck19 FIND v(dout0_15) AT=100.025n

* CHECK dout0_16 Vdout0_16ck19 = 0 time = 100
.meas tran vdout0_16ck19 FIND v(dout0_16) AT=100.025n

* CHECK dout0_17 Vdout0_17ck19 = 0.9 time = 100
.meas tran vdout0_17ck19 FIND v(dout0_17) AT=100.025n

* CHECK dout0_18 Vdout0_18ck19 = 0.9 time = 100
.meas tran vdout0_18ck19 FIND v(dout0_18) AT=100.025n

* CHECK dout0_19 Vdout0_19ck19 = 0 time = 100
.meas tran vdout0_19ck19 FIND v(dout0_19) AT=100.025n

* CHECK dout0_0 Vdout0_0ck24 = 0 time = 125
.meas tran vdout0_0ck24 FIND v(dout0_0) AT=125.025n

* CHECK dout0_1 Vdout0_1ck24 = 0.9 time = 125
.meas tran vdout0_1ck24 FIND v(dout0_1) AT=125.025n

* CHECK dout0_2 Vdout0_2ck24 = 0.9 time = 125
.meas tran vdout0_2ck24 FIND v(dout0_2) AT=125.025n

* CHECK dout0_3 Vdout0_3ck24 = 0 time = 125
.meas tran vdout0_3ck24 FIND v(dout0_3) AT=125.025n

* CHECK dout0_4 Vdout0_4ck24 = 0 time = 125
.meas tran vdout0_4ck24 FIND v(dout0_4) AT=125.025n

* CHECK dout0_5 Vdout0_5ck24 = 0 time = 125
.meas tran vdout0_5ck24 FIND v(dout0_5) AT=125.025n

* CHECK dout0_6 Vdout0_6ck24 = 0 time = 125
.meas tran vdout0_6ck24 FIND v(dout0_6) AT=125.025n

* CHECK dout0_7 Vdout0_7ck24 = 0.9 time = 125
.meas tran vdout0_7ck24 FIND v(dout0_7) AT=125.025n

* CHECK dout0_8 Vdout0_8ck24 = 0.9 time = 125
.meas tran vdout0_8ck24 FIND v(dout0_8) AT=125.025n

* CHECK dout0_9 Vdout0_9ck24 = 0 time = 125
.meas tran vdout0_9ck24 FIND v(dout0_9) AT=125.025n

* CHECK dout0_10 Vdout0_10ck24 = 0.9 time = 125
.meas tran vdout0_10ck24 FIND v(dout0_10) AT=125.025n

* CHECK dout0_11 Vdout0_11ck24 = 0.9 time = 125
.meas tran vdout0_11ck24 FIND v(dout0_11) AT=125.025n

* CHECK dout0_12 Vdout0_12ck24 = 0.9 time = 125
.meas tran vdout0_12ck24 FIND v(dout0_12) AT=125.025n

* CHECK dout0_13 Vdout0_13ck24 = 0.9 time = 125
.meas tran vdout0_13ck24 FIND v(dout0_13) AT=125.025n

* CHECK dout0_14 Vdout0_14ck24 = 0.9 time = 125
.meas tran vdout0_14ck24 FIND v(dout0_14) AT=125.025n

* CHECK dout0_15 Vdout0_15ck24 = 0 time = 125
.meas tran vdout0_15ck24 FIND v(dout0_15) AT=125.025n

* CHECK dout0_16 Vdout0_16ck24 = 0.9 time = 125
.meas tran vdout0_16ck24 FIND v(dout0_16) AT=125.025n

* CHECK dout0_17 Vdout0_17ck24 = 0.9 time = 125
.meas tran vdout0_17ck24 FIND v(dout0_17) AT=125.025n

* CHECK dout0_18 Vdout0_18ck24 = 0.9 time = 125
.meas tran vdout0_18ck24 FIND v(dout0_18) AT=125.025n

* CHECK dout0_19 Vdout0_19ck24 = 0 time = 125
.meas tran vdout0_19ck24 FIND v(dout0_19) AT=125.025n

* CHECK dout0_0 Vdout0_0ck28 = 0.9 time = 145
.meas tran vdout0_0ck28 FIND v(dout0_0) AT=145.025n

* CHECK dout0_1 Vdout0_1ck28 = 0.9 time = 145
.meas tran vdout0_1ck28 FIND v(dout0_1) AT=145.025n

* CHECK dout0_2 Vdout0_2ck28 = 0.9 time = 145
.meas tran vdout0_2ck28 FIND v(dout0_2) AT=145.025n

* CHECK dout0_3 Vdout0_3ck28 = 0.9 time = 145
.meas tran vdout0_3ck28 FIND v(dout0_3) AT=145.025n

* CHECK dout0_4 Vdout0_4ck28 = 0.9 time = 145
.meas tran vdout0_4ck28 FIND v(dout0_4) AT=145.025n

* CHECK dout0_5 Vdout0_5ck28 = 0.9 time = 145
.meas tran vdout0_5ck28 FIND v(dout0_5) AT=145.025n

* CHECK dout0_6 Vdout0_6ck28 = 0 time = 145
.meas tran vdout0_6ck28 FIND v(dout0_6) AT=145.025n

* CHECK dout0_7 Vdout0_7ck28 = 0 time = 145
.meas tran vdout0_7ck28 FIND v(dout0_7) AT=145.025n

* CHECK dout0_8 Vdout0_8ck28 = 0.9 time = 145
.meas tran vdout0_8ck28 FIND v(dout0_8) AT=145.025n

* CHECK dout0_9 Vdout0_9ck28 = 0.9 time = 145
.meas tran vdout0_9ck28 FIND v(dout0_9) AT=145.025n

* CHECK dout0_10 Vdout0_10ck28 = 0 time = 145
.meas tran vdout0_10ck28 FIND v(dout0_10) AT=145.025n

* CHECK dout0_11 Vdout0_11ck28 = 0.9 time = 145
.meas tran vdout0_11ck28 FIND v(dout0_11) AT=145.025n

* CHECK dout0_12 Vdout0_12ck28 = 0 time = 145
.meas tran vdout0_12ck28 FIND v(dout0_12) AT=145.025n

* CHECK dout0_13 Vdout0_13ck28 = 0.9 time = 145
.meas tran vdout0_13ck28 FIND v(dout0_13) AT=145.025n

* CHECK dout0_14 Vdout0_14ck28 = 0 time = 145
.meas tran vdout0_14ck28 FIND v(dout0_14) AT=145.025n

* CHECK dout0_15 Vdout0_15ck28 = 0 time = 145
.meas tran vdout0_15ck28 FIND v(dout0_15) AT=145.025n

* CHECK dout0_16 Vdout0_16ck28 = 0.9 time = 145
.meas tran vdout0_16ck28 FIND v(dout0_16) AT=145.025n

* CHECK dout0_17 Vdout0_17ck28 = 0 time = 145
.meas tran vdout0_17ck28 FIND v(dout0_17) AT=145.025n

* CHECK dout0_18 Vdout0_18ck28 = 0.9 time = 145
.meas tran vdout0_18ck28 FIND v(dout0_18) AT=145.025n

* CHECK dout0_19 Vdout0_19ck28 = 0.9 time = 145
.meas tran vdout0_19ck28 FIND v(dout0_19) AT=145.025n

* CHECK dout0_0 Vdout0_0ck29 = 0.9 time = 150
.meas tran vdout0_0ck29 FIND v(dout0_0) AT=150.025n

* CHECK dout0_1 Vdout0_1ck29 = 0.9 time = 150
.meas tran vdout0_1ck29 FIND v(dout0_1) AT=150.025n

* CHECK dout0_2 Vdout0_2ck29 = 0 time = 150
.meas tran vdout0_2ck29 FIND v(dout0_2) AT=150.025n

* CHECK dout0_3 Vdout0_3ck29 = 0.9 time = 150
.meas tran vdout0_3ck29 FIND v(dout0_3) AT=150.025n

* CHECK dout0_4 Vdout0_4ck29 = 0 time = 150
.meas tran vdout0_4ck29 FIND v(dout0_4) AT=150.025n

* CHECK dout0_5 Vdout0_5ck29 = 0 time = 150
.meas tran vdout0_5ck29 FIND v(dout0_5) AT=150.025n

* CHECK dout0_6 Vdout0_6ck29 = 0 time = 150
.meas tran vdout0_6ck29 FIND v(dout0_6) AT=150.025n

* CHECK dout0_7 Vdout0_7ck29 = 0.9 time = 150
.meas tran vdout0_7ck29 FIND v(dout0_7) AT=150.025n

* CHECK dout0_8 Vdout0_8ck29 = 0 time = 150
.meas tran vdout0_8ck29 FIND v(dout0_8) AT=150.025n

* CHECK dout0_9 Vdout0_9ck29 = 0.9 time = 150
.meas tran vdout0_9ck29 FIND v(dout0_9) AT=150.025n

* CHECK dout0_10 Vdout0_10ck29 = 0 time = 150
.meas tran vdout0_10ck29 FIND v(dout0_10) AT=150.025n

* CHECK dout0_11 Vdout0_11ck29 = 0 time = 150
.meas tran vdout0_11ck29 FIND v(dout0_11) AT=150.025n

* CHECK dout0_12 Vdout0_12ck29 = 0.9 time = 150
.meas tran vdout0_12ck29 FIND v(dout0_12) AT=150.025n

* CHECK dout0_13 Vdout0_13ck29 = 0.9 time = 150
.meas tran vdout0_13ck29 FIND v(dout0_13) AT=150.025n

* CHECK dout0_14 Vdout0_14ck29 = 0.9 time = 150
.meas tran vdout0_14ck29 FIND v(dout0_14) AT=150.025n

* CHECK dout0_15 Vdout0_15ck29 = 0.9 time = 150
.meas tran vdout0_15ck29 FIND v(dout0_15) AT=150.025n

* CHECK dout0_16 Vdout0_16ck29 = 0 time = 150
.meas tran vdout0_16ck29 FIND v(dout0_16) AT=150.025n

* CHECK dout0_17 Vdout0_17ck29 = 0.9 time = 150
.meas tran vdout0_17ck29 FIND v(dout0_17) AT=150.025n

* CHECK dout0_18 Vdout0_18ck29 = 0 time = 150
.meas tran vdout0_18ck29 FIND v(dout0_18) AT=150.025n

* CHECK dout0_19 Vdout0_19ck29 = 0 time = 150
.meas tran vdout0_19ck29 FIND v(dout0_19) AT=150.025n

* CHECK dout0_0 Vdout0_0ck35 = 0.9 time = 180
.meas tran vdout0_0ck35 FIND v(dout0_0) AT=180.025n

* CHECK dout0_1 Vdout0_1ck35 = 0.9 time = 180
.meas tran vdout0_1ck35 FIND v(dout0_1) AT=180.025n

* CHECK dout0_2 Vdout0_2ck35 = 0 time = 180
.meas tran vdout0_2ck35 FIND v(dout0_2) AT=180.025n

* CHECK dout0_3 Vdout0_3ck35 = 0.9 time = 180
.meas tran vdout0_3ck35 FIND v(dout0_3) AT=180.025n

* CHECK dout0_4 Vdout0_4ck35 = 0 time = 180
.meas tran vdout0_4ck35 FIND v(dout0_4) AT=180.025n

* CHECK dout0_5 Vdout0_5ck35 = 0 time = 180
.meas tran vdout0_5ck35 FIND v(dout0_5) AT=180.025n

* CHECK dout0_6 Vdout0_6ck35 = 0 time = 180
.meas tran vdout0_6ck35 FIND v(dout0_6) AT=180.025n

* CHECK dout0_7 Vdout0_7ck35 = 0.9 time = 180
.meas tran vdout0_7ck35 FIND v(dout0_7) AT=180.025n

* CHECK dout0_8 Vdout0_8ck35 = 0 time = 180
.meas tran vdout0_8ck35 FIND v(dout0_8) AT=180.025n

* CHECK dout0_9 Vdout0_9ck35 = 0.9 time = 180
.meas tran vdout0_9ck35 FIND v(dout0_9) AT=180.025n

* CHECK dout0_10 Vdout0_10ck35 = 0 time = 180
.meas tran vdout0_10ck35 FIND v(dout0_10) AT=180.025n

* CHECK dout0_11 Vdout0_11ck35 = 0 time = 180
.meas tran vdout0_11ck35 FIND v(dout0_11) AT=180.025n

* CHECK dout0_12 Vdout0_12ck35 = 0.9 time = 180
.meas tran vdout0_12ck35 FIND v(dout0_12) AT=180.025n

* CHECK dout0_13 Vdout0_13ck35 = 0.9 time = 180
.meas tran vdout0_13ck35 FIND v(dout0_13) AT=180.025n

* CHECK dout0_14 Vdout0_14ck35 = 0.9 time = 180
.meas tran vdout0_14ck35 FIND v(dout0_14) AT=180.025n

* CHECK dout0_15 Vdout0_15ck35 = 0.9 time = 180
.meas tran vdout0_15ck35 FIND v(dout0_15) AT=180.025n

* CHECK dout0_16 Vdout0_16ck35 = 0 time = 180
.meas tran vdout0_16ck35 FIND v(dout0_16) AT=180.025n

* CHECK dout0_17 Vdout0_17ck35 = 0.9 time = 180
.meas tran vdout0_17ck35 FIND v(dout0_17) AT=180.025n

* CHECK dout0_18 Vdout0_18ck35 = 0 time = 180
.meas tran vdout0_18ck35 FIND v(dout0_18) AT=180.025n

* CHECK dout0_19 Vdout0_19ck35 = 0 time = 180
.meas tran vdout0_19ck35 FIND v(dout0_19) AT=180.025n

* CHECK dout0_0 Vdout0_0ck39 = 0.9 time = 200
.meas tran vdout0_0ck39 FIND v(dout0_0) AT=200.025n

* CHECK dout0_1 Vdout0_1ck39 = 0 time = 200
.meas tran vdout0_1ck39 FIND v(dout0_1) AT=200.025n

* CHECK dout0_2 Vdout0_2ck39 = 0.9 time = 200
.meas tran vdout0_2ck39 FIND v(dout0_2) AT=200.025n

* CHECK dout0_3 Vdout0_3ck39 = 0 time = 200
.meas tran vdout0_3ck39 FIND v(dout0_3) AT=200.025n

* CHECK dout0_4 Vdout0_4ck39 = 0 time = 200
.meas tran vdout0_4ck39 FIND v(dout0_4) AT=200.025n

* CHECK dout0_5 Vdout0_5ck39 = 0.9 time = 200
.meas tran vdout0_5ck39 FIND v(dout0_5) AT=200.025n

* CHECK dout0_6 Vdout0_6ck39 = 0.9 time = 200
.meas tran vdout0_6ck39 FIND v(dout0_6) AT=200.025n

* CHECK dout0_7 Vdout0_7ck39 = 0.9 time = 200
.meas tran vdout0_7ck39 FIND v(dout0_7) AT=200.025n

* CHECK dout0_8 Vdout0_8ck39 = 0.9 time = 200
.meas tran vdout0_8ck39 FIND v(dout0_8) AT=200.025n

* CHECK dout0_9 Vdout0_9ck39 = 0.9 time = 200
.meas tran vdout0_9ck39 FIND v(dout0_9) AT=200.025n

* CHECK dout0_10 Vdout0_10ck39 = 0.9 time = 200
.meas tran vdout0_10ck39 FIND v(dout0_10) AT=200.025n

* CHECK dout0_11 Vdout0_11ck39 = 0.9 time = 200
.meas tran vdout0_11ck39 FIND v(dout0_11) AT=200.025n

* CHECK dout0_12 Vdout0_12ck39 = 0.9 time = 200
.meas tran vdout0_12ck39 FIND v(dout0_12) AT=200.025n

* CHECK dout0_13 Vdout0_13ck39 = 0.9 time = 200
.meas tran vdout0_13ck39 FIND v(dout0_13) AT=200.025n

* CHECK dout0_14 Vdout0_14ck39 = 0.9 time = 200
.meas tran vdout0_14ck39 FIND v(dout0_14) AT=200.025n

* CHECK dout0_15 Vdout0_15ck39 = 0.9 time = 200
.meas tran vdout0_15ck39 FIND v(dout0_15) AT=200.025n

* CHECK dout0_16 Vdout0_16ck39 = 0.9 time = 200
.meas tran vdout0_16ck39 FIND v(dout0_16) AT=200.025n

* CHECK dout0_17 Vdout0_17ck39 = 0.9 time = 200
.meas tran vdout0_17ck39 FIND v(dout0_17) AT=200.025n

* CHECK dout0_18 Vdout0_18ck39 = 0.9 time = 200
.meas tran vdout0_18ck39 FIND v(dout0_18) AT=200.025n

* CHECK dout0_19 Vdout0_19ck39 = 0.9 time = 200
.meas tran vdout0_19ck39 FIND v(dout0_19) AT=200.025n

* CHECK dout0_0 Vdout0_0ck40 = 0.9 time = 205
.meas tran vdout0_0ck40 FIND v(dout0_0) AT=205.025n

* CHECK dout0_1 Vdout0_1ck40 = 0 time = 205
.meas tran vdout0_1ck40 FIND v(dout0_1) AT=205.025n

* CHECK dout0_2 Vdout0_2ck40 = 0.9 time = 205
.meas tran vdout0_2ck40 FIND v(dout0_2) AT=205.025n

* CHECK dout0_3 Vdout0_3ck40 = 0 time = 205
.meas tran vdout0_3ck40 FIND v(dout0_3) AT=205.025n

* CHECK dout0_4 Vdout0_4ck40 = 0 time = 205
.meas tran vdout0_4ck40 FIND v(dout0_4) AT=205.025n

* CHECK dout0_5 Vdout0_5ck40 = 0.9 time = 205
.meas tran vdout0_5ck40 FIND v(dout0_5) AT=205.025n

* CHECK dout0_6 Vdout0_6ck40 = 0.9 time = 205
.meas tran vdout0_6ck40 FIND v(dout0_6) AT=205.025n

* CHECK dout0_7 Vdout0_7ck40 = 0.9 time = 205
.meas tran vdout0_7ck40 FIND v(dout0_7) AT=205.025n

* CHECK dout0_8 Vdout0_8ck40 = 0.9 time = 205
.meas tran vdout0_8ck40 FIND v(dout0_8) AT=205.025n

* CHECK dout0_9 Vdout0_9ck40 = 0.9 time = 205
.meas tran vdout0_9ck40 FIND v(dout0_9) AT=205.025n

* CHECK dout0_10 Vdout0_10ck40 = 0.9 time = 205
.meas tran vdout0_10ck40 FIND v(dout0_10) AT=205.025n

* CHECK dout0_11 Vdout0_11ck40 = 0.9 time = 205
.meas tran vdout0_11ck40 FIND v(dout0_11) AT=205.025n

* CHECK dout0_12 Vdout0_12ck40 = 0.9 time = 205
.meas tran vdout0_12ck40 FIND v(dout0_12) AT=205.025n

* CHECK dout0_13 Vdout0_13ck40 = 0.9 time = 205
.meas tran vdout0_13ck40 FIND v(dout0_13) AT=205.025n

* CHECK dout0_14 Vdout0_14ck40 = 0.9 time = 205
.meas tran vdout0_14ck40 FIND v(dout0_14) AT=205.025n

* CHECK dout0_15 Vdout0_15ck40 = 0.9 time = 205
.meas tran vdout0_15ck40 FIND v(dout0_15) AT=205.025n

* CHECK dout0_16 Vdout0_16ck40 = 0.9 time = 205
.meas tran vdout0_16ck40 FIND v(dout0_16) AT=205.025n

* CHECK dout0_17 Vdout0_17ck40 = 0.9 time = 205
.meas tran vdout0_17ck40 FIND v(dout0_17) AT=205.025n

* CHECK dout0_18 Vdout0_18ck40 = 0.9 time = 205
.meas tran vdout0_18ck40 FIND v(dout0_18) AT=205.025n

* CHECK dout0_19 Vdout0_19ck40 = 0.9 time = 205
.meas tran vdout0_19ck40 FIND v(dout0_19) AT=205.025n

* CHECK dout0_0 Vdout0_0ck41 = 0.9 time = 210
.meas tran vdout0_0ck41 FIND v(dout0_0) AT=210.025n

* CHECK dout0_1 Vdout0_1ck41 = 0.9 time = 210
.meas tran vdout0_1ck41 FIND v(dout0_1) AT=210.025n

* CHECK dout0_2 Vdout0_2ck41 = 0 time = 210
.meas tran vdout0_2ck41 FIND v(dout0_2) AT=210.025n

* CHECK dout0_3 Vdout0_3ck41 = 0.9 time = 210
.meas tran vdout0_3ck41 FIND v(dout0_3) AT=210.025n

* CHECK dout0_4 Vdout0_4ck41 = 0 time = 210
.meas tran vdout0_4ck41 FIND v(dout0_4) AT=210.025n

* CHECK dout0_5 Vdout0_5ck41 = 0 time = 210
.meas tran vdout0_5ck41 FIND v(dout0_5) AT=210.025n

* CHECK dout0_6 Vdout0_6ck41 = 0 time = 210
.meas tran vdout0_6ck41 FIND v(dout0_6) AT=210.025n

* CHECK dout0_7 Vdout0_7ck41 = 0.9 time = 210
.meas tran vdout0_7ck41 FIND v(dout0_7) AT=210.025n

* CHECK dout0_8 Vdout0_8ck41 = 0 time = 210
.meas tran vdout0_8ck41 FIND v(dout0_8) AT=210.025n

* CHECK dout0_9 Vdout0_9ck41 = 0.9 time = 210
.meas tran vdout0_9ck41 FIND v(dout0_9) AT=210.025n

* CHECK dout0_10 Vdout0_10ck41 = 0 time = 210
.meas tran vdout0_10ck41 FIND v(dout0_10) AT=210.025n

* CHECK dout0_11 Vdout0_11ck41 = 0 time = 210
.meas tran vdout0_11ck41 FIND v(dout0_11) AT=210.025n

* CHECK dout0_12 Vdout0_12ck41 = 0.9 time = 210
.meas tran vdout0_12ck41 FIND v(dout0_12) AT=210.025n

* CHECK dout0_13 Vdout0_13ck41 = 0.9 time = 210
.meas tran vdout0_13ck41 FIND v(dout0_13) AT=210.025n

* CHECK dout0_14 Vdout0_14ck41 = 0.9 time = 210
.meas tran vdout0_14ck41 FIND v(dout0_14) AT=210.025n

* CHECK dout0_15 Vdout0_15ck41 = 0.9 time = 210
.meas tran vdout0_15ck41 FIND v(dout0_15) AT=210.025n

* CHECK dout0_16 Vdout0_16ck41 = 0 time = 210
.meas tran vdout0_16ck41 FIND v(dout0_16) AT=210.025n

* CHECK dout0_17 Vdout0_17ck41 = 0.9 time = 210
.meas tran vdout0_17ck41 FIND v(dout0_17) AT=210.025n

* CHECK dout0_18 Vdout0_18ck41 = 0 time = 210
.meas tran vdout0_18ck41 FIND v(dout0_18) AT=210.025n

* CHECK dout0_19 Vdout0_19ck41 = 0 time = 210
.meas tran vdout0_19ck41 FIND v(dout0_19) AT=210.025n

* CHECK dout0_0 Vdout0_0ck42 = 0 time = 215
.meas tran vdout0_0ck42 FIND v(dout0_0) AT=215.025n

* CHECK dout0_1 Vdout0_1ck42 = 0 time = 215
.meas tran vdout0_1ck42 FIND v(dout0_1) AT=215.025n

* CHECK dout0_2 Vdout0_2ck42 = 0.9 time = 215
.meas tran vdout0_2ck42 FIND v(dout0_2) AT=215.025n

* CHECK dout0_3 Vdout0_3ck42 = 0 time = 215
.meas tran vdout0_3ck42 FIND v(dout0_3) AT=215.025n

* CHECK dout0_4 Vdout0_4ck42 = 0 time = 215
.meas tran vdout0_4ck42 FIND v(dout0_4) AT=215.025n

* CHECK dout0_5 Vdout0_5ck42 = 0 time = 215
.meas tran vdout0_5ck42 FIND v(dout0_5) AT=215.025n

* CHECK dout0_6 Vdout0_6ck42 = 0 time = 215
.meas tran vdout0_6ck42 FIND v(dout0_6) AT=215.025n

* CHECK dout0_7 Vdout0_7ck42 = 0 time = 215
.meas tran vdout0_7ck42 FIND v(dout0_7) AT=215.025n

* CHECK dout0_8 Vdout0_8ck42 = 0.9 time = 215
.meas tran vdout0_8ck42 FIND v(dout0_8) AT=215.025n

* CHECK dout0_9 Vdout0_9ck42 = 0.9 time = 215
.meas tran vdout0_9ck42 FIND v(dout0_9) AT=215.025n

* CHECK dout0_10 Vdout0_10ck42 = 0.9 time = 215
.meas tran vdout0_10ck42 FIND v(dout0_10) AT=215.025n

* CHECK dout0_11 Vdout0_11ck42 = 0.9 time = 215
.meas tran vdout0_11ck42 FIND v(dout0_11) AT=215.025n

* CHECK dout0_12 Vdout0_12ck42 = 0.9 time = 215
.meas tran vdout0_12ck42 FIND v(dout0_12) AT=215.025n

* CHECK dout0_13 Vdout0_13ck42 = 0.9 time = 215
.meas tran vdout0_13ck42 FIND v(dout0_13) AT=215.025n

* CHECK dout0_14 Vdout0_14ck42 = 0 time = 215
.meas tran vdout0_14ck42 FIND v(dout0_14) AT=215.025n

* CHECK dout0_15 Vdout0_15ck42 = 0.9 time = 215
.meas tran vdout0_15ck42 FIND v(dout0_15) AT=215.025n

* CHECK dout0_16 Vdout0_16ck42 = 0 time = 215
.meas tran vdout0_16ck42 FIND v(dout0_16) AT=215.025n

* CHECK dout0_17 Vdout0_17ck42 = 0 time = 215
.meas tran vdout0_17ck42 FIND v(dout0_17) AT=215.025n

* CHECK dout0_18 Vdout0_18ck42 = 0.9 time = 215
.meas tran vdout0_18ck42 FIND v(dout0_18) AT=215.025n

* CHECK dout0_19 Vdout0_19ck42 = 0 time = 215
.meas tran vdout0_19ck42 FIND v(dout0_19) AT=215.025n

* CHECK dout0_0 Vdout0_0ck43 = 0 time = 220
.meas tran vdout0_0ck43 FIND v(dout0_0) AT=220.025n

* CHECK dout0_1 Vdout0_1ck43 = 0 time = 220
.meas tran vdout0_1ck43 FIND v(dout0_1) AT=220.025n

* CHECK dout0_2 Vdout0_2ck43 = 0.9 time = 220
.meas tran vdout0_2ck43 FIND v(dout0_2) AT=220.025n

* CHECK dout0_3 Vdout0_3ck43 = 0 time = 220
.meas tran vdout0_3ck43 FIND v(dout0_3) AT=220.025n

* CHECK dout0_4 Vdout0_4ck43 = 0 time = 220
.meas tran vdout0_4ck43 FIND v(dout0_4) AT=220.025n

* CHECK dout0_5 Vdout0_5ck43 = 0 time = 220
.meas tran vdout0_5ck43 FIND v(dout0_5) AT=220.025n

* CHECK dout0_6 Vdout0_6ck43 = 0 time = 220
.meas tran vdout0_6ck43 FIND v(dout0_6) AT=220.025n

* CHECK dout0_7 Vdout0_7ck43 = 0 time = 220
.meas tran vdout0_7ck43 FIND v(dout0_7) AT=220.025n

* CHECK dout0_8 Vdout0_8ck43 = 0.9 time = 220
.meas tran vdout0_8ck43 FIND v(dout0_8) AT=220.025n

* CHECK dout0_9 Vdout0_9ck43 = 0.9 time = 220
.meas tran vdout0_9ck43 FIND v(dout0_9) AT=220.025n

* CHECK dout0_10 Vdout0_10ck43 = 0.9 time = 220
.meas tran vdout0_10ck43 FIND v(dout0_10) AT=220.025n

* CHECK dout0_11 Vdout0_11ck43 = 0.9 time = 220
.meas tran vdout0_11ck43 FIND v(dout0_11) AT=220.025n

* CHECK dout0_12 Vdout0_12ck43 = 0.9 time = 220
.meas tran vdout0_12ck43 FIND v(dout0_12) AT=220.025n

* CHECK dout0_13 Vdout0_13ck43 = 0.9 time = 220
.meas tran vdout0_13ck43 FIND v(dout0_13) AT=220.025n

* CHECK dout0_14 Vdout0_14ck43 = 0 time = 220
.meas tran vdout0_14ck43 FIND v(dout0_14) AT=220.025n

* CHECK dout0_15 Vdout0_15ck43 = 0.9 time = 220
.meas tran vdout0_15ck43 FIND v(dout0_15) AT=220.025n

* CHECK dout0_16 Vdout0_16ck43 = 0 time = 220
.meas tran vdout0_16ck43 FIND v(dout0_16) AT=220.025n

* CHECK dout0_17 Vdout0_17ck43 = 0 time = 220
.meas tran vdout0_17ck43 FIND v(dout0_17) AT=220.025n

* CHECK dout0_18 Vdout0_18ck43 = 0.9 time = 220
.meas tran vdout0_18ck43 FIND v(dout0_18) AT=220.025n

* CHECK dout0_19 Vdout0_19ck43 = 0 time = 220
.meas tran vdout0_19ck43 FIND v(dout0_19) AT=220.025n

* CHECK dout0_0 Vdout0_0ck44 = 0 time = 225
.meas tran vdout0_0ck44 FIND v(dout0_0) AT=225.025n

* CHECK dout0_1 Vdout0_1ck44 = 0 time = 225
.meas tran vdout0_1ck44 FIND v(dout0_1) AT=225.025n

* CHECK dout0_2 Vdout0_2ck44 = 0.9 time = 225
.meas tran vdout0_2ck44 FIND v(dout0_2) AT=225.025n

* CHECK dout0_3 Vdout0_3ck44 = 0 time = 225
.meas tran vdout0_3ck44 FIND v(dout0_3) AT=225.025n

* CHECK dout0_4 Vdout0_4ck44 = 0 time = 225
.meas tran vdout0_4ck44 FIND v(dout0_4) AT=225.025n

* CHECK dout0_5 Vdout0_5ck44 = 0 time = 225
.meas tran vdout0_5ck44 FIND v(dout0_5) AT=225.025n

* CHECK dout0_6 Vdout0_6ck44 = 0 time = 225
.meas tran vdout0_6ck44 FIND v(dout0_6) AT=225.025n

* CHECK dout0_7 Vdout0_7ck44 = 0 time = 225
.meas tran vdout0_7ck44 FIND v(dout0_7) AT=225.025n

* CHECK dout0_8 Vdout0_8ck44 = 0.9 time = 225
.meas tran vdout0_8ck44 FIND v(dout0_8) AT=225.025n

* CHECK dout0_9 Vdout0_9ck44 = 0.9 time = 225
.meas tran vdout0_9ck44 FIND v(dout0_9) AT=225.025n

* CHECK dout0_10 Vdout0_10ck44 = 0.9 time = 225
.meas tran vdout0_10ck44 FIND v(dout0_10) AT=225.025n

* CHECK dout0_11 Vdout0_11ck44 = 0.9 time = 225
.meas tran vdout0_11ck44 FIND v(dout0_11) AT=225.025n

* CHECK dout0_12 Vdout0_12ck44 = 0.9 time = 225
.meas tran vdout0_12ck44 FIND v(dout0_12) AT=225.025n

* CHECK dout0_13 Vdout0_13ck44 = 0.9 time = 225
.meas tran vdout0_13ck44 FIND v(dout0_13) AT=225.025n

* CHECK dout0_14 Vdout0_14ck44 = 0 time = 225
.meas tran vdout0_14ck44 FIND v(dout0_14) AT=225.025n

* CHECK dout0_15 Vdout0_15ck44 = 0.9 time = 225
.meas tran vdout0_15ck44 FIND v(dout0_15) AT=225.025n

* CHECK dout0_16 Vdout0_16ck44 = 0 time = 225
.meas tran vdout0_16ck44 FIND v(dout0_16) AT=225.025n

* CHECK dout0_17 Vdout0_17ck44 = 0 time = 225
.meas tran vdout0_17ck44 FIND v(dout0_17) AT=225.025n

* CHECK dout0_18 Vdout0_18ck44 = 0.9 time = 225
.meas tran vdout0_18ck44 FIND v(dout0_18) AT=225.025n

* CHECK dout0_19 Vdout0_19ck44 = 0 time = 225
.meas tran vdout0_19ck44 FIND v(dout0_19) AT=225.025n

* CHECK dout0_0 Vdout0_0ck46 = 0.9 time = 235
.meas tran vdout0_0ck46 FIND v(dout0_0) AT=235.025n

* CHECK dout0_1 Vdout0_1ck46 = 0 time = 235
.meas tran vdout0_1ck46 FIND v(dout0_1) AT=235.025n

* CHECK dout0_2 Vdout0_2ck46 = 0.9 time = 235
.meas tran vdout0_2ck46 FIND v(dout0_2) AT=235.025n

* CHECK dout0_3 Vdout0_3ck46 = 0 time = 235
.meas tran vdout0_3ck46 FIND v(dout0_3) AT=235.025n

* CHECK dout0_4 Vdout0_4ck46 = 0 time = 235
.meas tran vdout0_4ck46 FIND v(dout0_4) AT=235.025n

* CHECK dout0_5 Vdout0_5ck46 = 0.9 time = 235
.meas tran vdout0_5ck46 FIND v(dout0_5) AT=235.025n

* CHECK dout0_6 Vdout0_6ck46 = 0.9 time = 235
.meas tran vdout0_6ck46 FIND v(dout0_6) AT=235.025n

* CHECK dout0_7 Vdout0_7ck46 = 0.9 time = 235
.meas tran vdout0_7ck46 FIND v(dout0_7) AT=235.025n

* CHECK dout0_8 Vdout0_8ck46 = 0.9 time = 235
.meas tran vdout0_8ck46 FIND v(dout0_8) AT=235.025n

* CHECK dout0_9 Vdout0_9ck46 = 0.9 time = 235
.meas tran vdout0_9ck46 FIND v(dout0_9) AT=235.025n

* CHECK dout0_10 Vdout0_10ck46 = 0.9 time = 235
.meas tran vdout0_10ck46 FIND v(dout0_10) AT=235.025n

* CHECK dout0_11 Vdout0_11ck46 = 0.9 time = 235
.meas tran vdout0_11ck46 FIND v(dout0_11) AT=235.025n

* CHECK dout0_12 Vdout0_12ck46 = 0.9 time = 235
.meas tran vdout0_12ck46 FIND v(dout0_12) AT=235.025n

* CHECK dout0_13 Vdout0_13ck46 = 0.9 time = 235
.meas tran vdout0_13ck46 FIND v(dout0_13) AT=235.025n

* CHECK dout0_14 Vdout0_14ck46 = 0.9 time = 235
.meas tran vdout0_14ck46 FIND v(dout0_14) AT=235.025n

* CHECK dout0_15 Vdout0_15ck46 = 0.9 time = 235
.meas tran vdout0_15ck46 FIND v(dout0_15) AT=235.025n

* CHECK dout0_16 Vdout0_16ck46 = 0.9 time = 235
.meas tran vdout0_16ck46 FIND v(dout0_16) AT=235.025n

* CHECK dout0_17 Vdout0_17ck46 = 0.9 time = 235
.meas tran vdout0_17ck46 FIND v(dout0_17) AT=235.025n

* CHECK dout0_18 Vdout0_18ck46 = 0.9 time = 235
.meas tran vdout0_18ck46 FIND v(dout0_18) AT=235.025n

* CHECK dout0_19 Vdout0_19ck46 = 0.9 time = 235
.meas tran vdout0_19ck46 FIND v(dout0_19) AT=235.025n

* CHECK dout0_0 Vdout0_0ck50 = 0.9 time = 255
.meas tran vdout0_0ck50 FIND v(dout0_0) AT=255.025n

* CHECK dout0_1 Vdout0_1ck50 = 0 time = 255
.meas tran vdout0_1ck50 FIND v(dout0_1) AT=255.025n

* CHECK dout0_2 Vdout0_2ck50 = 0.9 time = 255
.meas tran vdout0_2ck50 FIND v(dout0_2) AT=255.025n

* CHECK dout0_3 Vdout0_3ck50 = 0 time = 255
.meas tran vdout0_3ck50 FIND v(dout0_3) AT=255.025n

* CHECK dout0_4 Vdout0_4ck50 = 0 time = 255
.meas tran vdout0_4ck50 FIND v(dout0_4) AT=255.025n

* CHECK dout0_5 Vdout0_5ck50 = 0.9 time = 255
.meas tran vdout0_5ck50 FIND v(dout0_5) AT=255.025n

* CHECK dout0_6 Vdout0_6ck50 = 0.9 time = 255
.meas tran vdout0_6ck50 FIND v(dout0_6) AT=255.025n

* CHECK dout0_7 Vdout0_7ck50 = 0.9 time = 255
.meas tran vdout0_7ck50 FIND v(dout0_7) AT=255.025n

* CHECK dout0_8 Vdout0_8ck50 = 0.9 time = 255
.meas tran vdout0_8ck50 FIND v(dout0_8) AT=255.025n

* CHECK dout0_9 Vdout0_9ck50 = 0.9 time = 255
.meas tran vdout0_9ck50 FIND v(dout0_9) AT=255.025n

* CHECK dout0_10 Vdout0_10ck50 = 0.9 time = 255
.meas tran vdout0_10ck50 FIND v(dout0_10) AT=255.025n

* CHECK dout0_11 Vdout0_11ck50 = 0.9 time = 255
.meas tran vdout0_11ck50 FIND v(dout0_11) AT=255.025n

* CHECK dout0_12 Vdout0_12ck50 = 0.9 time = 255
.meas tran vdout0_12ck50 FIND v(dout0_12) AT=255.025n

* CHECK dout0_13 Vdout0_13ck50 = 0.9 time = 255
.meas tran vdout0_13ck50 FIND v(dout0_13) AT=255.025n

* CHECK dout0_14 Vdout0_14ck50 = 0.9 time = 255
.meas tran vdout0_14ck50 FIND v(dout0_14) AT=255.025n

* CHECK dout0_15 Vdout0_15ck50 = 0.9 time = 255
.meas tran vdout0_15ck50 FIND v(dout0_15) AT=255.025n

* CHECK dout0_16 Vdout0_16ck50 = 0.9 time = 255
.meas tran vdout0_16ck50 FIND v(dout0_16) AT=255.025n

* CHECK dout0_17 Vdout0_17ck50 = 0.9 time = 255
.meas tran vdout0_17ck50 FIND v(dout0_17) AT=255.025n

* CHECK dout0_18 Vdout0_18ck50 = 0.9 time = 255
.meas tran vdout0_18ck50 FIND v(dout0_18) AT=255.025n

* CHECK dout0_19 Vdout0_19ck50 = 0.9 time = 255
.meas tran vdout0_19ck50 FIND v(dout0_19) AT=255.025n

* CHECK dout0_0 Vdout0_0ck54 = 0 time = 275
.meas tran vdout0_0ck54 FIND v(dout0_0) AT=275.025n

* CHECK dout0_1 Vdout0_1ck54 = 0 time = 275
.meas tran vdout0_1ck54 FIND v(dout0_1) AT=275.025n

* CHECK dout0_2 Vdout0_2ck54 = 0 time = 275
.meas tran vdout0_2ck54 FIND v(dout0_2) AT=275.025n

* CHECK dout0_3 Vdout0_3ck54 = 0 time = 275
.meas tran vdout0_3ck54 FIND v(dout0_3) AT=275.025n

* CHECK dout0_4 Vdout0_4ck54 = 0.9 time = 275
.meas tran vdout0_4ck54 FIND v(dout0_4) AT=275.025n

* CHECK dout0_5 Vdout0_5ck54 = 0.9 time = 275
.meas tran vdout0_5ck54 FIND v(dout0_5) AT=275.025n

* CHECK dout0_6 Vdout0_6ck54 = 0.9 time = 275
.meas tran vdout0_6ck54 FIND v(dout0_6) AT=275.025n

* CHECK dout0_7 Vdout0_7ck54 = 0.9 time = 275
.meas tran vdout0_7ck54 FIND v(dout0_7) AT=275.025n

* CHECK dout0_8 Vdout0_8ck54 = 0 time = 275
.meas tran vdout0_8ck54 FIND v(dout0_8) AT=275.025n

* CHECK dout0_9 Vdout0_9ck54 = 0.9 time = 275
.meas tran vdout0_9ck54 FIND v(dout0_9) AT=275.025n

* CHECK dout0_10 Vdout0_10ck54 = 0.9 time = 275
.meas tran vdout0_10ck54 FIND v(dout0_10) AT=275.025n

* CHECK dout0_11 Vdout0_11ck54 = 0.9 time = 275
.meas tran vdout0_11ck54 FIND v(dout0_11) AT=275.025n

* CHECK dout0_12 Vdout0_12ck54 = 0.9 time = 275
.meas tran vdout0_12ck54 FIND v(dout0_12) AT=275.025n

* CHECK dout0_13 Vdout0_13ck54 = 0 time = 275
.meas tran vdout0_13ck54 FIND v(dout0_13) AT=275.025n

* CHECK dout0_14 Vdout0_14ck54 = 0 time = 275
.meas tran vdout0_14ck54 FIND v(dout0_14) AT=275.025n

* CHECK dout0_15 Vdout0_15ck54 = 0.9 time = 275
.meas tran vdout0_15ck54 FIND v(dout0_15) AT=275.025n

* CHECK dout0_16 Vdout0_16ck54 = 0.9 time = 275
.meas tran vdout0_16ck54 FIND v(dout0_16) AT=275.025n

* CHECK dout0_17 Vdout0_17ck54 = 0.9 time = 275
.meas tran vdout0_17ck54 FIND v(dout0_17) AT=275.025n

* CHECK dout0_18 Vdout0_18ck54 = 0 time = 275
.meas tran vdout0_18ck54 FIND v(dout0_18) AT=275.025n

* CHECK dout0_19 Vdout0_19ck54 = 0.9 time = 275
.meas tran vdout0_19ck54 FIND v(dout0_19) AT=275.025n

* CHECK dout0_0 Vdout0_0ck55 = 0 time = 280
.meas tran vdout0_0ck55 FIND v(dout0_0) AT=280.025n

* CHECK dout0_1 Vdout0_1ck55 = 0 time = 280
.meas tran vdout0_1ck55 FIND v(dout0_1) AT=280.025n

* CHECK dout0_2 Vdout0_2ck55 = 0.9 time = 280
.meas tran vdout0_2ck55 FIND v(dout0_2) AT=280.025n

* CHECK dout0_3 Vdout0_3ck55 = 0 time = 280
.meas tran vdout0_3ck55 FIND v(dout0_3) AT=280.025n

* CHECK dout0_4 Vdout0_4ck55 = 0 time = 280
.meas tran vdout0_4ck55 FIND v(dout0_4) AT=280.025n

* CHECK dout0_5 Vdout0_5ck55 = 0 time = 280
.meas tran vdout0_5ck55 FIND v(dout0_5) AT=280.025n

* CHECK dout0_6 Vdout0_6ck55 = 0 time = 280
.meas tran vdout0_6ck55 FIND v(dout0_6) AT=280.025n

* CHECK dout0_7 Vdout0_7ck55 = 0 time = 280
.meas tran vdout0_7ck55 FIND v(dout0_7) AT=280.025n

* CHECK dout0_8 Vdout0_8ck55 = 0.9 time = 280
.meas tran vdout0_8ck55 FIND v(dout0_8) AT=280.025n

* CHECK dout0_9 Vdout0_9ck55 = 0.9 time = 280
.meas tran vdout0_9ck55 FIND v(dout0_9) AT=280.025n

* CHECK dout0_10 Vdout0_10ck55 = 0.9 time = 280
.meas tran vdout0_10ck55 FIND v(dout0_10) AT=280.025n

* CHECK dout0_11 Vdout0_11ck55 = 0.9 time = 280
.meas tran vdout0_11ck55 FIND v(dout0_11) AT=280.025n

* CHECK dout0_12 Vdout0_12ck55 = 0.9 time = 280
.meas tran vdout0_12ck55 FIND v(dout0_12) AT=280.025n

* CHECK dout0_13 Vdout0_13ck55 = 0.9 time = 280
.meas tran vdout0_13ck55 FIND v(dout0_13) AT=280.025n

* CHECK dout0_14 Vdout0_14ck55 = 0 time = 280
.meas tran vdout0_14ck55 FIND v(dout0_14) AT=280.025n

* CHECK dout0_15 Vdout0_15ck55 = 0.9 time = 280
.meas tran vdout0_15ck55 FIND v(dout0_15) AT=280.025n

* CHECK dout0_16 Vdout0_16ck55 = 0 time = 280
.meas tran vdout0_16ck55 FIND v(dout0_16) AT=280.025n

* CHECK dout0_17 Vdout0_17ck55 = 0 time = 280
.meas tran vdout0_17ck55 FIND v(dout0_17) AT=280.025n

* CHECK dout0_18 Vdout0_18ck55 = 0.9 time = 280
.meas tran vdout0_18ck55 FIND v(dout0_18) AT=280.025n

* CHECK dout0_19 Vdout0_19ck55 = 0 time = 280
.meas tran vdout0_19ck55 FIND v(dout0_19) AT=280.025n

* CHECK dout0_0 Vdout0_0ck56 = 0 time = 285
.meas tran vdout0_0ck56 FIND v(dout0_0) AT=285.025n

* CHECK dout0_1 Vdout0_1ck56 = 0 time = 285
.meas tran vdout0_1ck56 FIND v(dout0_1) AT=285.025n

* CHECK dout0_2 Vdout0_2ck56 = 0 time = 285
.meas tran vdout0_2ck56 FIND v(dout0_2) AT=285.025n

* CHECK dout0_3 Vdout0_3ck56 = 0.9 time = 285
.meas tran vdout0_3ck56 FIND v(dout0_3) AT=285.025n

* CHECK dout0_4 Vdout0_4ck56 = 0.9 time = 285
.meas tran vdout0_4ck56 FIND v(dout0_4) AT=285.025n

* CHECK dout0_5 Vdout0_5ck56 = 0.9 time = 285
.meas tran vdout0_5ck56 FIND v(dout0_5) AT=285.025n

* CHECK dout0_6 Vdout0_6ck56 = 0.9 time = 285
.meas tran vdout0_6ck56 FIND v(dout0_6) AT=285.025n

* CHECK dout0_7 Vdout0_7ck56 = 0 time = 285
.meas tran vdout0_7ck56 FIND v(dout0_7) AT=285.025n

* CHECK dout0_8 Vdout0_8ck56 = 0.9 time = 285
.meas tran vdout0_8ck56 FIND v(dout0_8) AT=285.025n

* CHECK dout0_9 Vdout0_9ck56 = 0 time = 285
.meas tran vdout0_9ck56 FIND v(dout0_9) AT=285.025n

* CHECK dout0_10 Vdout0_10ck56 = 0.9 time = 285
.meas tran vdout0_10ck56 FIND v(dout0_10) AT=285.025n

* CHECK dout0_11 Vdout0_11ck56 = 0.9 time = 285
.meas tran vdout0_11ck56 FIND v(dout0_11) AT=285.025n

* CHECK dout0_12 Vdout0_12ck56 = 0.9 time = 285
.meas tran vdout0_12ck56 FIND v(dout0_12) AT=285.025n

* CHECK dout0_13 Vdout0_13ck56 = 0.9 time = 285
.meas tran vdout0_13ck56 FIND v(dout0_13) AT=285.025n

* CHECK dout0_14 Vdout0_14ck56 = 0.9 time = 285
.meas tran vdout0_14ck56 FIND v(dout0_14) AT=285.025n

* CHECK dout0_15 Vdout0_15ck56 = 0 time = 285
.meas tran vdout0_15ck56 FIND v(dout0_15) AT=285.025n

* CHECK dout0_16 Vdout0_16ck56 = 0 time = 285
.meas tran vdout0_16ck56 FIND v(dout0_16) AT=285.025n

* CHECK dout0_17 Vdout0_17ck56 = 0.9 time = 285
.meas tran vdout0_17ck56 FIND v(dout0_17) AT=285.025n

* CHECK dout0_18 Vdout0_18ck56 = 0 time = 285
.meas tran vdout0_18ck56 FIND v(dout0_18) AT=285.025n

* CHECK dout0_19 Vdout0_19ck56 = 0.9 time = 285
.meas tran vdout0_19ck56 FIND v(dout0_19) AT=285.025n

* CHECK dout0_0 Vdout0_0ck57 = 0 time = 290
.meas tran vdout0_0ck57 FIND v(dout0_0) AT=290.025n

* CHECK dout0_1 Vdout0_1ck57 = 0 time = 290
.meas tran vdout0_1ck57 FIND v(dout0_1) AT=290.025n

* CHECK dout0_2 Vdout0_2ck57 = 0.9 time = 290
.meas tran vdout0_2ck57 FIND v(dout0_2) AT=290.025n

* CHECK dout0_3 Vdout0_3ck57 = 0 time = 290
.meas tran vdout0_3ck57 FIND v(dout0_3) AT=290.025n

* CHECK dout0_4 Vdout0_4ck57 = 0 time = 290
.meas tran vdout0_4ck57 FIND v(dout0_4) AT=290.025n

* CHECK dout0_5 Vdout0_5ck57 = 0 time = 290
.meas tran vdout0_5ck57 FIND v(dout0_5) AT=290.025n

* CHECK dout0_6 Vdout0_6ck57 = 0 time = 290
.meas tran vdout0_6ck57 FIND v(dout0_6) AT=290.025n

* CHECK dout0_7 Vdout0_7ck57 = 0 time = 290
.meas tran vdout0_7ck57 FIND v(dout0_7) AT=290.025n

* CHECK dout0_8 Vdout0_8ck57 = 0.9 time = 290
.meas tran vdout0_8ck57 FIND v(dout0_8) AT=290.025n

* CHECK dout0_9 Vdout0_9ck57 = 0.9 time = 290
.meas tran vdout0_9ck57 FIND v(dout0_9) AT=290.025n

* CHECK dout0_10 Vdout0_10ck57 = 0.9 time = 290
.meas tran vdout0_10ck57 FIND v(dout0_10) AT=290.025n

* CHECK dout0_11 Vdout0_11ck57 = 0.9 time = 290
.meas tran vdout0_11ck57 FIND v(dout0_11) AT=290.025n

* CHECK dout0_12 Vdout0_12ck57 = 0.9 time = 290
.meas tran vdout0_12ck57 FIND v(dout0_12) AT=290.025n

* CHECK dout0_13 Vdout0_13ck57 = 0.9 time = 290
.meas tran vdout0_13ck57 FIND v(dout0_13) AT=290.025n

* CHECK dout0_14 Vdout0_14ck57 = 0 time = 290
.meas tran vdout0_14ck57 FIND v(dout0_14) AT=290.025n

* CHECK dout0_15 Vdout0_15ck57 = 0.9 time = 290
.meas tran vdout0_15ck57 FIND v(dout0_15) AT=290.025n

* CHECK dout0_16 Vdout0_16ck57 = 0 time = 290
.meas tran vdout0_16ck57 FIND v(dout0_16) AT=290.025n

* CHECK dout0_17 Vdout0_17ck57 = 0 time = 290
.meas tran vdout0_17ck57 FIND v(dout0_17) AT=290.025n

* CHECK dout0_18 Vdout0_18ck57 = 0.9 time = 290
.meas tran vdout0_18ck57 FIND v(dout0_18) AT=290.025n

* CHECK dout0_19 Vdout0_19ck57 = 0 time = 290
.meas tran vdout0_19ck57 FIND v(dout0_19) AT=290.025n

* CHECK dout0_0 Vdout0_0ck60 = 0.9 time = 305
.meas tran vdout0_0ck60 FIND v(dout0_0) AT=305.025n

* CHECK dout0_1 Vdout0_1ck60 = 0.9 time = 305
.meas tran vdout0_1ck60 FIND v(dout0_1) AT=305.025n

* CHECK dout0_2 Vdout0_2ck60 = 0.9 time = 305
.meas tran vdout0_2ck60 FIND v(dout0_2) AT=305.025n

* CHECK dout0_3 Vdout0_3ck60 = 0 time = 305
.meas tran vdout0_3ck60 FIND v(dout0_3) AT=305.025n

* CHECK dout0_4 Vdout0_4ck60 = 0.9 time = 305
.meas tran vdout0_4ck60 FIND v(dout0_4) AT=305.025n

* CHECK dout0_5 Vdout0_5ck60 = 0 time = 305
.meas tran vdout0_5ck60 FIND v(dout0_5) AT=305.025n

* CHECK dout0_6 Vdout0_6ck60 = 0 time = 305
.meas tran vdout0_6ck60 FIND v(dout0_6) AT=305.025n

* CHECK dout0_7 Vdout0_7ck60 = 0.9 time = 305
.meas tran vdout0_7ck60 FIND v(dout0_7) AT=305.025n

* CHECK dout0_8 Vdout0_8ck60 = 0.9 time = 305
.meas tran vdout0_8ck60 FIND v(dout0_8) AT=305.025n

* CHECK dout0_9 Vdout0_9ck60 = 0 time = 305
.meas tran vdout0_9ck60 FIND v(dout0_9) AT=305.025n

* CHECK dout0_10 Vdout0_10ck60 = 0.9 time = 305
.meas tran vdout0_10ck60 FIND v(dout0_10) AT=305.025n

* CHECK dout0_11 Vdout0_11ck60 = 0.9 time = 305
.meas tran vdout0_11ck60 FIND v(dout0_11) AT=305.025n

* CHECK dout0_12 Vdout0_12ck60 = 0.9 time = 305
.meas tran vdout0_12ck60 FIND v(dout0_12) AT=305.025n

* CHECK dout0_13 Vdout0_13ck60 = 0.9 time = 305
.meas tran vdout0_13ck60 FIND v(dout0_13) AT=305.025n

* CHECK dout0_14 Vdout0_14ck60 = 0 time = 305
.meas tran vdout0_14ck60 FIND v(dout0_14) AT=305.025n

* CHECK dout0_15 Vdout0_15ck60 = 0.9 time = 305
.meas tran vdout0_15ck60 FIND v(dout0_15) AT=305.025n

* CHECK dout0_16 Vdout0_16ck60 = 0.9 time = 305
.meas tran vdout0_16ck60 FIND v(dout0_16) AT=305.025n

* CHECK dout0_17 Vdout0_17ck60 = 0 time = 305
.meas tran vdout0_17ck60 FIND v(dout0_17) AT=305.025n

* CHECK dout0_18 Vdout0_18ck60 = 0 time = 305
.meas tran vdout0_18ck60 FIND v(dout0_18) AT=305.025n

* CHECK dout0_19 Vdout0_19ck60 = 0 time = 305
.meas tran vdout0_19ck60 FIND v(dout0_19) AT=305.025n

* CHECK dout0_0 Vdout0_0ck61 = 0 time = 310
.meas tran vdout0_0ck61 FIND v(dout0_0) AT=310.025n

* CHECK dout0_1 Vdout0_1ck61 = 0 time = 310
.meas tran vdout0_1ck61 FIND v(dout0_1) AT=310.025n

* CHECK dout0_2 Vdout0_2ck61 = 0 time = 310
.meas tran vdout0_2ck61 FIND v(dout0_2) AT=310.025n

* CHECK dout0_3 Vdout0_3ck61 = 0 time = 310
.meas tran vdout0_3ck61 FIND v(dout0_3) AT=310.025n

* CHECK dout0_4 Vdout0_4ck61 = 0.9 time = 310
.meas tran vdout0_4ck61 FIND v(dout0_4) AT=310.025n

* CHECK dout0_5 Vdout0_5ck61 = 0.9 time = 310
.meas tran vdout0_5ck61 FIND v(dout0_5) AT=310.025n

* CHECK dout0_6 Vdout0_6ck61 = 0.9 time = 310
.meas tran vdout0_6ck61 FIND v(dout0_6) AT=310.025n

* CHECK dout0_7 Vdout0_7ck61 = 0.9 time = 310
.meas tran vdout0_7ck61 FIND v(dout0_7) AT=310.025n

* CHECK dout0_8 Vdout0_8ck61 = 0 time = 310
.meas tran vdout0_8ck61 FIND v(dout0_8) AT=310.025n

* CHECK dout0_9 Vdout0_9ck61 = 0.9 time = 310
.meas tran vdout0_9ck61 FIND v(dout0_9) AT=310.025n

* CHECK dout0_10 Vdout0_10ck61 = 0.9 time = 310
.meas tran vdout0_10ck61 FIND v(dout0_10) AT=310.025n

* CHECK dout0_11 Vdout0_11ck61 = 0.9 time = 310
.meas tran vdout0_11ck61 FIND v(dout0_11) AT=310.025n

* CHECK dout0_12 Vdout0_12ck61 = 0.9 time = 310
.meas tran vdout0_12ck61 FIND v(dout0_12) AT=310.025n

* CHECK dout0_13 Vdout0_13ck61 = 0 time = 310
.meas tran vdout0_13ck61 FIND v(dout0_13) AT=310.025n

* CHECK dout0_14 Vdout0_14ck61 = 0 time = 310
.meas tran vdout0_14ck61 FIND v(dout0_14) AT=310.025n

* CHECK dout0_15 Vdout0_15ck61 = 0.9 time = 310
.meas tran vdout0_15ck61 FIND v(dout0_15) AT=310.025n

* CHECK dout0_16 Vdout0_16ck61 = 0.9 time = 310
.meas tran vdout0_16ck61 FIND v(dout0_16) AT=310.025n

* CHECK dout0_17 Vdout0_17ck61 = 0.9 time = 310
.meas tran vdout0_17ck61 FIND v(dout0_17) AT=310.025n

* CHECK dout0_18 Vdout0_18ck61 = 0 time = 310
.meas tran vdout0_18ck61 FIND v(dout0_18) AT=310.025n

* CHECK dout0_19 Vdout0_19ck61 = 0.9 time = 310
.meas tran vdout0_19ck61 FIND v(dout0_19) AT=310.025n

* CHECK dout0_0 Vdout0_0ck62 = 0 time = 315
.meas tran vdout0_0ck62 FIND v(dout0_0) AT=315.025n

* CHECK dout0_1 Vdout0_1ck62 = 0 time = 315
.meas tran vdout0_1ck62 FIND v(dout0_1) AT=315.025n

* CHECK dout0_2 Vdout0_2ck62 = 0 time = 315
.meas tran vdout0_2ck62 FIND v(dout0_2) AT=315.025n

* CHECK dout0_3 Vdout0_3ck62 = 0.9 time = 315
.meas tran vdout0_3ck62 FIND v(dout0_3) AT=315.025n

* CHECK dout0_4 Vdout0_4ck62 = 0.9 time = 315
.meas tran vdout0_4ck62 FIND v(dout0_4) AT=315.025n

* CHECK dout0_5 Vdout0_5ck62 = 0.9 time = 315
.meas tran vdout0_5ck62 FIND v(dout0_5) AT=315.025n

* CHECK dout0_6 Vdout0_6ck62 = 0.9 time = 315
.meas tran vdout0_6ck62 FIND v(dout0_6) AT=315.025n

* CHECK dout0_7 Vdout0_7ck62 = 0 time = 315
.meas tran vdout0_7ck62 FIND v(dout0_7) AT=315.025n

* CHECK dout0_8 Vdout0_8ck62 = 0.9 time = 315
.meas tran vdout0_8ck62 FIND v(dout0_8) AT=315.025n

* CHECK dout0_9 Vdout0_9ck62 = 0 time = 315
.meas tran vdout0_9ck62 FIND v(dout0_9) AT=315.025n

* CHECK dout0_10 Vdout0_10ck62 = 0.9 time = 315
.meas tran vdout0_10ck62 FIND v(dout0_10) AT=315.025n

* CHECK dout0_11 Vdout0_11ck62 = 0.9 time = 315
.meas tran vdout0_11ck62 FIND v(dout0_11) AT=315.025n

* CHECK dout0_12 Vdout0_12ck62 = 0.9 time = 315
.meas tran vdout0_12ck62 FIND v(dout0_12) AT=315.025n

* CHECK dout0_13 Vdout0_13ck62 = 0.9 time = 315
.meas tran vdout0_13ck62 FIND v(dout0_13) AT=315.025n

* CHECK dout0_14 Vdout0_14ck62 = 0.9 time = 315
.meas tran vdout0_14ck62 FIND v(dout0_14) AT=315.025n

* CHECK dout0_15 Vdout0_15ck62 = 0 time = 315
.meas tran vdout0_15ck62 FIND v(dout0_15) AT=315.025n

* CHECK dout0_16 Vdout0_16ck62 = 0 time = 315
.meas tran vdout0_16ck62 FIND v(dout0_16) AT=315.025n

* CHECK dout0_17 Vdout0_17ck62 = 0.9 time = 315
.meas tran vdout0_17ck62 FIND v(dout0_17) AT=315.025n

* CHECK dout0_18 Vdout0_18ck62 = 0 time = 315
.meas tran vdout0_18ck62 FIND v(dout0_18) AT=315.025n

* CHECK dout0_19 Vdout0_19ck62 = 0.9 time = 315
.meas tran vdout0_19ck62 FIND v(dout0_19) AT=315.025n

* CHECK dout0_0 Vdout0_0ck63 = 0.9 time = 320
.meas tran vdout0_0ck63 FIND v(dout0_0) AT=320.025n

* CHECK dout0_1 Vdout0_1ck63 = 0.9 time = 320
.meas tran vdout0_1ck63 FIND v(dout0_1) AT=320.025n

* CHECK dout0_2 Vdout0_2ck63 = 0.9 time = 320
.meas tran vdout0_2ck63 FIND v(dout0_2) AT=320.025n

* CHECK dout0_3 Vdout0_3ck63 = 0 time = 320
.meas tran vdout0_3ck63 FIND v(dout0_3) AT=320.025n

* CHECK dout0_4 Vdout0_4ck63 = 0.9 time = 320
.meas tran vdout0_4ck63 FIND v(dout0_4) AT=320.025n

* CHECK dout0_5 Vdout0_5ck63 = 0 time = 320
.meas tran vdout0_5ck63 FIND v(dout0_5) AT=320.025n

* CHECK dout0_6 Vdout0_6ck63 = 0 time = 320
.meas tran vdout0_6ck63 FIND v(dout0_6) AT=320.025n

* CHECK dout0_7 Vdout0_7ck63 = 0.9 time = 320
.meas tran vdout0_7ck63 FIND v(dout0_7) AT=320.025n

* CHECK dout0_8 Vdout0_8ck63 = 0.9 time = 320
.meas tran vdout0_8ck63 FIND v(dout0_8) AT=320.025n

* CHECK dout0_9 Vdout0_9ck63 = 0 time = 320
.meas tran vdout0_9ck63 FIND v(dout0_9) AT=320.025n

* CHECK dout0_10 Vdout0_10ck63 = 0.9 time = 320
.meas tran vdout0_10ck63 FIND v(dout0_10) AT=320.025n

* CHECK dout0_11 Vdout0_11ck63 = 0.9 time = 320
.meas tran vdout0_11ck63 FIND v(dout0_11) AT=320.025n

* CHECK dout0_12 Vdout0_12ck63 = 0.9 time = 320
.meas tran vdout0_12ck63 FIND v(dout0_12) AT=320.025n

* CHECK dout0_13 Vdout0_13ck63 = 0.9 time = 320
.meas tran vdout0_13ck63 FIND v(dout0_13) AT=320.025n

* CHECK dout0_14 Vdout0_14ck63 = 0 time = 320
.meas tran vdout0_14ck63 FIND v(dout0_14) AT=320.025n

* CHECK dout0_15 Vdout0_15ck63 = 0.9 time = 320
.meas tran vdout0_15ck63 FIND v(dout0_15) AT=320.025n

* CHECK dout0_16 Vdout0_16ck63 = 0.9 time = 320
.meas tran vdout0_16ck63 FIND v(dout0_16) AT=320.025n

* CHECK dout0_17 Vdout0_17ck63 = 0 time = 320
.meas tran vdout0_17ck63 FIND v(dout0_17) AT=320.025n

* CHECK dout0_18 Vdout0_18ck63 = 0 time = 320
.meas tran vdout0_18ck63 FIND v(dout0_18) AT=320.025n

* CHECK dout0_19 Vdout0_19ck63 = 0 time = 320
.meas tran vdout0_19ck63 FIND v(dout0_19) AT=320.025n

* CHECK dout0_0 Vdout0_0ck65 = 0.9 time = 330
.meas tran vdout0_0ck65 FIND v(dout0_0) AT=330.025n

* CHECK dout0_1 Vdout0_1ck65 = 0.9 time = 330
.meas tran vdout0_1ck65 FIND v(dout0_1) AT=330.025n

* CHECK dout0_2 Vdout0_2ck65 = 0.9 time = 330
.meas tran vdout0_2ck65 FIND v(dout0_2) AT=330.025n

* CHECK dout0_3 Vdout0_3ck65 = 0 time = 330
.meas tran vdout0_3ck65 FIND v(dout0_3) AT=330.025n

* CHECK dout0_4 Vdout0_4ck65 = 0.9 time = 330
.meas tran vdout0_4ck65 FIND v(dout0_4) AT=330.025n

* CHECK dout0_5 Vdout0_5ck65 = 0 time = 330
.meas tran vdout0_5ck65 FIND v(dout0_5) AT=330.025n

* CHECK dout0_6 Vdout0_6ck65 = 0 time = 330
.meas tran vdout0_6ck65 FIND v(dout0_6) AT=330.025n

* CHECK dout0_7 Vdout0_7ck65 = 0.9 time = 330
.meas tran vdout0_7ck65 FIND v(dout0_7) AT=330.025n

* CHECK dout0_8 Vdout0_8ck65 = 0.9 time = 330
.meas tran vdout0_8ck65 FIND v(dout0_8) AT=330.025n

* CHECK dout0_9 Vdout0_9ck65 = 0 time = 330
.meas tran vdout0_9ck65 FIND v(dout0_9) AT=330.025n

* CHECK dout0_10 Vdout0_10ck65 = 0.9 time = 330
.meas tran vdout0_10ck65 FIND v(dout0_10) AT=330.025n

* CHECK dout0_11 Vdout0_11ck65 = 0.9 time = 330
.meas tran vdout0_11ck65 FIND v(dout0_11) AT=330.025n

* CHECK dout0_12 Vdout0_12ck65 = 0.9 time = 330
.meas tran vdout0_12ck65 FIND v(dout0_12) AT=330.025n

* CHECK dout0_13 Vdout0_13ck65 = 0.9 time = 330
.meas tran vdout0_13ck65 FIND v(dout0_13) AT=330.025n

* CHECK dout0_14 Vdout0_14ck65 = 0 time = 330
.meas tran vdout0_14ck65 FIND v(dout0_14) AT=330.025n

* CHECK dout0_15 Vdout0_15ck65 = 0.9 time = 330
.meas tran vdout0_15ck65 FIND v(dout0_15) AT=330.025n

* CHECK dout0_16 Vdout0_16ck65 = 0.9 time = 330
.meas tran vdout0_16ck65 FIND v(dout0_16) AT=330.025n

* CHECK dout0_17 Vdout0_17ck65 = 0 time = 330
.meas tran vdout0_17ck65 FIND v(dout0_17) AT=330.025n

* CHECK dout0_18 Vdout0_18ck65 = 0 time = 330
.meas tran vdout0_18ck65 FIND v(dout0_18) AT=330.025n

* CHECK dout0_19 Vdout0_19ck65 = 0 time = 330
.meas tran vdout0_19ck65 FIND v(dout0_19) AT=330.025n

* CHECK dout0_0 Vdout0_0ck66 = 0 time = 335
.meas tran vdout0_0ck66 FIND v(dout0_0) AT=335.025n

* CHECK dout0_1 Vdout0_1ck66 = 0.9 time = 335
.meas tran vdout0_1ck66 FIND v(dout0_1) AT=335.025n

* CHECK dout0_2 Vdout0_2ck66 = 0.9 time = 335
.meas tran vdout0_2ck66 FIND v(dout0_2) AT=335.025n

* CHECK dout0_3 Vdout0_3ck66 = 0.9 time = 335
.meas tran vdout0_3ck66 FIND v(dout0_3) AT=335.025n

* CHECK dout0_4 Vdout0_4ck66 = 0.9 time = 335
.meas tran vdout0_4ck66 FIND v(dout0_4) AT=335.025n

* CHECK dout0_5 Vdout0_5ck66 = 0.9 time = 335
.meas tran vdout0_5ck66 FIND v(dout0_5) AT=335.025n

* CHECK dout0_6 Vdout0_6ck66 = 0.9 time = 335
.meas tran vdout0_6ck66 FIND v(dout0_6) AT=335.025n

* CHECK dout0_7 Vdout0_7ck66 = 0.9 time = 335
.meas tran vdout0_7ck66 FIND v(dout0_7) AT=335.025n

* CHECK dout0_8 Vdout0_8ck66 = 0 time = 335
.meas tran vdout0_8ck66 FIND v(dout0_8) AT=335.025n

* CHECK dout0_9 Vdout0_9ck66 = 0.9 time = 335
.meas tran vdout0_9ck66 FIND v(dout0_9) AT=335.025n

* CHECK dout0_10 Vdout0_10ck66 = 0.9 time = 335
.meas tran vdout0_10ck66 FIND v(dout0_10) AT=335.025n

* CHECK dout0_11 Vdout0_11ck66 = 0.9 time = 335
.meas tran vdout0_11ck66 FIND v(dout0_11) AT=335.025n

* CHECK dout0_12 Vdout0_12ck66 = 0 time = 335
.meas tran vdout0_12ck66 FIND v(dout0_12) AT=335.025n

* CHECK dout0_13 Vdout0_13ck66 = 0.9 time = 335
.meas tran vdout0_13ck66 FIND v(dout0_13) AT=335.025n

* CHECK dout0_14 Vdout0_14ck66 = 0 time = 335
.meas tran vdout0_14ck66 FIND v(dout0_14) AT=335.025n

* CHECK dout0_15 Vdout0_15ck66 = 0 time = 335
.meas tran vdout0_15ck66 FIND v(dout0_15) AT=335.025n

* CHECK dout0_16 Vdout0_16ck66 = 0 time = 335
.meas tran vdout0_16ck66 FIND v(dout0_16) AT=335.025n

* CHECK dout0_17 Vdout0_17ck66 = 0.9 time = 335
.meas tran vdout0_17ck66 FIND v(dout0_17) AT=335.025n

* CHECK dout0_18 Vdout0_18ck66 = 0.9 time = 335
.meas tran vdout0_18ck66 FIND v(dout0_18) AT=335.025n

* CHECK dout0_19 Vdout0_19ck66 = 0.9 time = 335
.meas tran vdout0_19ck66 FIND v(dout0_19) AT=335.025n

* CHECK dout0_0 Vdout0_0ck67 = 0 time = 340
.meas tran vdout0_0ck67 FIND v(dout0_0) AT=340.025n

* CHECK dout0_1 Vdout0_1ck67 = 0.9 time = 340
.meas tran vdout0_1ck67 FIND v(dout0_1) AT=340.025n

* CHECK dout0_2 Vdout0_2ck67 = 0.9 time = 340
.meas tran vdout0_2ck67 FIND v(dout0_2) AT=340.025n

* CHECK dout0_3 Vdout0_3ck67 = 0.9 time = 340
.meas tran vdout0_3ck67 FIND v(dout0_3) AT=340.025n

* CHECK dout0_4 Vdout0_4ck67 = 0.9 time = 340
.meas tran vdout0_4ck67 FIND v(dout0_4) AT=340.025n

* CHECK dout0_5 Vdout0_5ck67 = 0.9 time = 340
.meas tran vdout0_5ck67 FIND v(dout0_5) AT=340.025n

* CHECK dout0_6 Vdout0_6ck67 = 0.9 time = 340
.meas tran vdout0_6ck67 FIND v(dout0_6) AT=340.025n

* CHECK dout0_7 Vdout0_7ck67 = 0.9 time = 340
.meas tran vdout0_7ck67 FIND v(dout0_7) AT=340.025n

* CHECK dout0_8 Vdout0_8ck67 = 0 time = 340
.meas tran vdout0_8ck67 FIND v(dout0_8) AT=340.025n

* CHECK dout0_9 Vdout0_9ck67 = 0.9 time = 340
.meas tran vdout0_9ck67 FIND v(dout0_9) AT=340.025n

* CHECK dout0_10 Vdout0_10ck67 = 0.9 time = 340
.meas tran vdout0_10ck67 FIND v(dout0_10) AT=340.025n

* CHECK dout0_11 Vdout0_11ck67 = 0.9 time = 340
.meas tran vdout0_11ck67 FIND v(dout0_11) AT=340.025n

* CHECK dout0_12 Vdout0_12ck67 = 0 time = 340
.meas tran vdout0_12ck67 FIND v(dout0_12) AT=340.025n

* CHECK dout0_13 Vdout0_13ck67 = 0.9 time = 340
.meas tran vdout0_13ck67 FIND v(dout0_13) AT=340.025n

* CHECK dout0_14 Vdout0_14ck67 = 0 time = 340
.meas tran vdout0_14ck67 FIND v(dout0_14) AT=340.025n

* CHECK dout0_15 Vdout0_15ck67 = 0 time = 340
.meas tran vdout0_15ck67 FIND v(dout0_15) AT=340.025n

* CHECK dout0_16 Vdout0_16ck67 = 0 time = 340
.meas tran vdout0_16ck67 FIND v(dout0_16) AT=340.025n

* CHECK dout0_17 Vdout0_17ck67 = 0.9 time = 340
.meas tran vdout0_17ck67 FIND v(dout0_17) AT=340.025n

* CHECK dout0_18 Vdout0_18ck67 = 0.9 time = 340
.meas tran vdout0_18ck67 FIND v(dout0_18) AT=340.025n

* CHECK dout0_19 Vdout0_19ck67 = 0.9 time = 340
.meas tran vdout0_19ck67 FIND v(dout0_19) AT=340.025n

* CHECK dout0_0 Vdout0_0ck69 = 0 time = 350
.meas tran vdout0_0ck69 FIND v(dout0_0) AT=350.025n

* CHECK dout0_1 Vdout0_1ck69 = 0 time = 350
.meas tran vdout0_1ck69 FIND v(dout0_1) AT=350.025n

* CHECK dout0_2 Vdout0_2ck69 = 0 time = 350
.meas tran vdout0_2ck69 FIND v(dout0_2) AT=350.025n

* CHECK dout0_3 Vdout0_3ck69 = 0.9 time = 350
.meas tran vdout0_3ck69 FIND v(dout0_3) AT=350.025n

* CHECK dout0_4 Vdout0_4ck69 = 0.9 time = 350
.meas tran vdout0_4ck69 FIND v(dout0_4) AT=350.025n

* CHECK dout0_5 Vdout0_5ck69 = 0.9 time = 350
.meas tran vdout0_5ck69 FIND v(dout0_5) AT=350.025n

* CHECK dout0_6 Vdout0_6ck69 = 0.9 time = 350
.meas tran vdout0_6ck69 FIND v(dout0_6) AT=350.025n

* CHECK dout0_7 Vdout0_7ck69 = 0 time = 350
.meas tran vdout0_7ck69 FIND v(dout0_7) AT=350.025n

* CHECK dout0_8 Vdout0_8ck69 = 0.9 time = 350
.meas tran vdout0_8ck69 FIND v(dout0_8) AT=350.025n

* CHECK dout0_9 Vdout0_9ck69 = 0 time = 350
.meas tran vdout0_9ck69 FIND v(dout0_9) AT=350.025n

* CHECK dout0_10 Vdout0_10ck69 = 0.9 time = 350
.meas tran vdout0_10ck69 FIND v(dout0_10) AT=350.025n

* CHECK dout0_11 Vdout0_11ck69 = 0.9 time = 350
.meas tran vdout0_11ck69 FIND v(dout0_11) AT=350.025n

* CHECK dout0_12 Vdout0_12ck69 = 0.9 time = 350
.meas tran vdout0_12ck69 FIND v(dout0_12) AT=350.025n

* CHECK dout0_13 Vdout0_13ck69 = 0.9 time = 350
.meas tran vdout0_13ck69 FIND v(dout0_13) AT=350.025n

* CHECK dout0_14 Vdout0_14ck69 = 0.9 time = 350
.meas tran vdout0_14ck69 FIND v(dout0_14) AT=350.025n

* CHECK dout0_15 Vdout0_15ck69 = 0 time = 350
.meas tran vdout0_15ck69 FIND v(dout0_15) AT=350.025n

* CHECK dout0_16 Vdout0_16ck69 = 0 time = 350
.meas tran vdout0_16ck69 FIND v(dout0_16) AT=350.025n

* CHECK dout0_17 Vdout0_17ck69 = 0.9 time = 350
.meas tran vdout0_17ck69 FIND v(dout0_17) AT=350.025n

* CHECK dout0_18 Vdout0_18ck69 = 0 time = 350
.meas tran vdout0_18ck69 FIND v(dout0_18) AT=350.025n

* CHECK dout0_19 Vdout0_19ck69 = 0.9 time = 350
.meas tran vdout0_19ck69 FIND v(dout0_19) AT=350.025n

* CHECK dout0_0 Vdout0_0ck74 = 0.9 time = 375
.meas tran vdout0_0ck74 FIND v(dout0_0) AT=375.025n

* CHECK dout0_1 Vdout0_1ck74 = 0.9 time = 375
.meas tran vdout0_1ck74 FIND v(dout0_1) AT=375.025n

* CHECK dout0_2 Vdout0_2ck74 = 0 time = 375
.meas tran vdout0_2ck74 FIND v(dout0_2) AT=375.025n

* CHECK dout0_3 Vdout0_3ck74 = 0.9 time = 375
.meas tran vdout0_3ck74 FIND v(dout0_3) AT=375.025n

* CHECK dout0_4 Vdout0_4ck74 = 0 time = 375
.meas tran vdout0_4ck74 FIND v(dout0_4) AT=375.025n

* CHECK dout0_5 Vdout0_5ck74 = 0.9 time = 375
.meas tran vdout0_5ck74 FIND v(dout0_5) AT=375.025n

* CHECK dout0_6 Vdout0_6ck74 = 0 time = 375
.meas tran vdout0_6ck74 FIND v(dout0_6) AT=375.025n

* CHECK dout0_7 Vdout0_7ck74 = 0 time = 375
.meas tran vdout0_7ck74 FIND v(dout0_7) AT=375.025n

* CHECK dout0_8 Vdout0_8ck74 = 0.9 time = 375
.meas tran vdout0_8ck74 FIND v(dout0_8) AT=375.025n

* CHECK dout0_9 Vdout0_9ck74 = 0 time = 375
.meas tran vdout0_9ck74 FIND v(dout0_9) AT=375.025n

* CHECK dout0_10 Vdout0_10ck74 = 0.9 time = 375
.meas tran vdout0_10ck74 FIND v(dout0_10) AT=375.025n

* CHECK dout0_11 Vdout0_11ck74 = 0 time = 375
.meas tran vdout0_11ck74 FIND v(dout0_11) AT=375.025n

* CHECK dout0_12 Vdout0_12ck74 = 0.9 time = 375
.meas tran vdout0_12ck74 FIND v(dout0_12) AT=375.025n

* CHECK dout0_13 Vdout0_13ck74 = 0 time = 375
.meas tran vdout0_13ck74 FIND v(dout0_13) AT=375.025n

* CHECK dout0_14 Vdout0_14ck74 = 0 time = 375
.meas tran vdout0_14ck74 FIND v(dout0_14) AT=375.025n

* CHECK dout0_15 Vdout0_15ck74 = 0.9 time = 375
.meas tran vdout0_15ck74 FIND v(dout0_15) AT=375.025n

* CHECK dout0_16 Vdout0_16ck74 = 0 time = 375
.meas tran vdout0_16ck74 FIND v(dout0_16) AT=375.025n

* CHECK dout0_17 Vdout0_17ck74 = 0 time = 375
.meas tran vdout0_17ck74 FIND v(dout0_17) AT=375.025n

* CHECK dout0_18 Vdout0_18ck74 = 0 time = 375
.meas tran vdout0_18ck74 FIND v(dout0_18) AT=375.025n

* CHECK dout0_19 Vdout0_19ck74 = 0 time = 375
.meas tran vdout0_19ck74 FIND v(dout0_19) AT=375.025n

* CHECK dout0_0 Vdout0_0ck78 = 0 time = 395
.meas tran vdout0_0ck78 FIND v(dout0_0) AT=395.025n

* CHECK dout0_1 Vdout0_1ck78 = 0 time = 395
.meas tran vdout0_1ck78 FIND v(dout0_1) AT=395.025n

* CHECK dout0_2 Vdout0_2ck78 = 0 time = 395
.meas tran vdout0_2ck78 FIND v(dout0_2) AT=395.025n

* CHECK dout0_3 Vdout0_3ck78 = 0 time = 395
.meas tran vdout0_3ck78 FIND v(dout0_3) AT=395.025n

* CHECK dout0_4 Vdout0_4ck78 = 0.9 time = 395
.meas tran vdout0_4ck78 FIND v(dout0_4) AT=395.025n

* CHECK dout0_5 Vdout0_5ck78 = 0.9 time = 395
.meas tran vdout0_5ck78 FIND v(dout0_5) AT=395.025n

* CHECK dout0_6 Vdout0_6ck78 = 0.9 time = 395
.meas tran vdout0_6ck78 FIND v(dout0_6) AT=395.025n

* CHECK dout0_7 Vdout0_7ck78 = 0.9 time = 395
.meas tran vdout0_7ck78 FIND v(dout0_7) AT=395.025n

* CHECK dout0_8 Vdout0_8ck78 = 0 time = 395
.meas tran vdout0_8ck78 FIND v(dout0_8) AT=395.025n

* CHECK dout0_9 Vdout0_9ck78 = 0.9 time = 395
.meas tran vdout0_9ck78 FIND v(dout0_9) AT=395.025n

* CHECK dout0_10 Vdout0_10ck78 = 0.9 time = 395
.meas tran vdout0_10ck78 FIND v(dout0_10) AT=395.025n

* CHECK dout0_11 Vdout0_11ck78 = 0.9 time = 395
.meas tran vdout0_11ck78 FIND v(dout0_11) AT=395.025n

* CHECK dout0_12 Vdout0_12ck78 = 0.9 time = 395
.meas tran vdout0_12ck78 FIND v(dout0_12) AT=395.025n

* CHECK dout0_13 Vdout0_13ck78 = 0 time = 395
.meas tran vdout0_13ck78 FIND v(dout0_13) AT=395.025n

* CHECK dout0_14 Vdout0_14ck78 = 0 time = 395
.meas tran vdout0_14ck78 FIND v(dout0_14) AT=395.025n

* CHECK dout0_15 Vdout0_15ck78 = 0.9 time = 395
.meas tran vdout0_15ck78 FIND v(dout0_15) AT=395.025n

* CHECK dout0_16 Vdout0_16ck78 = 0.9 time = 395
.meas tran vdout0_16ck78 FIND v(dout0_16) AT=395.025n

* CHECK dout0_17 Vdout0_17ck78 = 0.9 time = 395
.meas tran vdout0_17ck78 FIND v(dout0_17) AT=395.025n

* CHECK dout0_18 Vdout0_18ck78 = 0 time = 395
.meas tran vdout0_18ck78 FIND v(dout0_18) AT=395.025n

* CHECK dout0_19 Vdout0_19ck78 = 0.9 time = 395
.meas tran vdout0_19ck78 FIND v(dout0_19) AT=395.025n

* CHECK dout0_0 Vdout0_0ck80 = 0 time = 405
.meas tran vdout0_0ck80 FIND v(dout0_0) AT=405.025n

* CHECK dout0_1 Vdout0_1ck80 = 0 time = 405
.meas tran vdout0_1ck80 FIND v(dout0_1) AT=405.025n

* CHECK dout0_2 Vdout0_2ck80 = 0 time = 405
.meas tran vdout0_2ck80 FIND v(dout0_2) AT=405.025n

* CHECK dout0_3 Vdout0_3ck80 = 0 time = 405
.meas tran vdout0_3ck80 FIND v(dout0_3) AT=405.025n

* CHECK dout0_4 Vdout0_4ck80 = 0.9 time = 405
.meas tran vdout0_4ck80 FIND v(dout0_4) AT=405.025n

* CHECK dout0_5 Vdout0_5ck80 = 0.9 time = 405
.meas tran vdout0_5ck80 FIND v(dout0_5) AT=405.025n

* CHECK dout0_6 Vdout0_6ck80 = 0.9 time = 405
.meas tran vdout0_6ck80 FIND v(dout0_6) AT=405.025n

* CHECK dout0_7 Vdout0_7ck80 = 0.9 time = 405
.meas tran vdout0_7ck80 FIND v(dout0_7) AT=405.025n

* CHECK dout0_8 Vdout0_8ck80 = 0 time = 405
.meas tran vdout0_8ck80 FIND v(dout0_8) AT=405.025n

* CHECK dout0_9 Vdout0_9ck80 = 0.9 time = 405
.meas tran vdout0_9ck80 FIND v(dout0_9) AT=405.025n

* CHECK dout0_10 Vdout0_10ck80 = 0.9 time = 405
.meas tran vdout0_10ck80 FIND v(dout0_10) AT=405.025n

* CHECK dout0_11 Vdout0_11ck80 = 0.9 time = 405
.meas tran vdout0_11ck80 FIND v(dout0_11) AT=405.025n

* CHECK dout0_12 Vdout0_12ck80 = 0.9 time = 405
.meas tran vdout0_12ck80 FIND v(dout0_12) AT=405.025n

* CHECK dout0_13 Vdout0_13ck80 = 0 time = 405
.meas tran vdout0_13ck80 FIND v(dout0_13) AT=405.025n

* CHECK dout0_14 Vdout0_14ck80 = 0 time = 405
.meas tran vdout0_14ck80 FIND v(dout0_14) AT=405.025n

* CHECK dout0_15 Vdout0_15ck80 = 0.9 time = 405
.meas tran vdout0_15ck80 FIND v(dout0_15) AT=405.025n

* CHECK dout0_16 Vdout0_16ck80 = 0.9 time = 405
.meas tran vdout0_16ck80 FIND v(dout0_16) AT=405.025n

* CHECK dout0_17 Vdout0_17ck80 = 0.9 time = 405
.meas tran vdout0_17ck80 FIND v(dout0_17) AT=405.025n

* CHECK dout0_18 Vdout0_18ck80 = 0 time = 405
.meas tran vdout0_18ck80 FIND v(dout0_18) AT=405.025n

* CHECK dout0_19 Vdout0_19ck80 = 0.9 time = 405
.meas tran vdout0_19ck80 FIND v(dout0_19) AT=405.025n

* CHECK dout0_0 Vdout0_0ck83 = 0 time = 420
.meas tran vdout0_0ck83 FIND v(dout0_0) AT=420.025n

* CHECK dout0_1 Vdout0_1ck83 = 0 time = 420
.meas tran vdout0_1ck83 FIND v(dout0_1) AT=420.025n

* CHECK dout0_2 Vdout0_2ck83 = 0 time = 420
.meas tran vdout0_2ck83 FIND v(dout0_2) AT=420.025n

* CHECK dout0_3 Vdout0_3ck83 = 0 time = 420
.meas tran vdout0_3ck83 FIND v(dout0_3) AT=420.025n

* CHECK dout0_4 Vdout0_4ck83 = 0.9 time = 420
.meas tran vdout0_4ck83 FIND v(dout0_4) AT=420.025n

* CHECK dout0_5 Vdout0_5ck83 = 0.9 time = 420
.meas tran vdout0_5ck83 FIND v(dout0_5) AT=420.025n

* CHECK dout0_6 Vdout0_6ck83 = 0.9 time = 420
.meas tran vdout0_6ck83 FIND v(dout0_6) AT=420.025n

* CHECK dout0_7 Vdout0_7ck83 = 0.9 time = 420
.meas tran vdout0_7ck83 FIND v(dout0_7) AT=420.025n

* CHECK dout0_8 Vdout0_8ck83 = 0 time = 420
.meas tran vdout0_8ck83 FIND v(dout0_8) AT=420.025n

* CHECK dout0_9 Vdout0_9ck83 = 0.9 time = 420
.meas tran vdout0_9ck83 FIND v(dout0_9) AT=420.025n

* CHECK dout0_10 Vdout0_10ck83 = 0.9 time = 420
.meas tran vdout0_10ck83 FIND v(dout0_10) AT=420.025n

* CHECK dout0_11 Vdout0_11ck83 = 0.9 time = 420
.meas tran vdout0_11ck83 FIND v(dout0_11) AT=420.025n

* CHECK dout0_12 Vdout0_12ck83 = 0.9 time = 420
.meas tran vdout0_12ck83 FIND v(dout0_12) AT=420.025n

* CHECK dout0_13 Vdout0_13ck83 = 0 time = 420
.meas tran vdout0_13ck83 FIND v(dout0_13) AT=420.025n

* CHECK dout0_14 Vdout0_14ck83 = 0 time = 420
.meas tran vdout0_14ck83 FIND v(dout0_14) AT=420.025n

* CHECK dout0_15 Vdout0_15ck83 = 0.9 time = 420
.meas tran vdout0_15ck83 FIND v(dout0_15) AT=420.025n

* CHECK dout0_16 Vdout0_16ck83 = 0.9 time = 420
.meas tran vdout0_16ck83 FIND v(dout0_16) AT=420.025n

* CHECK dout0_17 Vdout0_17ck83 = 0.9 time = 420
.meas tran vdout0_17ck83 FIND v(dout0_17) AT=420.025n

* CHECK dout0_18 Vdout0_18ck83 = 0 time = 420
.meas tran vdout0_18ck83 FIND v(dout0_18) AT=420.025n

* CHECK dout0_19 Vdout0_19ck83 = 0.9 time = 420
.meas tran vdout0_19ck83 FIND v(dout0_19) AT=420.025n

* CHECK dout0_0 Vdout0_0ck86 = 0.9 time = 435
.meas tran vdout0_0ck86 FIND v(dout0_0) AT=435.025n

* CHECK dout0_1 Vdout0_1ck86 = 0.9 time = 435
.meas tran vdout0_1ck86 FIND v(dout0_1) AT=435.025n

* CHECK dout0_2 Vdout0_2ck86 = 0 time = 435
.meas tran vdout0_2ck86 FIND v(dout0_2) AT=435.025n

* CHECK dout0_3 Vdout0_3ck86 = 0.9 time = 435
.meas tran vdout0_3ck86 FIND v(dout0_3) AT=435.025n

* CHECK dout0_4 Vdout0_4ck86 = 0 time = 435
.meas tran vdout0_4ck86 FIND v(dout0_4) AT=435.025n

* CHECK dout0_5 Vdout0_5ck86 = 0.9 time = 435
.meas tran vdout0_5ck86 FIND v(dout0_5) AT=435.025n

* CHECK dout0_6 Vdout0_6ck86 = 0 time = 435
.meas tran vdout0_6ck86 FIND v(dout0_6) AT=435.025n

* CHECK dout0_7 Vdout0_7ck86 = 0 time = 435
.meas tran vdout0_7ck86 FIND v(dout0_7) AT=435.025n

* CHECK dout0_8 Vdout0_8ck86 = 0.9 time = 435
.meas tran vdout0_8ck86 FIND v(dout0_8) AT=435.025n

* CHECK dout0_9 Vdout0_9ck86 = 0 time = 435
.meas tran vdout0_9ck86 FIND v(dout0_9) AT=435.025n

* CHECK dout0_10 Vdout0_10ck86 = 0.9 time = 435
.meas tran vdout0_10ck86 FIND v(dout0_10) AT=435.025n

* CHECK dout0_11 Vdout0_11ck86 = 0 time = 435
.meas tran vdout0_11ck86 FIND v(dout0_11) AT=435.025n

* CHECK dout0_12 Vdout0_12ck86 = 0.9 time = 435
.meas tran vdout0_12ck86 FIND v(dout0_12) AT=435.025n

* CHECK dout0_13 Vdout0_13ck86 = 0 time = 435
.meas tran vdout0_13ck86 FIND v(dout0_13) AT=435.025n

* CHECK dout0_14 Vdout0_14ck86 = 0 time = 435
.meas tran vdout0_14ck86 FIND v(dout0_14) AT=435.025n

* CHECK dout0_15 Vdout0_15ck86 = 0.9 time = 435
.meas tran vdout0_15ck86 FIND v(dout0_15) AT=435.025n

* CHECK dout0_16 Vdout0_16ck86 = 0 time = 435
.meas tran vdout0_16ck86 FIND v(dout0_16) AT=435.025n

* CHECK dout0_17 Vdout0_17ck86 = 0 time = 435
.meas tran vdout0_17ck86 FIND v(dout0_17) AT=435.025n

* CHECK dout0_18 Vdout0_18ck86 = 0 time = 435
.meas tran vdout0_18ck86 FIND v(dout0_18) AT=435.025n

* CHECK dout0_19 Vdout0_19ck86 = 0 time = 435
.meas tran vdout0_19ck86 FIND v(dout0_19) AT=435.025n

* CHECK dout0_0 Vdout0_0ck88 = 0.9 time = 445
.meas tran vdout0_0ck88 FIND v(dout0_0) AT=445.025n

* CHECK dout0_1 Vdout0_1ck88 = 0.9 time = 445
.meas tran vdout0_1ck88 FIND v(dout0_1) AT=445.025n

* CHECK dout0_2 Vdout0_2ck88 = 0 time = 445
.meas tran vdout0_2ck88 FIND v(dout0_2) AT=445.025n

* CHECK dout0_3 Vdout0_3ck88 = 0 time = 445
.meas tran vdout0_3ck88 FIND v(dout0_3) AT=445.025n

* CHECK dout0_4 Vdout0_4ck88 = 0.9 time = 445
.meas tran vdout0_4ck88 FIND v(dout0_4) AT=445.025n

* CHECK dout0_5 Vdout0_5ck88 = 0.9 time = 445
.meas tran vdout0_5ck88 FIND v(dout0_5) AT=445.025n

* CHECK dout0_6 Vdout0_6ck88 = 0 time = 445
.meas tran vdout0_6ck88 FIND v(dout0_6) AT=445.025n

* CHECK dout0_7 Vdout0_7ck88 = 0.9 time = 445
.meas tran vdout0_7ck88 FIND v(dout0_7) AT=445.025n

* CHECK dout0_8 Vdout0_8ck88 = 0.9 time = 445
.meas tran vdout0_8ck88 FIND v(dout0_8) AT=445.025n

* CHECK dout0_9 Vdout0_9ck88 = 0.9 time = 445
.meas tran vdout0_9ck88 FIND v(dout0_9) AT=445.025n

* CHECK dout0_10 Vdout0_10ck88 = 0.9 time = 445
.meas tran vdout0_10ck88 FIND v(dout0_10) AT=445.025n

* CHECK dout0_11 Vdout0_11ck88 = 0.9 time = 445
.meas tran vdout0_11ck88 FIND v(dout0_11) AT=445.025n

* CHECK dout0_12 Vdout0_12ck88 = 0 time = 445
.meas tran vdout0_12ck88 FIND v(dout0_12) AT=445.025n

* CHECK dout0_13 Vdout0_13ck88 = 0 time = 445
.meas tran vdout0_13ck88 FIND v(dout0_13) AT=445.025n

* CHECK dout0_14 Vdout0_14ck88 = 0 time = 445
.meas tran vdout0_14ck88 FIND v(dout0_14) AT=445.025n

* CHECK dout0_15 Vdout0_15ck88 = 0.9 time = 445
.meas tran vdout0_15ck88 FIND v(dout0_15) AT=445.025n

* CHECK dout0_16 Vdout0_16ck88 = 0.9 time = 445
.meas tran vdout0_16ck88 FIND v(dout0_16) AT=445.025n

* CHECK dout0_17 Vdout0_17ck88 = 0 time = 445
.meas tran vdout0_17ck88 FIND v(dout0_17) AT=445.025n

* CHECK dout0_18 Vdout0_18ck88 = 0.9 time = 445
.meas tran vdout0_18ck88 FIND v(dout0_18) AT=445.025n

* CHECK dout0_19 Vdout0_19ck88 = 0.9 time = 445
.meas tran vdout0_19ck88 FIND v(dout0_19) AT=445.025n

* CHECK dout0_0 Vdout0_0ck90 = 0.9 time = 455
.meas tran vdout0_0ck90 FIND v(dout0_0) AT=455.025n

* CHECK dout0_1 Vdout0_1ck90 = 0.9 time = 455
.meas tran vdout0_1ck90 FIND v(dout0_1) AT=455.025n

* CHECK dout0_2 Vdout0_2ck90 = 0 time = 455
.meas tran vdout0_2ck90 FIND v(dout0_2) AT=455.025n

* CHECK dout0_3 Vdout0_3ck90 = 0 time = 455
.meas tran vdout0_3ck90 FIND v(dout0_3) AT=455.025n

* CHECK dout0_4 Vdout0_4ck90 = 0.9 time = 455
.meas tran vdout0_4ck90 FIND v(dout0_4) AT=455.025n

* CHECK dout0_5 Vdout0_5ck90 = 0.9 time = 455
.meas tran vdout0_5ck90 FIND v(dout0_5) AT=455.025n

* CHECK dout0_6 Vdout0_6ck90 = 0 time = 455
.meas tran vdout0_6ck90 FIND v(dout0_6) AT=455.025n

* CHECK dout0_7 Vdout0_7ck90 = 0.9 time = 455
.meas tran vdout0_7ck90 FIND v(dout0_7) AT=455.025n

* CHECK dout0_8 Vdout0_8ck90 = 0.9 time = 455
.meas tran vdout0_8ck90 FIND v(dout0_8) AT=455.025n

* CHECK dout0_9 Vdout0_9ck90 = 0.9 time = 455
.meas tran vdout0_9ck90 FIND v(dout0_9) AT=455.025n

* CHECK dout0_10 Vdout0_10ck90 = 0.9 time = 455
.meas tran vdout0_10ck90 FIND v(dout0_10) AT=455.025n

* CHECK dout0_11 Vdout0_11ck90 = 0.9 time = 455
.meas tran vdout0_11ck90 FIND v(dout0_11) AT=455.025n

* CHECK dout0_12 Vdout0_12ck90 = 0 time = 455
.meas tran vdout0_12ck90 FIND v(dout0_12) AT=455.025n

* CHECK dout0_13 Vdout0_13ck90 = 0 time = 455
.meas tran vdout0_13ck90 FIND v(dout0_13) AT=455.025n

* CHECK dout0_14 Vdout0_14ck90 = 0 time = 455
.meas tran vdout0_14ck90 FIND v(dout0_14) AT=455.025n

* CHECK dout0_15 Vdout0_15ck90 = 0.9 time = 455
.meas tran vdout0_15ck90 FIND v(dout0_15) AT=455.025n

* CHECK dout0_16 Vdout0_16ck90 = 0.9 time = 455
.meas tran vdout0_16ck90 FIND v(dout0_16) AT=455.025n

* CHECK dout0_17 Vdout0_17ck90 = 0 time = 455
.meas tran vdout0_17ck90 FIND v(dout0_17) AT=455.025n

* CHECK dout0_18 Vdout0_18ck90 = 0.9 time = 455
.meas tran vdout0_18ck90 FIND v(dout0_18) AT=455.025n

* CHECK dout0_19 Vdout0_19ck90 = 0.9 time = 455
.meas tran vdout0_19ck90 FIND v(dout0_19) AT=455.025n

* CHECK dout0_0 Vdout0_0ck92 = 0 time = 465
.meas tran vdout0_0ck92 FIND v(dout0_0) AT=465.025n

* CHECK dout0_1 Vdout0_1ck92 = 0 time = 465
.meas tran vdout0_1ck92 FIND v(dout0_1) AT=465.025n

* CHECK dout0_2 Vdout0_2ck92 = 0.9 time = 465
.meas tran vdout0_2ck92 FIND v(dout0_2) AT=465.025n

* CHECK dout0_3 Vdout0_3ck92 = 0 time = 465
.meas tran vdout0_3ck92 FIND v(dout0_3) AT=465.025n

* CHECK dout0_4 Vdout0_4ck92 = 0.9 time = 465
.meas tran vdout0_4ck92 FIND v(dout0_4) AT=465.025n

* CHECK dout0_5 Vdout0_5ck92 = 0 time = 465
.meas tran vdout0_5ck92 FIND v(dout0_5) AT=465.025n

* CHECK dout0_6 Vdout0_6ck92 = 0.9 time = 465
.meas tran vdout0_6ck92 FIND v(dout0_6) AT=465.025n

* CHECK dout0_7 Vdout0_7ck92 = 0 time = 465
.meas tran vdout0_7ck92 FIND v(dout0_7) AT=465.025n

* CHECK dout0_8 Vdout0_8ck92 = 0.9 time = 465
.meas tran vdout0_8ck92 FIND v(dout0_8) AT=465.025n

* CHECK dout0_9 Vdout0_9ck92 = 0.9 time = 465
.meas tran vdout0_9ck92 FIND v(dout0_9) AT=465.025n

* CHECK dout0_10 Vdout0_10ck92 = 0.9 time = 465
.meas tran vdout0_10ck92 FIND v(dout0_10) AT=465.025n

* CHECK dout0_11 Vdout0_11ck92 = 0 time = 465
.meas tran vdout0_11ck92 FIND v(dout0_11) AT=465.025n

* CHECK dout0_12 Vdout0_12ck92 = 0.9 time = 465
.meas tran vdout0_12ck92 FIND v(dout0_12) AT=465.025n

* CHECK dout0_13 Vdout0_13ck92 = 0.9 time = 465
.meas tran vdout0_13ck92 FIND v(dout0_13) AT=465.025n

* CHECK dout0_14 Vdout0_14ck92 = 0 time = 465
.meas tran vdout0_14ck92 FIND v(dout0_14) AT=465.025n

* CHECK dout0_15 Vdout0_15ck92 = 0 time = 465
.meas tran vdout0_15ck92 FIND v(dout0_15) AT=465.025n

* CHECK dout0_16 Vdout0_16ck92 = 0.9 time = 465
.meas tran vdout0_16ck92 FIND v(dout0_16) AT=465.025n

* CHECK dout0_17 Vdout0_17ck92 = 0.9 time = 465
.meas tran vdout0_17ck92 FIND v(dout0_17) AT=465.025n

* CHECK dout0_18 Vdout0_18ck92 = 0.9 time = 465
.meas tran vdout0_18ck92 FIND v(dout0_18) AT=465.025n

* CHECK dout0_19 Vdout0_19ck92 = 0 time = 465
.meas tran vdout0_19ck92 FIND v(dout0_19) AT=465.025n

* CHECK dout0_0 Vdout0_0ck94 = 0.9 time = 475
.meas tran vdout0_0ck94 FIND v(dout0_0) AT=475.025n

* CHECK dout0_1 Vdout0_1ck94 = 0.9 time = 475
.meas tran vdout0_1ck94 FIND v(dout0_1) AT=475.025n

* CHECK dout0_2 Vdout0_2ck94 = 0 time = 475
.meas tran vdout0_2ck94 FIND v(dout0_2) AT=475.025n

* CHECK dout0_3 Vdout0_3ck94 = 0 time = 475
.meas tran vdout0_3ck94 FIND v(dout0_3) AT=475.025n

* CHECK dout0_4 Vdout0_4ck94 = 0.9 time = 475
.meas tran vdout0_4ck94 FIND v(dout0_4) AT=475.025n

* CHECK dout0_5 Vdout0_5ck94 = 0.9 time = 475
.meas tran vdout0_5ck94 FIND v(dout0_5) AT=475.025n

* CHECK dout0_6 Vdout0_6ck94 = 0 time = 475
.meas tran vdout0_6ck94 FIND v(dout0_6) AT=475.025n

* CHECK dout0_7 Vdout0_7ck94 = 0.9 time = 475
.meas tran vdout0_7ck94 FIND v(dout0_7) AT=475.025n

* CHECK dout0_8 Vdout0_8ck94 = 0.9 time = 475
.meas tran vdout0_8ck94 FIND v(dout0_8) AT=475.025n

* CHECK dout0_9 Vdout0_9ck94 = 0.9 time = 475
.meas tran vdout0_9ck94 FIND v(dout0_9) AT=475.025n

* CHECK dout0_10 Vdout0_10ck94 = 0.9 time = 475
.meas tran vdout0_10ck94 FIND v(dout0_10) AT=475.025n

* CHECK dout0_11 Vdout0_11ck94 = 0.9 time = 475
.meas tran vdout0_11ck94 FIND v(dout0_11) AT=475.025n

* CHECK dout0_12 Vdout0_12ck94 = 0 time = 475
.meas tran vdout0_12ck94 FIND v(dout0_12) AT=475.025n

* CHECK dout0_13 Vdout0_13ck94 = 0 time = 475
.meas tran vdout0_13ck94 FIND v(dout0_13) AT=475.025n

* CHECK dout0_14 Vdout0_14ck94 = 0 time = 475
.meas tran vdout0_14ck94 FIND v(dout0_14) AT=475.025n

* CHECK dout0_15 Vdout0_15ck94 = 0.9 time = 475
.meas tran vdout0_15ck94 FIND v(dout0_15) AT=475.025n

* CHECK dout0_16 Vdout0_16ck94 = 0.9 time = 475
.meas tran vdout0_16ck94 FIND v(dout0_16) AT=475.025n

* CHECK dout0_17 Vdout0_17ck94 = 0 time = 475
.meas tran vdout0_17ck94 FIND v(dout0_17) AT=475.025n

* CHECK dout0_18 Vdout0_18ck94 = 0.9 time = 475
.meas tran vdout0_18ck94 FIND v(dout0_18) AT=475.025n

* CHECK dout0_19 Vdout0_19ck94 = 0.9 time = 475
.meas tran vdout0_19ck94 FIND v(dout0_19) AT=475.025n

* CHECK dout0_0 Vdout0_0ck95 = 0 time = 480
.meas tran vdout0_0ck95 FIND v(dout0_0) AT=480.025n

* CHECK dout0_1 Vdout0_1ck95 = 0 time = 480
.meas tran vdout0_1ck95 FIND v(dout0_1) AT=480.025n

* CHECK dout0_2 Vdout0_2ck95 = 0.9 time = 480
.meas tran vdout0_2ck95 FIND v(dout0_2) AT=480.025n

* CHECK dout0_3 Vdout0_3ck95 = 0 time = 480
.meas tran vdout0_3ck95 FIND v(dout0_3) AT=480.025n

* CHECK dout0_4 Vdout0_4ck95 = 0.9 time = 480
.meas tran vdout0_4ck95 FIND v(dout0_4) AT=480.025n

* CHECK dout0_5 Vdout0_5ck95 = 0 time = 480
.meas tran vdout0_5ck95 FIND v(dout0_5) AT=480.025n

* CHECK dout0_6 Vdout0_6ck95 = 0.9 time = 480
.meas tran vdout0_6ck95 FIND v(dout0_6) AT=480.025n

* CHECK dout0_7 Vdout0_7ck95 = 0 time = 480
.meas tran vdout0_7ck95 FIND v(dout0_7) AT=480.025n

* CHECK dout0_8 Vdout0_8ck95 = 0.9 time = 480
.meas tran vdout0_8ck95 FIND v(dout0_8) AT=480.025n

* CHECK dout0_9 Vdout0_9ck95 = 0.9 time = 480
.meas tran vdout0_9ck95 FIND v(dout0_9) AT=480.025n

* CHECK dout0_10 Vdout0_10ck95 = 0.9 time = 480
.meas tran vdout0_10ck95 FIND v(dout0_10) AT=480.025n

* CHECK dout0_11 Vdout0_11ck95 = 0 time = 480
.meas tran vdout0_11ck95 FIND v(dout0_11) AT=480.025n

* CHECK dout0_12 Vdout0_12ck95 = 0.9 time = 480
.meas tran vdout0_12ck95 FIND v(dout0_12) AT=480.025n

* CHECK dout0_13 Vdout0_13ck95 = 0.9 time = 480
.meas tran vdout0_13ck95 FIND v(dout0_13) AT=480.025n

* CHECK dout0_14 Vdout0_14ck95 = 0 time = 480
.meas tran vdout0_14ck95 FIND v(dout0_14) AT=480.025n

* CHECK dout0_15 Vdout0_15ck95 = 0 time = 480
.meas tran vdout0_15ck95 FIND v(dout0_15) AT=480.025n

* CHECK dout0_16 Vdout0_16ck95 = 0.9 time = 480
.meas tran vdout0_16ck95 FIND v(dout0_16) AT=480.025n

* CHECK dout0_17 Vdout0_17ck95 = 0.9 time = 480
.meas tran vdout0_17ck95 FIND v(dout0_17) AT=480.025n

* CHECK dout0_18 Vdout0_18ck95 = 0.9 time = 480
.meas tran vdout0_18ck95 FIND v(dout0_18) AT=480.025n

* CHECK dout0_19 Vdout0_19ck95 = 0 time = 480
.meas tran vdout0_19ck95 FIND v(dout0_19) AT=480.025n

* CHECK dout0_0 Vdout0_0ck98 = 0.9 time = 495
.meas tran vdout0_0ck98 FIND v(dout0_0) AT=495.025n

* CHECK dout0_1 Vdout0_1ck98 = 0.9 time = 495
.meas tran vdout0_1ck98 FIND v(dout0_1) AT=495.025n

* CHECK dout0_2 Vdout0_2ck98 = 0 time = 495
.meas tran vdout0_2ck98 FIND v(dout0_2) AT=495.025n

* CHECK dout0_3 Vdout0_3ck98 = 0 time = 495
.meas tran vdout0_3ck98 FIND v(dout0_3) AT=495.025n

* CHECK dout0_4 Vdout0_4ck98 = 0.9 time = 495
.meas tran vdout0_4ck98 FIND v(dout0_4) AT=495.025n

* CHECK dout0_5 Vdout0_5ck98 = 0.9 time = 495
.meas tran vdout0_5ck98 FIND v(dout0_5) AT=495.025n

* CHECK dout0_6 Vdout0_6ck98 = 0 time = 495
.meas tran vdout0_6ck98 FIND v(dout0_6) AT=495.025n

* CHECK dout0_7 Vdout0_7ck98 = 0.9 time = 495
.meas tran vdout0_7ck98 FIND v(dout0_7) AT=495.025n

* CHECK dout0_8 Vdout0_8ck98 = 0.9 time = 495
.meas tran vdout0_8ck98 FIND v(dout0_8) AT=495.025n

* CHECK dout0_9 Vdout0_9ck98 = 0.9 time = 495
.meas tran vdout0_9ck98 FIND v(dout0_9) AT=495.025n

* CHECK dout0_10 Vdout0_10ck98 = 0.9 time = 495
.meas tran vdout0_10ck98 FIND v(dout0_10) AT=495.025n

* CHECK dout0_11 Vdout0_11ck98 = 0.9 time = 495
.meas tran vdout0_11ck98 FIND v(dout0_11) AT=495.025n

* CHECK dout0_12 Vdout0_12ck98 = 0 time = 495
.meas tran vdout0_12ck98 FIND v(dout0_12) AT=495.025n

* CHECK dout0_13 Vdout0_13ck98 = 0 time = 495
.meas tran vdout0_13ck98 FIND v(dout0_13) AT=495.025n

* CHECK dout0_14 Vdout0_14ck98 = 0 time = 495
.meas tran vdout0_14ck98 FIND v(dout0_14) AT=495.025n

* CHECK dout0_15 Vdout0_15ck98 = 0.9 time = 495
.meas tran vdout0_15ck98 FIND v(dout0_15) AT=495.025n

* CHECK dout0_16 Vdout0_16ck98 = 0.9 time = 495
.meas tran vdout0_16ck98 FIND v(dout0_16) AT=495.025n

* CHECK dout0_17 Vdout0_17ck98 = 0 time = 495
.meas tran vdout0_17ck98 FIND v(dout0_17) AT=495.025n

* CHECK dout0_18 Vdout0_18ck98 = 0.9 time = 495
.meas tran vdout0_18ck98 FIND v(dout0_18) AT=495.025n

* CHECK dout0_19 Vdout0_19ck98 = 0.9 time = 495
.meas tran vdout0_19ck98 FIND v(dout0_19) AT=495.025n

* CHECK dout0_0 Vdout0_0ck100 = 0.9 time = 505
.meas tran vdout0_0ck100 FIND v(dout0_0) AT=505.025n

* CHECK dout0_1 Vdout0_1ck100 = 0 time = 505
.meas tran vdout0_1ck100 FIND v(dout0_1) AT=505.025n

* CHECK dout0_2 Vdout0_2ck100 = 0 time = 505
.meas tran vdout0_2ck100 FIND v(dout0_2) AT=505.025n

* CHECK dout0_3 Vdout0_3ck100 = 0 time = 505
.meas tran vdout0_3ck100 FIND v(dout0_3) AT=505.025n

* CHECK dout0_4 Vdout0_4ck100 = 0.9 time = 505
.meas tran vdout0_4ck100 FIND v(dout0_4) AT=505.025n

* CHECK dout0_5 Vdout0_5ck100 = 0.9 time = 505
.meas tran vdout0_5ck100 FIND v(dout0_5) AT=505.025n

* CHECK dout0_6 Vdout0_6ck100 = 0.9 time = 505
.meas tran vdout0_6ck100 FIND v(dout0_6) AT=505.025n

* CHECK dout0_7 Vdout0_7ck100 = 0.9 time = 505
.meas tran vdout0_7ck100 FIND v(dout0_7) AT=505.025n

* CHECK dout0_8 Vdout0_8ck100 = 0 time = 505
.meas tran vdout0_8ck100 FIND v(dout0_8) AT=505.025n

* CHECK dout0_9 Vdout0_9ck100 = 0.9 time = 505
.meas tran vdout0_9ck100 FIND v(dout0_9) AT=505.025n

* CHECK dout0_10 Vdout0_10ck100 = 0 time = 505
.meas tran vdout0_10ck100 FIND v(dout0_10) AT=505.025n

* CHECK dout0_11 Vdout0_11ck100 = 0.9 time = 505
.meas tran vdout0_11ck100 FIND v(dout0_11) AT=505.025n

* CHECK dout0_12 Vdout0_12ck100 = 0.9 time = 505
.meas tran vdout0_12ck100 FIND v(dout0_12) AT=505.025n

* CHECK dout0_13 Vdout0_13ck100 = 0.9 time = 505
.meas tran vdout0_13ck100 FIND v(dout0_13) AT=505.025n

* CHECK dout0_14 Vdout0_14ck100 = 0 time = 505
.meas tran vdout0_14ck100 FIND v(dout0_14) AT=505.025n

* CHECK dout0_15 Vdout0_15ck100 = 0 time = 505
.meas tran vdout0_15ck100 FIND v(dout0_15) AT=505.025n

* CHECK dout0_16 Vdout0_16ck100 = 0 time = 505
.meas tran vdout0_16ck100 FIND v(dout0_16) AT=505.025n

* CHECK dout0_17 Vdout0_17ck100 = 0.9 time = 505
.meas tran vdout0_17ck100 FIND v(dout0_17) AT=505.025n

* CHECK dout0_18 Vdout0_18ck100 = 0 time = 505
.meas tran vdout0_18ck100 FIND v(dout0_18) AT=505.025n

* CHECK dout0_19 Vdout0_19ck100 = 0.9 time = 505
.meas tran vdout0_19ck100 FIND v(dout0_19) AT=505.025n

* CHECK dout0_0 Vdout0_0ck102 = 0.9 time = 515
.meas tran vdout0_0ck102 FIND v(dout0_0) AT=515.025n

* CHECK dout0_1 Vdout0_1ck102 = 0 time = 515
.meas tran vdout0_1ck102 FIND v(dout0_1) AT=515.025n

* CHECK dout0_2 Vdout0_2ck102 = 0.9 time = 515
.meas tran vdout0_2ck102 FIND v(dout0_2) AT=515.025n

* CHECK dout0_3 Vdout0_3ck102 = 0 time = 515
.meas tran vdout0_3ck102 FIND v(dout0_3) AT=515.025n

* CHECK dout0_4 Vdout0_4ck102 = 0 time = 515
.meas tran vdout0_4ck102 FIND v(dout0_4) AT=515.025n

* CHECK dout0_5 Vdout0_5ck102 = 0 time = 515
.meas tran vdout0_5ck102 FIND v(dout0_5) AT=515.025n

* CHECK dout0_6 Vdout0_6ck102 = 0.9 time = 515
.meas tran vdout0_6ck102 FIND v(dout0_6) AT=515.025n

* CHECK dout0_7 Vdout0_7ck102 = 0.9 time = 515
.meas tran vdout0_7ck102 FIND v(dout0_7) AT=515.025n

* CHECK dout0_8 Vdout0_8ck102 = 0 time = 515
.meas tran vdout0_8ck102 FIND v(dout0_8) AT=515.025n

* CHECK dout0_9 Vdout0_9ck102 = 0.9 time = 515
.meas tran vdout0_9ck102 FIND v(dout0_9) AT=515.025n

* CHECK dout0_10 Vdout0_10ck102 = 0 time = 515
.meas tran vdout0_10ck102 FIND v(dout0_10) AT=515.025n

* CHECK dout0_11 Vdout0_11ck102 = 0.9 time = 515
.meas tran vdout0_11ck102 FIND v(dout0_11) AT=515.025n

* CHECK dout0_12 Vdout0_12ck102 = 0.9 time = 515
.meas tran vdout0_12ck102 FIND v(dout0_12) AT=515.025n

* CHECK dout0_13 Vdout0_13ck102 = 0.9 time = 515
.meas tran vdout0_13ck102 FIND v(dout0_13) AT=515.025n

* CHECK dout0_14 Vdout0_14ck102 = 0.9 time = 515
.meas tran vdout0_14ck102 FIND v(dout0_14) AT=515.025n

* CHECK dout0_15 Vdout0_15ck102 = 0 time = 515
.meas tran vdout0_15ck102 FIND v(dout0_15) AT=515.025n

* CHECK dout0_16 Vdout0_16ck102 = 0.9 time = 515
.meas tran vdout0_16ck102 FIND v(dout0_16) AT=515.025n

* CHECK dout0_17 Vdout0_17ck102 = 0 time = 515
.meas tran vdout0_17ck102 FIND v(dout0_17) AT=515.025n

* CHECK dout0_18 Vdout0_18ck102 = 0.9 time = 515
.meas tran vdout0_18ck102 FIND v(dout0_18) AT=515.025n

* CHECK dout0_19 Vdout0_19ck102 = 0.9 time = 515
.meas tran vdout0_19ck102 FIND v(dout0_19) AT=515.025n

* CHECK dout0_0 Vdout0_0ck104 = 0.9 time = 525
.meas tran vdout0_0ck104 FIND v(dout0_0) AT=525.025n

* CHECK dout0_1 Vdout0_1ck104 = 0 time = 525
.meas tran vdout0_1ck104 FIND v(dout0_1) AT=525.025n

* CHECK dout0_2 Vdout0_2ck104 = 0 time = 525
.meas tran vdout0_2ck104 FIND v(dout0_2) AT=525.025n

* CHECK dout0_3 Vdout0_3ck104 = 0.9 time = 525
.meas tran vdout0_3ck104 FIND v(dout0_3) AT=525.025n

* CHECK dout0_4 Vdout0_4ck104 = 0.9 time = 525
.meas tran vdout0_4ck104 FIND v(dout0_4) AT=525.025n

* CHECK dout0_5 Vdout0_5ck104 = 0 time = 525
.meas tran vdout0_5ck104 FIND v(dout0_5) AT=525.025n

* CHECK dout0_6 Vdout0_6ck104 = 0.9 time = 525
.meas tran vdout0_6ck104 FIND v(dout0_6) AT=525.025n

* CHECK dout0_7 Vdout0_7ck104 = 0.9 time = 525
.meas tran vdout0_7ck104 FIND v(dout0_7) AT=525.025n

* CHECK dout0_8 Vdout0_8ck104 = 0 time = 525
.meas tran vdout0_8ck104 FIND v(dout0_8) AT=525.025n

* CHECK dout0_9 Vdout0_9ck104 = 0 time = 525
.meas tran vdout0_9ck104 FIND v(dout0_9) AT=525.025n

* CHECK dout0_10 Vdout0_10ck104 = 0 time = 525
.meas tran vdout0_10ck104 FIND v(dout0_10) AT=525.025n

* CHECK dout0_11 Vdout0_11ck104 = 0 time = 525
.meas tran vdout0_11ck104 FIND v(dout0_11) AT=525.025n

* CHECK dout0_12 Vdout0_12ck104 = 0.9 time = 525
.meas tran vdout0_12ck104 FIND v(dout0_12) AT=525.025n

* CHECK dout0_13 Vdout0_13ck104 = 0.9 time = 525
.meas tran vdout0_13ck104 FIND v(dout0_13) AT=525.025n

* CHECK dout0_14 Vdout0_14ck104 = 0 time = 525
.meas tran vdout0_14ck104 FIND v(dout0_14) AT=525.025n

* CHECK dout0_15 Vdout0_15ck104 = 0.9 time = 525
.meas tran vdout0_15ck104 FIND v(dout0_15) AT=525.025n

* CHECK dout0_16 Vdout0_16ck104 = 0.9 time = 525
.meas tran vdout0_16ck104 FIND v(dout0_16) AT=525.025n

* CHECK dout0_17 Vdout0_17ck104 = 0 time = 525
.meas tran vdout0_17ck104 FIND v(dout0_17) AT=525.025n

* CHECK dout0_18 Vdout0_18ck104 = 0.9 time = 525
.meas tran vdout0_18ck104 FIND v(dout0_18) AT=525.025n

* CHECK dout0_19 Vdout0_19ck104 = 0 time = 525
.meas tran vdout0_19ck104 FIND v(dout0_19) AT=525.025n

* CHECK dout0_0 Vdout0_0ck105 = 0.9 time = 530
.meas tran vdout0_0ck105 FIND v(dout0_0) AT=530.025n

* CHECK dout0_1 Vdout0_1ck105 = 0.9 time = 530
.meas tran vdout0_1ck105 FIND v(dout0_1) AT=530.025n

* CHECK dout0_2 Vdout0_2ck105 = 0 time = 530
.meas tran vdout0_2ck105 FIND v(dout0_2) AT=530.025n

* CHECK dout0_3 Vdout0_3ck105 = 0 time = 530
.meas tran vdout0_3ck105 FIND v(dout0_3) AT=530.025n

* CHECK dout0_4 Vdout0_4ck105 = 0.9 time = 530
.meas tran vdout0_4ck105 FIND v(dout0_4) AT=530.025n

* CHECK dout0_5 Vdout0_5ck105 = 0.9 time = 530
.meas tran vdout0_5ck105 FIND v(dout0_5) AT=530.025n

* CHECK dout0_6 Vdout0_6ck105 = 0 time = 530
.meas tran vdout0_6ck105 FIND v(dout0_6) AT=530.025n

* CHECK dout0_7 Vdout0_7ck105 = 0.9 time = 530
.meas tran vdout0_7ck105 FIND v(dout0_7) AT=530.025n

* CHECK dout0_8 Vdout0_8ck105 = 0.9 time = 530
.meas tran vdout0_8ck105 FIND v(dout0_8) AT=530.025n

* CHECK dout0_9 Vdout0_9ck105 = 0.9 time = 530
.meas tran vdout0_9ck105 FIND v(dout0_9) AT=530.025n

* CHECK dout0_10 Vdout0_10ck105 = 0.9 time = 530
.meas tran vdout0_10ck105 FIND v(dout0_10) AT=530.025n

* CHECK dout0_11 Vdout0_11ck105 = 0.9 time = 530
.meas tran vdout0_11ck105 FIND v(dout0_11) AT=530.025n

* CHECK dout0_12 Vdout0_12ck105 = 0 time = 530
.meas tran vdout0_12ck105 FIND v(dout0_12) AT=530.025n

* CHECK dout0_13 Vdout0_13ck105 = 0 time = 530
.meas tran vdout0_13ck105 FIND v(dout0_13) AT=530.025n

* CHECK dout0_14 Vdout0_14ck105 = 0 time = 530
.meas tran vdout0_14ck105 FIND v(dout0_14) AT=530.025n

* CHECK dout0_15 Vdout0_15ck105 = 0.9 time = 530
.meas tran vdout0_15ck105 FIND v(dout0_15) AT=530.025n

* CHECK dout0_16 Vdout0_16ck105 = 0.9 time = 530
.meas tran vdout0_16ck105 FIND v(dout0_16) AT=530.025n

* CHECK dout0_17 Vdout0_17ck105 = 0 time = 530
.meas tran vdout0_17ck105 FIND v(dout0_17) AT=530.025n

* CHECK dout0_18 Vdout0_18ck105 = 0.9 time = 530
.meas tran vdout0_18ck105 FIND v(dout0_18) AT=530.025n

* CHECK dout0_19 Vdout0_19ck105 = 0.9 time = 530
.meas tran vdout0_19ck105 FIND v(dout0_19) AT=530.025n

* CHECK dout0_0 Vdout0_0ck106 = 0.9 time = 535
.meas tran vdout0_0ck106 FIND v(dout0_0) AT=535.025n

* CHECK dout0_1 Vdout0_1ck106 = 0 time = 535
.meas tran vdout0_1ck106 FIND v(dout0_1) AT=535.025n

* CHECK dout0_2 Vdout0_2ck106 = 0 time = 535
.meas tran vdout0_2ck106 FIND v(dout0_2) AT=535.025n

* CHECK dout0_3 Vdout0_3ck106 = 0.9 time = 535
.meas tran vdout0_3ck106 FIND v(dout0_3) AT=535.025n

* CHECK dout0_4 Vdout0_4ck106 = 0.9 time = 535
.meas tran vdout0_4ck106 FIND v(dout0_4) AT=535.025n

* CHECK dout0_5 Vdout0_5ck106 = 0 time = 535
.meas tran vdout0_5ck106 FIND v(dout0_5) AT=535.025n

* CHECK dout0_6 Vdout0_6ck106 = 0.9 time = 535
.meas tran vdout0_6ck106 FIND v(dout0_6) AT=535.025n

* CHECK dout0_7 Vdout0_7ck106 = 0.9 time = 535
.meas tran vdout0_7ck106 FIND v(dout0_7) AT=535.025n

* CHECK dout0_8 Vdout0_8ck106 = 0 time = 535
.meas tran vdout0_8ck106 FIND v(dout0_8) AT=535.025n

* CHECK dout0_9 Vdout0_9ck106 = 0 time = 535
.meas tran vdout0_9ck106 FIND v(dout0_9) AT=535.025n

* CHECK dout0_10 Vdout0_10ck106 = 0 time = 535
.meas tran vdout0_10ck106 FIND v(dout0_10) AT=535.025n

* CHECK dout0_11 Vdout0_11ck106 = 0 time = 535
.meas tran vdout0_11ck106 FIND v(dout0_11) AT=535.025n

* CHECK dout0_12 Vdout0_12ck106 = 0.9 time = 535
.meas tran vdout0_12ck106 FIND v(dout0_12) AT=535.025n

* CHECK dout0_13 Vdout0_13ck106 = 0.9 time = 535
.meas tran vdout0_13ck106 FIND v(dout0_13) AT=535.025n

* CHECK dout0_14 Vdout0_14ck106 = 0 time = 535
.meas tran vdout0_14ck106 FIND v(dout0_14) AT=535.025n

* CHECK dout0_15 Vdout0_15ck106 = 0.9 time = 535
.meas tran vdout0_15ck106 FIND v(dout0_15) AT=535.025n

* CHECK dout0_16 Vdout0_16ck106 = 0.9 time = 535
.meas tran vdout0_16ck106 FIND v(dout0_16) AT=535.025n

* CHECK dout0_17 Vdout0_17ck106 = 0 time = 535
.meas tran vdout0_17ck106 FIND v(dout0_17) AT=535.025n

* CHECK dout0_18 Vdout0_18ck106 = 0.9 time = 535
.meas tran vdout0_18ck106 FIND v(dout0_18) AT=535.025n

* CHECK dout0_19 Vdout0_19ck106 = 0 time = 535
.meas tran vdout0_19ck106 FIND v(dout0_19) AT=535.025n

* CHECK dout0_0 Vdout0_0ck107 = 0.9 time = 540
.meas tran vdout0_0ck107 FIND v(dout0_0) AT=540.025n

* CHECK dout0_1 Vdout0_1ck107 = 0 time = 540
.meas tran vdout0_1ck107 FIND v(dout0_1) AT=540.025n

* CHECK dout0_2 Vdout0_2ck107 = 0 time = 540
.meas tran vdout0_2ck107 FIND v(dout0_2) AT=540.025n

* CHECK dout0_3 Vdout0_3ck107 = 0.9 time = 540
.meas tran vdout0_3ck107 FIND v(dout0_3) AT=540.025n

* CHECK dout0_4 Vdout0_4ck107 = 0.9 time = 540
.meas tran vdout0_4ck107 FIND v(dout0_4) AT=540.025n

* CHECK dout0_5 Vdout0_5ck107 = 0 time = 540
.meas tran vdout0_5ck107 FIND v(dout0_5) AT=540.025n

* CHECK dout0_6 Vdout0_6ck107 = 0.9 time = 540
.meas tran vdout0_6ck107 FIND v(dout0_6) AT=540.025n

* CHECK dout0_7 Vdout0_7ck107 = 0.9 time = 540
.meas tran vdout0_7ck107 FIND v(dout0_7) AT=540.025n

* CHECK dout0_8 Vdout0_8ck107 = 0 time = 540
.meas tran vdout0_8ck107 FIND v(dout0_8) AT=540.025n

* CHECK dout0_9 Vdout0_9ck107 = 0 time = 540
.meas tran vdout0_9ck107 FIND v(dout0_9) AT=540.025n

* CHECK dout0_10 Vdout0_10ck107 = 0 time = 540
.meas tran vdout0_10ck107 FIND v(dout0_10) AT=540.025n

* CHECK dout0_11 Vdout0_11ck107 = 0 time = 540
.meas tran vdout0_11ck107 FIND v(dout0_11) AT=540.025n

* CHECK dout0_12 Vdout0_12ck107 = 0.9 time = 540
.meas tran vdout0_12ck107 FIND v(dout0_12) AT=540.025n

* CHECK dout0_13 Vdout0_13ck107 = 0.9 time = 540
.meas tran vdout0_13ck107 FIND v(dout0_13) AT=540.025n

* CHECK dout0_14 Vdout0_14ck107 = 0 time = 540
.meas tran vdout0_14ck107 FIND v(dout0_14) AT=540.025n

* CHECK dout0_15 Vdout0_15ck107 = 0.9 time = 540
.meas tran vdout0_15ck107 FIND v(dout0_15) AT=540.025n

* CHECK dout0_16 Vdout0_16ck107 = 0.9 time = 540
.meas tran vdout0_16ck107 FIND v(dout0_16) AT=540.025n

* CHECK dout0_17 Vdout0_17ck107 = 0 time = 540
.meas tran vdout0_17ck107 FIND v(dout0_17) AT=540.025n

* CHECK dout0_18 Vdout0_18ck107 = 0.9 time = 540
.meas tran vdout0_18ck107 FIND v(dout0_18) AT=540.025n

* CHECK dout0_19 Vdout0_19ck107 = 0 time = 540
.meas tran vdout0_19ck107 FIND v(dout0_19) AT=540.025n

* CHECK dout0_0 Vdout0_0ck109 = 0.9 time = 550
.meas tran vdout0_0ck109 FIND v(dout0_0) AT=550.025n

* CHECK dout0_1 Vdout0_1ck109 = 0 time = 550
.meas tran vdout0_1ck109 FIND v(dout0_1) AT=550.025n

* CHECK dout0_2 Vdout0_2ck109 = 0 time = 550
.meas tran vdout0_2ck109 FIND v(dout0_2) AT=550.025n

* CHECK dout0_3 Vdout0_3ck109 = 0.9 time = 550
.meas tran vdout0_3ck109 FIND v(dout0_3) AT=550.025n

* CHECK dout0_4 Vdout0_4ck109 = 0.9 time = 550
.meas tran vdout0_4ck109 FIND v(dout0_4) AT=550.025n

* CHECK dout0_5 Vdout0_5ck109 = 0 time = 550
.meas tran vdout0_5ck109 FIND v(dout0_5) AT=550.025n

* CHECK dout0_6 Vdout0_6ck109 = 0.9 time = 550
.meas tran vdout0_6ck109 FIND v(dout0_6) AT=550.025n

* CHECK dout0_7 Vdout0_7ck109 = 0.9 time = 550
.meas tran vdout0_7ck109 FIND v(dout0_7) AT=550.025n

* CHECK dout0_8 Vdout0_8ck109 = 0 time = 550
.meas tran vdout0_8ck109 FIND v(dout0_8) AT=550.025n

* CHECK dout0_9 Vdout0_9ck109 = 0 time = 550
.meas tran vdout0_9ck109 FIND v(dout0_9) AT=550.025n

* CHECK dout0_10 Vdout0_10ck109 = 0 time = 550
.meas tran vdout0_10ck109 FIND v(dout0_10) AT=550.025n

* CHECK dout0_11 Vdout0_11ck109 = 0 time = 550
.meas tran vdout0_11ck109 FIND v(dout0_11) AT=550.025n

* CHECK dout0_12 Vdout0_12ck109 = 0.9 time = 550
.meas tran vdout0_12ck109 FIND v(dout0_12) AT=550.025n

* CHECK dout0_13 Vdout0_13ck109 = 0.9 time = 550
.meas tran vdout0_13ck109 FIND v(dout0_13) AT=550.025n

* CHECK dout0_14 Vdout0_14ck109 = 0 time = 550
.meas tran vdout0_14ck109 FIND v(dout0_14) AT=550.025n

* CHECK dout0_15 Vdout0_15ck109 = 0.9 time = 550
.meas tran vdout0_15ck109 FIND v(dout0_15) AT=550.025n

* CHECK dout0_16 Vdout0_16ck109 = 0.9 time = 550
.meas tran vdout0_16ck109 FIND v(dout0_16) AT=550.025n

* CHECK dout0_17 Vdout0_17ck109 = 0 time = 550
.meas tran vdout0_17ck109 FIND v(dout0_17) AT=550.025n

* CHECK dout0_18 Vdout0_18ck109 = 0.9 time = 550
.meas tran vdout0_18ck109 FIND v(dout0_18) AT=550.025n

* CHECK dout0_19 Vdout0_19ck109 = 0 time = 550
.meas tran vdout0_19ck109 FIND v(dout0_19) AT=550.025n

* CHECK dout0_0 Vdout0_0ck115 = 0.9 time = 580
.meas tran vdout0_0ck115 FIND v(dout0_0) AT=580.025n

* CHECK dout0_1 Vdout0_1ck115 = 0 time = 580
.meas tran vdout0_1ck115 FIND v(dout0_1) AT=580.025n

* CHECK dout0_2 Vdout0_2ck115 = 0.9 time = 580
.meas tran vdout0_2ck115 FIND v(dout0_2) AT=580.025n

* CHECK dout0_3 Vdout0_3ck115 = 0 time = 580
.meas tran vdout0_3ck115 FIND v(dout0_3) AT=580.025n

* CHECK dout0_4 Vdout0_4ck115 = 0 time = 580
.meas tran vdout0_4ck115 FIND v(dout0_4) AT=580.025n

* CHECK dout0_5 Vdout0_5ck115 = 0 time = 580
.meas tran vdout0_5ck115 FIND v(dout0_5) AT=580.025n

* CHECK dout0_6 Vdout0_6ck115 = 0.9 time = 580
.meas tran vdout0_6ck115 FIND v(dout0_6) AT=580.025n

* CHECK dout0_7 Vdout0_7ck115 = 0.9 time = 580
.meas tran vdout0_7ck115 FIND v(dout0_7) AT=580.025n

* CHECK dout0_8 Vdout0_8ck115 = 0 time = 580
.meas tran vdout0_8ck115 FIND v(dout0_8) AT=580.025n

* CHECK dout0_9 Vdout0_9ck115 = 0.9 time = 580
.meas tran vdout0_9ck115 FIND v(dout0_9) AT=580.025n

* CHECK dout0_10 Vdout0_10ck115 = 0 time = 580
.meas tran vdout0_10ck115 FIND v(dout0_10) AT=580.025n

* CHECK dout0_11 Vdout0_11ck115 = 0.9 time = 580
.meas tran vdout0_11ck115 FIND v(dout0_11) AT=580.025n

* CHECK dout0_12 Vdout0_12ck115 = 0.9 time = 580
.meas tran vdout0_12ck115 FIND v(dout0_12) AT=580.025n

* CHECK dout0_13 Vdout0_13ck115 = 0.9 time = 580
.meas tran vdout0_13ck115 FIND v(dout0_13) AT=580.025n

* CHECK dout0_14 Vdout0_14ck115 = 0.9 time = 580
.meas tran vdout0_14ck115 FIND v(dout0_14) AT=580.025n

* CHECK dout0_15 Vdout0_15ck115 = 0 time = 580
.meas tran vdout0_15ck115 FIND v(dout0_15) AT=580.025n

* CHECK dout0_16 Vdout0_16ck115 = 0.9 time = 580
.meas tran vdout0_16ck115 FIND v(dout0_16) AT=580.025n

* CHECK dout0_17 Vdout0_17ck115 = 0 time = 580
.meas tran vdout0_17ck115 FIND v(dout0_17) AT=580.025n

* CHECK dout0_18 Vdout0_18ck115 = 0.9 time = 580
.meas tran vdout0_18ck115 FIND v(dout0_18) AT=580.025n

* CHECK dout0_19 Vdout0_19ck115 = 0.9 time = 580
.meas tran vdout0_19ck115 FIND v(dout0_19) AT=580.025n

* CHECK dout0_0 Vdout0_0ck116 = 0.9 time = 585
.meas tran vdout0_0ck116 FIND v(dout0_0) AT=585.025n

* CHECK dout0_1 Vdout0_1ck116 = 0 time = 585
.meas tran vdout0_1ck116 FIND v(dout0_1) AT=585.025n

* CHECK dout0_2 Vdout0_2ck116 = 0 time = 585
.meas tran vdout0_2ck116 FIND v(dout0_2) AT=585.025n

* CHECK dout0_3 Vdout0_3ck116 = 0.9 time = 585
.meas tran vdout0_3ck116 FIND v(dout0_3) AT=585.025n

* CHECK dout0_4 Vdout0_4ck116 = 0.9 time = 585
.meas tran vdout0_4ck116 FIND v(dout0_4) AT=585.025n

* CHECK dout0_5 Vdout0_5ck116 = 0 time = 585
.meas tran vdout0_5ck116 FIND v(dout0_5) AT=585.025n

* CHECK dout0_6 Vdout0_6ck116 = 0.9 time = 585
.meas tran vdout0_6ck116 FIND v(dout0_6) AT=585.025n

* CHECK dout0_7 Vdout0_7ck116 = 0.9 time = 585
.meas tran vdout0_7ck116 FIND v(dout0_7) AT=585.025n

* CHECK dout0_8 Vdout0_8ck116 = 0 time = 585
.meas tran vdout0_8ck116 FIND v(dout0_8) AT=585.025n

* CHECK dout0_9 Vdout0_9ck116 = 0 time = 585
.meas tran vdout0_9ck116 FIND v(dout0_9) AT=585.025n

* CHECK dout0_10 Vdout0_10ck116 = 0 time = 585
.meas tran vdout0_10ck116 FIND v(dout0_10) AT=585.025n

* CHECK dout0_11 Vdout0_11ck116 = 0 time = 585
.meas tran vdout0_11ck116 FIND v(dout0_11) AT=585.025n

* CHECK dout0_12 Vdout0_12ck116 = 0.9 time = 585
.meas tran vdout0_12ck116 FIND v(dout0_12) AT=585.025n

* CHECK dout0_13 Vdout0_13ck116 = 0.9 time = 585
.meas tran vdout0_13ck116 FIND v(dout0_13) AT=585.025n

* CHECK dout0_14 Vdout0_14ck116 = 0 time = 585
.meas tran vdout0_14ck116 FIND v(dout0_14) AT=585.025n

* CHECK dout0_15 Vdout0_15ck116 = 0.9 time = 585
.meas tran vdout0_15ck116 FIND v(dout0_15) AT=585.025n

* CHECK dout0_16 Vdout0_16ck116 = 0.9 time = 585
.meas tran vdout0_16ck116 FIND v(dout0_16) AT=585.025n

* CHECK dout0_17 Vdout0_17ck116 = 0 time = 585
.meas tran vdout0_17ck116 FIND v(dout0_17) AT=585.025n

* CHECK dout0_18 Vdout0_18ck116 = 0.9 time = 585
.meas tran vdout0_18ck116 FIND v(dout0_18) AT=585.025n

* CHECK dout0_19 Vdout0_19ck116 = 0 time = 585
.meas tran vdout0_19ck116 FIND v(dout0_19) AT=585.025n

* CHECK dout0_0 Vdout0_0ck118 = 0 time = 595
.meas tran vdout0_0ck118 FIND v(dout0_0) AT=595.025n

* CHECK dout0_1 Vdout0_1ck118 = 0 time = 595
.meas tran vdout0_1ck118 FIND v(dout0_1) AT=595.025n

* CHECK dout0_2 Vdout0_2ck118 = 0 time = 595
.meas tran vdout0_2ck118 FIND v(dout0_2) AT=595.025n

* CHECK dout0_3 Vdout0_3ck118 = 0.9 time = 595
.meas tran vdout0_3ck118 FIND v(dout0_3) AT=595.025n

* CHECK dout0_4 Vdout0_4ck118 = 0.9 time = 595
.meas tran vdout0_4ck118 FIND v(dout0_4) AT=595.025n

* CHECK dout0_5 Vdout0_5ck118 = 0 time = 595
.meas tran vdout0_5ck118 FIND v(dout0_5) AT=595.025n

* CHECK dout0_6 Vdout0_6ck118 = 0 time = 595
.meas tran vdout0_6ck118 FIND v(dout0_6) AT=595.025n

* CHECK dout0_7 Vdout0_7ck118 = 0 time = 595
.meas tran vdout0_7ck118 FIND v(dout0_7) AT=595.025n

* CHECK dout0_8 Vdout0_8ck118 = 0 time = 595
.meas tran vdout0_8ck118 FIND v(dout0_8) AT=595.025n

* CHECK dout0_9 Vdout0_9ck118 = 0 time = 595
.meas tran vdout0_9ck118 FIND v(dout0_9) AT=595.025n

* CHECK dout0_10 Vdout0_10ck118 = 0.9 time = 595
.meas tran vdout0_10ck118 FIND v(dout0_10) AT=595.025n

* CHECK dout0_11 Vdout0_11ck118 = 0 time = 595
.meas tran vdout0_11ck118 FIND v(dout0_11) AT=595.025n

* CHECK dout0_12 Vdout0_12ck118 = 0 time = 595
.meas tran vdout0_12ck118 FIND v(dout0_12) AT=595.025n

* CHECK dout0_13 Vdout0_13ck118 = 0.9 time = 595
.meas tran vdout0_13ck118 FIND v(dout0_13) AT=595.025n

* CHECK dout0_14 Vdout0_14ck118 = 0 time = 595
.meas tran vdout0_14ck118 FIND v(dout0_14) AT=595.025n

* CHECK dout0_15 Vdout0_15ck118 = 0 time = 595
.meas tran vdout0_15ck118 FIND v(dout0_15) AT=595.025n

* CHECK dout0_16 Vdout0_16ck118 = 0.9 time = 595
.meas tran vdout0_16ck118 FIND v(dout0_16) AT=595.025n

* CHECK dout0_17 Vdout0_17ck118 = 0.9 time = 595
.meas tran vdout0_17ck118 FIND v(dout0_17) AT=595.025n

* CHECK dout0_18 Vdout0_18ck118 = 0.9 time = 595
.meas tran vdout0_18ck118 FIND v(dout0_18) AT=595.025n

* CHECK dout0_19 Vdout0_19ck118 = 0.9 time = 595
.meas tran vdout0_19ck118 FIND v(dout0_19) AT=595.025n

* CHECK dout0_0 Vdout0_0ck119 = 0 time = 600
.meas tran vdout0_0ck119 FIND v(dout0_0) AT=600.025n

* CHECK dout0_1 Vdout0_1ck119 = 0 time = 600
.meas tran vdout0_1ck119 FIND v(dout0_1) AT=600.025n

* CHECK dout0_2 Vdout0_2ck119 = 0 time = 600
.meas tran vdout0_2ck119 FIND v(dout0_2) AT=600.025n

* CHECK dout0_3 Vdout0_3ck119 = 0.9 time = 600
.meas tran vdout0_3ck119 FIND v(dout0_3) AT=600.025n

* CHECK dout0_4 Vdout0_4ck119 = 0.9 time = 600
.meas tran vdout0_4ck119 FIND v(dout0_4) AT=600.025n

* CHECK dout0_5 Vdout0_5ck119 = 0 time = 600
.meas tran vdout0_5ck119 FIND v(dout0_5) AT=600.025n

* CHECK dout0_6 Vdout0_6ck119 = 0 time = 600
.meas tran vdout0_6ck119 FIND v(dout0_6) AT=600.025n

* CHECK dout0_7 Vdout0_7ck119 = 0 time = 600
.meas tran vdout0_7ck119 FIND v(dout0_7) AT=600.025n

* CHECK dout0_8 Vdout0_8ck119 = 0 time = 600
.meas tran vdout0_8ck119 FIND v(dout0_8) AT=600.025n

* CHECK dout0_9 Vdout0_9ck119 = 0 time = 600
.meas tran vdout0_9ck119 FIND v(dout0_9) AT=600.025n

* CHECK dout0_10 Vdout0_10ck119 = 0.9 time = 600
.meas tran vdout0_10ck119 FIND v(dout0_10) AT=600.025n

* CHECK dout0_11 Vdout0_11ck119 = 0 time = 600
.meas tran vdout0_11ck119 FIND v(dout0_11) AT=600.025n

* CHECK dout0_12 Vdout0_12ck119 = 0 time = 600
.meas tran vdout0_12ck119 FIND v(dout0_12) AT=600.025n

* CHECK dout0_13 Vdout0_13ck119 = 0.9 time = 600
.meas tran vdout0_13ck119 FIND v(dout0_13) AT=600.025n

* CHECK dout0_14 Vdout0_14ck119 = 0 time = 600
.meas tran vdout0_14ck119 FIND v(dout0_14) AT=600.025n

* CHECK dout0_15 Vdout0_15ck119 = 0 time = 600
.meas tran vdout0_15ck119 FIND v(dout0_15) AT=600.025n

* CHECK dout0_16 Vdout0_16ck119 = 0.9 time = 600
.meas tran vdout0_16ck119 FIND v(dout0_16) AT=600.025n

* CHECK dout0_17 Vdout0_17ck119 = 0.9 time = 600
.meas tran vdout0_17ck119 FIND v(dout0_17) AT=600.025n

* CHECK dout0_18 Vdout0_18ck119 = 0.9 time = 600
.meas tran vdout0_18ck119 FIND v(dout0_18) AT=600.025n

* CHECK dout0_19 Vdout0_19ck119 = 0.9 time = 600
.meas tran vdout0_19ck119 FIND v(dout0_19) AT=600.025n

* CHECK dout0_0 Vdout0_0ck123 = 0.9 time = 620
.meas tran vdout0_0ck123 FIND v(dout0_0) AT=620.025n

* CHECK dout0_1 Vdout0_1ck123 = 0 time = 620
.meas tran vdout0_1ck123 FIND v(dout0_1) AT=620.025n

* CHECK dout0_2 Vdout0_2ck123 = 0 time = 620
.meas tran vdout0_2ck123 FIND v(dout0_2) AT=620.025n

* CHECK dout0_3 Vdout0_3ck123 = 0.9 time = 620
.meas tran vdout0_3ck123 FIND v(dout0_3) AT=620.025n

* CHECK dout0_4 Vdout0_4ck123 = 0.9 time = 620
.meas tran vdout0_4ck123 FIND v(dout0_4) AT=620.025n

* CHECK dout0_5 Vdout0_5ck123 = 0 time = 620
.meas tran vdout0_5ck123 FIND v(dout0_5) AT=620.025n

* CHECK dout0_6 Vdout0_6ck123 = 0.9 time = 620
.meas tran vdout0_6ck123 FIND v(dout0_6) AT=620.025n

* CHECK dout0_7 Vdout0_7ck123 = 0.9 time = 620
.meas tran vdout0_7ck123 FIND v(dout0_7) AT=620.025n

* CHECK dout0_8 Vdout0_8ck123 = 0 time = 620
.meas tran vdout0_8ck123 FIND v(dout0_8) AT=620.025n

* CHECK dout0_9 Vdout0_9ck123 = 0 time = 620
.meas tran vdout0_9ck123 FIND v(dout0_9) AT=620.025n

* CHECK dout0_10 Vdout0_10ck123 = 0 time = 620
.meas tran vdout0_10ck123 FIND v(dout0_10) AT=620.025n

* CHECK dout0_11 Vdout0_11ck123 = 0 time = 620
.meas tran vdout0_11ck123 FIND v(dout0_11) AT=620.025n

* CHECK dout0_12 Vdout0_12ck123 = 0.9 time = 620
.meas tran vdout0_12ck123 FIND v(dout0_12) AT=620.025n

* CHECK dout0_13 Vdout0_13ck123 = 0.9 time = 620
.meas tran vdout0_13ck123 FIND v(dout0_13) AT=620.025n

* CHECK dout0_14 Vdout0_14ck123 = 0 time = 620
.meas tran vdout0_14ck123 FIND v(dout0_14) AT=620.025n

* CHECK dout0_15 Vdout0_15ck123 = 0.9 time = 620
.meas tran vdout0_15ck123 FIND v(dout0_15) AT=620.025n

* CHECK dout0_16 Vdout0_16ck123 = 0.9 time = 620
.meas tran vdout0_16ck123 FIND v(dout0_16) AT=620.025n

* CHECK dout0_17 Vdout0_17ck123 = 0 time = 620
.meas tran vdout0_17ck123 FIND v(dout0_17) AT=620.025n

* CHECK dout0_18 Vdout0_18ck123 = 0.9 time = 620
.meas tran vdout0_18ck123 FIND v(dout0_18) AT=620.025n

* CHECK dout0_19 Vdout0_19ck123 = 0 time = 620
.meas tran vdout0_19ck123 FIND v(dout0_19) AT=620.025n

* CHECK dout0_0 Vdout0_0ck125 = 0.9 time = 630
.meas tran vdout0_0ck125 FIND v(dout0_0) AT=630.025n

* CHECK dout0_1 Vdout0_1ck125 = 0 time = 630
.meas tran vdout0_1ck125 FIND v(dout0_1) AT=630.025n

* CHECK dout0_2 Vdout0_2ck125 = 0 time = 630
.meas tran vdout0_2ck125 FIND v(dout0_2) AT=630.025n

* CHECK dout0_3 Vdout0_3ck125 = 0.9 time = 630
.meas tran vdout0_3ck125 FIND v(dout0_3) AT=630.025n

* CHECK dout0_4 Vdout0_4ck125 = 0.9 time = 630
.meas tran vdout0_4ck125 FIND v(dout0_4) AT=630.025n

* CHECK dout0_5 Vdout0_5ck125 = 0 time = 630
.meas tran vdout0_5ck125 FIND v(dout0_5) AT=630.025n

* CHECK dout0_6 Vdout0_6ck125 = 0.9 time = 630
.meas tran vdout0_6ck125 FIND v(dout0_6) AT=630.025n

* CHECK dout0_7 Vdout0_7ck125 = 0.9 time = 630
.meas tran vdout0_7ck125 FIND v(dout0_7) AT=630.025n

* CHECK dout0_8 Vdout0_8ck125 = 0 time = 630
.meas tran vdout0_8ck125 FIND v(dout0_8) AT=630.025n

* CHECK dout0_9 Vdout0_9ck125 = 0 time = 630
.meas tran vdout0_9ck125 FIND v(dout0_9) AT=630.025n

* CHECK dout0_10 Vdout0_10ck125 = 0 time = 630
.meas tran vdout0_10ck125 FIND v(dout0_10) AT=630.025n

* CHECK dout0_11 Vdout0_11ck125 = 0 time = 630
.meas tran vdout0_11ck125 FIND v(dout0_11) AT=630.025n

* CHECK dout0_12 Vdout0_12ck125 = 0.9 time = 630
.meas tran vdout0_12ck125 FIND v(dout0_12) AT=630.025n

* CHECK dout0_13 Vdout0_13ck125 = 0.9 time = 630
.meas tran vdout0_13ck125 FIND v(dout0_13) AT=630.025n

* CHECK dout0_14 Vdout0_14ck125 = 0 time = 630
.meas tran vdout0_14ck125 FIND v(dout0_14) AT=630.025n

* CHECK dout0_15 Vdout0_15ck125 = 0.9 time = 630
.meas tran vdout0_15ck125 FIND v(dout0_15) AT=630.025n

* CHECK dout0_16 Vdout0_16ck125 = 0.9 time = 630
.meas tran vdout0_16ck125 FIND v(dout0_16) AT=630.025n

* CHECK dout0_17 Vdout0_17ck125 = 0 time = 630
.meas tran vdout0_17ck125 FIND v(dout0_17) AT=630.025n

* CHECK dout0_18 Vdout0_18ck125 = 0.9 time = 630
.meas tran vdout0_18ck125 FIND v(dout0_18) AT=630.025n

* CHECK dout0_19 Vdout0_19ck125 = 0 time = 630
.meas tran vdout0_19ck125 FIND v(dout0_19) AT=630.025n

* CHECK dout0_0 Vdout0_0ck131 = 0 time = 660
.meas tran vdout0_0ck131 FIND v(dout0_0) AT=660.025n

* CHECK dout0_1 Vdout0_1ck131 = 0.9 time = 660
.meas tran vdout0_1ck131 FIND v(dout0_1) AT=660.025n

* CHECK dout0_2 Vdout0_2ck131 = 0.9 time = 660
.meas tran vdout0_2ck131 FIND v(dout0_2) AT=660.025n

* CHECK dout0_3 Vdout0_3ck131 = 0.9 time = 660
.meas tran vdout0_3ck131 FIND v(dout0_3) AT=660.025n

* CHECK dout0_4 Vdout0_4ck131 = 0.9 time = 660
.meas tran vdout0_4ck131 FIND v(dout0_4) AT=660.025n

* CHECK dout0_5 Vdout0_5ck131 = 0 time = 660
.meas tran vdout0_5ck131 FIND v(dout0_5) AT=660.025n

* CHECK dout0_6 Vdout0_6ck131 = 0 time = 660
.meas tran vdout0_6ck131 FIND v(dout0_6) AT=660.025n

* CHECK dout0_7 Vdout0_7ck131 = 0 time = 660
.meas tran vdout0_7ck131 FIND v(dout0_7) AT=660.025n

* CHECK dout0_8 Vdout0_8ck131 = 0.9 time = 660
.meas tran vdout0_8ck131 FIND v(dout0_8) AT=660.025n

* CHECK dout0_9 Vdout0_9ck131 = 0 time = 660
.meas tran vdout0_9ck131 FIND v(dout0_9) AT=660.025n

* CHECK dout0_10 Vdout0_10ck131 = 0 time = 660
.meas tran vdout0_10ck131 FIND v(dout0_10) AT=660.025n

* CHECK dout0_11 Vdout0_11ck131 = 0 time = 660
.meas tran vdout0_11ck131 FIND v(dout0_11) AT=660.025n

* CHECK dout0_12 Vdout0_12ck131 = 0.9 time = 660
.meas tran vdout0_12ck131 FIND v(dout0_12) AT=660.025n

* CHECK dout0_13 Vdout0_13ck131 = 0 time = 660
.meas tran vdout0_13ck131 FIND v(dout0_13) AT=660.025n

* CHECK dout0_14 Vdout0_14ck131 = 0 time = 660
.meas tran vdout0_14ck131 FIND v(dout0_14) AT=660.025n

* CHECK dout0_15 Vdout0_15ck131 = 0.9 time = 660
.meas tran vdout0_15ck131 FIND v(dout0_15) AT=660.025n

* CHECK dout0_16 Vdout0_16ck131 = 0.9 time = 660
.meas tran vdout0_16ck131 FIND v(dout0_16) AT=660.025n

* CHECK dout0_17 Vdout0_17ck131 = 0 time = 660
.meas tran vdout0_17ck131 FIND v(dout0_17) AT=660.025n

* CHECK dout0_18 Vdout0_18ck131 = 0 time = 660
.meas tran vdout0_18ck131 FIND v(dout0_18) AT=660.025n

* CHECK dout0_19 Vdout0_19ck131 = 0 time = 660
.meas tran vdout0_19ck131 FIND v(dout0_19) AT=660.025n

* CHECK dout0_0 Vdout0_0ck133 = 0 time = 670
.meas tran vdout0_0ck133 FIND v(dout0_0) AT=670.025n

* CHECK dout0_1 Vdout0_1ck133 = 0 time = 670
.meas tran vdout0_1ck133 FIND v(dout0_1) AT=670.025n

* CHECK dout0_2 Vdout0_2ck133 = 0 time = 670
.meas tran vdout0_2ck133 FIND v(dout0_2) AT=670.025n

* CHECK dout0_3 Vdout0_3ck133 = 0.9 time = 670
.meas tran vdout0_3ck133 FIND v(dout0_3) AT=670.025n

* CHECK dout0_4 Vdout0_4ck133 = 0 time = 670
.meas tran vdout0_4ck133 FIND v(dout0_4) AT=670.025n

* CHECK dout0_5 Vdout0_5ck133 = 0 time = 670
.meas tran vdout0_5ck133 FIND v(dout0_5) AT=670.025n

* CHECK dout0_6 Vdout0_6ck133 = 0.9 time = 670
.meas tran vdout0_6ck133 FIND v(dout0_6) AT=670.025n

* CHECK dout0_7 Vdout0_7ck133 = 0.9 time = 670
.meas tran vdout0_7ck133 FIND v(dout0_7) AT=670.025n

* CHECK dout0_8 Vdout0_8ck133 = 0 time = 670
.meas tran vdout0_8ck133 FIND v(dout0_8) AT=670.025n

* CHECK dout0_9 Vdout0_9ck133 = 0 time = 670
.meas tran vdout0_9ck133 FIND v(dout0_9) AT=670.025n

* CHECK dout0_10 Vdout0_10ck133 = 0.9 time = 670
.meas tran vdout0_10ck133 FIND v(dout0_10) AT=670.025n

* CHECK dout0_11 Vdout0_11ck133 = 0 time = 670
.meas tran vdout0_11ck133 FIND v(dout0_11) AT=670.025n

* CHECK dout0_12 Vdout0_12ck133 = 0 time = 670
.meas tran vdout0_12ck133 FIND v(dout0_12) AT=670.025n

* CHECK dout0_13 Vdout0_13ck133 = 0.9 time = 670
.meas tran vdout0_13ck133 FIND v(dout0_13) AT=670.025n

* CHECK dout0_14 Vdout0_14ck133 = 0 time = 670
.meas tran vdout0_14ck133 FIND v(dout0_14) AT=670.025n

* CHECK dout0_15 Vdout0_15ck133 = 0.9 time = 670
.meas tran vdout0_15ck133 FIND v(dout0_15) AT=670.025n

* CHECK dout0_16 Vdout0_16ck133 = 0 time = 670
.meas tran vdout0_16ck133 FIND v(dout0_16) AT=670.025n

* CHECK dout0_17 Vdout0_17ck133 = 0 time = 670
.meas tran vdout0_17ck133 FIND v(dout0_17) AT=670.025n

* CHECK dout0_18 Vdout0_18ck133 = 0 time = 670
.meas tran vdout0_18ck133 FIND v(dout0_18) AT=670.025n

* CHECK dout0_19 Vdout0_19ck133 = 0 time = 670
.meas tran vdout0_19ck133 FIND v(dout0_19) AT=670.025n

* CHECK dout0_0 Vdout0_0ck136 = 0 time = 685
.meas tran vdout0_0ck136 FIND v(dout0_0) AT=685.025n

* CHECK dout0_1 Vdout0_1ck136 = 0 time = 685
.meas tran vdout0_1ck136 FIND v(dout0_1) AT=685.025n

* CHECK dout0_2 Vdout0_2ck136 = 0.9 time = 685
.meas tran vdout0_2ck136 FIND v(dout0_2) AT=685.025n

* CHECK dout0_3 Vdout0_3ck136 = 0 time = 685
.meas tran vdout0_3ck136 FIND v(dout0_3) AT=685.025n

* CHECK dout0_4 Vdout0_4ck136 = 0.9 time = 685
.meas tran vdout0_4ck136 FIND v(dout0_4) AT=685.025n

* CHECK dout0_5 Vdout0_5ck136 = 0 time = 685
.meas tran vdout0_5ck136 FIND v(dout0_5) AT=685.025n

* CHECK dout0_6 Vdout0_6ck136 = 0 time = 685
.meas tran vdout0_6ck136 FIND v(dout0_6) AT=685.025n

* CHECK dout0_7 Vdout0_7ck136 = 0 time = 685
.meas tran vdout0_7ck136 FIND v(dout0_7) AT=685.025n

* CHECK dout0_8 Vdout0_8ck136 = 0 time = 685
.meas tran vdout0_8ck136 FIND v(dout0_8) AT=685.025n

* CHECK dout0_9 Vdout0_9ck136 = 0 time = 685
.meas tran vdout0_9ck136 FIND v(dout0_9) AT=685.025n

* CHECK dout0_10 Vdout0_10ck136 = 0.9 time = 685
.meas tran vdout0_10ck136 FIND v(dout0_10) AT=685.025n

* CHECK dout0_11 Vdout0_11ck136 = 0 time = 685
.meas tran vdout0_11ck136 FIND v(dout0_11) AT=685.025n

* CHECK dout0_12 Vdout0_12ck136 = 0 time = 685
.meas tran vdout0_12ck136 FIND v(dout0_12) AT=685.025n

* CHECK dout0_13 Vdout0_13ck136 = 0 time = 685
.meas tran vdout0_13ck136 FIND v(dout0_13) AT=685.025n

* CHECK dout0_14 Vdout0_14ck136 = 0 time = 685
.meas tran vdout0_14ck136 FIND v(dout0_14) AT=685.025n

* CHECK dout0_15 Vdout0_15ck136 = 0.9 time = 685
.meas tran vdout0_15ck136 FIND v(dout0_15) AT=685.025n

* CHECK dout0_16 Vdout0_16ck136 = 0.9 time = 685
.meas tran vdout0_16ck136 FIND v(dout0_16) AT=685.025n

* CHECK dout0_17 Vdout0_17ck136 = 0.9 time = 685
.meas tran vdout0_17ck136 FIND v(dout0_17) AT=685.025n

* CHECK dout0_18 Vdout0_18ck136 = 0.9 time = 685
.meas tran vdout0_18ck136 FIND v(dout0_18) AT=685.025n

* CHECK dout0_19 Vdout0_19ck136 = 0.9 time = 685
.meas tran vdout0_19ck136 FIND v(dout0_19) AT=685.025n

* CHECK dout0_0 Vdout0_0ck140 = 0 time = 705
.meas tran vdout0_0ck140 FIND v(dout0_0) AT=705.025n

* CHECK dout0_1 Vdout0_1ck140 = 0 time = 705
.meas tran vdout0_1ck140 FIND v(dout0_1) AT=705.025n

* CHECK dout0_2 Vdout0_2ck140 = 0.9 time = 705
.meas tran vdout0_2ck140 FIND v(dout0_2) AT=705.025n

* CHECK dout0_3 Vdout0_3ck140 = 0.9 time = 705
.meas tran vdout0_3ck140 FIND v(dout0_3) AT=705.025n

* CHECK dout0_4 Vdout0_4ck140 = 0.9 time = 705
.meas tran vdout0_4ck140 FIND v(dout0_4) AT=705.025n

* CHECK dout0_5 Vdout0_5ck140 = 0.9 time = 705
.meas tran vdout0_5ck140 FIND v(dout0_5) AT=705.025n

* CHECK dout0_6 Vdout0_6ck140 = 0 time = 705
.meas tran vdout0_6ck140 FIND v(dout0_6) AT=705.025n

* CHECK dout0_7 Vdout0_7ck140 = 0.9 time = 705
.meas tran vdout0_7ck140 FIND v(dout0_7) AT=705.025n

* CHECK dout0_8 Vdout0_8ck140 = 0.9 time = 705
.meas tran vdout0_8ck140 FIND v(dout0_8) AT=705.025n

* CHECK dout0_9 Vdout0_9ck140 = 0 time = 705
.meas tran vdout0_9ck140 FIND v(dout0_9) AT=705.025n

* CHECK dout0_10 Vdout0_10ck140 = 0.9 time = 705
.meas tran vdout0_10ck140 FIND v(dout0_10) AT=705.025n

* CHECK dout0_11 Vdout0_11ck140 = 0.9 time = 705
.meas tran vdout0_11ck140 FIND v(dout0_11) AT=705.025n

* CHECK dout0_12 Vdout0_12ck140 = 0.9 time = 705
.meas tran vdout0_12ck140 FIND v(dout0_12) AT=705.025n

* CHECK dout0_13 Vdout0_13ck140 = 0.9 time = 705
.meas tran vdout0_13ck140 FIND v(dout0_13) AT=705.025n

* CHECK dout0_14 Vdout0_14ck140 = 0.9 time = 705
.meas tran vdout0_14ck140 FIND v(dout0_14) AT=705.025n

* CHECK dout0_15 Vdout0_15ck140 = 0 time = 705
.meas tran vdout0_15ck140 FIND v(dout0_15) AT=705.025n

* CHECK dout0_16 Vdout0_16ck140 = 0.9 time = 705
.meas tran vdout0_16ck140 FIND v(dout0_16) AT=705.025n

* CHECK dout0_17 Vdout0_17ck140 = 0.9 time = 705
.meas tran vdout0_17ck140 FIND v(dout0_17) AT=705.025n

* CHECK dout0_18 Vdout0_18ck140 = 0 time = 705
.meas tran vdout0_18ck140 FIND v(dout0_18) AT=705.025n

* CHECK dout0_19 Vdout0_19ck140 = 0 time = 705
.meas tran vdout0_19ck140 FIND v(dout0_19) AT=705.025n

* CHECK dout0_0 Vdout0_0ck141 = 0 time = 710
.meas tran vdout0_0ck141 FIND v(dout0_0) AT=710.025n

* CHECK dout0_1 Vdout0_1ck141 = 0 time = 710
.meas tran vdout0_1ck141 FIND v(dout0_1) AT=710.025n

* CHECK dout0_2 Vdout0_2ck141 = 0.9 time = 710
.meas tran vdout0_2ck141 FIND v(dout0_2) AT=710.025n

* CHECK dout0_3 Vdout0_3ck141 = 0.9 time = 710
.meas tran vdout0_3ck141 FIND v(dout0_3) AT=710.025n

* CHECK dout0_4 Vdout0_4ck141 = 0.9 time = 710
.meas tran vdout0_4ck141 FIND v(dout0_4) AT=710.025n

* CHECK dout0_5 Vdout0_5ck141 = 0.9 time = 710
.meas tran vdout0_5ck141 FIND v(dout0_5) AT=710.025n

* CHECK dout0_6 Vdout0_6ck141 = 0 time = 710
.meas tran vdout0_6ck141 FIND v(dout0_6) AT=710.025n

* CHECK dout0_7 Vdout0_7ck141 = 0.9 time = 710
.meas tran vdout0_7ck141 FIND v(dout0_7) AT=710.025n

* CHECK dout0_8 Vdout0_8ck141 = 0.9 time = 710
.meas tran vdout0_8ck141 FIND v(dout0_8) AT=710.025n

* CHECK dout0_9 Vdout0_9ck141 = 0 time = 710
.meas tran vdout0_9ck141 FIND v(dout0_9) AT=710.025n

* CHECK dout0_10 Vdout0_10ck141 = 0.9 time = 710
.meas tran vdout0_10ck141 FIND v(dout0_10) AT=710.025n

* CHECK dout0_11 Vdout0_11ck141 = 0.9 time = 710
.meas tran vdout0_11ck141 FIND v(dout0_11) AT=710.025n

* CHECK dout0_12 Vdout0_12ck141 = 0.9 time = 710
.meas tran vdout0_12ck141 FIND v(dout0_12) AT=710.025n

* CHECK dout0_13 Vdout0_13ck141 = 0.9 time = 710
.meas tran vdout0_13ck141 FIND v(dout0_13) AT=710.025n

* CHECK dout0_14 Vdout0_14ck141 = 0.9 time = 710
.meas tran vdout0_14ck141 FIND v(dout0_14) AT=710.025n

* CHECK dout0_15 Vdout0_15ck141 = 0 time = 710
.meas tran vdout0_15ck141 FIND v(dout0_15) AT=710.025n

* CHECK dout0_16 Vdout0_16ck141 = 0.9 time = 710
.meas tran vdout0_16ck141 FIND v(dout0_16) AT=710.025n

* CHECK dout0_17 Vdout0_17ck141 = 0.9 time = 710
.meas tran vdout0_17ck141 FIND v(dout0_17) AT=710.025n

* CHECK dout0_18 Vdout0_18ck141 = 0 time = 710
.meas tran vdout0_18ck141 FIND v(dout0_18) AT=710.025n

* CHECK dout0_19 Vdout0_19ck141 = 0 time = 710
.meas tran vdout0_19ck141 FIND v(dout0_19) AT=710.025n

* CHECK dout0_0 Vdout0_0ck143 = 0.9 time = 720
.meas tran vdout0_0ck143 FIND v(dout0_0) AT=720.025n

* CHECK dout0_1 Vdout0_1ck143 = 0.9 time = 720
.meas tran vdout0_1ck143 FIND v(dout0_1) AT=720.025n

* CHECK dout0_2 Vdout0_2ck143 = 0.9 time = 720
.meas tran vdout0_2ck143 FIND v(dout0_2) AT=720.025n

* CHECK dout0_3 Vdout0_3ck143 = 0.9 time = 720
.meas tran vdout0_3ck143 FIND v(dout0_3) AT=720.025n

* CHECK dout0_4 Vdout0_4ck143 = 0 time = 720
.meas tran vdout0_4ck143 FIND v(dout0_4) AT=720.025n

* CHECK dout0_5 Vdout0_5ck143 = 0 time = 720
.meas tran vdout0_5ck143 FIND v(dout0_5) AT=720.025n

* CHECK dout0_6 Vdout0_6ck143 = 0 time = 720
.meas tran vdout0_6ck143 FIND v(dout0_6) AT=720.025n

* CHECK dout0_7 Vdout0_7ck143 = 0 time = 720
.meas tran vdout0_7ck143 FIND v(dout0_7) AT=720.025n

* CHECK dout0_8 Vdout0_8ck143 = 0 time = 720
.meas tran vdout0_8ck143 FIND v(dout0_8) AT=720.025n

* CHECK dout0_9 Vdout0_9ck143 = 0 time = 720
.meas tran vdout0_9ck143 FIND v(dout0_9) AT=720.025n

* CHECK dout0_10 Vdout0_10ck143 = 0 time = 720
.meas tran vdout0_10ck143 FIND v(dout0_10) AT=720.025n

* CHECK dout0_11 Vdout0_11ck143 = 0 time = 720
.meas tran vdout0_11ck143 FIND v(dout0_11) AT=720.025n

* CHECK dout0_12 Vdout0_12ck143 = 0 time = 720
.meas tran vdout0_12ck143 FIND v(dout0_12) AT=720.025n

* CHECK dout0_13 Vdout0_13ck143 = 0 time = 720
.meas tran vdout0_13ck143 FIND v(dout0_13) AT=720.025n

* CHECK dout0_14 Vdout0_14ck143 = 0 time = 720
.meas tran vdout0_14ck143 FIND v(dout0_14) AT=720.025n

* CHECK dout0_15 Vdout0_15ck143 = 0.9 time = 720
.meas tran vdout0_15ck143 FIND v(dout0_15) AT=720.025n

* CHECK dout0_16 Vdout0_16ck143 = 0 time = 720
.meas tran vdout0_16ck143 FIND v(dout0_16) AT=720.025n

* CHECK dout0_17 Vdout0_17ck143 = 0 time = 720
.meas tran vdout0_17ck143 FIND v(dout0_17) AT=720.025n

* CHECK dout0_18 Vdout0_18ck143 = 0.9 time = 720
.meas tran vdout0_18ck143 FIND v(dout0_18) AT=720.025n

* CHECK dout0_19 Vdout0_19ck143 = 0.9 time = 720
.meas tran vdout0_19ck143 FIND v(dout0_19) AT=720.025n

* CHECK dout0_0 Vdout0_0ck144 = 0 time = 725
.meas tran vdout0_0ck144 FIND v(dout0_0) AT=725.025n

* CHECK dout0_1 Vdout0_1ck144 = 0 time = 725
.meas tran vdout0_1ck144 FIND v(dout0_1) AT=725.025n

* CHECK dout0_2 Vdout0_2ck144 = 0 time = 725
.meas tran vdout0_2ck144 FIND v(dout0_2) AT=725.025n

* CHECK dout0_3 Vdout0_3ck144 = 0.9 time = 725
.meas tran vdout0_3ck144 FIND v(dout0_3) AT=725.025n

* CHECK dout0_4 Vdout0_4ck144 = 0 time = 725
.meas tran vdout0_4ck144 FIND v(dout0_4) AT=725.025n

* CHECK dout0_5 Vdout0_5ck144 = 0 time = 725
.meas tran vdout0_5ck144 FIND v(dout0_5) AT=725.025n

* CHECK dout0_6 Vdout0_6ck144 = 0.9 time = 725
.meas tran vdout0_6ck144 FIND v(dout0_6) AT=725.025n

* CHECK dout0_7 Vdout0_7ck144 = 0.9 time = 725
.meas tran vdout0_7ck144 FIND v(dout0_7) AT=725.025n

* CHECK dout0_8 Vdout0_8ck144 = 0 time = 725
.meas tran vdout0_8ck144 FIND v(dout0_8) AT=725.025n

* CHECK dout0_9 Vdout0_9ck144 = 0 time = 725
.meas tran vdout0_9ck144 FIND v(dout0_9) AT=725.025n

* CHECK dout0_10 Vdout0_10ck144 = 0.9 time = 725
.meas tran vdout0_10ck144 FIND v(dout0_10) AT=725.025n

* CHECK dout0_11 Vdout0_11ck144 = 0 time = 725
.meas tran vdout0_11ck144 FIND v(dout0_11) AT=725.025n

* CHECK dout0_12 Vdout0_12ck144 = 0 time = 725
.meas tran vdout0_12ck144 FIND v(dout0_12) AT=725.025n

* CHECK dout0_13 Vdout0_13ck144 = 0.9 time = 725
.meas tran vdout0_13ck144 FIND v(dout0_13) AT=725.025n

* CHECK dout0_14 Vdout0_14ck144 = 0 time = 725
.meas tran vdout0_14ck144 FIND v(dout0_14) AT=725.025n

* CHECK dout0_15 Vdout0_15ck144 = 0.9 time = 725
.meas tran vdout0_15ck144 FIND v(dout0_15) AT=725.025n

* CHECK dout0_16 Vdout0_16ck144 = 0 time = 725
.meas tran vdout0_16ck144 FIND v(dout0_16) AT=725.025n

* CHECK dout0_17 Vdout0_17ck144 = 0 time = 725
.meas tran vdout0_17ck144 FIND v(dout0_17) AT=725.025n

* CHECK dout0_18 Vdout0_18ck144 = 0 time = 725
.meas tran vdout0_18ck144 FIND v(dout0_18) AT=725.025n

* CHECK dout0_19 Vdout0_19ck144 = 0 time = 725
.meas tran vdout0_19ck144 FIND v(dout0_19) AT=725.025n

* CHECK dout0_0 Vdout0_0ck148 = 0.9 time = 745
.meas tran vdout0_0ck148 FIND v(dout0_0) AT=745.025n

* CHECK dout0_1 Vdout0_1ck148 = 0 time = 745
.meas tran vdout0_1ck148 FIND v(dout0_1) AT=745.025n

* CHECK dout0_2 Vdout0_2ck148 = 0 time = 745
.meas tran vdout0_2ck148 FIND v(dout0_2) AT=745.025n

* CHECK dout0_3 Vdout0_3ck148 = 0 time = 745
.meas tran vdout0_3ck148 FIND v(dout0_3) AT=745.025n

* CHECK dout0_4 Vdout0_4ck148 = 0.9 time = 745
.meas tran vdout0_4ck148 FIND v(dout0_4) AT=745.025n

* CHECK dout0_5 Vdout0_5ck148 = 0 time = 745
.meas tran vdout0_5ck148 FIND v(dout0_5) AT=745.025n

* CHECK dout0_6 Vdout0_6ck148 = 0.9 time = 745
.meas tran vdout0_6ck148 FIND v(dout0_6) AT=745.025n

* CHECK dout0_7 Vdout0_7ck148 = 0.9 time = 745
.meas tran vdout0_7ck148 FIND v(dout0_7) AT=745.025n

* CHECK dout0_8 Vdout0_8ck148 = 0.9 time = 745
.meas tran vdout0_8ck148 FIND v(dout0_8) AT=745.025n

* CHECK dout0_9 Vdout0_9ck148 = 0.9 time = 745
.meas tran vdout0_9ck148 FIND v(dout0_9) AT=745.025n

* CHECK dout0_10 Vdout0_10ck148 = 0.9 time = 745
.meas tran vdout0_10ck148 FIND v(dout0_10) AT=745.025n

* CHECK dout0_11 Vdout0_11ck148 = 0.9 time = 745
.meas tran vdout0_11ck148 FIND v(dout0_11) AT=745.025n

* CHECK dout0_12 Vdout0_12ck148 = 0 time = 745
.meas tran vdout0_12ck148 FIND v(dout0_12) AT=745.025n

* CHECK dout0_13 Vdout0_13ck148 = 0.9 time = 745
.meas tran vdout0_13ck148 FIND v(dout0_13) AT=745.025n

* CHECK dout0_14 Vdout0_14ck148 = 0.9 time = 745
.meas tran vdout0_14ck148 FIND v(dout0_14) AT=745.025n

* CHECK dout0_15 Vdout0_15ck148 = 0 time = 745
.meas tran vdout0_15ck148 FIND v(dout0_15) AT=745.025n

* CHECK dout0_16 Vdout0_16ck148 = 0 time = 745
.meas tran vdout0_16ck148 FIND v(dout0_16) AT=745.025n

* CHECK dout0_17 Vdout0_17ck148 = 0.9 time = 745
.meas tran vdout0_17ck148 FIND v(dout0_17) AT=745.025n

* CHECK dout0_18 Vdout0_18ck148 = 0.9 time = 745
.meas tran vdout0_18ck148 FIND v(dout0_18) AT=745.025n

* CHECK dout0_19 Vdout0_19ck148 = 0 time = 745
.meas tran vdout0_19ck148 FIND v(dout0_19) AT=745.025n

* CHECK dout0_0 Vdout0_0ck149 = 0.9 time = 750
.meas tran vdout0_0ck149 FIND v(dout0_0) AT=750.025n

* CHECK dout0_1 Vdout0_1ck149 = 0.9 time = 750
.meas tran vdout0_1ck149 FIND v(dout0_1) AT=750.025n

* CHECK dout0_2 Vdout0_2ck149 = 0.9 time = 750
.meas tran vdout0_2ck149 FIND v(dout0_2) AT=750.025n

* CHECK dout0_3 Vdout0_3ck149 = 0 time = 750
.meas tran vdout0_3ck149 FIND v(dout0_3) AT=750.025n

* CHECK dout0_4 Vdout0_4ck149 = 0.9 time = 750
.meas tran vdout0_4ck149 FIND v(dout0_4) AT=750.025n

* CHECK dout0_5 Vdout0_5ck149 = 0 time = 750
.meas tran vdout0_5ck149 FIND v(dout0_5) AT=750.025n

* CHECK dout0_6 Vdout0_6ck149 = 0.9 time = 750
.meas tran vdout0_6ck149 FIND v(dout0_6) AT=750.025n

* CHECK dout0_7 Vdout0_7ck149 = 0 time = 750
.meas tran vdout0_7ck149 FIND v(dout0_7) AT=750.025n

* CHECK dout0_8 Vdout0_8ck149 = 0.9 time = 750
.meas tran vdout0_8ck149 FIND v(dout0_8) AT=750.025n

* CHECK dout0_9 Vdout0_9ck149 = 0.9 time = 750
.meas tran vdout0_9ck149 FIND v(dout0_9) AT=750.025n

* CHECK dout0_10 Vdout0_10ck149 = 0.9 time = 750
.meas tran vdout0_10ck149 FIND v(dout0_10) AT=750.025n

* CHECK dout0_11 Vdout0_11ck149 = 0.9 time = 750
.meas tran vdout0_11ck149 FIND v(dout0_11) AT=750.025n

* CHECK dout0_12 Vdout0_12ck149 = 0.9 time = 750
.meas tran vdout0_12ck149 FIND v(dout0_12) AT=750.025n

* CHECK dout0_13 Vdout0_13ck149 = 0.9 time = 750
.meas tran vdout0_13ck149 FIND v(dout0_13) AT=750.025n

* CHECK dout0_14 Vdout0_14ck149 = 0.9 time = 750
.meas tran vdout0_14ck149 FIND v(dout0_14) AT=750.025n

* CHECK dout0_15 Vdout0_15ck149 = 0 time = 750
.meas tran vdout0_15ck149 FIND v(dout0_15) AT=750.025n

* CHECK dout0_16 Vdout0_16ck149 = 0.9 time = 750
.meas tran vdout0_16ck149 FIND v(dout0_16) AT=750.025n

* CHECK dout0_17 Vdout0_17ck149 = 0.9 time = 750
.meas tran vdout0_17ck149 FIND v(dout0_17) AT=750.025n

* CHECK dout0_18 Vdout0_18ck149 = 0 time = 750
.meas tran vdout0_18ck149 FIND v(dout0_18) AT=750.025n

* CHECK dout0_19 Vdout0_19ck149 = 0 time = 750
.meas tran vdout0_19ck149 FIND v(dout0_19) AT=750.025n

* CHECK dout0_0 Vdout0_0ck154 = 0 time = 775
.meas tran vdout0_0ck154 FIND v(dout0_0) AT=775.025n

* CHECK dout0_1 Vdout0_1ck154 = 0 time = 775
.meas tran vdout0_1ck154 FIND v(dout0_1) AT=775.025n

* CHECK dout0_2 Vdout0_2ck154 = 0 time = 775
.meas tran vdout0_2ck154 FIND v(dout0_2) AT=775.025n

* CHECK dout0_3 Vdout0_3ck154 = 0.9 time = 775
.meas tran vdout0_3ck154 FIND v(dout0_3) AT=775.025n

* CHECK dout0_4 Vdout0_4ck154 = 0 time = 775
.meas tran vdout0_4ck154 FIND v(dout0_4) AT=775.025n

* CHECK dout0_5 Vdout0_5ck154 = 0 time = 775
.meas tran vdout0_5ck154 FIND v(dout0_5) AT=775.025n

* CHECK dout0_6 Vdout0_6ck154 = 0.9 time = 775
.meas tran vdout0_6ck154 FIND v(dout0_6) AT=775.025n

* CHECK dout0_7 Vdout0_7ck154 = 0.9 time = 775
.meas tran vdout0_7ck154 FIND v(dout0_7) AT=775.025n

* CHECK dout0_8 Vdout0_8ck154 = 0 time = 775
.meas tran vdout0_8ck154 FIND v(dout0_8) AT=775.025n

* CHECK dout0_9 Vdout0_9ck154 = 0 time = 775
.meas tran vdout0_9ck154 FIND v(dout0_9) AT=775.025n

* CHECK dout0_10 Vdout0_10ck154 = 0.9 time = 775
.meas tran vdout0_10ck154 FIND v(dout0_10) AT=775.025n

* CHECK dout0_11 Vdout0_11ck154 = 0 time = 775
.meas tran vdout0_11ck154 FIND v(dout0_11) AT=775.025n

* CHECK dout0_12 Vdout0_12ck154 = 0 time = 775
.meas tran vdout0_12ck154 FIND v(dout0_12) AT=775.025n

* CHECK dout0_13 Vdout0_13ck154 = 0.9 time = 775
.meas tran vdout0_13ck154 FIND v(dout0_13) AT=775.025n

* CHECK dout0_14 Vdout0_14ck154 = 0 time = 775
.meas tran vdout0_14ck154 FIND v(dout0_14) AT=775.025n

* CHECK dout0_15 Vdout0_15ck154 = 0.9 time = 775
.meas tran vdout0_15ck154 FIND v(dout0_15) AT=775.025n

* CHECK dout0_16 Vdout0_16ck154 = 0 time = 775
.meas tran vdout0_16ck154 FIND v(dout0_16) AT=775.025n

* CHECK dout0_17 Vdout0_17ck154 = 0 time = 775
.meas tran vdout0_17ck154 FIND v(dout0_17) AT=775.025n

* CHECK dout0_18 Vdout0_18ck154 = 0 time = 775
.meas tran vdout0_18ck154 FIND v(dout0_18) AT=775.025n

* CHECK dout0_19 Vdout0_19ck154 = 0 time = 775
.meas tran vdout0_19ck154 FIND v(dout0_19) AT=775.025n

* CHECK dout0_0 Vdout0_0ck156 = 0 time = 785
.meas tran vdout0_0ck156 FIND v(dout0_0) AT=785.025n

* CHECK dout0_1 Vdout0_1ck156 = 0.9 time = 785
.meas tran vdout0_1ck156 FIND v(dout0_1) AT=785.025n

* CHECK dout0_2 Vdout0_2ck156 = 0.9 time = 785
.meas tran vdout0_2ck156 FIND v(dout0_2) AT=785.025n

* CHECK dout0_3 Vdout0_3ck156 = 0 time = 785
.meas tran vdout0_3ck156 FIND v(dout0_3) AT=785.025n

* CHECK dout0_4 Vdout0_4ck156 = 0.9 time = 785
.meas tran vdout0_4ck156 FIND v(dout0_4) AT=785.025n

* CHECK dout0_5 Vdout0_5ck156 = 0 time = 785
.meas tran vdout0_5ck156 FIND v(dout0_5) AT=785.025n

* CHECK dout0_6 Vdout0_6ck156 = 0.9 time = 785
.meas tran vdout0_6ck156 FIND v(dout0_6) AT=785.025n

* CHECK dout0_7 Vdout0_7ck156 = 0.9 time = 785
.meas tran vdout0_7ck156 FIND v(dout0_7) AT=785.025n

* CHECK dout0_8 Vdout0_8ck156 = 0 time = 785
.meas tran vdout0_8ck156 FIND v(dout0_8) AT=785.025n

* CHECK dout0_9 Vdout0_9ck156 = 0.9 time = 785
.meas tran vdout0_9ck156 FIND v(dout0_9) AT=785.025n

* CHECK dout0_10 Vdout0_10ck156 = 0.9 time = 785
.meas tran vdout0_10ck156 FIND v(dout0_10) AT=785.025n

* CHECK dout0_11 Vdout0_11ck156 = 0 time = 785
.meas tran vdout0_11ck156 FIND v(dout0_11) AT=785.025n

* CHECK dout0_12 Vdout0_12ck156 = 0 time = 785
.meas tran vdout0_12ck156 FIND v(dout0_12) AT=785.025n

* CHECK dout0_13 Vdout0_13ck156 = 0 time = 785
.meas tran vdout0_13ck156 FIND v(dout0_13) AT=785.025n

* CHECK dout0_14 Vdout0_14ck156 = 0 time = 785
.meas tran vdout0_14ck156 FIND v(dout0_14) AT=785.025n

* CHECK dout0_15 Vdout0_15ck156 = 0.9 time = 785
.meas tran vdout0_15ck156 FIND v(dout0_15) AT=785.025n

* CHECK dout0_16 Vdout0_16ck156 = 0 time = 785
.meas tran vdout0_16ck156 FIND v(dout0_16) AT=785.025n

* CHECK dout0_17 Vdout0_17ck156 = 0 time = 785
.meas tran vdout0_17ck156 FIND v(dout0_17) AT=785.025n

* CHECK dout0_18 Vdout0_18ck156 = 0.9 time = 785
.meas tran vdout0_18ck156 FIND v(dout0_18) AT=785.025n

* CHECK dout0_19 Vdout0_19ck156 = 0 time = 785
.meas tran vdout0_19ck156 FIND v(dout0_19) AT=785.025n

* CHECK dout0_0 Vdout0_0ck157 = 0.9 time = 790
.meas tran vdout0_0ck157 FIND v(dout0_0) AT=790.025n

* CHECK dout0_1 Vdout0_1ck157 = 0 time = 790
.meas tran vdout0_1ck157 FIND v(dout0_1) AT=790.025n

* CHECK dout0_2 Vdout0_2ck157 = 0 time = 790
.meas tran vdout0_2ck157 FIND v(dout0_2) AT=790.025n

* CHECK dout0_3 Vdout0_3ck157 = 0.9 time = 790
.meas tran vdout0_3ck157 FIND v(dout0_3) AT=790.025n

* CHECK dout0_4 Vdout0_4ck157 = 0 time = 790
.meas tran vdout0_4ck157 FIND v(dout0_4) AT=790.025n

* CHECK dout0_5 Vdout0_5ck157 = 0.9 time = 790
.meas tran vdout0_5ck157 FIND v(dout0_5) AT=790.025n

* CHECK dout0_6 Vdout0_6ck157 = 0 time = 790
.meas tran vdout0_6ck157 FIND v(dout0_6) AT=790.025n

* CHECK dout0_7 Vdout0_7ck157 = 0 time = 790
.meas tran vdout0_7ck157 FIND v(dout0_7) AT=790.025n

* CHECK dout0_8 Vdout0_8ck157 = 0 time = 790
.meas tran vdout0_8ck157 FIND v(dout0_8) AT=790.025n

* CHECK dout0_9 Vdout0_9ck157 = 0.9 time = 790
.meas tran vdout0_9ck157 FIND v(dout0_9) AT=790.025n

* CHECK dout0_10 Vdout0_10ck157 = 0 time = 790
.meas tran vdout0_10ck157 FIND v(dout0_10) AT=790.025n

* CHECK dout0_11 Vdout0_11ck157 = 0 time = 790
.meas tran vdout0_11ck157 FIND v(dout0_11) AT=790.025n

* CHECK dout0_12 Vdout0_12ck157 = 0 time = 790
.meas tran vdout0_12ck157 FIND v(dout0_12) AT=790.025n

* CHECK dout0_13 Vdout0_13ck157 = 0.9 time = 790
.meas tran vdout0_13ck157 FIND v(dout0_13) AT=790.025n

* CHECK dout0_14 Vdout0_14ck157 = 0.9 time = 790
.meas tran vdout0_14ck157 FIND v(dout0_14) AT=790.025n

* CHECK dout0_15 Vdout0_15ck157 = 0 time = 790
.meas tran vdout0_15ck157 FIND v(dout0_15) AT=790.025n

* CHECK dout0_16 Vdout0_16ck157 = 0 time = 790
.meas tran vdout0_16ck157 FIND v(dout0_16) AT=790.025n

* CHECK dout0_17 Vdout0_17ck157 = 0 time = 790
.meas tran vdout0_17ck157 FIND v(dout0_17) AT=790.025n

* CHECK dout0_18 Vdout0_18ck157 = 0.9 time = 790
.meas tran vdout0_18ck157 FIND v(dout0_18) AT=790.025n

* CHECK dout0_19 Vdout0_19ck157 = 0.9 time = 790
.meas tran vdout0_19ck157 FIND v(dout0_19) AT=790.025n

* CHECK dout0_0 Vdout0_0ck158 = 0 time = 795
.meas tran vdout0_0ck158 FIND v(dout0_0) AT=795.025n

* CHECK dout0_1 Vdout0_1ck158 = 0 time = 795
.meas tran vdout0_1ck158 FIND v(dout0_1) AT=795.025n

* CHECK dout0_2 Vdout0_2ck158 = 0 time = 795
.meas tran vdout0_2ck158 FIND v(dout0_2) AT=795.025n

* CHECK dout0_3 Vdout0_3ck158 = 0.9 time = 795
.meas tran vdout0_3ck158 FIND v(dout0_3) AT=795.025n

* CHECK dout0_4 Vdout0_4ck158 = 0 time = 795
.meas tran vdout0_4ck158 FIND v(dout0_4) AT=795.025n

* CHECK dout0_5 Vdout0_5ck158 = 0 time = 795
.meas tran vdout0_5ck158 FIND v(dout0_5) AT=795.025n

* CHECK dout0_6 Vdout0_6ck158 = 0.9 time = 795
.meas tran vdout0_6ck158 FIND v(dout0_6) AT=795.025n

* CHECK dout0_7 Vdout0_7ck158 = 0.9 time = 795
.meas tran vdout0_7ck158 FIND v(dout0_7) AT=795.025n

* CHECK dout0_8 Vdout0_8ck158 = 0 time = 795
.meas tran vdout0_8ck158 FIND v(dout0_8) AT=795.025n

* CHECK dout0_9 Vdout0_9ck158 = 0 time = 795
.meas tran vdout0_9ck158 FIND v(dout0_9) AT=795.025n

* CHECK dout0_10 Vdout0_10ck158 = 0.9 time = 795
.meas tran vdout0_10ck158 FIND v(dout0_10) AT=795.025n

* CHECK dout0_11 Vdout0_11ck158 = 0 time = 795
.meas tran vdout0_11ck158 FIND v(dout0_11) AT=795.025n

* CHECK dout0_12 Vdout0_12ck158 = 0 time = 795
.meas tran vdout0_12ck158 FIND v(dout0_12) AT=795.025n

* CHECK dout0_13 Vdout0_13ck158 = 0.9 time = 795
.meas tran vdout0_13ck158 FIND v(dout0_13) AT=795.025n

* CHECK dout0_14 Vdout0_14ck158 = 0 time = 795
.meas tran vdout0_14ck158 FIND v(dout0_14) AT=795.025n

* CHECK dout0_15 Vdout0_15ck158 = 0.9 time = 795
.meas tran vdout0_15ck158 FIND v(dout0_15) AT=795.025n

* CHECK dout0_16 Vdout0_16ck158 = 0 time = 795
.meas tran vdout0_16ck158 FIND v(dout0_16) AT=795.025n

* CHECK dout0_17 Vdout0_17ck158 = 0 time = 795
.meas tran vdout0_17ck158 FIND v(dout0_17) AT=795.025n

* CHECK dout0_18 Vdout0_18ck158 = 0 time = 795
.meas tran vdout0_18ck158 FIND v(dout0_18) AT=795.025n

* CHECK dout0_19 Vdout0_19ck158 = 0 time = 795
.meas tran vdout0_19ck158 FIND v(dout0_19) AT=795.025n

* CHECK dout0_0 Vdout0_0ck159 = 0 time = 800
.meas tran vdout0_0ck159 FIND v(dout0_0) AT=800.025n

* CHECK dout0_1 Vdout0_1ck159 = 0.9 time = 800
.meas tran vdout0_1ck159 FIND v(dout0_1) AT=800.025n

* CHECK dout0_2 Vdout0_2ck159 = 0.9 time = 800
.meas tran vdout0_2ck159 FIND v(dout0_2) AT=800.025n

* CHECK dout0_3 Vdout0_3ck159 = 0 time = 800
.meas tran vdout0_3ck159 FIND v(dout0_3) AT=800.025n

* CHECK dout0_4 Vdout0_4ck159 = 0.9 time = 800
.meas tran vdout0_4ck159 FIND v(dout0_4) AT=800.025n

* CHECK dout0_5 Vdout0_5ck159 = 0 time = 800
.meas tran vdout0_5ck159 FIND v(dout0_5) AT=800.025n

* CHECK dout0_6 Vdout0_6ck159 = 0.9 time = 800
.meas tran vdout0_6ck159 FIND v(dout0_6) AT=800.025n

* CHECK dout0_7 Vdout0_7ck159 = 0.9 time = 800
.meas tran vdout0_7ck159 FIND v(dout0_7) AT=800.025n

* CHECK dout0_8 Vdout0_8ck159 = 0 time = 800
.meas tran vdout0_8ck159 FIND v(dout0_8) AT=800.025n

* CHECK dout0_9 Vdout0_9ck159 = 0.9 time = 800
.meas tran vdout0_9ck159 FIND v(dout0_9) AT=800.025n

* CHECK dout0_10 Vdout0_10ck159 = 0.9 time = 800
.meas tran vdout0_10ck159 FIND v(dout0_10) AT=800.025n

* CHECK dout0_11 Vdout0_11ck159 = 0 time = 800
.meas tran vdout0_11ck159 FIND v(dout0_11) AT=800.025n

* CHECK dout0_12 Vdout0_12ck159 = 0 time = 800
.meas tran vdout0_12ck159 FIND v(dout0_12) AT=800.025n

* CHECK dout0_13 Vdout0_13ck159 = 0 time = 800
.meas tran vdout0_13ck159 FIND v(dout0_13) AT=800.025n

* CHECK dout0_14 Vdout0_14ck159 = 0 time = 800
.meas tran vdout0_14ck159 FIND v(dout0_14) AT=800.025n

* CHECK dout0_15 Vdout0_15ck159 = 0.9 time = 800
.meas tran vdout0_15ck159 FIND v(dout0_15) AT=800.025n

* CHECK dout0_16 Vdout0_16ck159 = 0 time = 800
.meas tran vdout0_16ck159 FIND v(dout0_16) AT=800.025n

* CHECK dout0_17 Vdout0_17ck159 = 0 time = 800
.meas tran vdout0_17ck159 FIND v(dout0_17) AT=800.025n

* CHECK dout0_18 Vdout0_18ck159 = 0.9 time = 800
.meas tran vdout0_18ck159 FIND v(dout0_18) AT=800.025n

* CHECK dout0_19 Vdout0_19ck159 = 0 time = 800
.meas tran vdout0_19ck159 FIND v(dout0_19) AT=800.025n

* CHECK dout0_0 Vdout0_0ck163 = 0 time = 820
.meas tran vdout0_0ck163 FIND v(dout0_0) AT=820.025n

* CHECK dout0_1 Vdout0_1ck163 = 0.9 time = 820
.meas tran vdout0_1ck163 FIND v(dout0_1) AT=820.025n

* CHECK dout0_2 Vdout0_2ck163 = 0 time = 820
.meas tran vdout0_2ck163 FIND v(dout0_2) AT=820.025n

* CHECK dout0_3 Vdout0_3ck163 = 0.9 time = 820
.meas tran vdout0_3ck163 FIND v(dout0_3) AT=820.025n

* CHECK dout0_4 Vdout0_4ck163 = 0 time = 820
.meas tran vdout0_4ck163 FIND v(dout0_4) AT=820.025n

* CHECK dout0_5 Vdout0_5ck163 = 0.9 time = 820
.meas tran vdout0_5ck163 FIND v(dout0_5) AT=820.025n

* CHECK dout0_6 Vdout0_6ck163 = 0.9 time = 820
.meas tran vdout0_6ck163 FIND v(dout0_6) AT=820.025n

* CHECK dout0_7 Vdout0_7ck163 = 0 time = 820
.meas tran vdout0_7ck163 FIND v(dout0_7) AT=820.025n

* CHECK dout0_8 Vdout0_8ck163 = 0.9 time = 820
.meas tran vdout0_8ck163 FIND v(dout0_8) AT=820.025n

* CHECK dout0_9 Vdout0_9ck163 = 0.9 time = 820
.meas tran vdout0_9ck163 FIND v(dout0_9) AT=820.025n

* CHECK dout0_10 Vdout0_10ck163 = 0.9 time = 820
.meas tran vdout0_10ck163 FIND v(dout0_10) AT=820.025n

* CHECK dout0_11 Vdout0_11ck163 = 0.9 time = 820
.meas tran vdout0_11ck163 FIND v(dout0_11) AT=820.025n

* CHECK dout0_12 Vdout0_12ck163 = 0.9 time = 820
.meas tran vdout0_12ck163 FIND v(dout0_12) AT=820.025n

* CHECK dout0_13 Vdout0_13ck163 = 0 time = 820
.meas tran vdout0_13ck163 FIND v(dout0_13) AT=820.025n

* CHECK dout0_14 Vdout0_14ck163 = 0 time = 820
.meas tran vdout0_14ck163 FIND v(dout0_14) AT=820.025n

* CHECK dout0_15 Vdout0_15ck163 = 0.9 time = 820
.meas tran vdout0_15ck163 FIND v(dout0_15) AT=820.025n

* CHECK dout0_16 Vdout0_16ck163 = 0.9 time = 820
.meas tran vdout0_16ck163 FIND v(dout0_16) AT=820.025n

* CHECK dout0_17 Vdout0_17ck163 = 0 time = 820
.meas tran vdout0_17ck163 FIND v(dout0_17) AT=820.025n

* CHECK dout0_18 Vdout0_18ck163 = 0.9 time = 820
.meas tran vdout0_18ck163 FIND v(dout0_18) AT=820.025n

* CHECK dout0_19 Vdout0_19ck163 = 0.9 time = 820
.meas tran vdout0_19ck163 FIND v(dout0_19) AT=820.025n

* CHECK dout0_0 Vdout0_0ck167 = 0 time = 840
.meas tran vdout0_0ck167 FIND v(dout0_0) AT=840.025n

* CHECK dout0_1 Vdout0_1ck167 = 0.9 time = 840
.meas tran vdout0_1ck167 FIND v(dout0_1) AT=840.025n

* CHECK dout0_2 Vdout0_2ck167 = 0.9 time = 840
.meas tran vdout0_2ck167 FIND v(dout0_2) AT=840.025n

* CHECK dout0_3 Vdout0_3ck167 = 0 time = 840
.meas tran vdout0_3ck167 FIND v(dout0_3) AT=840.025n

* CHECK dout0_4 Vdout0_4ck167 = 0.9 time = 840
.meas tran vdout0_4ck167 FIND v(dout0_4) AT=840.025n

* CHECK dout0_5 Vdout0_5ck167 = 0 time = 840
.meas tran vdout0_5ck167 FIND v(dout0_5) AT=840.025n

* CHECK dout0_6 Vdout0_6ck167 = 0.9 time = 840
.meas tran vdout0_6ck167 FIND v(dout0_6) AT=840.025n

* CHECK dout0_7 Vdout0_7ck167 = 0.9 time = 840
.meas tran vdout0_7ck167 FIND v(dout0_7) AT=840.025n

* CHECK dout0_8 Vdout0_8ck167 = 0 time = 840
.meas tran vdout0_8ck167 FIND v(dout0_8) AT=840.025n

* CHECK dout0_9 Vdout0_9ck167 = 0.9 time = 840
.meas tran vdout0_9ck167 FIND v(dout0_9) AT=840.025n

* CHECK dout0_10 Vdout0_10ck167 = 0.9 time = 840
.meas tran vdout0_10ck167 FIND v(dout0_10) AT=840.025n

* CHECK dout0_11 Vdout0_11ck167 = 0 time = 840
.meas tran vdout0_11ck167 FIND v(dout0_11) AT=840.025n

* CHECK dout0_12 Vdout0_12ck167 = 0 time = 840
.meas tran vdout0_12ck167 FIND v(dout0_12) AT=840.025n

* CHECK dout0_13 Vdout0_13ck167 = 0 time = 840
.meas tran vdout0_13ck167 FIND v(dout0_13) AT=840.025n

* CHECK dout0_14 Vdout0_14ck167 = 0 time = 840
.meas tran vdout0_14ck167 FIND v(dout0_14) AT=840.025n

* CHECK dout0_15 Vdout0_15ck167 = 0.9 time = 840
.meas tran vdout0_15ck167 FIND v(dout0_15) AT=840.025n

* CHECK dout0_16 Vdout0_16ck167 = 0 time = 840
.meas tran vdout0_16ck167 FIND v(dout0_16) AT=840.025n

* CHECK dout0_17 Vdout0_17ck167 = 0 time = 840
.meas tran vdout0_17ck167 FIND v(dout0_17) AT=840.025n

* CHECK dout0_18 Vdout0_18ck167 = 0.9 time = 840
.meas tran vdout0_18ck167 FIND v(dout0_18) AT=840.025n

* CHECK dout0_19 Vdout0_19ck167 = 0 time = 840
.meas tran vdout0_19ck167 FIND v(dout0_19) AT=840.025n

* CHECK dout0_0 Vdout0_0ck170 = 0 time = 855
.meas tran vdout0_0ck170 FIND v(dout0_0) AT=855.025n

* CHECK dout0_1 Vdout0_1ck170 = 0 time = 855
.meas tran vdout0_1ck170 FIND v(dout0_1) AT=855.025n

* CHECK dout0_2 Vdout0_2ck170 = 0 time = 855
.meas tran vdout0_2ck170 FIND v(dout0_2) AT=855.025n

* CHECK dout0_3 Vdout0_3ck170 = 0.9 time = 855
.meas tran vdout0_3ck170 FIND v(dout0_3) AT=855.025n

* CHECK dout0_4 Vdout0_4ck170 = 0 time = 855
.meas tran vdout0_4ck170 FIND v(dout0_4) AT=855.025n

* CHECK dout0_5 Vdout0_5ck170 = 0 time = 855
.meas tran vdout0_5ck170 FIND v(dout0_5) AT=855.025n

* CHECK dout0_6 Vdout0_6ck170 = 0.9 time = 855
.meas tran vdout0_6ck170 FIND v(dout0_6) AT=855.025n

* CHECK dout0_7 Vdout0_7ck170 = 0.9 time = 855
.meas tran vdout0_7ck170 FIND v(dout0_7) AT=855.025n

* CHECK dout0_8 Vdout0_8ck170 = 0 time = 855
.meas tran vdout0_8ck170 FIND v(dout0_8) AT=855.025n

* CHECK dout0_9 Vdout0_9ck170 = 0 time = 855
.meas tran vdout0_9ck170 FIND v(dout0_9) AT=855.025n

* CHECK dout0_10 Vdout0_10ck170 = 0.9 time = 855
.meas tran vdout0_10ck170 FIND v(dout0_10) AT=855.025n

* CHECK dout0_11 Vdout0_11ck170 = 0 time = 855
.meas tran vdout0_11ck170 FIND v(dout0_11) AT=855.025n

* CHECK dout0_12 Vdout0_12ck170 = 0 time = 855
.meas tran vdout0_12ck170 FIND v(dout0_12) AT=855.025n

* CHECK dout0_13 Vdout0_13ck170 = 0.9 time = 855
.meas tran vdout0_13ck170 FIND v(dout0_13) AT=855.025n

* CHECK dout0_14 Vdout0_14ck170 = 0 time = 855
.meas tran vdout0_14ck170 FIND v(dout0_14) AT=855.025n

* CHECK dout0_15 Vdout0_15ck170 = 0.9 time = 855
.meas tran vdout0_15ck170 FIND v(dout0_15) AT=855.025n

* CHECK dout0_16 Vdout0_16ck170 = 0 time = 855
.meas tran vdout0_16ck170 FIND v(dout0_16) AT=855.025n

* CHECK dout0_17 Vdout0_17ck170 = 0 time = 855
.meas tran vdout0_17ck170 FIND v(dout0_17) AT=855.025n

* CHECK dout0_18 Vdout0_18ck170 = 0 time = 855
.meas tran vdout0_18ck170 FIND v(dout0_18) AT=855.025n

* CHECK dout0_19 Vdout0_19ck170 = 0 time = 855
.meas tran vdout0_19ck170 FIND v(dout0_19) AT=855.025n

* CHECK dout0_0 Vdout0_0ck171 = 0 time = 860
.meas tran vdout0_0ck171 FIND v(dout0_0) AT=860.025n

* CHECK dout0_1 Vdout0_1ck171 = 0.9 time = 860
.meas tran vdout0_1ck171 FIND v(dout0_1) AT=860.025n

* CHECK dout0_2 Vdout0_2ck171 = 0.9 time = 860
.meas tran vdout0_2ck171 FIND v(dout0_2) AT=860.025n

* CHECK dout0_3 Vdout0_3ck171 = 0 time = 860
.meas tran vdout0_3ck171 FIND v(dout0_3) AT=860.025n

* CHECK dout0_4 Vdout0_4ck171 = 0.9 time = 860
.meas tran vdout0_4ck171 FIND v(dout0_4) AT=860.025n

* CHECK dout0_5 Vdout0_5ck171 = 0 time = 860
.meas tran vdout0_5ck171 FIND v(dout0_5) AT=860.025n

* CHECK dout0_6 Vdout0_6ck171 = 0.9 time = 860
.meas tran vdout0_6ck171 FIND v(dout0_6) AT=860.025n

* CHECK dout0_7 Vdout0_7ck171 = 0 time = 860
.meas tran vdout0_7ck171 FIND v(dout0_7) AT=860.025n

* CHECK dout0_8 Vdout0_8ck171 = 0 time = 860
.meas tran vdout0_8ck171 FIND v(dout0_8) AT=860.025n

* CHECK dout0_9 Vdout0_9ck171 = 0.9 time = 860
.meas tran vdout0_9ck171 FIND v(dout0_9) AT=860.025n

* CHECK dout0_10 Vdout0_10ck171 = 0.9 time = 860
.meas tran vdout0_10ck171 FIND v(dout0_10) AT=860.025n

* CHECK dout0_11 Vdout0_11ck171 = 0.9 time = 860
.meas tran vdout0_11ck171 FIND v(dout0_11) AT=860.025n

* CHECK dout0_12 Vdout0_12ck171 = 0.9 time = 860
.meas tran vdout0_12ck171 FIND v(dout0_12) AT=860.025n

* CHECK dout0_13 Vdout0_13ck171 = 0.9 time = 860
.meas tran vdout0_13ck171 FIND v(dout0_13) AT=860.025n

* CHECK dout0_14 Vdout0_14ck171 = 0.9 time = 860
.meas tran vdout0_14ck171 FIND v(dout0_14) AT=860.025n

* CHECK dout0_15 Vdout0_15ck171 = 0.9 time = 860
.meas tran vdout0_15ck171 FIND v(dout0_15) AT=860.025n

* CHECK dout0_16 Vdout0_16ck171 = 0 time = 860
.meas tran vdout0_16ck171 FIND v(dout0_16) AT=860.025n

* CHECK dout0_17 Vdout0_17ck171 = 0.9 time = 860
.meas tran vdout0_17ck171 FIND v(dout0_17) AT=860.025n

* CHECK dout0_18 Vdout0_18ck171 = 0.9 time = 860
.meas tran vdout0_18ck171 FIND v(dout0_18) AT=860.025n

* CHECK dout0_19 Vdout0_19ck171 = 0.9 time = 860
.meas tran vdout0_19ck171 FIND v(dout0_19) AT=860.025n

* CHECK dout0_0 Vdout0_0ck174 = 0 time = 875
.meas tran vdout0_0ck174 FIND v(dout0_0) AT=875.025n

* CHECK dout0_1 Vdout0_1ck174 = 0.9 time = 875
.meas tran vdout0_1ck174 FIND v(dout0_1) AT=875.025n

* CHECK dout0_2 Vdout0_2ck174 = 0.9 time = 875
.meas tran vdout0_2ck174 FIND v(dout0_2) AT=875.025n

* CHECK dout0_3 Vdout0_3ck174 = 0.9 time = 875
.meas tran vdout0_3ck174 FIND v(dout0_3) AT=875.025n

* CHECK dout0_4 Vdout0_4ck174 = 0 time = 875
.meas tran vdout0_4ck174 FIND v(dout0_4) AT=875.025n

* CHECK dout0_5 Vdout0_5ck174 = 0.9 time = 875
.meas tran vdout0_5ck174 FIND v(dout0_5) AT=875.025n

* CHECK dout0_6 Vdout0_6ck174 = 0.9 time = 875
.meas tran vdout0_6ck174 FIND v(dout0_6) AT=875.025n

* CHECK dout0_7 Vdout0_7ck174 = 0 time = 875
.meas tran vdout0_7ck174 FIND v(dout0_7) AT=875.025n

* CHECK dout0_8 Vdout0_8ck174 = 0 time = 875
.meas tran vdout0_8ck174 FIND v(dout0_8) AT=875.025n

* CHECK dout0_9 Vdout0_9ck174 = 0 time = 875
.meas tran vdout0_9ck174 FIND v(dout0_9) AT=875.025n

* CHECK dout0_10 Vdout0_10ck174 = 0 time = 875
.meas tran vdout0_10ck174 FIND v(dout0_10) AT=875.025n

* CHECK dout0_11 Vdout0_11ck174 = 0.9 time = 875
.meas tran vdout0_11ck174 FIND v(dout0_11) AT=875.025n

* CHECK dout0_12 Vdout0_12ck174 = 0 time = 875
.meas tran vdout0_12ck174 FIND v(dout0_12) AT=875.025n

* CHECK dout0_13 Vdout0_13ck174 = 0 time = 875
.meas tran vdout0_13ck174 FIND v(dout0_13) AT=875.025n

* CHECK dout0_14 Vdout0_14ck174 = 0 time = 875
.meas tran vdout0_14ck174 FIND v(dout0_14) AT=875.025n

* CHECK dout0_15 Vdout0_15ck174 = 0.9 time = 875
.meas tran vdout0_15ck174 FIND v(dout0_15) AT=875.025n

* CHECK dout0_16 Vdout0_16ck174 = 0 time = 875
.meas tran vdout0_16ck174 FIND v(dout0_16) AT=875.025n

* CHECK dout0_17 Vdout0_17ck174 = 0.9 time = 875
.meas tran vdout0_17ck174 FIND v(dout0_17) AT=875.025n

* CHECK dout0_18 Vdout0_18ck174 = 0 time = 875
.meas tran vdout0_18ck174 FIND v(dout0_18) AT=875.025n

* CHECK dout0_19 Vdout0_19ck174 = 0.9 time = 875
.meas tran vdout0_19ck174 FIND v(dout0_19) AT=875.025n

* CHECK dout0_0 Vdout0_0ck177 = 0 time = 890
.meas tran vdout0_0ck177 FIND v(dout0_0) AT=890.025n

* CHECK dout0_1 Vdout0_1ck177 = 0.9 time = 890
.meas tran vdout0_1ck177 FIND v(dout0_1) AT=890.025n

* CHECK dout0_2 Vdout0_2ck177 = 0.9 time = 890
.meas tran vdout0_2ck177 FIND v(dout0_2) AT=890.025n

* CHECK dout0_3 Vdout0_3ck177 = 0 time = 890
.meas tran vdout0_3ck177 FIND v(dout0_3) AT=890.025n

* CHECK dout0_4 Vdout0_4ck177 = 0.9 time = 890
.meas tran vdout0_4ck177 FIND v(dout0_4) AT=890.025n

* CHECK dout0_5 Vdout0_5ck177 = 0 time = 890
.meas tran vdout0_5ck177 FIND v(dout0_5) AT=890.025n

* CHECK dout0_6 Vdout0_6ck177 = 0.9 time = 890
.meas tran vdout0_6ck177 FIND v(dout0_6) AT=890.025n

* CHECK dout0_7 Vdout0_7ck177 = 0.9 time = 890
.meas tran vdout0_7ck177 FIND v(dout0_7) AT=890.025n

* CHECK dout0_8 Vdout0_8ck177 = 0 time = 890
.meas tran vdout0_8ck177 FIND v(dout0_8) AT=890.025n

* CHECK dout0_9 Vdout0_9ck177 = 0.9 time = 890
.meas tran vdout0_9ck177 FIND v(dout0_9) AT=890.025n

* CHECK dout0_10 Vdout0_10ck177 = 0.9 time = 890
.meas tran vdout0_10ck177 FIND v(dout0_10) AT=890.025n

* CHECK dout0_11 Vdout0_11ck177 = 0 time = 890
.meas tran vdout0_11ck177 FIND v(dout0_11) AT=890.025n

* CHECK dout0_12 Vdout0_12ck177 = 0 time = 890
.meas tran vdout0_12ck177 FIND v(dout0_12) AT=890.025n

* CHECK dout0_13 Vdout0_13ck177 = 0 time = 890
.meas tran vdout0_13ck177 FIND v(dout0_13) AT=890.025n

* CHECK dout0_14 Vdout0_14ck177 = 0 time = 890
.meas tran vdout0_14ck177 FIND v(dout0_14) AT=890.025n

* CHECK dout0_15 Vdout0_15ck177 = 0.9 time = 890
.meas tran vdout0_15ck177 FIND v(dout0_15) AT=890.025n

* CHECK dout0_16 Vdout0_16ck177 = 0 time = 890
.meas tran vdout0_16ck177 FIND v(dout0_16) AT=890.025n

* CHECK dout0_17 Vdout0_17ck177 = 0 time = 890
.meas tran vdout0_17ck177 FIND v(dout0_17) AT=890.025n

* CHECK dout0_18 Vdout0_18ck177 = 0.9 time = 890
.meas tran vdout0_18ck177 FIND v(dout0_18) AT=890.025n

* CHECK dout0_19 Vdout0_19ck177 = 0 time = 890
.meas tran vdout0_19ck177 FIND v(dout0_19) AT=890.025n

* CHECK dout0_0 Vdout0_0ck180 = 0 time = 905
.meas tran vdout0_0ck180 FIND v(dout0_0) AT=905.025n

* CHECK dout0_1 Vdout0_1ck180 = 0 time = 905
.meas tran vdout0_1ck180 FIND v(dout0_1) AT=905.025n

* CHECK dout0_2 Vdout0_2ck180 = 0 time = 905
.meas tran vdout0_2ck180 FIND v(dout0_2) AT=905.025n

* CHECK dout0_3 Vdout0_3ck180 = 0.9 time = 905
.meas tran vdout0_3ck180 FIND v(dout0_3) AT=905.025n

* CHECK dout0_4 Vdout0_4ck180 = 0 time = 905
.meas tran vdout0_4ck180 FIND v(dout0_4) AT=905.025n

* CHECK dout0_5 Vdout0_5ck180 = 0 time = 905
.meas tran vdout0_5ck180 FIND v(dout0_5) AT=905.025n

* CHECK dout0_6 Vdout0_6ck180 = 0.9 time = 905
.meas tran vdout0_6ck180 FIND v(dout0_6) AT=905.025n

* CHECK dout0_7 Vdout0_7ck180 = 0.9 time = 905
.meas tran vdout0_7ck180 FIND v(dout0_7) AT=905.025n

* CHECK dout0_8 Vdout0_8ck180 = 0 time = 905
.meas tran vdout0_8ck180 FIND v(dout0_8) AT=905.025n

* CHECK dout0_9 Vdout0_9ck180 = 0 time = 905
.meas tran vdout0_9ck180 FIND v(dout0_9) AT=905.025n

* CHECK dout0_10 Vdout0_10ck180 = 0.9 time = 905
.meas tran vdout0_10ck180 FIND v(dout0_10) AT=905.025n

* CHECK dout0_11 Vdout0_11ck180 = 0 time = 905
.meas tran vdout0_11ck180 FIND v(dout0_11) AT=905.025n

* CHECK dout0_12 Vdout0_12ck180 = 0 time = 905
.meas tran vdout0_12ck180 FIND v(dout0_12) AT=905.025n

* CHECK dout0_13 Vdout0_13ck180 = 0.9 time = 905
.meas tran vdout0_13ck180 FIND v(dout0_13) AT=905.025n

* CHECK dout0_14 Vdout0_14ck180 = 0 time = 905
.meas tran vdout0_14ck180 FIND v(dout0_14) AT=905.025n

* CHECK dout0_15 Vdout0_15ck180 = 0.9 time = 905
.meas tran vdout0_15ck180 FIND v(dout0_15) AT=905.025n

* CHECK dout0_16 Vdout0_16ck180 = 0 time = 905
.meas tran vdout0_16ck180 FIND v(dout0_16) AT=905.025n

* CHECK dout0_17 Vdout0_17ck180 = 0 time = 905
.meas tran vdout0_17ck180 FIND v(dout0_17) AT=905.025n

* CHECK dout0_18 Vdout0_18ck180 = 0 time = 905
.meas tran vdout0_18ck180 FIND v(dout0_18) AT=905.025n

* CHECK dout0_19 Vdout0_19ck180 = 0 time = 905
.meas tran vdout0_19ck180 FIND v(dout0_19) AT=905.025n

* CHECK dout0_0 Vdout0_0ck182 = 0 time = 915
.meas tran vdout0_0ck182 FIND v(dout0_0) AT=915.025n

* CHECK dout0_1 Vdout0_1ck182 = 0 time = 915
.meas tran vdout0_1ck182 FIND v(dout0_1) AT=915.025n

* CHECK dout0_2 Vdout0_2ck182 = 0 time = 915
.meas tran vdout0_2ck182 FIND v(dout0_2) AT=915.025n

* CHECK dout0_3 Vdout0_3ck182 = 0.9 time = 915
.meas tran vdout0_3ck182 FIND v(dout0_3) AT=915.025n

* CHECK dout0_4 Vdout0_4ck182 = 0 time = 915
.meas tran vdout0_4ck182 FIND v(dout0_4) AT=915.025n

* CHECK dout0_5 Vdout0_5ck182 = 0 time = 915
.meas tran vdout0_5ck182 FIND v(dout0_5) AT=915.025n

* CHECK dout0_6 Vdout0_6ck182 = 0.9 time = 915
.meas tran vdout0_6ck182 FIND v(dout0_6) AT=915.025n

* CHECK dout0_7 Vdout0_7ck182 = 0.9 time = 915
.meas tran vdout0_7ck182 FIND v(dout0_7) AT=915.025n

* CHECK dout0_8 Vdout0_8ck182 = 0 time = 915
.meas tran vdout0_8ck182 FIND v(dout0_8) AT=915.025n

* CHECK dout0_9 Vdout0_9ck182 = 0 time = 915
.meas tran vdout0_9ck182 FIND v(dout0_9) AT=915.025n

* CHECK dout0_10 Vdout0_10ck182 = 0.9 time = 915
.meas tran vdout0_10ck182 FIND v(dout0_10) AT=915.025n

* CHECK dout0_11 Vdout0_11ck182 = 0 time = 915
.meas tran vdout0_11ck182 FIND v(dout0_11) AT=915.025n

* CHECK dout0_12 Vdout0_12ck182 = 0 time = 915
.meas tran vdout0_12ck182 FIND v(dout0_12) AT=915.025n

* CHECK dout0_13 Vdout0_13ck182 = 0.9 time = 915
.meas tran vdout0_13ck182 FIND v(dout0_13) AT=915.025n

* CHECK dout0_14 Vdout0_14ck182 = 0 time = 915
.meas tran vdout0_14ck182 FIND v(dout0_14) AT=915.025n

* CHECK dout0_15 Vdout0_15ck182 = 0.9 time = 915
.meas tran vdout0_15ck182 FIND v(dout0_15) AT=915.025n

* CHECK dout0_16 Vdout0_16ck182 = 0 time = 915
.meas tran vdout0_16ck182 FIND v(dout0_16) AT=915.025n

* CHECK dout0_17 Vdout0_17ck182 = 0 time = 915
.meas tran vdout0_17ck182 FIND v(dout0_17) AT=915.025n

* CHECK dout0_18 Vdout0_18ck182 = 0 time = 915
.meas tran vdout0_18ck182 FIND v(dout0_18) AT=915.025n

* CHECK dout0_19 Vdout0_19ck182 = 0 time = 915
.meas tran vdout0_19ck182 FIND v(dout0_19) AT=915.025n

* CHECK dout0_0 Vdout0_0ck185 = 0 time = 930
.meas tran vdout0_0ck185 FIND v(dout0_0) AT=930.025n

* CHECK dout0_1 Vdout0_1ck185 = 0.9 time = 930
.meas tran vdout0_1ck185 FIND v(dout0_1) AT=930.025n

* CHECK dout0_2 Vdout0_2ck185 = 0 time = 930
.meas tran vdout0_2ck185 FIND v(dout0_2) AT=930.025n

* CHECK dout0_3 Vdout0_3ck185 = 0.9 time = 930
.meas tran vdout0_3ck185 FIND v(dout0_3) AT=930.025n

* CHECK dout0_4 Vdout0_4ck185 = 0.9 time = 930
.meas tran vdout0_4ck185 FIND v(dout0_4) AT=930.025n

* CHECK dout0_5 Vdout0_5ck185 = 0.9 time = 930
.meas tran vdout0_5ck185 FIND v(dout0_5) AT=930.025n

* CHECK dout0_6 Vdout0_6ck185 = 0.9 time = 930
.meas tran vdout0_6ck185 FIND v(dout0_6) AT=930.025n

* CHECK dout0_7 Vdout0_7ck185 = 0 time = 930
.meas tran vdout0_7ck185 FIND v(dout0_7) AT=930.025n

* CHECK dout0_8 Vdout0_8ck185 = 0.9 time = 930
.meas tran vdout0_8ck185 FIND v(dout0_8) AT=930.025n

* CHECK dout0_9 Vdout0_9ck185 = 0 time = 930
.meas tran vdout0_9ck185 FIND v(dout0_9) AT=930.025n

* CHECK dout0_10 Vdout0_10ck185 = 0 time = 930
.meas tran vdout0_10ck185 FIND v(dout0_10) AT=930.025n

* CHECK dout0_11 Vdout0_11ck185 = 0 time = 930
.meas tran vdout0_11ck185 FIND v(dout0_11) AT=930.025n

* CHECK dout0_12 Vdout0_12ck185 = 0.9 time = 930
.meas tran vdout0_12ck185 FIND v(dout0_12) AT=930.025n

* CHECK dout0_13 Vdout0_13ck185 = 0.9 time = 930
.meas tran vdout0_13ck185 FIND v(dout0_13) AT=930.025n

* CHECK dout0_14 Vdout0_14ck185 = 0 time = 930
.meas tran vdout0_14ck185 FIND v(dout0_14) AT=930.025n

* CHECK dout0_15 Vdout0_15ck185 = 0.9 time = 930
.meas tran vdout0_15ck185 FIND v(dout0_15) AT=930.025n

* CHECK dout0_16 Vdout0_16ck185 = 0 time = 930
.meas tran vdout0_16ck185 FIND v(dout0_16) AT=930.025n

* CHECK dout0_17 Vdout0_17ck185 = 0.9 time = 930
.meas tran vdout0_17ck185 FIND v(dout0_17) AT=930.025n

* CHECK dout0_18 Vdout0_18ck185 = 0 time = 930
.meas tran vdout0_18ck185 FIND v(dout0_18) AT=930.025n

* CHECK dout0_19 Vdout0_19ck185 = 0.9 time = 930
.meas tran vdout0_19ck185 FIND v(dout0_19) AT=930.025n

* CHECK dout0_0 Vdout0_0ck187 = 0 time = 940
.meas tran vdout0_0ck187 FIND v(dout0_0) AT=940.025n

* CHECK dout0_1 Vdout0_1ck187 = 0.9 time = 940
.meas tran vdout0_1ck187 FIND v(dout0_1) AT=940.025n

* CHECK dout0_2 Vdout0_2ck187 = 0 time = 940
.meas tran vdout0_2ck187 FIND v(dout0_2) AT=940.025n

* CHECK dout0_3 Vdout0_3ck187 = 0.9 time = 940
.meas tran vdout0_3ck187 FIND v(dout0_3) AT=940.025n

* CHECK dout0_4 Vdout0_4ck187 = 0.9 time = 940
.meas tran vdout0_4ck187 FIND v(dout0_4) AT=940.025n

* CHECK dout0_5 Vdout0_5ck187 = 0.9 time = 940
.meas tran vdout0_5ck187 FIND v(dout0_5) AT=940.025n

* CHECK dout0_6 Vdout0_6ck187 = 0.9 time = 940
.meas tran vdout0_6ck187 FIND v(dout0_6) AT=940.025n

* CHECK dout0_7 Vdout0_7ck187 = 0 time = 940
.meas tran vdout0_7ck187 FIND v(dout0_7) AT=940.025n

* CHECK dout0_8 Vdout0_8ck187 = 0.9 time = 940
.meas tran vdout0_8ck187 FIND v(dout0_8) AT=940.025n

* CHECK dout0_9 Vdout0_9ck187 = 0 time = 940
.meas tran vdout0_9ck187 FIND v(dout0_9) AT=940.025n

* CHECK dout0_10 Vdout0_10ck187 = 0 time = 940
.meas tran vdout0_10ck187 FIND v(dout0_10) AT=940.025n

* CHECK dout0_11 Vdout0_11ck187 = 0 time = 940
.meas tran vdout0_11ck187 FIND v(dout0_11) AT=940.025n

* CHECK dout0_12 Vdout0_12ck187 = 0.9 time = 940
.meas tran vdout0_12ck187 FIND v(dout0_12) AT=940.025n

* CHECK dout0_13 Vdout0_13ck187 = 0.9 time = 940
.meas tran vdout0_13ck187 FIND v(dout0_13) AT=940.025n

* CHECK dout0_14 Vdout0_14ck187 = 0 time = 940
.meas tran vdout0_14ck187 FIND v(dout0_14) AT=940.025n

* CHECK dout0_15 Vdout0_15ck187 = 0.9 time = 940
.meas tran vdout0_15ck187 FIND v(dout0_15) AT=940.025n

* CHECK dout0_16 Vdout0_16ck187 = 0 time = 940
.meas tran vdout0_16ck187 FIND v(dout0_16) AT=940.025n

* CHECK dout0_17 Vdout0_17ck187 = 0.9 time = 940
.meas tran vdout0_17ck187 FIND v(dout0_17) AT=940.025n

* CHECK dout0_18 Vdout0_18ck187 = 0 time = 940
.meas tran vdout0_18ck187 FIND v(dout0_18) AT=940.025n

* CHECK dout0_19 Vdout0_19ck187 = 0.9 time = 940
.meas tran vdout0_19ck187 FIND v(dout0_19) AT=940.025n

* CHECK dout0_0 Vdout0_0ck188 = 0.9 time = 945
.meas tran vdout0_0ck188 FIND v(dout0_0) AT=945.025n

* CHECK dout0_1 Vdout0_1ck188 = 0.9 time = 945
.meas tran vdout0_1ck188 FIND v(dout0_1) AT=945.025n

* CHECK dout0_2 Vdout0_2ck188 = 0.9 time = 945
.meas tran vdout0_2ck188 FIND v(dout0_2) AT=945.025n

* CHECK dout0_3 Vdout0_3ck188 = 0.9 time = 945
.meas tran vdout0_3ck188 FIND v(dout0_3) AT=945.025n

* CHECK dout0_4 Vdout0_4ck188 = 0 time = 945
.meas tran vdout0_4ck188 FIND v(dout0_4) AT=945.025n

* CHECK dout0_5 Vdout0_5ck188 = 0 time = 945
.meas tran vdout0_5ck188 FIND v(dout0_5) AT=945.025n

* CHECK dout0_6 Vdout0_6ck188 = 0 time = 945
.meas tran vdout0_6ck188 FIND v(dout0_6) AT=945.025n

* CHECK dout0_7 Vdout0_7ck188 = 0.9 time = 945
.meas tran vdout0_7ck188 FIND v(dout0_7) AT=945.025n

* CHECK dout0_8 Vdout0_8ck188 = 0.9 time = 945
.meas tran vdout0_8ck188 FIND v(dout0_8) AT=945.025n

* CHECK dout0_9 Vdout0_9ck188 = 0 time = 945
.meas tran vdout0_9ck188 FIND v(dout0_9) AT=945.025n

* CHECK dout0_10 Vdout0_10ck188 = 0 time = 945
.meas tran vdout0_10ck188 FIND v(dout0_10) AT=945.025n

* CHECK dout0_11 Vdout0_11ck188 = 0 time = 945
.meas tran vdout0_11ck188 FIND v(dout0_11) AT=945.025n

* CHECK dout0_12 Vdout0_12ck188 = 0 time = 945
.meas tran vdout0_12ck188 FIND v(dout0_12) AT=945.025n

* CHECK dout0_13 Vdout0_13ck188 = 0 time = 945
.meas tran vdout0_13ck188 FIND v(dout0_13) AT=945.025n

* CHECK dout0_14 Vdout0_14ck188 = 0 time = 945
.meas tran vdout0_14ck188 FIND v(dout0_14) AT=945.025n

* CHECK dout0_15 Vdout0_15ck188 = 0.9 time = 945
.meas tran vdout0_15ck188 FIND v(dout0_15) AT=945.025n

* CHECK dout0_16 Vdout0_16ck188 = 0 time = 945
.meas tran vdout0_16ck188 FIND v(dout0_16) AT=945.025n

* CHECK dout0_17 Vdout0_17ck188 = 0.9 time = 945
.meas tran vdout0_17ck188 FIND v(dout0_17) AT=945.025n

* CHECK dout0_18 Vdout0_18ck188 = 0.9 time = 945
.meas tran vdout0_18ck188 FIND v(dout0_18) AT=945.025n

* CHECK dout0_19 Vdout0_19ck188 = 0 time = 945
.meas tran vdout0_19ck188 FIND v(dout0_19) AT=945.025n

* CHECK dout0_0 Vdout0_0ck191 = 0 time = 960
.meas tran vdout0_0ck191 FIND v(dout0_0) AT=960.025n

* CHECK dout0_1 Vdout0_1ck191 = 0.9 time = 960
.meas tran vdout0_1ck191 FIND v(dout0_1) AT=960.025n

* CHECK dout0_2 Vdout0_2ck191 = 0.9 time = 960
.meas tran vdout0_2ck191 FIND v(dout0_2) AT=960.025n

* CHECK dout0_3 Vdout0_3ck191 = 0.9 time = 960
.meas tran vdout0_3ck191 FIND v(dout0_3) AT=960.025n

* CHECK dout0_4 Vdout0_4ck191 = 0 time = 960
.meas tran vdout0_4ck191 FIND v(dout0_4) AT=960.025n

* CHECK dout0_5 Vdout0_5ck191 = 0.9 time = 960
.meas tran vdout0_5ck191 FIND v(dout0_5) AT=960.025n

* CHECK dout0_6 Vdout0_6ck191 = 0.9 time = 960
.meas tran vdout0_6ck191 FIND v(dout0_6) AT=960.025n

* CHECK dout0_7 Vdout0_7ck191 = 0 time = 960
.meas tran vdout0_7ck191 FIND v(dout0_7) AT=960.025n

* CHECK dout0_8 Vdout0_8ck191 = 0 time = 960
.meas tran vdout0_8ck191 FIND v(dout0_8) AT=960.025n

* CHECK dout0_9 Vdout0_9ck191 = 0 time = 960
.meas tran vdout0_9ck191 FIND v(dout0_9) AT=960.025n

* CHECK dout0_10 Vdout0_10ck191 = 0 time = 960
.meas tran vdout0_10ck191 FIND v(dout0_10) AT=960.025n

* CHECK dout0_11 Vdout0_11ck191 = 0.9 time = 960
.meas tran vdout0_11ck191 FIND v(dout0_11) AT=960.025n

* CHECK dout0_12 Vdout0_12ck191 = 0 time = 960
.meas tran vdout0_12ck191 FIND v(dout0_12) AT=960.025n

* CHECK dout0_13 Vdout0_13ck191 = 0 time = 960
.meas tran vdout0_13ck191 FIND v(dout0_13) AT=960.025n

* CHECK dout0_14 Vdout0_14ck191 = 0 time = 960
.meas tran vdout0_14ck191 FIND v(dout0_14) AT=960.025n

* CHECK dout0_15 Vdout0_15ck191 = 0.9 time = 960
.meas tran vdout0_15ck191 FIND v(dout0_15) AT=960.025n

* CHECK dout0_16 Vdout0_16ck191 = 0 time = 960
.meas tran vdout0_16ck191 FIND v(dout0_16) AT=960.025n

* CHECK dout0_17 Vdout0_17ck191 = 0.9 time = 960
.meas tran vdout0_17ck191 FIND v(dout0_17) AT=960.025n

* CHECK dout0_18 Vdout0_18ck191 = 0 time = 960
.meas tran vdout0_18ck191 FIND v(dout0_18) AT=960.025n

* CHECK dout0_19 Vdout0_19ck191 = 0.9 time = 960
.meas tran vdout0_19ck191 FIND v(dout0_19) AT=960.025n

* CHECK dout0_0 Vdout0_0ck194 = 0 time = 975
.meas tran vdout0_0ck194 FIND v(dout0_0) AT=975.025n

* CHECK dout0_1 Vdout0_1ck194 = 0 time = 975
.meas tran vdout0_1ck194 FIND v(dout0_1) AT=975.025n

* CHECK dout0_2 Vdout0_2ck194 = 0 time = 975
.meas tran vdout0_2ck194 FIND v(dout0_2) AT=975.025n

* CHECK dout0_3 Vdout0_3ck194 = 0 time = 975
.meas tran vdout0_3ck194 FIND v(dout0_3) AT=975.025n

* CHECK dout0_4 Vdout0_4ck194 = 0.9 time = 975
.meas tran vdout0_4ck194 FIND v(dout0_4) AT=975.025n

* CHECK dout0_5 Vdout0_5ck194 = 0 time = 975
.meas tran vdout0_5ck194 FIND v(dout0_5) AT=975.025n

* CHECK dout0_6 Vdout0_6ck194 = 0 time = 975
.meas tran vdout0_6ck194 FIND v(dout0_6) AT=975.025n

* CHECK dout0_7 Vdout0_7ck194 = 0 time = 975
.meas tran vdout0_7ck194 FIND v(dout0_7) AT=975.025n

* CHECK dout0_8 Vdout0_8ck194 = 0.9 time = 975
.meas tran vdout0_8ck194 FIND v(dout0_8) AT=975.025n

* CHECK dout0_9 Vdout0_9ck194 = 0 time = 975
.meas tran vdout0_9ck194 FIND v(dout0_9) AT=975.025n

* CHECK dout0_10 Vdout0_10ck194 = 0.9 time = 975
.meas tran vdout0_10ck194 FIND v(dout0_10) AT=975.025n

* CHECK dout0_11 Vdout0_11ck194 = 0 time = 975
.meas tran vdout0_11ck194 FIND v(dout0_11) AT=975.025n

* CHECK dout0_12 Vdout0_12ck194 = 0 time = 975
.meas tran vdout0_12ck194 FIND v(dout0_12) AT=975.025n

* CHECK dout0_13 Vdout0_13ck194 = 0 time = 975
.meas tran vdout0_13ck194 FIND v(dout0_13) AT=975.025n

* CHECK dout0_14 Vdout0_14ck194 = 0 time = 975
.meas tran vdout0_14ck194 FIND v(dout0_14) AT=975.025n

* CHECK dout0_15 Vdout0_15ck194 = 0.9 time = 975
.meas tran vdout0_15ck194 FIND v(dout0_15) AT=975.025n

* CHECK dout0_16 Vdout0_16ck194 = 0.9 time = 975
.meas tran vdout0_16ck194 FIND v(dout0_16) AT=975.025n

* CHECK dout0_17 Vdout0_17ck194 = 0.9 time = 975
.meas tran vdout0_17ck194 FIND v(dout0_17) AT=975.025n

* CHECK dout0_18 Vdout0_18ck194 = 0.9 time = 975
.meas tran vdout0_18ck194 FIND v(dout0_18) AT=975.025n

* CHECK dout0_19 Vdout0_19ck194 = 0.9 time = 975
.meas tran vdout0_19ck194 FIND v(dout0_19) AT=975.025n

* CHECK dout0_0 Vdout0_0ck195 = 0 time = 980
.meas tran vdout0_0ck195 FIND v(dout0_0) AT=980.025n

* CHECK dout0_1 Vdout0_1ck195 = 0.9 time = 980
.meas tran vdout0_1ck195 FIND v(dout0_1) AT=980.025n

* CHECK dout0_2 Vdout0_2ck195 = 0.9 time = 980
.meas tran vdout0_2ck195 FIND v(dout0_2) AT=980.025n

* CHECK dout0_3 Vdout0_3ck195 = 0.9 time = 980
.meas tran vdout0_3ck195 FIND v(dout0_3) AT=980.025n

* CHECK dout0_4 Vdout0_4ck195 = 0 time = 980
.meas tran vdout0_4ck195 FIND v(dout0_4) AT=980.025n

* CHECK dout0_5 Vdout0_5ck195 = 0.9 time = 980
.meas tran vdout0_5ck195 FIND v(dout0_5) AT=980.025n

* CHECK dout0_6 Vdout0_6ck195 = 0.9 time = 980
.meas tran vdout0_6ck195 FIND v(dout0_6) AT=980.025n

* CHECK dout0_7 Vdout0_7ck195 = 0 time = 980
.meas tran vdout0_7ck195 FIND v(dout0_7) AT=980.025n

* CHECK dout0_8 Vdout0_8ck195 = 0 time = 980
.meas tran vdout0_8ck195 FIND v(dout0_8) AT=980.025n

* CHECK dout0_9 Vdout0_9ck195 = 0 time = 980
.meas tran vdout0_9ck195 FIND v(dout0_9) AT=980.025n

* CHECK dout0_10 Vdout0_10ck195 = 0 time = 980
.meas tran vdout0_10ck195 FIND v(dout0_10) AT=980.025n

* CHECK dout0_11 Vdout0_11ck195 = 0.9 time = 980
.meas tran vdout0_11ck195 FIND v(dout0_11) AT=980.025n

* CHECK dout0_12 Vdout0_12ck195 = 0 time = 980
.meas tran vdout0_12ck195 FIND v(dout0_12) AT=980.025n

* CHECK dout0_13 Vdout0_13ck195 = 0 time = 980
.meas tran vdout0_13ck195 FIND v(dout0_13) AT=980.025n

* CHECK dout0_14 Vdout0_14ck195 = 0 time = 980
.meas tran vdout0_14ck195 FIND v(dout0_14) AT=980.025n

* CHECK dout0_15 Vdout0_15ck195 = 0.9 time = 980
.meas tran vdout0_15ck195 FIND v(dout0_15) AT=980.025n

* CHECK dout0_16 Vdout0_16ck195 = 0 time = 980
.meas tran vdout0_16ck195 FIND v(dout0_16) AT=980.025n

* CHECK dout0_17 Vdout0_17ck195 = 0.9 time = 980
.meas tran vdout0_17ck195 FIND v(dout0_17) AT=980.025n

* CHECK dout0_18 Vdout0_18ck195 = 0 time = 980
.meas tran vdout0_18ck195 FIND v(dout0_18) AT=980.025n

* CHECK dout0_19 Vdout0_19ck195 = 0.9 time = 980
.meas tran vdout0_19ck195 FIND v(dout0_19) AT=980.025n

* CHECK dout0_0 Vdout0_0ck197 = 0 time = 990
.meas tran vdout0_0ck197 FIND v(dout0_0) AT=990.025n

* CHECK dout0_1 Vdout0_1ck197 = 0 time = 990
.meas tran vdout0_1ck197 FIND v(dout0_1) AT=990.025n

* CHECK dout0_2 Vdout0_2ck197 = 0.9 time = 990
.meas tran vdout0_2ck197 FIND v(dout0_2) AT=990.025n

* CHECK dout0_3 Vdout0_3ck197 = 0.9 time = 990
.meas tran vdout0_3ck197 FIND v(dout0_3) AT=990.025n

* CHECK dout0_4 Vdout0_4ck197 = 0 time = 990
.meas tran vdout0_4ck197 FIND v(dout0_4) AT=990.025n

* CHECK dout0_5 Vdout0_5ck197 = 0.9 time = 990
.meas tran vdout0_5ck197 FIND v(dout0_5) AT=990.025n

* CHECK dout0_6 Vdout0_6ck197 = 0.9 time = 990
.meas tran vdout0_6ck197 FIND v(dout0_6) AT=990.025n

* CHECK dout0_7 Vdout0_7ck197 = 0 time = 990
.meas tran vdout0_7ck197 FIND v(dout0_7) AT=990.025n

* CHECK dout0_8 Vdout0_8ck197 = 0 time = 990
.meas tran vdout0_8ck197 FIND v(dout0_8) AT=990.025n

* CHECK dout0_9 Vdout0_9ck197 = 0 time = 990
.meas tran vdout0_9ck197 FIND v(dout0_9) AT=990.025n

* CHECK dout0_10 Vdout0_10ck197 = 0.9 time = 990
.meas tran vdout0_10ck197 FIND v(dout0_10) AT=990.025n

* CHECK dout0_11 Vdout0_11ck197 = 0.9 time = 990
.meas tran vdout0_11ck197 FIND v(dout0_11) AT=990.025n

* CHECK dout0_12 Vdout0_12ck197 = 0.9 time = 990
.meas tran vdout0_12ck197 FIND v(dout0_12) AT=990.025n

* CHECK dout0_13 Vdout0_13ck197 = 0.9 time = 990
.meas tran vdout0_13ck197 FIND v(dout0_13) AT=990.025n

* CHECK dout0_14 Vdout0_14ck197 = 0.9 time = 990
.meas tran vdout0_14ck197 FIND v(dout0_14) AT=990.025n

* CHECK dout0_15 Vdout0_15ck197 = 0.9 time = 990
.meas tran vdout0_15ck197 FIND v(dout0_15) AT=990.025n

* CHECK dout0_16 Vdout0_16ck197 = 0.9 time = 990
.meas tran vdout0_16ck197 FIND v(dout0_16) AT=990.025n

* CHECK dout0_17 Vdout0_17ck197 = 0.9 time = 990
.meas tran vdout0_17ck197 FIND v(dout0_17) AT=990.025n

* CHECK dout0_18 Vdout0_18ck197 = 0.9 time = 990
.meas tran vdout0_18ck197 FIND v(dout0_18) AT=990.025n

* CHECK dout0_19 Vdout0_19ck197 = 0.9 time = 990
.meas tran vdout0_19ck197 FIND v(dout0_19) AT=990.025n

* CHECK dout0_0 Vdout0_0ck200 = 0.9 time = 1005
.meas tran vdout0_0ck200 FIND v(dout0_0) AT=1005.025n

* CHECK dout0_1 Vdout0_1ck200 = 0.9 time = 1005
.meas tran vdout0_1ck200 FIND v(dout0_1) AT=1005.025n

* CHECK dout0_2 Vdout0_2ck200 = 0.9 time = 1005
.meas tran vdout0_2ck200 FIND v(dout0_2) AT=1005.025n

* CHECK dout0_3 Vdout0_3ck200 = 0.9 time = 1005
.meas tran vdout0_3ck200 FIND v(dout0_3) AT=1005.025n

* CHECK dout0_4 Vdout0_4ck200 = 0 time = 1005
.meas tran vdout0_4ck200 FIND v(dout0_4) AT=1005.025n

* CHECK dout0_5 Vdout0_5ck200 = 0.9 time = 1005
.meas tran vdout0_5ck200 FIND v(dout0_5) AT=1005.025n

* CHECK dout0_6 Vdout0_6ck200 = 0.9 time = 1005
.meas tran vdout0_6ck200 FIND v(dout0_6) AT=1005.025n

* CHECK dout0_7 Vdout0_7ck200 = 0.9 time = 1005
.meas tran vdout0_7ck200 FIND v(dout0_7) AT=1005.025n

* CHECK dout0_8 Vdout0_8ck200 = 0 time = 1005
.meas tran vdout0_8ck200 FIND v(dout0_8) AT=1005.025n

* CHECK dout0_9 Vdout0_9ck200 = 0.9 time = 1005
.meas tran vdout0_9ck200 FIND v(dout0_9) AT=1005.025n

* CHECK dout0_10 Vdout0_10ck200 = 0 time = 1005
.meas tran vdout0_10ck200 FIND v(dout0_10) AT=1005.025n

* CHECK dout0_11 Vdout0_11ck200 = 0.9 time = 1005
.meas tran vdout0_11ck200 FIND v(dout0_11) AT=1005.025n

* CHECK dout0_12 Vdout0_12ck200 = 0 time = 1005
.meas tran vdout0_12ck200 FIND v(dout0_12) AT=1005.025n

* CHECK dout0_13 Vdout0_13ck200 = 0.9 time = 1005
.meas tran vdout0_13ck200 FIND v(dout0_13) AT=1005.025n

* CHECK dout0_14 Vdout0_14ck200 = 0.9 time = 1005
.meas tran vdout0_14ck200 FIND v(dout0_14) AT=1005.025n

* CHECK dout0_15 Vdout0_15ck200 = 0.9 time = 1005
.meas tran vdout0_15ck200 FIND v(dout0_15) AT=1005.025n

* CHECK dout0_16 Vdout0_16ck200 = 0 time = 1005
.meas tran vdout0_16ck200 FIND v(dout0_16) AT=1005.025n

* CHECK dout0_17 Vdout0_17ck200 = 0 time = 1005
.meas tran vdout0_17ck200 FIND v(dout0_17) AT=1005.025n

* CHECK dout0_18 Vdout0_18ck200 = 0 time = 1005
.meas tran vdout0_18ck200 FIND v(dout0_18) AT=1005.025n

* CHECK dout0_19 Vdout0_19ck200 = 0 time = 1005
.meas tran vdout0_19ck200 FIND v(dout0_19) AT=1005.025n

* CHECK dout0_0 Vdout0_0ck201 = 0 time = 1010
.meas tran vdout0_0ck201 FIND v(dout0_0) AT=1010.025n

* CHECK dout0_1 Vdout0_1ck201 = 0 time = 1010
.meas tran vdout0_1ck201 FIND v(dout0_1) AT=1010.025n

* CHECK dout0_2 Vdout0_2ck201 = 0.9 time = 1010
.meas tran vdout0_2ck201 FIND v(dout0_2) AT=1010.025n

* CHECK dout0_3 Vdout0_3ck201 = 0.9 time = 1010
.meas tran vdout0_3ck201 FIND v(dout0_3) AT=1010.025n

* CHECK dout0_4 Vdout0_4ck201 = 0 time = 1010
.meas tran vdout0_4ck201 FIND v(dout0_4) AT=1010.025n

* CHECK dout0_5 Vdout0_5ck201 = 0.9 time = 1010
.meas tran vdout0_5ck201 FIND v(dout0_5) AT=1010.025n

* CHECK dout0_6 Vdout0_6ck201 = 0.9 time = 1010
.meas tran vdout0_6ck201 FIND v(dout0_6) AT=1010.025n

* CHECK dout0_7 Vdout0_7ck201 = 0.9 time = 1010
.meas tran vdout0_7ck201 FIND v(dout0_7) AT=1010.025n

* CHECK dout0_8 Vdout0_8ck201 = 0.9 time = 1010
.meas tran vdout0_8ck201 FIND v(dout0_8) AT=1010.025n

* CHECK dout0_9 Vdout0_9ck201 = 0 time = 1010
.meas tran vdout0_9ck201 FIND v(dout0_9) AT=1010.025n

* CHECK dout0_10 Vdout0_10ck201 = 0 time = 1010
.meas tran vdout0_10ck201 FIND v(dout0_10) AT=1010.025n

* CHECK dout0_11 Vdout0_11ck201 = 0 time = 1010
.meas tran vdout0_11ck201 FIND v(dout0_11) AT=1010.025n

* CHECK dout0_12 Vdout0_12ck201 = 0 time = 1010
.meas tran vdout0_12ck201 FIND v(dout0_12) AT=1010.025n

* CHECK dout0_13 Vdout0_13ck201 = 0.9 time = 1010
.meas tran vdout0_13ck201 FIND v(dout0_13) AT=1010.025n

* CHECK dout0_14 Vdout0_14ck201 = 0 time = 1010
.meas tran vdout0_14ck201 FIND v(dout0_14) AT=1010.025n

* CHECK dout0_15 Vdout0_15ck201 = 0.9 time = 1010
.meas tran vdout0_15ck201 FIND v(dout0_15) AT=1010.025n

* CHECK dout0_16 Vdout0_16ck201 = 0.9 time = 1010
.meas tran vdout0_16ck201 FIND v(dout0_16) AT=1010.025n

* CHECK dout0_17 Vdout0_17ck201 = 0 time = 1010
.meas tran vdout0_17ck201 FIND v(dout0_17) AT=1010.025n

* CHECK dout0_18 Vdout0_18ck201 = 0.9 time = 1010
.meas tran vdout0_18ck201 FIND v(dout0_18) AT=1010.025n

* CHECK dout0_19 Vdout0_19ck201 = 0 time = 1010
.meas tran vdout0_19ck201 FIND v(dout0_19) AT=1010.025n

* CHECK dout0_0 Vdout0_0ck204 = 0 time = 1025
.meas tran vdout0_0ck204 FIND v(dout0_0) AT=1025.025n

* CHECK dout0_1 Vdout0_1ck204 = 0 time = 1025
.meas tran vdout0_1ck204 FIND v(dout0_1) AT=1025.025n

* CHECK dout0_2 Vdout0_2ck204 = 0 time = 1025
.meas tran vdout0_2ck204 FIND v(dout0_2) AT=1025.025n

* CHECK dout0_3 Vdout0_3ck204 = 0 time = 1025
.meas tran vdout0_3ck204 FIND v(dout0_3) AT=1025.025n

* CHECK dout0_4 Vdout0_4ck204 = 0.9 time = 1025
.meas tran vdout0_4ck204 FIND v(dout0_4) AT=1025.025n

* CHECK dout0_5 Vdout0_5ck204 = 0 time = 1025
.meas tran vdout0_5ck204 FIND v(dout0_5) AT=1025.025n

* CHECK dout0_6 Vdout0_6ck204 = 0 time = 1025
.meas tran vdout0_6ck204 FIND v(dout0_6) AT=1025.025n

* CHECK dout0_7 Vdout0_7ck204 = 0 time = 1025
.meas tran vdout0_7ck204 FIND v(dout0_7) AT=1025.025n

* CHECK dout0_8 Vdout0_8ck204 = 0.9 time = 1025
.meas tran vdout0_8ck204 FIND v(dout0_8) AT=1025.025n

* CHECK dout0_9 Vdout0_9ck204 = 0 time = 1025
.meas tran vdout0_9ck204 FIND v(dout0_9) AT=1025.025n

* CHECK dout0_10 Vdout0_10ck204 = 0.9 time = 1025
.meas tran vdout0_10ck204 FIND v(dout0_10) AT=1025.025n

* CHECK dout0_11 Vdout0_11ck204 = 0 time = 1025
.meas tran vdout0_11ck204 FIND v(dout0_11) AT=1025.025n

* CHECK dout0_12 Vdout0_12ck204 = 0 time = 1025
.meas tran vdout0_12ck204 FIND v(dout0_12) AT=1025.025n

* CHECK dout0_13 Vdout0_13ck204 = 0 time = 1025
.meas tran vdout0_13ck204 FIND v(dout0_13) AT=1025.025n

* CHECK dout0_14 Vdout0_14ck204 = 0 time = 1025
.meas tran vdout0_14ck204 FIND v(dout0_14) AT=1025.025n

* CHECK dout0_15 Vdout0_15ck204 = 0.9 time = 1025
.meas tran vdout0_15ck204 FIND v(dout0_15) AT=1025.025n

* CHECK dout0_16 Vdout0_16ck204 = 0.9 time = 1025
.meas tran vdout0_16ck204 FIND v(dout0_16) AT=1025.025n

* CHECK dout0_17 Vdout0_17ck204 = 0.9 time = 1025
.meas tran vdout0_17ck204 FIND v(dout0_17) AT=1025.025n

* CHECK dout0_18 Vdout0_18ck204 = 0.9 time = 1025
.meas tran vdout0_18ck204 FIND v(dout0_18) AT=1025.025n

* CHECK dout0_19 Vdout0_19ck204 = 0.9 time = 1025
.meas tran vdout0_19ck204 FIND v(dout0_19) AT=1025.025n

* probe is used for hspice/xa, while plot is used in ngspice
.plot V(*)
.end

