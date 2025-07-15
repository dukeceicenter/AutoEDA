**************************************************
* OpenRAM generated memory.
* Words: 32
* Data bits: 72
* Banks: 1
* Column mux: 1:1
* Trimmed: False
* LVS: True
**************************************************

* spice ptx M{0} {1} pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p

* spice ptx M{0} {1} nmos_vtg m=1 w=0.09u l=0.05u pd=0.28u ps=0.28u as=0.01p ad=0.01p

.SUBCKT freepdk45_sram_1w1r_32x72_pinv
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.27u l=0.05u 
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.09u l=0.05u 
.ENDS freepdk45_sram_1w1r_32x72_pinv

* spice ptx M{0} {1} nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p

* spice ptx M{0} {1} nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p

* spice ptx M{0} {1} pmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p

.SUBCKT freepdk45_sram_1w1r_32x72_pnand2
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpnand2_pmos1 vdd A Z vdd pmos_vtg m=1 w=0.27u l=0.05u 
Mpnand2_pmos2 Z B vdd vdd pmos_vtg m=1 w=0.27u l=0.05u 
Mpnand2_nmos1 Z B net1 gnd nmos_vtg m=1 w=0.18u l=0.05u 
Mpnand2_nmos2 net1 A gnd gnd nmos_vtg m=1 w=0.18u l=0.05u 
.ENDS freepdk45_sram_1w1r_32x72_pnand2

.SUBCKT freepdk45_sram_1w1r_32x72_and2_dec
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Xpand2_dec_nand
+ A B zb_int vdd gnd
+ freepdk45_sram_1w1r_32x72_pnand2
Xpand2_dec_inv
+ zb_int Z vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv
.ENDS freepdk45_sram_1w1r_32x72_and2_dec

.SUBCKT freepdk45_sram_1w1r_32x72_hierarchical_predecode2x4
+ in_0 in_1 out_0 out_1 out_2 out_3 vdd gnd
* INPUT : in_0 
* INPUT : in_1 
* OUTPUT: out_0 
* OUTPUT: out_1 
* OUTPUT: out_2 
* OUTPUT: out_3 
* POWER : vdd 
* GROUND: gnd 
Xpre_inv_0
+ in_0 inbar_0 vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv
Xpre_inv_1
+ in_1 inbar_1 vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv
XXpre2x4_and_0
+ inbar_0 inbar_1 out_0 vdd gnd
+ freepdk45_sram_1w1r_32x72_and2_dec
XXpre2x4_and_1
+ in_0 inbar_1 out_1 vdd gnd
+ freepdk45_sram_1w1r_32x72_and2_dec
XXpre2x4_and_2
+ inbar_0 in_1 out_2 vdd gnd
+ freepdk45_sram_1w1r_32x72_and2_dec
XXpre2x4_and_3
+ in_0 in_1 out_3 vdd gnd
+ freepdk45_sram_1w1r_32x72_and2_dec
.ENDS freepdk45_sram_1w1r_32x72_hierarchical_predecode2x4

* spice ptx M{0} {1} nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p

.SUBCKT freepdk45_sram_1w1r_32x72_pnand3
+ A B C Z vdd gnd
* INPUT : A 
* INPUT : B 
* INPUT : C 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpnand3_pmos1 vdd A Z vdd pmos_vtg m=1 w=0.27u l=0.05u 
Mpnand3_pmos2 Z B vdd vdd pmos_vtg m=1 w=0.27u l=0.05u 
Mpnand3_pmos3 Z C vdd vdd pmos_vtg m=1 w=0.27u l=0.05u 
Mpnand3_nmos1 Z C net1 gnd nmos_vtg m=1 w=0.18u l=0.05u 
Mpnand3_nmos2 net1 B net2 gnd nmos_vtg m=1 w=0.18u l=0.05u 
Mpnand3_nmos3 net2 A gnd gnd nmos_vtg m=1 w=0.18u l=0.05u 
.ENDS freepdk45_sram_1w1r_32x72_pnand3

.SUBCKT freepdk45_sram_1w1r_32x72_and3_dec
+ A B C Z vdd gnd
* INPUT : A 
* INPUT : B 
* INPUT : C 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Xpand3_dec_nand
+ A B C zb_int vdd gnd
+ freepdk45_sram_1w1r_32x72_pnand3
Xpand3_dec_inv
+ zb_int Z vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv
.ENDS freepdk45_sram_1w1r_32x72_and3_dec

.SUBCKT freepdk45_sram_1w1r_32x72_hierarchical_predecode3x8
+ in_0 in_1 in_2 out_0 out_1 out_2 out_3 out_4 out_5 out_6 out_7 vdd gnd
* INPUT : in_0 
* INPUT : in_1 
* INPUT : in_2 
* OUTPUT: out_0 
* OUTPUT: out_1 
* OUTPUT: out_2 
* OUTPUT: out_3 
* OUTPUT: out_4 
* OUTPUT: out_5 
* OUTPUT: out_6 
* OUTPUT: out_7 
* POWER : vdd 
* GROUND: gnd 
Xpre_inv_0
+ in_0 inbar_0 vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv
Xpre_inv_1
+ in_1 inbar_1 vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv
Xpre_inv_2
+ in_2 inbar_2 vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv
XXpre3x8_and_0
+ inbar_0 inbar_1 inbar_2 out_0 vdd gnd
+ freepdk45_sram_1w1r_32x72_and3_dec
XXpre3x8_and_1
+ in_0 inbar_1 inbar_2 out_1 vdd gnd
+ freepdk45_sram_1w1r_32x72_and3_dec
XXpre3x8_and_2
+ inbar_0 in_1 inbar_2 out_2 vdd gnd
+ freepdk45_sram_1w1r_32x72_and3_dec
XXpre3x8_and_3
+ in_0 in_1 inbar_2 out_3 vdd gnd
+ freepdk45_sram_1w1r_32x72_and3_dec
XXpre3x8_and_4
+ inbar_0 inbar_1 in_2 out_4 vdd gnd
+ freepdk45_sram_1w1r_32x72_and3_dec
XXpre3x8_and_5
+ in_0 inbar_1 in_2 out_5 vdd gnd
+ freepdk45_sram_1w1r_32x72_and3_dec
XXpre3x8_and_6
+ inbar_0 in_1 in_2 out_6 vdd gnd
+ freepdk45_sram_1w1r_32x72_and3_dec
XXpre3x8_and_7
+ in_0 in_1 in_2 out_7 vdd gnd
+ freepdk45_sram_1w1r_32x72_and3_dec
.ENDS freepdk45_sram_1w1r_32x72_hierarchical_predecode3x8

.SUBCKT freepdk45_sram_1w1r_32x72_hierarchical_decoder
+ addr_0 addr_1 addr_2 addr_3 addr_4 decode_0 decode_1 decode_2 decode_3
+ decode_4 decode_5 decode_6 decode_7 decode_8 decode_9 decode_10
+ decode_11 decode_12 decode_13 decode_14 decode_15 decode_16 decode_17
+ decode_18 decode_19 decode_20 decode_21 decode_22 decode_23 decode_24
+ decode_25 decode_26 decode_27 decode_28 decode_29 decode_30 decode_31
+ vdd gnd
* INPUT : addr_0 
* INPUT : addr_1 
* INPUT : addr_2 
* INPUT : addr_3 
* INPUT : addr_4 
* OUTPUT: decode_0 
* OUTPUT: decode_1 
* OUTPUT: decode_2 
* OUTPUT: decode_3 
* OUTPUT: decode_4 
* OUTPUT: decode_5 
* OUTPUT: decode_6 
* OUTPUT: decode_7 
* OUTPUT: decode_8 
* OUTPUT: decode_9 
* OUTPUT: decode_10 
* OUTPUT: decode_11 
* OUTPUT: decode_12 
* OUTPUT: decode_13 
* OUTPUT: decode_14 
* OUTPUT: decode_15 
* OUTPUT: decode_16 
* OUTPUT: decode_17 
* OUTPUT: decode_18 
* OUTPUT: decode_19 
* OUTPUT: decode_20 
* OUTPUT: decode_21 
* OUTPUT: decode_22 
* OUTPUT: decode_23 
* OUTPUT: decode_24 
* OUTPUT: decode_25 
* OUTPUT: decode_26 
* OUTPUT: decode_27 
* OUTPUT: decode_28 
* OUTPUT: decode_29 
* OUTPUT: decode_30 
* OUTPUT: decode_31 
* POWER : vdd 
* GROUND: gnd 
Xpre_0
+ addr_0 addr_1 out_0 out_1 out_2 out_3 vdd gnd
+ freepdk45_sram_1w1r_32x72_hierarchical_predecode2x4
Xpre3x8_0
+ addr_2 addr_3 addr_4 out_4 out_5 out_6 out_7 out_8 out_9 out_10 out_11
+ vdd gnd
+ freepdk45_sram_1w1r_32x72_hierarchical_predecode3x8
XDEC_AND_0
+ out_0 out_4 decode_0 vdd gnd
+ freepdk45_sram_1w1r_32x72_and2_dec
XDEC_AND_4
+ out_0 out_5 decode_4 vdd gnd
+ freepdk45_sram_1w1r_32x72_and2_dec
XDEC_AND_8
+ out_0 out_6 decode_8 vdd gnd
+ freepdk45_sram_1w1r_32x72_and2_dec
XDEC_AND_12
+ out_0 out_7 decode_12 vdd gnd
+ freepdk45_sram_1w1r_32x72_and2_dec
XDEC_AND_16
+ out_0 out_8 decode_16 vdd gnd
+ freepdk45_sram_1w1r_32x72_and2_dec
XDEC_AND_20
+ out_0 out_9 decode_20 vdd gnd
+ freepdk45_sram_1w1r_32x72_and2_dec
XDEC_AND_24
+ out_0 out_10 decode_24 vdd gnd
+ freepdk45_sram_1w1r_32x72_and2_dec
XDEC_AND_28
+ out_0 out_11 decode_28 vdd gnd
+ freepdk45_sram_1w1r_32x72_and2_dec
XDEC_AND_1
+ out_1 out_4 decode_1 vdd gnd
+ freepdk45_sram_1w1r_32x72_and2_dec
XDEC_AND_5
+ out_1 out_5 decode_5 vdd gnd
+ freepdk45_sram_1w1r_32x72_and2_dec
XDEC_AND_9
+ out_1 out_6 decode_9 vdd gnd
+ freepdk45_sram_1w1r_32x72_and2_dec
XDEC_AND_13
+ out_1 out_7 decode_13 vdd gnd
+ freepdk45_sram_1w1r_32x72_and2_dec
XDEC_AND_17
+ out_1 out_8 decode_17 vdd gnd
+ freepdk45_sram_1w1r_32x72_and2_dec
XDEC_AND_21
+ out_1 out_9 decode_21 vdd gnd
+ freepdk45_sram_1w1r_32x72_and2_dec
XDEC_AND_25
+ out_1 out_10 decode_25 vdd gnd
+ freepdk45_sram_1w1r_32x72_and2_dec
XDEC_AND_29
+ out_1 out_11 decode_29 vdd gnd
+ freepdk45_sram_1w1r_32x72_and2_dec
XDEC_AND_2
+ out_2 out_4 decode_2 vdd gnd
+ freepdk45_sram_1w1r_32x72_and2_dec
XDEC_AND_6
+ out_2 out_5 decode_6 vdd gnd
+ freepdk45_sram_1w1r_32x72_and2_dec
XDEC_AND_10
+ out_2 out_6 decode_10 vdd gnd
+ freepdk45_sram_1w1r_32x72_and2_dec
XDEC_AND_14
+ out_2 out_7 decode_14 vdd gnd
+ freepdk45_sram_1w1r_32x72_and2_dec
XDEC_AND_18
+ out_2 out_8 decode_18 vdd gnd
+ freepdk45_sram_1w1r_32x72_and2_dec
XDEC_AND_22
+ out_2 out_9 decode_22 vdd gnd
+ freepdk45_sram_1w1r_32x72_and2_dec
XDEC_AND_26
+ out_2 out_10 decode_26 vdd gnd
+ freepdk45_sram_1w1r_32x72_and2_dec
XDEC_AND_30
+ out_2 out_11 decode_30 vdd gnd
+ freepdk45_sram_1w1r_32x72_and2_dec
XDEC_AND_3
+ out_3 out_4 decode_3 vdd gnd
+ freepdk45_sram_1w1r_32x72_and2_dec
XDEC_AND_7
+ out_3 out_5 decode_7 vdd gnd
+ freepdk45_sram_1w1r_32x72_and2_dec
XDEC_AND_11
+ out_3 out_6 decode_11 vdd gnd
+ freepdk45_sram_1w1r_32x72_and2_dec
XDEC_AND_15
+ out_3 out_7 decode_15 vdd gnd
+ freepdk45_sram_1w1r_32x72_and2_dec
XDEC_AND_19
+ out_3 out_8 decode_19 vdd gnd
+ freepdk45_sram_1w1r_32x72_and2_dec
XDEC_AND_23
+ out_3 out_9 decode_23 vdd gnd
+ freepdk45_sram_1w1r_32x72_and2_dec
XDEC_AND_27
+ out_3 out_10 decode_27 vdd gnd
+ freepdk45_sram_1w1r_32x72_and2_dec
XDEC_AND_31
+ out_3 out_11 decode_31 vdd gnd
+ freepdk45_sram_1w1r_32x72_and2_dec
.ENDS freepdk45_sram_1w1r_32x72_hierarchical_decoder

* spice ptx M{0} {1} nmos_vtg m=12 w=0.135u l=0.05u pd=0.37u ps=0.37u as=0.02p ad=0.02p

* spice ptx M{0} {1} pmos_vtg m=12 w=0.405u l=0.05u pd=0.91u ps=0.91u as=0.05p ad=0.05p

.SUBCKT freepdk45_sram_1w1r_32x72_pinv_0
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd pmos_vtg m=12 w=0.405u l=0.05u 
Mpinv_nmos Z A gnd gnd nmos_vtg m=12 w=0.135u l=0.05u 
.ENDS freepdk45_sram_1w1r_32x72_pinv_0

.SUBCKT freepdk45_sram_1w1r_32x72_wordline_driver
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Xwld_nand
+ A B zb_int vdd gnd
+ freepdk45_sram_1w1r_32x72_pnand2
Xwl_driver
+ zb_int Z vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_0
.ENDS freepdk45_sram_1w1r_32x72_wordline_driver

.SUBCKT freepdk45_sram_1w1r_32x72_wordline_driver_array
+ in_0 in_1 in_2 in_3 in_4 in_5 in_6 in_7 in_8 in_9 in_10 in_11 in_12
+ in_13 in_14 in_15 in_16 in_17 in_18 in_19 in_20 in_21 in_22 in_23
+ in_24 in_25 in_26 in_27 in_28 in_29 in_30 in_31 wl_0 wl_1 wl_2 wl_3
+ wl_4 wl_5 wl_6 wl_7 wl_8 wl_9 wl_10 wl_11 wl_12 wl_13 wl_14 wl_15
+ wl_16 wl_17 wl_18 wl_19 wl_20 wl_21 wl_22 wl_23 wl_24 wl_25 wl_26
+ wl_27 wl_28 wl_29 wl_30 wl_31 en vdd gnd
* INPUT : in_0 
* INPUT : in_1 
* INPUT : in_2 
* INPUT : in_3 
* INPUT : in_4 
* INPUT : in_5 
* INPUT : in_6 
* INPUT : in_7 
* INPUT : in_8 
* INPUT : in_9 
* INPUT : in_10 
* INPUT : in_11 
* INPUT : in_12 
* INPUT : in_13 
* INPUT : in_14 
* INPUT : in_15 
* INPUT : in_16 
* INPUT : in_17 
* INPUT : in_18 
* INPUT : in_19 
* INPUT : in_20 
* INPUT : in_21 
* INPUT : in_22 
* INPUT : in_23 
* INPUT : in_24 
* INPUT : in_25 
* INPUT : in_26 
* INPUT : in_27 
* INPUT : in_28 
* INPUT : in_29 
* INPUT : in_30 
* INPUT : in_31 
* OUTPUT: wl_0 
* OUTPUT: wl_1 
* OUTPUT: wl_2 
* OUTPUT: wl_3 
* OUTPUT: wl_4 
* OUTPUT: wl_5 
* OUTPUT: wl_6 
* OUTPUT: wl_7 
* OUTPUT: wl_8 
* OUTPUT: wl_9 
* OUTPUT: wl_10 
* OUTPUT: wl_11 
* OUTPUT: wl_12 
* OUTPUT: wl_13 
* OUTPUT: wl_14 
* OUTPUT: wl_15 
* OUTPUT: wl_16 
* OUTPUT: wl_17 
* OUTPUT: wl_18 
* OUTPUT: wl_19 
* OUTPUT: wl_20 
* OUTPUT: wl_21 
* OUTPUT: wl_22 
* OUTPUT: wl_23 
* OUTPUT: wl_24 
* OUTPUT: wl_25 
* OUTPUT: wl_26 
* OUTPUT: wl_27 
* OUTPUT: wl_28 
* OUTPUT: wl_29 
* OUTPUT: wl_30 
* OUTPUT: wl_31 
* INPUT : en 
* POWER : vdd 
* GROUND: gnd 
* rows: 32 cols: 72
Xwl_driver_and0
+ in_0 en wl_0 vdd gnd
+ freepdk45_sram_1w1r_32x72_wordline_driver
Xwl_driver_and1
+ in_1 en wl_1 vdd gnd
+ freepdk45_sram_1w1r_32x72_wordline_driver
Xwl_driver_and2
+ in_2 en wl_2 vdd gnd
+ freepdk45_sram_1w1r_32x72_wordline_driver
Xwl_driver_and3
+ in_3 en wl_3 vdd gnd
+ freepdk45_sram_1w1r_32x72_wordline_driver
Xwl_driver_and4
+ in_4 en wl_4 vdd gnd
+ freepdk45_sram_1w1r_32x72_wordline_driver
Xwl_driver_and5
+ in_5 en wl_5 vdd gnd
+ freepdk45_sram_1w1r_32x72_wordline_driver
Xwl_driver_and6
+ in_6 en wl_6 vdd gnd
+ freepdk45_sram_1w1r_32x72_wordline_driver
Xwl_driver_and7
+ in_7 en wl_7 vdd gnd
+ freepdk45_sram_1w1r_32x72_wordline_driver
Xwl_driver_and8
+ in_8 en wl_8 vdd gnd
+ freepdk45_sram_1w1r_32x72_wordline_driver
Xwl_driver_and9
+ in_9 en wl_9 vdd gnd
+ freepdk45_sram_1w1r_32x72_wordline_driver
Xwl_driver_and10
+ in_10 en wl_10 vdd gnd
+ freepdk45_sram_1w1r_32x72_wordline_driver
Xwl_driver_and11
+ in_11 en wl_11 vdd gnd
+ freepdk45_sram_1w1r_32x72_wordline_driver
Xwl_driver_and12
+ in_12 en wl_12 vdd gnd
+ freepdk45_sram_1w1r_32x72_wordline_driver
Xwl_driver_and13
+ in_13 en wl_13 vdd gnd
+ freepdk45_sram_1w1r_32x72_wordline_driver
Xwl_driver_and14
+ in_14 en wl_14 vdd gnd
+ freepdk45_sram_1w1r_32x72_wordline_driver
Xwl_driver_and15
+ in_15 en wl_15 vdd gnd
+ freepdk45_sram_1w1r_32x72_wordline_driver
Xwl_driver_and16
+ in_16 en wl_16 vdd gnd
+ freepdk45_sram_1w1r_32x72_wordline_driver
Xwl_driver_and17
+ in_17 en wl_17 vdd gnd
+ freepdk45_sram_1w1r_32x72_wordline_driver
Xwl_driver_and18
+ in_18 en wl_18 vdd gnd
+ freepdk45_sram_1w1r_32x72_wordline_driver
Xwl_driver_and19
+ in_19 en wl_19 vdd gnd
+ freepdk45_sram_1w1r_32x72_wordline_driver
Xwl_driver_and20
+ in_20 en wl_20 vdd gnd
+ freepdk45_sram_1w1r_32x72_wordline_driver
Xwl_driver_and21
+ in_21 en wl_21 vdd gnd
+ freepdk45_sram_1w1r_32x72_wordline_driver
Xwl_driver_and22
+ in_22 en wl_22 vdd gnd
+ freepdk45_sram_1w1r_32x72_wordline_driver
Xwl_driver_and23
+ in_23 en wl_23 vdd gnd
+ freepdk45_sram_1w1r_32x72_wordline_driver
Xwl_driver_and24
+ in_24 en wl_24 vdd gnd
+ freepdk45_sram_1w1r_32x72_wordline_driver
Xwl_driver_and25
+ in_25 en wl_25 vdd gnd
+ freepdk45_sram_1w1r_32x72_wordline_driver
Xwl_driver_and26
+ in_26 en wl_26 vdd gnd
+ freepdk45_sram_1w1r_32x72_wordline_driver
Xwl_driver_and27
+ in_27 en wl_27 vdd gnd
+ freepdk45_sram_1w1r_32x72_wordline_driver
Xwl_driver_and28
+ in_28 en wl_28 vdd gnd
+ freepdk45_sram_1w1r_32x72_wordline_driver
Xwl_driver_and29
+ in_29 en wl_29 vdd gnd
+ freepdk45_sram_1w1r_32x72_wordline_driver
Xwl_driver_and30
+ in_30 en wl_30 vdd gnd
+ freepdk45_sram_1w1r_32x72_wordline_driver
Xwl_driver_and31
+ in_31 en wl_31 vdd gnd
+ freepdk45_sram_1w1r_32x72_wordline_driver
.ENDS freepdk45_sram_1w1r_32x72_wordline_driver_array

.SUBCKT freepdk45_sram_1w1r_32x72_and2_dec_0
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 18
Xpand2_dec_nand
+ A B zb_int vdd gnd
+ freepdk45_sram_1w1r_32x72_pnand2
Xpand2_dec_inv
+ zb_int Z vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_0
.ENDS freepdk45_sram_1w1r_32x72_and2_dec_0

.SUBCKT freepdk45_sram_1w1r_32x72_port_address
+ addr_0 addr_1 addr_2 addr_3 addr_4 wl_en wl_0 wl_1 wl_2 wl_3 wl_4 wl_5
+ wl_6 wl_7 wl_8 wl_9 wl_10 wl_11 wl_12 wl_13 wl_14 wl_15 wl_16 wl_17
+ wl_18 wl_19 wl_20 wl_21 wl_22 wl_23 wl_24 wl_25 wl_26 wl_27 wl_28
+ wl_29 wl_30 wl_31 rbl_wl vdd gnd
* INPUT : addr_0 
* INPUT : addr_1 
* INPUT : addr_2 
* INPUT : addr_3 
* INPUT : addr_4 
* INPUT : wl_en 
* OUTPUT: wl_0 
* OUTPUT: wl_1 
* OUTPUT: wl_2 
* OUTPUT: wl_3 
* OUTPUT: wl_4 
* OUTPUT: wl_5 
* OUTPUT: wl_6 
* OUTPUT: wl_7 
* OUTPUT: wl_8 
* OUTPUT: wl_9 
* OUTPUT: wl_10 
* OUTPUT: wl_11 
* OUTPUT: wl_12 
* OUTPUT: wl_13 
* OUTPUT: wl_14 
* OUTPUT: wl_15 
* OUTPUT: wl_16 
* OUTPUT: wl_17 
* OUTPUT: wl_18 
* OUTPUT: wl_19 
* OUTPUT: wl_20 
* OUTPUT: wl_21 
* OUTPUT: wl_22 
* OUTPUT: wl_23 
* OUTPUT: wl_24 
* OUTPUT: wl_25 
* OUTPUT: wl_26 
* OUTPUT: wl_27 
* OUTPUT: wl_28 
* OUTPUT: wl_29 
* OUTPUT: wl_30 
* OUTPUT: wl_31 
* OUTPUT: rbl_wl 
* POWER : vdd 
* GROUND: gnd 
Xrow_decoder
+ addr_0 addr_1 addr_2 addr_3 addr_4 dec_out_0 dec_out_1 dec_out_2
+ dec_out_3 dec_out_4 dec_out_5 dec_out_6 dec_out_7 dec_out_8 dec_out_9
+ dec_out_10 dec_out_11 dec_out_12 dec_out_13 dec_out_14 dec_out_15
+ dec_out_16 dec_out_17 dec_out_18 dec_out_19 dec_out_20 dec_out_21
+ dec_out_22 dec_out_23 dec_out_24 dec_out_25 dec_out_26 dec_out_27
+ dec_out_28 dec_out_29 dec_out_30 dec_out_31 vdd gnd
+ freepdk45_sram_1w1r_32x72_hierarchical_decoder
Xwordline_driver
+ dec_out_0 dec_out_1 dec_out_2 dec_out_3 dec_out_4 dec_out_5 dec_out_6
+ dec_out_7 dec_out_8 dec_out_9 dec_out_10 dec_out_11 dec_out_12
+ dec_out_13 dec_out_14 dec_out_15 dec_out_16 dec_out_17 dec_out_18
+ dec_out_19 dec_out_20 dec_out_21 dec_out_22 dec_out_23 dec_out_24
+ dec_out_25 dec_out_26 dec_out_27 dec_out_28 dec_out_29 dec_out_30
+ dec_out_31 wl_0 wl_1 wl_2 wl_3 wl_4 wl_5 wl_6 wl_7 wl_8 wl_9 wl_10
+ wl_11 wl_12 wl_13 wl_14 wl_15 wl_16 wl_17 wl_18 wl_19 wl_20 wl_21
+ wl_22 wl_23 wl_24 wl_25 wl_26 wl_27 wl_28 wl_29 wl_30 wl_31 wl_en vdd
+ gnd
+ freepdk45_sram_1w1r_32x72_wordline_driver_array
Xrbl_driver
+ wl_en vdd rbl_wl vdd gnd
+ freepdk45_sram_1w1r_32x72_and2_dec_0
.ENDS freepdk45_sram_1w1r_32x72_port_address

.SUBCKT dummy_cell_2rw bl0 br0 bl1 br1 wl0 wl1 vdd gnd
MM9 RA_to_R_right wl1 br1_noconn gnd NMOS_VTG W=180.0n L=50n m=1
MM8 RA_to_R_right Q gnd gnd NMOS_VTG W=180.0n L=50n m=1
MM7 RA_to_R_left Q_bar gnd gnd NMOS_VTG W=180.0n L=50n m=1
MM6 RA_to_R_left wl1 bl1_noconn gnd NMOS_VTG W=180.0n L=50n m=1
MM5 Q wl0 bl0_noconn gnd NMOS_VTG W=135.00n L=50n m=1
MM4 Q_bar wl0 br0_noconn gnd NMOS_VTG W=135.00n L=50n m=1
MM1 Q Q_bar gnd gnd NMOS_VTG W=205.0n L=50n m=1
MM0 Q_bar Q gnd gnd NMOS_VTG W=205.0n L=50n m=1
MM3 Q Q_bar vdd vdd PMOS_VTG W=90n L=50n m=1
MM2 Q_bar Q vdd vdd PMOS_VTG W=90n L=50n m=1
.ENDS


.SUBCKT freepdk45_sram_1w1r_32x72_dummy_array_2
+ bl_0_0 bl_1_0 br_0_0 br_1_0 wl_0_0 wl_1_0 wl_0_1 wl_1_1 wl_0_2 wl_1_2
+ wl_0_3 wl_1_3 wl_0_4 wl_1_4 wl_0_5 wl_1_5 wl_0_6 wl_1_6 wl_0_7 wl_1_7
+ wl_0_8 wl_1_8 wl_0_9 wl_1_9 wl_0_10 wl_1_10 wl_0_11 wl_1_11 wl_0_12
+ wl_1_12 wl_0_13 wl_1_13 wl_0_14 wl_1_14 wl_0_15 wl_1_15 wl_0_16
+ wl_1_16 wl_0_17 wl_1_17 wl_0_18 wl_1_18 wl_0_19 wl_1_19 wl_0_20
+ wl_1_20 wl_0_21 wl_1_21 wl_0_22 wl_1_22 wl_0_23 wl_1_23 wl_0_24
+ wl_1_24 wl_0_25 wl_1_25 wl_0_26 wl_1_26 wl_0_27 wl_1_27 wl_0_28
+ wl_1_28 wl_0_29 wl_1_29 wl_0_30 wl_1_30 wl_0_31 wl_1_31 wl_0_32
+ wl_1_32 wl_0_33 wl_1_33 wl_0_34 wl_1_34 wl_0_35 wl_1_35 vdd gnd
* INOUT : bl_0_0 
* INOUT : bl_1_0 
* INOUT : br_0_0 
* INOUT : br_1_0 
* INPUT : wl_0_0 
* INPUT : wl_1_0 
* INPUT : wl_0_1 
* INPUT : wl_1_1 
* INPUT : wl_0_2 
* INPUT : wl_1_2 
* INPUT : wl_0_3 
* INPUT : wl_1_3 
* INPUT : wl_0_4 
* INPUT : wl_1_4 
* INPUT : wl_0_5 
* INPUT : wl_1_5 
* INPUT : wl_0_6 
* INPUT : wl_1_6 
* INPUT : wl_0_7 
* INPUT : wl_1_7 
* INPUT : wl_0_8 
* INPUT : wl_1_8 
* INPUT : wl_0_9 
* INPUT : wl_1_9 
* INPUT : wl_0_10 
* INPUT : wl_1_10 
* INPUT : wl_0_11 
* INPUT : wl_1_11 
* INPUT : wl_0_12 
* INPUT : wl_1_12 
* INPUT : wl_0_13 
* INPUT : wl_1_13 
* INPUT : wl_0_14 
* INPUT : wl_1_14 
* INPUT : wl_0_15 
* INPUT : wl_1_15 
* INPUT : wl_0_16 
* INPUT : wl_1_16 
* INPUT : wl_0_17 
* INPUT : wl_1_17 
* INPUT : wl_0_18 
* INPUT : wl_1_18 
* INPUT : wl_0_19 
* INPUT : wl_1_19 
* INPUT : wl_0_20 
* INPUT : wl_1_20 
* INPUT : wl_0_21 
* INPUT : wl_1_21 
* INPUT : wl_0_22 
* INPUT : wl_1_22 
* INPUT : wl_0_23 
* INPUT : wl_1_23 
* INPUT : wl_0_24 
* INPUT : wl_1_24 
* INPUT : wl_0_25 
* INPUT : wl_1_25 
* INPUT : wl_0_26 
* INPUT : wl_1_26 
* INPUT : wl_0_27 
* INPUT : wl_1_27 
* INPUT : wl_0_28 
* INPUT : wl_1_28 
* INPUT : wl_0_29 
* INPUT : wl_1_29 
* INPUT : wl_0_30 
* INPUT : wl_1_30 
* INPUT : wl_0_31 
* INPUT : wl_1_31 
* INPUT : wl_0_32 
* INPUT : wl_1_32 
* INPUT : wl_0_33 
* INPUT : wl_1_33 
* INPUT : wl_0_34 
* INPUT : wl_1_34 
* INPUT : wl_0_35 
* INPUT : wl_1_35 
* POWER : vdd 
* GROUND: gnd 
Xbit_r0_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r1_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_1 wl_1_1 vdd gnd
+ dummy_cell_2rw
Xbit_r2_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_2 wl_1_2 vdd gnd
+ dummy_cell_2rw
Xbit_r3_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_3 wl_1_3 vdd gnd
+ dummy_cell_2rw
Xbit_r4_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_4 wl_1_4 vdd gnd
+ dummy_cell_2rw
Xbit_r5_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_5 wl_1_5 vdd gnd
+ dummy_cell_2rw
Xbit_r6_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_6 wl_1_6 vdd gnd
+ dummy_cell_2rw
Xbit_r7_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_7 wl_1_7 vdd gnd
+ dummy_cell_2rw
Xbit_r8_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_8 wl_1_8 vdd gnd
+ dummy_cell_2rw
Xbit_r9_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_9 wl_1_9 vdd gnd
+ dummy_cell_2rw
Xbit_r10_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_10 wl_1_10 vdd gnd
+ dummy_cell_2rw
Xbit_r11_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_11 wl_1_11 vdd gnd
+ dummy_cell_2rw
Xbit_r12_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_12 wl_1_12 vdd gnd
+ dummy_cell_2rw
Xbit_r13_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_13 wl_1_13 vdd gnd
+ dummy_cell_2rw
Xbit_r14_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_14 wl_1_14 vdd gnd
+ dummy_cell_2rw
Xbit_r15_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_15 wl_1_15 vdd gnd
+ dummy_cell_2rw
Xbit_r16_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_16 wl_1_16 vdd gnd
+ dummy_cell_2rw
Xbit_r17_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_17 wl_1_17 vdd gnd
+ dummy_cell_2rw
Xbit_r18_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_18 wl_1_18 vdd gnd
+ dummy_cell_2rw
Xbit_r19_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_19 wl_1_19 vdd gnd
+ dummy_cell_2rw
Xbit_r20_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_20 wl_1_20 vdd gnd
+ dummy_cell_2rw
Xbit_r21_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_21 wl_1_21 vdd gnd
+ dummy_cell_2rw
Xbit_r22_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_22 wl_1_22 vdd gnd
+ dummy_cell_2rw
Xbit_r23_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_23 wl_1_23 vdd gnd
+ dummy_cell_2rw
Xbit_r24_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_24 wl_1_24 vdd gnd
+ dummy_cell_2rw
Xbit_r25_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_25 wl_1_25 vdd gnd
+ dummy_cell_2rw
Xbit_r26_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_26 wl_1_26 vdd gnd
+ dummy_cell_2rw
Xbit_r27_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_27 wl_1_27 vdd gnd
+ dummy_cell_2rw
Xbit_r28_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_28 wl_1_28 vdd gnd
+ dummy_cell_2rw
Xbit_r29_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_29 wl_1_29 vdd gnd
+ dummy_cell_2rw
Xbit_r30_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_30 wl_1_30 vdd gnd
+ dummy_cell_2rw
Xbit_r31_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_31 wl_1_31 vdd gnd
+ dummy_cell_2rw
Xbit_r32_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_32 wl_1_32 vdd gnd
+ dummy_cell_2rw
Xbit_r33_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_33 wl_1_33 vdd gnd
+ dummy_cell_2rw
Xbit_r34_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_34 wl_1_34 vdd gnd
+ dummy_cell_2rw
Xbit_r35_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_35 wl_1_35 vdd gnd
+ dummy_cell_2rw
.ENDS freepdk45_sram_1w1r_32x72_dummy_array_2

.SUBCKT freepdk45_sram_1w1r_32x72_dummy_array_3
+ bl_0_0 bl_1_0 br_0_0 br_1_0 wl_0_0 wl_1_0 wl_0_1 wl_1_1 wl_0_2 wl_1_2
+ wl_0_3 wl_1_3 wl_0_4 wl_1_4 wl_0_5 wl_1_5 wl_0_6 wl_1_6 wl_0_7 wl_1_7
+ wl_0_8 wl_1_8 wl_0_9 wl_1_9 wl_0_10 wl_1_10 wl_0_11 wl_1_11 wl_0_12
+ wl_1_12 wl_0_13 wl_1_13 wl_0_14 wl_1_14 wl_0_15 wl_1_15 wl_0_16
+ wl_1_16 wl_0_17 wl_1_17 wl_0_18 wl_1_18 wl_0_19 wl_1_19 wl_0_20
+ wl_1_20 wl_0_21 wl_1_21 wl_0_22 wl_1_22 wl_0_23 wl_1_23 wl_0_24
+ wl_1_24 wl_0_25 wl_1_25 wl_0_26 wl_1_26 wl_0_27 wl_1_27 wl_0_28
+ wl_1_28 wl_0_29 wl_1_29 wl_0_30 wl_1_30 wl_0_31 wl_1_31 wl_0_32
+ wl_1_32 wl_0_33 wl_1_33 wl_0_34 wl_1_34 wl_0_35 wl_1_35 vdd gnd
* INOUT : bl_0_0 
* INOUT : bl_1_0 
* INOUT : br_0_0 
* INOUT : br_1_0 
* INPUT : wl_0_0 
* INPUT : wl_1_0 
* INPUT : wl_0_1 
* INPUT : wl_1_1 
* INPUT : wl_0_2 
* INPUT : wl_1_2 
* INPUT : wl_0_3 
* INPUT : wl_1_3 
* INPUT : wl_0_4 
* INPUT : wl_1_4 
* INPUT : wl_0_5 
* INPUT : wl_1_5 
* INPUT : wl_0_6 
* INPUT : wl_1_6 
* INPUT : wl_0_7 
* INPUT : wl_1_7 
* INPUT : wl_0_8 
* INPUT : wl_1_8 
* INPUT : wl_0_9 
* INPUT : wl_1_9 
* INPUT : wl_0_10 
* INPUT : wl_1_10 
* INPUT : wl_0_11 
* INPUT : wl_1_11 
* INPUT : wl_0_12 
* INPUT : wl_1_12 
* INPUT : wl_0_13 
* INPUT : wl_1_13 
* INPUT : wl_0_14 
* INPUT : wl_1_14 
* INPUT : wl_0_15 
* INPUT : wl_1_15 
* INPUT : wl_0_16 
* INPUT : wl_1_16 
* INPUT : wl_0_17 
* INPUT : wl_1_17 
* INPUT : wl_0_18 
* INPUT : wl_1_18 
* INPUT : wl_0_19 
* INPUT : wl_1_19 
* INPUT : wl_0_20 
* INPUT : wl_1_20 
* INPUT : wl_0_21 
* INPUT : wl_1_21 
* INPUT : wl_0_22 
* INPUT : wl_1_22 
* INPUT : wl_0_23 
* INPUT : wl_1_23 
* INPUT : wl_0_24 
* INPUT : wl_1_24 
* INPUT : wl_0_25 
* INPUT : wl_1_25 
* INPUT : wl_0_26 
* INPUT : wl_1_26 
* INPUT : wl_0_27 
* INPUT : wl_1_27 
* INPUT : wl_0_28 
* INPUT : wl_1_28 
* INPUT : wl_0_29 
* INPUT : wl_1_29 
* INPUT : wl_0_30 
* INPUT : wl_1_30 
* INPUT : wl_0_31 
* INPUT : wl_1_31 
* INPUT : wl_0_32 
* INPUT : wl_1_32 
* INPUT : wl_0_33 
* INPUT : wl_1_33 
* INPUT : wl_0_34 
* INPUT : wl_1_34 
* INPUT : wl_0_35 
* INPUT : wl_1_35 
* POWER : vdd 
* GROUND: gnd 
Xbit_r0_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r1_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_1 wl_1_1 vdd gnd
+ dummy_cell_2rw
Xbit_r2_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_2 wl_1_2 vdd gnd
+ dummy_cell_2rw
Xbit_r3_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_3 wl_1_3 vdd gnd
+ dummy_cell_2rw
Xbit_r4_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_4 wl_1_4 vdd gnd
+ dummy_cell_2rw
Xbit_r5_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_5 wl_1_5 vdd gnd
+ dummy_cell_2rw
Xbit_r6_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_6 wl_1_6 vdd gnd
+ dummy_cell_2rw
Xbit_r7_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_7 wl_1_7 vdd gnd
+ dummy_cell_2rw
Xbit_r8_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_8 wl_1_8 vdd gnd
+ dummy_cell_2rw
Xbit_r9_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_9 wl_1_9 vdd gnd
+ dummy_cell_2rw
Xbit_r10_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_10 wl_1_10 vdd gnd
+ dummy_cell_2rw
Xbit_r11_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_11 wl_1_11 vdd gnd
+ dummy_cell_2rw
Xbit_r12_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_12 wl_1_12 vdd gnd
+ dummy_cell_2rw
Xbit_r13_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_13 wl_1_13 vdd gnd
+ dummy_cell_2rw
Xbit_r14_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_14 wl_1_14 vdd gnd
+ dummy_cell_2rw
Xbit_r15_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_15 wl_1_15 vdd gnd
+ dummy_cell_2rw
Xbit_r16_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_16 wl_1_16 vdd gnd
+ dummy_cell_2rw
Xbit_r17_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_17 wl_1_17 vdd gnd
+ dummy_cell_2rw
Xbit_r18_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_18 wl_1_18 vdd gnd
+ dummy_cell_2rw
Xbit_r19_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_19 wl_1_19 vdd gnd
+ dummy_cell_2rw
Xbit_r20_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_20 wl_1_20 vdd gnd
+ dummy_cell_2rw
Xbit_r21_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_21 wl_1_21 vdd gnd
+ dummy_cell_2rw
Xbit_r22_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_22 wl_1_22 vdd gnd
+ dummy_cell_2rw
Xbit_r23_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_23 wl_1_23 vdd gnd
+ dummy_cell_2rw
Xbit_r24_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_24 wl_1_24 vdd gnd
+ dummy_cell_2rw
Xbit_r25_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_25 wl_1_25 vdd gnd
+ dummy_cell_2rw
Xbit_r26_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_26 wl_1_26 vdd gnd
+ dummy_cell_2rw
Xbit_r27_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_27 wl_1_27 vdd gnd
+ dummy_cell_2rw
Xbit_r28_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_28 wl_1_28 vdd gnd
+ dummy_cell_2rw
Xbit_r29_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_29 wl_1_29 vdd gnd
+ dummy_cell_2rw
Xbit_r30_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_30 wl_1_30 vdd gnd
+ dummy_cell_2rw
Xbit_r31_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_31 wl_1_31 vdd gnd
+ dummy_cell_2rw
Xbit_r32_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_32 wl_1_32 vdd gnd
+ dummy_cell_2rw
Xbit_r33_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_33 wl_1_33 vdd gnd
+ dummy_cell_2rw
Xbit_r34_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_34 wl_1_34 vdd gnd
+ dummy_cell_2rw
Xbit_r35_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_35 wl_1_35 vdd gnd
+ dummy_cell_2rw
.ENDS freepdk45_sram_1w1r_32x72_dummy_array_3

.SUBCKT freepdk45_sram_1w1r_32x72_dummy_array_1
+ bl_0_0 bl_1_0 br_0_0 br_1_0 bl_0_1 bl_1_1 br_0_1 br_1_1 bl_0_2 bl_1_2
+ br_0_2 br_1_2 bl_0_3 bl_1_3 br_0_3 br_1_3 bl_0_4 bl_1_4 br_0_4 br_1_4
+ bl_0_5 bl_1_5 br_0_5 br_1_5 bl_0_6 bl_1_6 br_0_6 br_1_6 bl_0_7 bl_1_7
+ br_0_7 br_1_7 bl_0_8 bl_1_8 br_0_8 br_1_8 bl_0_9 bl_1_9 br_0_9 br_1_9
+ bl_0_10 bl_1_10 br_0_10 br_1_10 bl_0_11 bl_1_11 br_0_11 br_1_11
+ bl_0_12 bl_1_12 br_0_12 br_1_12 bl_0_13 bl_1_13 br_0_13 br_1_13
+ bl_0_14 bl_1_14 br_0_14 br_1_14 bl_0_15 bl_1_15 br_0_15 br_1_15
+ bl_0_16 bl_1_16 br_0_16 br_1_16 bl_0_17 bl_1_17 br_0_17 br_1_17
+ bl_0_18 bl_1_18 br_0_18 br_1_18 bl_0_19 bl_1_19 br_0_19 br_1_19
+ bl_0_20 bl_1_20 br_0_20 br_1_20 bl_0_21 bl_1_21 br_0_21 br_1_21
+ bl_0_22 bl_1_22 br_0_22 br_1_22 bl_0_23 bl_1_23 br_0_23 br_1_23
+ bl_0_24 bl_1_24 br_0_24 br_1_24 bl_0_25 bl_1_25 br_0_25 br_1_25
+ bl_0_26 bl_1_26 br_0_26 br_1_26 bl_0_27 bl_1_27 br_0_27 br_1_27
+ bl_0_28 bl_1_28 br_0_28 br_1_28 bl_0_29 bl_1_29 br_0_29 br_1_29
+ bl_0_30 bl_1_30 br_0_30 br_1_30 bl_0_31 bl_1_31 br_0_31 br_1_31
+ bl_0_32 bl_1_32 br_0_32 br_1_32 bl_0_33 bl_1_33 br_0_33 br_1_33
+ bl_0_34 bl_1_34 br_0_34 br_1_34 bl_0_35 bl_1_35 br_0_35 br_1_35
+ bl_0_36 bl_1_36 br_0_36 br_1_36 bl_0_37 bl_1_37 br_0_37 br_1_37
+ bl_0_38 bl_1_38 br_0_38 br_1_38 bl_0_39 bl_1_39 br_0_39 br_1_39
+ bl_0_40 bl_1_40 br_0_40 br_1_40 bl_0_41 bl_1_41 br_0_41 br_1_41
+ bl_0_42 bl_1_42 br_0_42 br_1_42 bl_0_43 bl_1_43 br_0_43 br_1_43
+ bl_0_44 bl_1_44 br_0_44 br_1_44 bl_0_45 bl_1_45 br_0_45 br_1_45
+ bl_0_46 bl_1_46 br_0_46 br_1_46 bl_0_47 bl_1_47 br_0_47 br_1_47
+ bl_0_48 bl_1_48 br_0_48 br_1_48 bl_0_49 bl_1_49 br_0_49 br_1_49
+ bl_0_50 bl_1_50 br_0_50 br_1_50 bl_0_51 bl_1_51 br_0_51 br_1_51
+ bl_0_52 bl_1_52 br_0_52 br_1_52 bl_0_53 bl_1_53 br_0_53 br_1_53
+ bl_0_54 bl_1_54 br_0_54 br_1_54 bl_0_55 bl_1_55 br_0_55 br_1_55
+ bl_0_56 bl_1_56 br_0_56 br_1_56 bl_0_57 bl_1_57 br_0_57 br_1_57
+ bl_0_58 bl_1_58 br_0_58 br_1_58 bl_0_59 bl_1_59 br_0_59 br_1_59
+ bl_0_60 bl_1_60 br_0_60 br_1_60 bl_0_61 bl_1_61 br_0_61 br_1_61
+ bl_0_62 bl_1_62 br_0_62 br_1_62 bl_0_63 bl_1_63 br_0_63 br_1_63
+ bl_0_64 bl_1_64 br_0_64 br_1_64 bl_0_65 bl_1_65 br_0_65 br_1_65
+ bl_0_66 bl_1_66 br_0_66 br_1_66 bl_0_67 bl_1_67 br_0_67 br_1_67
+ bl_0_68 bl_1_68 br_0_68 br_1_68 bl_0_69 bl_1_69 br_0_69 br_1_69
+ bl_0_70 bl_1_70 br_0_70 br_1_70 bl_0_71 bl_1_71 br_0_71 br_1_71
+ bl_0_72 bl_1_72 br_0_72 br_1_72 bl_0_73 bl_1_73 br_0_73 br_1_73 wl_0_0
+ wl_1_0 vdd gnd
* INOUT : bl_0_0 
* INOUT : bl_1_0 
* INOUT : br_0_0 
* INOUT : br_1_0 
* INOUT : bl_0_1 
* INOUT : bl_1_1 
* INOUT : br_0_1 
* INOUT : br_1_1 
* INOUT : bl_0_2 
* INOUT : bl_1_2 
* INOUT : br_0_2 
* INOUT : br_1_2 
* INOUT : bl_0_3 
* INOUT : bl_1_3 
* INOUT : br_0_3 
* INOUT : br_1_3 
* INOUT : bl_0_4 
* INOUT : bl_1_4 
* INOUT : br_0_4 
* INOUT : br_1_4 
* INOUT : bl_0_5 
* INOUT : bl_1_5 
* INOUT : br_0_5 
* INOUT : br_1_5 
* INOUT : bl_0_6 
* INOUT : bl_1_6 
* INOUT : br_0_6 
* INOUT : br_1_6 
* INOUT : bl_0_7 
* INOUT : bl_1_7 
* INOUT : br_0_7 
* INOUT : br_1_7 
* INOUT : bl_0_8 
* INOUT : bl_1_8 
* INOUT : br_0_8 
* INOUT : br_1_8 
* INOUT : bl_0_9 
* INOUT : bl_1_9 
* INOUT : br_0_9 
* INOUT : br_1_9 
* INOUT : bl_0_10 
* INOUT : bl_1_10 
* INOUT : br_0_10 
* INOUT : br_1_10 
* INOUT : bl_0_11 
* INOUT : bl_1_11 
* INOUT : br_0_11 
* INOUT : br_1_11 
* INOUT : bl_0_12 
* INOUT : bl_1_12 
* INOUT : br_0_12 
* INOUT : br_1_12 
* INOUT : bl_0_13 
* INOUT : bl_1_13 
* INOUT : br_0_13 
* INOUT : br_1_13 
* INOUT : bl_0_14 
* INOUT : bl_1_14 
* INOUT : br_0_14 
* INOUT : br_1_14 
* INOUT : bl_0_15 
* INOUT : bl_1_15 
* INOUT : br_0_15 
* INOUT : br_1_15 
* INOUT : bl_0_16 
* INOUT : bl_1_16 
* INOUT : br_0_16 
* INOUT : br_1_16 
* INOUT : bl_0_17 
* INOUT : bl_1_17 
* INOUT : br_0_17 
* INOUT : br_1_17 
* INOUT : bl_0_18 
* INOUT : bl_1_18 
* INOUT : br_0_18 
* INOUT : br_1_18 
* INOUT : bl_0_19 
* INOUT : bl_1_19 
* INOUT : br_0_19 
* INOUT : br_1_19 
* INOUT : bl_0_20 
* INOUT : bl_1_20 
* INOUT : br_0_20 
* INOUT : br_1_20 
* INOUT : bl_0_21 
* INOUT : bl_1_21 
* INOUT : br_0_21 
* INOUT : br_1_21 
* INOUT : bl_0_22 
* INOUT : bl_1_22 
* INOUT : br_0_22 
* INOUT : br_1_22 
* INOUT : bl_0_23 
* INOUT : bl_1_23 
* INOUT : br_0_23 
* INOUT : br_1_23 
* INOUT : bl_0_24 
* INOUT : bl_1_24 
* INOUT : br_0_24 
* INOUT : br_1_24 
* INOUT : bl_0_25 
* INOUT : bl_1_25 
* INOUT : br_0_25 
* INOUT : br_1_25 
* INOUT : bl_0_26 
* INOUT : bl_1_26 
* INOUT : br_0_26 
* INOUT : br_1_26 
* INOUT : bl_0_27 
* INOUT : bl_1_27 
* INOUT : br_0_27 
* INOUT : br_1_27 
* INOUT : bl_0_28 
* INOUT : bl_1_28 
* INOUT : br_0_28 
* INOUT : br_1_28 
* INOUT : bl_0_29 
* INOUT : bl_1_29 
* INOUT : br_0_29 
* INOUT : br_1_29 
* INOUT : bl_0_30 
* INOUT : bl_1_30 
* INOUT : br_0_30 
* INOUT : br_1_30 
* INOUT : bl_0_31 
* INOUT : bl_1_31 
* INOUT : br_0_31 
* INOUT : br_1_31 
* INOUT : bl_0_32 
* INOUT : bl_1_32 
* INOUT : br_0_32 
* INOUT : br_1_32 
* INOUT : bl_0_33 
* INOUT : bl_1_33 
* INOUT : br_0_33 
* INOUT : br_1_33 
* INOUT : bl_0_34 
* INOUT : bl_1_34 
* INOUT : br_0_34 
* INOUT : br_1_34 
* INOUT : bl_0_35 
* INOUT : bl_1_35 
* INOUT : br_0_35 
* INOUT : br_1_35 
* INOUT : bl_0_36 
* INOUT : bl_1_36 
* INOUT : br_0_36 
* INOUT : br_1_36 
* INOUT : bl_0_37 
* INOUT : bl_1_37 
* INOUT : br_0_37 
* INOUT : br_1_37 
* INOUT : bl_0_38 
* INOUT : bl_1_38 
* INOUT : br_0_38 
* INOUT : br_1_38 
* INOUT : bl_0_39 
* INOUT : bl_1_39 
* INOUT : br_0_39 
* INOUT : br_1_39 
* INOUT : bl_0_40 
* INOUT : bl_1_40 
* INOUT : br_0_40 
* INOUT : br_1_40 
* INOUT : bl_0_41 
* INOUT : bl_1_41 
* INOUT : br_0_41 
* INOUT : br_1_41 
* INOUT : bl_0_42 
* INOUT : bl_1_42 
* INOUT : br_0_42 
* INOUT : br_1_42 
* INOUT : bl_0_43 
* INOUT : bl_1_43 
* INOUT : br_0_43 
* INOUT : br_1_43 
* INOUT : bl_0_44 
* INOUT : bl_1_44 
* INOUT : br_0_44 
* INOUT : br_1_44 
* INOUT : bl_0_45 
* INOUT : bl_1_45 
* INOUT : br_0_45 
* INOUT : br_1_45 
* INOUT : bl_0_46 
* INOUT : bl_1_46 
* INOUT : br_0_46 
* INOUT : br_1_46 
* INOUT : bl_0_47 
* INOUT : bl_1_47 
* INOUT : br_0_47 
* INOUT : br_1_47 
* INOUT : bl_0_48 
* INOUT : bl_1_48 
* INOUT : br_0_48 
* INOUT : br_1_48 
* INOUT : bl_0_49 
* INOUT : bl_1_49 
* INOUT : br_0_49 
* INOUT : br_1_49 
* INOUT : bl_0_50 
* INOUT : bl_1_50 
* INOUT : br_0_50 
* INOUT : br_1_50 
* INOUT : bl_0_51 
* INOUT : bl_1_51 
* INOUT : br_0_51 
* INOUT : br_1_51 
* INOUT : bl_0_52 
* INOUT : bl_1_52 
* INOUT : br_0_52 
* INOUT : br_1_52 
* INOUT : bl_0_53 
* INOUT : bl_1_53 
* INOUT : br_0_53 
* INOUT : br_1_53 
* INOUT : bl_0_54 
* INOUT : bl_1_54 
* INOUT : br_0_54 
* INOUT : br_1_54 
* INOUT : bl_0_55 
* INOUT : bl_1_55 
* INOUT : br_0_55 
* INOUT : br_1_55 
* INOUT : bl_0_56 
* INOUT : bl_1_56 
* INOUT : br_0_56 
* INOUT : br_1_56 
* INOUT : bl_0_57 
* INOUT : bl_1_57 
* INOUT : br_0_57 
* INOUT : br_1_57 
* INOUT : bl_0_58 
* INOUT : bl_1_58 
* INOUT : br_0_58 
* INOUT : br_1_58 
* INOUT : bl_0_59 
* INOUT : bl_1_59 
* INOUT : br_0_59 
* INOUT : br_1_59 
* INOUT : bl_0_60 
* INOUT : bl_1_60 
* INOUT : br_0_60 
* INOUT : br_1_60 
* INOUT : bl_0_61 
* INOUT : bl_1_61 
* INOUT : br_0_61 
* INOUT : br_1_61 
* INOUT : bl_0_62 
* INOUT : bl_1_62 
* INOUT : br_0_62 
* INOUT : br_1_62 
* INOUT : bl_0_63 
* INOUT : bl_1_63 
* INOUT : br_0_63 
* INOUT : br_1_63 
* INOUT : bl_0_64 
* INOUT : bl_1_64 
* INOUT : br_0_64 
* INOUT : br_1_64 
* INOUT : bl_0_65 
* INOUT : bl_1_65 
* INOUT : br_0_65 
* INOUT : br_1_65 
* INOUT : bl_0_66 
* INOUT : bl_1_66 
* INOUT : br_0_66 
* INOUT : br_1_66 
* INOUT : bl_0_67 
* INOUT : bl_1_67 
* INOUT : br_0_67 
* INOUT : br_1_67 
* INOUT : bl_0_68 
* INOUT : bl_1_68 
* INOUT : br_0_68 
* INOUT : br_1_68 
* INOUT : bl_0_69 
* INOUT : bl_1_69 
* INOUT : br_0_69 
* INOUT : br_1_69 
* INOUT : bl_0_70 
* INOUT : bl_1_70 
* INOUT : br_0_70 
* INOUT : br_1_70 
* INOUT : bl_0_71 
* INOUT : bl_1_71 
* INOUT : br_0_71 
* INOUT : br_1_71 
* INOUT : bl_0_72 
* INOUT : bl_1_72 
* INOUT : br_0_72 
* INOUT : br_1_72 
* INOUT : bl_0_73 
* INOUT : bl_1_73 
* INOUT : br_0_73 
* INOUT : br_1_73 
* INPUT : wl_0_0 
* INPUT : wl_1_0 
* POWER : vdd 
* GROUND: gnd 
Xbit_r0_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c32
+ bl_0_32 br_0_32 bl_1_32 br_1_32 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c33
+ bl_0_33 br_0_33 bl_1_33 br_1_33 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c34
+ bl_0_34 br_0_34 bl_1_34 br_1_34 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c35
+ bl_0_35 br_0_35 bl_1_35 br_1_35 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c36
+ bl_0_36 br_0_36 bl_1_36 br_1_36 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c37
+ bl_0_37 br_0_37 bl_1_37 br_1_37 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c38
+ bl_0_38 br_0_38 bl_1_38 br_1_38 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c39
+ bl_0_39 br_0_39 bl_1_39 br_1_39 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c40
+ bl_0_40 br_0_40 bl_1_40 br_1_40 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c41
+ bl_0_41 br_0_41 bl_1_41 br_1_41 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c42
+ bl_0_42 br_0_42 bl_1_42 br_1_42 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c43
+ bl_0_43 br_0_43 bl_1_43 br_1_43 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c44
+ bl_0_44 br_0_44 bl_1_44 br_1_44 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c45
+ bl_0_45 br_0_45 bl_1_45 br_1_45 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c46
+ bl_0_46 br_0_46 bl_1_46 br_1_46 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c47
+ bl_0_47 br_0_47 bl_1_47 br_1_47 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c48
+ bl_0_48 br_0_48 bl_1_48 br_1_48 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c49
+ bl_0_49 br_0_49 bl_1_49 br_1_49 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c50
+ bl_0_50 br_0_50 bl_1_50 br_1_50 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c51
+ bl_0_51 br_0_51 bl_1_51 br_1_51 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c52
+ bl_0_52 br_0_52 bl_1_52 br_1_52 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c53
+ bl_0_53 br_0_53 bl_1_53 br_1_53 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c54
+ bl_0_54 br_0_54 bl_1_54 br_1_54 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c55
+ bl_0_55 br_0_55 bl_1_55 br_1_55 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c56
+ bl_0_56 br_0_56 bl_1_56 br_1_56 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c57
+ bl_0_57 br_0_57 bl_1_57 br_1_57 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c58
+ bl_0_58 br_0_58 bl_1_58 br_1_58 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c59
+ bl_0_59 br_0_59 bl_1_59 br_1_59 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c60
+ bl_0_60 br_0_60 bl_1_60 br_1_60 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c61
+ bl_0_61 br_0_61 bl_1_61 br_1_61 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c62
+ bl_0_62 br_0_62 bl_1_62 br_1_62 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c63
+ bl_0_63 br_0_63 bl_1_63 br_1_63 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c64
+ bl_0_64 br_0_64 bl_1_64 br_1_64 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c65
+ bl_0_65 br_0_65 bl_1_65 br_1_65 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c66
+ bl_0_66 br_0_66 bl_1_66 br_1_66 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c67
+ bl_0_67 br_0_67 bl_1_67 br_1_67 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c68
+ bl_0_68 br_0_68 bl_1_68 br_1_68 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c69
+ bl_0_69 br_0_69 bl_1_69 br_1_69 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c70
+ bl_0_70 br_0_70 bl_1_70 br_1_70 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c71
+ bl_0_71 br_0_71 bl_1_71 br_1_71 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c72
+ bl_0_72 br_0_72 bl_1_72 br_1_72 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c73
+ bl_0_73 br_0_73 bl_1_73 br_1_73 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
.ENDS freepdk45_sram_1w1r_32x72_dummy_array_1

.SUBCKT replica_cell_2rw bl0 br0 bl1 br1 wl0 wl1 vdd gnd
MM9 RA_to_R_right wl1 br1 gnd NMOS_VTG W=180.0n L=50n m=1
MM8 RA_to_R_right Q gnd gnd NMOS_VTG W=180.0n L=50n m=1
MM7 RA_to_R_left vdd gnd gnd NMOS_VTG W=180.0n L=50n m=1
MM6 RA_to_R_left wl1 bl1 gnd NMOS_VTG W=180.0n L=50n m=1
MM5 Q wl0 bl0 gnd NMOS_VTG W=135.00n L=50n m=1
MM4 vdd wl0 br0 gnd NMOS_VTG W=135.00n L=50n m=1
MM1 Q vdd gnd gnd NMOS_VTG W=205.0n L=50n m=1
MM0 vdd Q gnd gnd NMOS_VTG W=205.0n L=50n m=1
MM3 Q vdd vdd vdd PMOS_VTG W=90n L=50n m=1
MM2 vdd Q vdd vdd PMOS_VTG W=90n L=50n m=1
.ENDS


.SUBCKT freepdk45_sram_1w1r_32x72_replica_column_0
+ bl_0_0 bl_1_0 br_0_0 br_1_0 wl_0_0 wl_1_0 wl_0_1 wl_1_1 wl_0_2 wl_1_2
+ wl_0_3 wl_1_3 wl_0_4 wl_1_4 wl_0_5 wl_1_5 wl_0_6 wl_1_6 wl_0_7 wl_1_7
+ wl_0_8 wl_1_8 wl_0_9 wl_1_9 wl_0_10 wl_1_10 wl_0_11 wl_1_11 wl_0_12
+ wl_1_12 wl_0_13 wl_1_13 wl_0_14 wl_1_14 wl_0_15 wl_1_15 wl_0_16
+ wl_1_16 wl_0_17 wl_1_17 wl_0_18 wl_1_18 wl_0_19 wl_1_19 wl_0_20
+ wl_1_20 wl_0_21 wl_1_21 wl_0_22 wl_1_22 wl_0_23 wl_1_23 wl_0_24
+ wl_1_24 wl_0_25 wl_1_25 wl_0_26 wl_1_26 wl_0_27 wl_1_27 wl_0_28
+ wl_1_28 wl_0_29 wl_1_29 wl_0_30 wl_1_30 wl_0_31 wl_1_31 wl_0_32
+ wl_1_32 wl_0_33 wl_1_33 vdd gnd
* OUTPUT: bl_0_0 
* OUTPUT: bl_1_0 
* OUTPUT: br_0_0 
* OUTPUT: br_1_0 
* INPUT : wl_0_0 
* INPUT : wl_1_0 
* INPUT : wl_0_1 
* INPUT : wl_1_1 
* INPUT : wl_0_2 
* INPUT : wl_1_2 
* INPUT : wl_0_3 
* INPUT : wl_1_3 
* INPUT : wl_0_4 
* INPUT : wl_1_4 
* INPUT : wl_0_5 
* INPUT : wl_1_5 
* INPUT : wl_0_6 
* INPUT : wl_1_6 
* INPUT : wl_0_7 
* INPUT : wl_1_7 
* INPUT : wl_0_8 
* INPUT : wl_1_8 
* INPUT : wl_0_9 
* INPUT : wl_1_9 
* INPUT : wl_0_10 
* INPUT : wl_1_10 
* INPUT : wl_0_11 
* INPUT : wl_1_11 
* INPUT : wl_0_12 
* INPUT : wl_1_12 
* INPUT : wl_0_13 
* INPUT : wl_1_13 
* INPUT : wl_0_14 
* INPUT : wl_1_14 
* INPUT : wl_0_15 
* INPUT : wl_1_15 
* INPUT : wl_0_16 
* INPUT : wl_1_16 
* INPUT : wl_0_17 
* INPUT : wl_1_17 
* INPUT : wl_0_18 
* INPUT : wl_1_18 
* INPUT : wl_0_19 
* INPUT : wl_1_19 
* INPUT : wl_0_20 
* INPUT : wl_1_20 
* INPUT : wl_0_21 
* INPUT : wl_1_21 
* INPUT : wl_0_22 
* INPUT : wl_1_22 
* INPUT : wl_0_23 
* INPUT : wl_1_23 
* INPUT : wl_0_24 
* INPUT : wl_1_24 
* INPUT : wl_0_25 
* INPUT : wl_1_25 
* INPUT : wl_0_26 
* INPUT : wl_1_26 
* INPUT : wl_0_27 
* INPUT : wl_1_27 
* INPUT : wl_0_28 
* INPUT : wl_1_28 
* INPUT : wl_0_29 
* INPUT : wl_1_29 
* INPUT : wl_0_30 
* INPUT : wl_1_30 
* INPUT : wl_0_31 
* INPUT : wl_1_31 
* INPUT : wl_0_32 
* INPUT : wl_1_32 
* INPUT : wl_0_33 
* INPUT : wl_1_33 
* POWER : vdd 
* GROUND: gnd 
Xrbc_0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xrbc_1
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_1 wl_1_1 vdd gnd
+ replica_cell_2rw
Xrbc_2
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_2 wl_1_2 vdd gnd
+ replica_cell_2rw
Xrbc_3
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_3 wl_1_3 vdd gnd
+ replica_cell_2rw
Xrbc_4
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_4 wl_1_4 vdd gnd
+ replica_cell_2rw
Xrbc_5
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_5 wl_1_5 vdd gnd
+ replica_cell_2rw
Xrbc_6
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_6 wl_1_6 vdd gnd
+ replica_cell_2rw
Xrbc_7
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_7 wl_1_7 vdd gnd
+ replica_cell_2rw
Xrbc_8
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_8 wl_1_8 vdd gnd
+ replica_cell_2rw
Xrbc_9
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_9 wl_1_9 vdd gnd
+ replica_cell_2rw
Xrbc_10
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_10 wl_1_10 vdd gnd
+ replica_cell_2rw
Xrbc_11
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_11 wl_1_11 vdd gnd
+ replica_cell_2rw
Xrbc_12
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_12 wl_1_12 vdd gnd
+ replica_cell_2rw
Xrbc_13
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_13 wl_1_13 vdd gnd
+ replica_cell_2rw
Xrbc_14
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_14 wl_1_14 vdd gnd
+ replica_cell_2rw
Xrbc_15
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_15 wl_1_15 vdd gnd
+ replica_cell_2rw
Xrbc_16
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_16 wl_1_16 vdd gnd
+ replica_cell_2rw
Xrbc_17
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_17 wl_1_17 vdd gnd
+ replica_cell_2rw
Xrbc_18
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_18 wl_1_18 vdd gnd
+ replica_cell_2rw
Xrbc_19
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_19 wl_1_19 vdd gnd
+ replica_cell_2rw
Xrbc_20
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_20 wl_1_20 vdd gnd
+ replica_cell_2rw
Xrbc_21
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_21 wl_1_21 vdd gnd
+ replica_cell_2rw
Xrbc_22
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_22 wl_1_22 vdd gnd
+ replica_cell_2rw
Xrbc_23
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_23 wl_1_23 vdd gnd
+ replica_cell_2rw
Xrbc_24
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_24 wl_1_24 vdd gnd
+ replica_cell_2rw
Xrbc_25
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_25 wl_1_25 vdd gnd
+ replica_cell_2rw
Xrbc_26
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_26 wl_1_26 vdd gnd
+ replica_cell_2rw
Xrbc_27
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_27 wl_1_27 vdd gnd
+ replica_cell_2rw
Xrbc_28
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_28 wl_1_28 vdd gnd
+ replica_cell_2rw
Xrbc_29
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_29 wl_1_29 vdd gnd
+ replica_cell_2rw
Xrbc_30
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_30 wl_1_30 vdd gnd
+ replica_cell_2rw
Xrbc_31
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_31 wl_1_31 vdd gnd
+ replica_cell_2rw
Xrbc_32
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_32 wl_1_32 vdd gnd
+ replica_cell_2rw
Xrbc_33
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_33 wl_1_33 vdd gnd
+ replica_cell_2rw
.ENDS freepdk45_sram_1w1r_32x72_replica_column_0

.SUBCKT cell_2rw bl0 br0 bl1 br1 wl0 wl1 vdd gnd
MM9 RA_to_R_right wl1 br1 gnd NMOS_VTG W=180.0n L=50n m=1
MM8 RA_to_R_right Q gnd gnd NMOS_VTG W=180.0n L=50n m=1
MM7 RA_to_R_left Q_bar gnd gnd NMOS_VTG W=180.0n L=50n m=1
MM6 RA_to_R_left wl1 bl1 gnd NMOS_VTG W=180.0n L=50n m=1
MM5 Q wl0 bl0 gnd NMOS_VTG W=135.00n L=50n m=1
MM4 Q_bar wl0 br0 gnd NMOS_VTG W=135.00n L=50n m=1
MM1 Q Q_bar gnd gnd NMOS_VTG W=205.0n L=50n m=1
MM0 Q_bar Q gnd gnd NMOS_VTG W=205.0n L=50n m=1
MM3 Q Q_bar vdd vdd PMOS_VTG W=90n L=50n m=1
MM2 Q_bar Q vdd vdd PMOS_VTG W=90n L=50n m=1
.ENDS


.SUBCKT freepdk45_sram_1w1r_32x72_bitcell_array
+ bl_0_0 bl_1_0 br_0_0 br_1_0 bl_0_1 bl_1_1 br_0_1 br_1_1 bl_0_2 bl_1_2
+ br_0_2 br_1_2 bl_0_3 bl_1_3 br_0_3 br_1_3 bl_0_4 bl_1_4 br_0_4 br_1_4
+ bl_0_5 bl_1_5 br_0_5 br_1_5 bl_0_6 bl_1_6 br_0_6 br_1_6 bl_0_7 bl_1_7
+ br_0_7 br_1_7 bl_0_8 bl_1_8 br_0_8 br_1_8 bl_0_9 bl_1_9 br_0_9 br_1_9
+ bl_0_10 bl_1_10 br_0_10 br_1_10 bl_0_11 bl_1_11 br_0_11 br_1_11
+ bl_0_12 bl_1_12 br_0_12 br_1_12 bl_0_13 bl_1_13 br_0_13 br_1_13
+ bl_0_14 bl_1_14 br_0_14 br_1_14 bl_0_15 bl_1_15 br_0_15 br_1_15
+ bl_0_16 bl_1_16 br_0_16 br_1_16 bl_0_17 bl_1_17 br_0_17 br_1_17
+ bl_0_18 bl_1_18 br_0_18 br_1_18 bl_0_19 bl_1_19 br_0_19 br_1_19
+ bl_0_20 bl_1_20 br_0_20 br_1_20 bl_0_21 bl_1_21 br_0_21 br_1_21
+ bl_0_22 bl_1_22 br_0_22 br_1_22 bl_0_23 bl_1_23 br_0_23 br_1_23
+ bl_0_24 bl_1_24 br_0_24 br_1_24 bl_0_25 bl_1_25 br_0_25 br_1_25
+ bl_0_26 bl_1_26 br_0_26 br_1_26 bl_0_27 bl_1_27 br_0_27 br_1_27
+ bl_0_28 bl_1_28 br_0_28 br_1_28 bl_0_29 bl_1_29 br_0_29 br_1_29
+ bl_0_30 bl_1_30 br_0_30 br_1_30 bl_0_31 bl_1_31 br_0_31 br_1_31
+ bl_0_32 bl_1_32 br_0_32 br_1_32 bl_0_33 bl_1_33 br_0_33 br_1_33
+ bl_0_34 bl_1_34 br_0_34 br_1_34 bl_0_35 bl_1_35 br_0_35 br_1_35
+ bl_0_36 bl_1_36 br_0_36 br_1_36 bl_0_37 bl_1_37 br_0_37 br_1_37
+ bl_0_38 bl_1_38 br_0_38 br_1_38 bl_0_39 bl_1_39 br_0_39 br_1_39
+ bl_0_40 bl_1_40 br_0_40 br_1_40 bl_0_41 bl_1_41 br_0_41 br_1_41
+ bl_0_42 bl_1_42 br_0_42 br_1_42 bl_0_43 bl_1_43 br_0_43 br_1_43
+ bl_0_44 bl_1_44 br_0_44 br_1_44 bl_0_45 bl_1_45 br_0_45 br_1_45
+ bl_0_46 bl_1_46 br_0_46 br_1_46 bl_0_47 bl_1_47 br_0_47 br_1_47
+ bl_0_48 bl_1_48 br_0_48 br_1_48 bl_0_49 bl_1_49 br_0_49 br_1_49
+ bl_0_50 bl_1_50 br_0_50 br_1_50 bl_0_51 bl_1_51 br_0_51 br_1_51
+ bl_0_52 bl_1_52 br_0_52 br_1_52 bl_0_53 bl_1_53 br_0_53 br_1_53
+ bl_0_54 bl_1_54 br_0_54 br_1_54 bl_0_55 bl_1_55 br_0_55 br_1_55
+ bl_0_56 bl_1_56 br_0_56 br_1_56 bl_0_57 bl_1_57 br_0_57 br_1_57
+ bl_0_58 bl_1_58 br_0_58 br_1_58 bl_0_59 bl_1_59 br_0_59 br_1_59
+ bl_0_60 bl_1_60 br_0_60 br_1_60 bl_0_61 bl_1_61 br_0_61 br_1_61
+ bl_0_62 bl_1_62 br_0_62 br_1_62 bl_0_63 bl_1_63 br_0_63 br_1_63
+ bl_0_64 bl_1_64 br_0_64 br_1_64 bl_0_65 bl_1_65 br_0_65 br_1_65
+ bl_0_66 bl_1_66 br_0_66 br_1_66 bl_0_67 bl_1_67 br_0_67 br_1_67
+ bl_0_68 bl_1_68 br_0_68 br_1_68 bl_0_69 bl_1_69 br_0_69 br_1_69
+ bl_0_70 bl_1_70 br_0_70 br_1_70 bl_0_71 bl_1_71 br_0_71 br_1_71 wl_0_0
+ wl_1_0 wl_0_1 wl_1_1 wl_0_2 wl_1_2 wl_0_3 wl_1_3 wl_0_4 wl_1_4 wl_0_5
+ wl_1_5 wl_0_6 wl_1_6 wl_0_7 wl_1_7 wl_0_8 wl_1_8 wl_0_9 wl_1_9 wl_0_10
+ wl_1_10 wl_0_11 wl_1_11 wl_0_12 wl_1_12 wl_0_13 wl_1_13 wl_0_14
+ wl_1_14 wl_0_15 wl_1_15 wl_0_16 wl_1_16 wl_0_17 wl_1_17 wl_0_18
+ wl_1_18 wl_0_19 wl_1_19 wl_0_20 wl_1_20 wl_0_21 wl_1_21 wl_0_22
+ wl_1_22 wl_0_23 wl_1_23 wl_0_24 wl_1_24 wl_0_25 wl_1_25 wl_0_26
+ wl_1_26 wl_0_27 wl_1_27 wl_0_28 wl_1_28 wl_0_29 wl_1_29 wl_0_30
+ wl_1_30 wl_0_31 wl_1_31 vdd gnd
* INOUT : bl_0_0 
* INOUT : bl_1_0 
* INOUT : br_0_0 
* INOUT : br_1_0 
* INOUT : bl_0_1 
* INOUT : bl_1_1 
* INOUT : br_0_1 
* INOUT : br_1_1 
* INOUT : bl_0_2 
* INOUT : bl_1_2 
* INOUT : br_0_2 
* INOUT : br_1_2 
* INOUT : bl_0_3 
* INOUT : bl_1_3 
* INOUT : br_0_3 
* INOUT : br_1_3 
* INOUT : bl_0_4 
* INOUT : bl_1_4 
* INOUT : br_0_4 
* INOUT : br_1_4 
* INOUT : bl_0_5 
* INOUT : bl_1_5 
* INOUT : br_0_5 
* INOUT : br_1_5 
* INOUT : bl_0_6 
* INOUT : bl_1_6 
* INOUT : br_0_6 
* INOUT : br_1_6 
* INOUT : bl_0_7 
* INOUT : bl_1_7 
* INOUT : br_0_7 
* INOUT : br_1_7 
* INOUT : bl_0_8 
* INOUT : bl_1_8 
* INOUT : br_0_8 
* INOUT : br_1_8 
* INOUT : bl_0_9 
* INOUT : bl_1_9 
* INOUT : br_0_9 
* INOUT : br_1_9 
* INOUT : bl_0_10 
* INOUT : bl_1_10 
* INOUT : br_0_10 
* INOUT : br_1_10 
* INOUT : bl_0_11 
* INOUT : bl_1_11 
* INOUT : br_0_11 
* INOUT : br_1_11 
* INOUT : bl_0_12 
* INOUT : bl_1_12 
* INOUT : br_0_12 
* INOUT : br_1_12 
* INOUT : bl_0_13 
* INOUT : bl_1_13 
* INOUT : br_0_13 
* INOUT : br_1_13 
* INOUT : bl_0_14 
* INOUT : bl_1_14 
* INOUT : br_0_14 
* INOUT : br_1_14 
* INOUT : bl_0_15 
* INOUT : bl_1_15 
* INOUT : br_0_15 
* INOUT : br_1_15 
* INOUT : bl_0_16 
* INOUT : bl_1_16 
* INOUT : br_0_16 
* INOUT : br_1_16 
* INOUT : bl_0_17 
* INOUT : bl_1_17 
* INOUT : br_0_17 
* INOUT : br_1_17 
* INOUT : bl_0_18 
* INOUT : bl_1_18 
* INOUT : br_0_18 
* INOUT : br_1_18 
* INOUT : bl_0_19 
* INOUT : bl_1_19 
* INOUT : br_0_19 
* INOUT : br_1_19 
* INOUT : bl_0_20 
* INOUT : bl_1_20 
* INOUT : br_0_20 
* INOUT : br_1_20 
* INOUT : bl_0_21 
* INOUT : bl_1_21 
* INOUT : br_0_21 
* INOUT : br_1_21 
* INOUT : bl_0_22 
* INOUT : bl_1_22 
* INOUT : br_0_22 
* INOUT : br_1_22 
* INOUT : bl_0_23 
* INOUT : bl_1_23 
* INOUT : br_0_23 
* INOUT : br_1_23 
* INOUT : bl_0_24 
* INOUT : bl_1_24 
* INOUT : br_0_24 
* INOUT : br_1_24 
* INOUT : bl_0_25 
* INOUT : bl_1_25 
* INOUT : br_0_25 
* INOUT : br_1_25 
* INOUT : bl_0_26 
* INOUT : bl_1_26 
* INOUT : br_0_26 
* INOUT : br_1_26 
* INOUT : bl_0_27 
* INOUT : bl_1_27 
* INOUT : br_0_27 
* INOUT : br_1_27 
* INOUT : bl_0_28 
* INOUT : bl_1_28 
* INOUT : br_0_28 
* INOUT : br_1_28 
* INOUT : bl_0_29 
* INOUT : bl_1_29 
* INOUT : br_0_29 
* INOUT : br_1_29 
* INOUT : bl_0_30 
* INOUT : bl_1_30 
* INOUT : br_0_30 
* INOUT : br_1_30 
* INOUT : bl_0_31 
* INOUT : bl_1_31 
* INOUT : br_0_31 
* INOUT : br_1_31 
* INOUT : bl_0_32 
* INOUT : bl_1_32 
* INOUT : br_0_32 
* INOUT : br_1_32 
* INOUT : bl_0_33 
* INOUT : bl_1_33 
* INOUT : br_0_33 
* INOUT : br_1_33 
* INOUT : bl_0_34 
* INOUT : bl_1_34 
* INOUT : br_0_34 
* INOUT : br_1_34 
* INOUT : bl_0_35 
* INOUT : bl_1_35 
* INOUT : br_0_35 
* INOUT : br_1_35 
* INOUT : bl_0_36 
* INOUT : bl_1_36 
* INOUT : br_0_36 
* INOUT : br_1_36 
* INOUT : bl_0_37 
* INOUT : bl_1_37 
* INOUT : br_0_37 
* INOUT : br_1_37 
* INOUT : bl_0_38 
* INOUT : bl_1_38 
* INOUT : br_0_38 
* INOUT : br_1_38 
* INOUT : bl_0_39 
* INOUT : bl_1_39 
* INOUT : br_0_39 
* INOUT : br_1_39 
* INOUT : bl_0_40 
* INOUT : bl_1_40 
* INOUT : br_0_40 
* INOUT : br_1_40 
* INOUT : bl_0_41 
* INOUT : bl_1_41 
* INOUT : br_0_41 
* INOUT : br_1_41 
* INOUT : bl_0_42 
* INOUT : bl_1_42 
* INOUT : br_0_42 
* INOUT : br_1_42 
* INOUT : bl_0_43 
* INOUT : bl_1_43 
* INOUT : br_0_43 
* INOUT : br_1_43 
* INOUT : bl_0_44 
* INOUT : bl_1_44 
* INOUT : br_0_44 
* INOUT : br_1_44 
* INOUT : bl_0_45 
* INOUT : bl_1_45 
* INOUT : br_0_45 
* INOUT : br_1_45 
* INOUT : bl_0_46 
* INOUT : bl_1_46 
* INOUT : br_0_46 
* INOUT : br_1_46 
* INOUT : bl_0_47 
* INOUT : bl_1_47 
* INOUT : br_0_47 
* INOUT : br_1_47 
* INOUT : bl_0_48 
* INOUT : bl_1_48 
* INOUT : br_0_48 
* INOUT : br_1_48 
* INOUT : bl_0_49 
* INOUT : bl_1_49 
* INOUT : br_0_49 
* INOUT : br_1_49 
* INOUT : bl_0_50 
* INOUT : bl_1_50 
* INOUT : br_0_50 
* INOUT : br_1_50 
* INOUT : bl_0_51 
* INOUT : bl_1_51 
* INOUT : br_0_51 
* INOUT : br_1_51 
* INOUT : bl_0_52 
* INOUT : bl_1_52 
* INOUT : br_0_52 
* INOUT : br_1_52 
* INOUT : bl_0_53 
* INOUT : bl_1_53 
* INOUT : br_0_53 
* INOUT : br_1_53 
* INOUT : bl_0_54 
* INOUT : bl_1_54 
* INOUT : br_0_54 
* INOUT : br_1_54 
* INOUT : bl_0_55 
* INOUT : bl_1_55 
* INOUT : br_0_55 
* INOUT : br_1_55 
* INOUT : bl_0_56 
* INOUT : bl_1_56 
* INOUT : br_0_56 
* INOUT : br_1_56 
* INOUT : bl_0_57 
* INOUT : bl_1_57 
* INOUT : br_0_57 
* INOUT : br_1_57 
* INOUT : bl_0_58 
* INOUT : bl_1_58 
* INOUT : br_0_58 
* INOUT : br_1_58 
* INOUT : bl_0_59 
* INOUT : bl_1_59 
* INOUT : br_0_59 
* INOUT : br_1_59 
* INOUT : bl_0_60 
* INOUT : bl_1_60 
* INOUT : br_0_60 
* INOUT : br_1_60 
* INOUT : bl_0_61 
* INOUT : bl_1_61 
* INOUT : br_0_61 
* INOUT : br_1_61 
* INOUT : bl_0_62 
* INOUT : bl_1_62 
* INOUT : br_0_62 
* INOUT : br_1_62 
* INOUT : bl_0_63 
* INOUT : bl_1_63 
* INOUT : br_0_63 
* INOUT : br_1_63 
* INOUT : bl_0_64 
* INOUT : bl_1_64 
* INOUT : br_0_64 
* INOUT : br_1_64 
* INOUT : bl_0_65 
* INOUT : bl_1_65 
* INOUT : br_0_65 
* INOUT : br_1_65 
* INOUT : bl_0_66 
* INOUT : bl_1_66 
* INOUT : br_0_66 
* INOUT : br_1_66 
* INOUT : bl_0_67 
* INOUT : bl_1_67 
* INOUT : br_0_67 
* INOUT : br_1_67 
* INOUT : bl_0_68 
* INOUT : bl_1_68 
* INOUT : br_0_68 
* INOUT : br_1_68 
* INOUT : bl_0_69 
* INOUT : bl_1_69 
* INOUT : br_0_69 
* INOUT : br_1_69 
* INOUT : bl_0_70 
* INOUT : bl_1_70 
* INOUT : br_0_70 
* INOUT : br_1_70 
* INOUT : bl_0_71 
* INOUT : bl_1_71 
* INOUT : br_0_71 
* INOUT : br_1_71 
* INPUT : wl_0_0 
* INPUT : wl_1_0 
* INPUT : wl_0_1 
* INPUT : wl_1_1 
* INPUT : wl_0_2 
* INPUT : wl_1_2 
* INPUT : wl_0_3 
* INPUT : wl_1_3 
* INPUT : wl_0_4 
* INPUT : wl_1_4 
* INPUT : wl_0_5 
* INPUT : wl_1_5 
* INPUT : wl_0_6 
* INPUT : wl_1_6 
* INPUT : wl_0_7 
* INPUT : wl_1_7 
* INPUT : wl_0_8 
* INPUT : wl_1_8 
* INPUT : wl_0_9 
* INPUT : wl_1_9 
* INPUT : wl_0_10 
* INPUT : wl_1_10 
* INPUT : wl_0_11 
* INPUT : wl_1_11 
* INPUT : wl_0_12 
* INPUT : wl_1_12 
* INPUT : wl_0_13 
* INPUT : wl_1_13 
* INPUT : wl_0_14 
* INPUT : wl_1_14 
* INPUT : wl_0_15 
* INPUT : wl_1_15 
* INPUT : wl_0_16 
* INPUT : wl_1_16 
* INPUT : wl_0_17 
* INPUT : wl_1_17 
* INPUT : wl_0_18 
* INPUT : wl_1_18 
* INPUT : wl_0_19 
* INPUT : wl_1_19 
* INPUT : wl_0_20 
* INPUT : wl_1_20 
* INPUT : wl_0_21 
* INPUT : wl_1_21 
* INPUT : wl_0_22 
* INPUT : wl_1_22 
* INPUT : wl_0_23 
* INPUT : wl_1_23 
* INPUT : wl_0_24 
* INPUT : wl_1_24 
* INPUT : wl_0_25 
* INPUT : wl_1_25 
* INPUT : wl_0_26 
* INPUT : wl_1_26 
* INPUT : wl_0_27 
* INPUT : wl_1_27 
* INPUT : wl_0_28 
* INPUT : wl_1_28 
* INPUT : wl_0_29 
* INPUT : wl_1_29 
* INPUT : wl_0_30 
* INPUT : wl_1_30 
* INPUT : wl_0_31 
* INPUT : wl_1_31 
* POWER : vdd 
* GROUND: gnd 
* rows: 32 cols: 72
Xbit_r0_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c32
+ bl_0_32 br_0_32 bl_1_32 br_1_32 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c32
+ bl_0_32 br_0_32 bl_1_32 br_1_32 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c32
+ bl_0_32 br_0_32 bl_1_32 br_1_32 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c32
+ bl_0_32 br_0_32 bl_1_32 br_1_32 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c32
+ bl_0_32 br_0_32 bl_1_32 br_1_32 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c32
+ bl_0_32 br_0_32 bl_1_32 br_1_32 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c32
+ bl_0_32 br_0_32 bl_1_32 br_1_32 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c32
+ bl_0_32 br_0_32 bl_1_32 br_1_32 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c32
+ bl_0_32 br_0_32 bl_1_32 br_1_32 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c32
+ bl_0_32 br_0_32 bl_1_32 br_1_32 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c32
+ bl_0_32 br_0_32 bl_1_32 br_1_32 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c32
+ bl_0_32 br_0_32 bl_1_32 br_1_32 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c32
+ bl_0_32 br_0_32 bl_1_32 br_1_32 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c32
+ bl_0_32 br_0_32 bl_1_32 br_1_32 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c32
+ bl_0_32 br_0_32 bl_1_32 br_1_32 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c32
+ bl_0_32 br_0_32 bl_1_32 br_1_32 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c32
+ bl_0_32 br_0_32 bl_1_32 br_1_32 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c32
+ bl_0_32 br_0_32 bl_1_32 br_1_32 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c32
+ bl_0_32 br_0_32 bl_1_32 br_1_32 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c32
+ bl_0_32 br_0_32 bl_1_32 br_1_32 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c32
+ bl_0_32 br_0_32 bl_1_32 br_1_32 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c32
+ bl_0_32 br_0_32 bl_1_32 br_1_32 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c32
+ bl_0_32 br_0_32 bl_1_32 br_1_32 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c32
+ bl_0_32 br_0_32 bl_1_32 br_1_32 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c32
+ bl_0_32 br_0_32 bl_1_32 br_1_32 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c32
+ bl_0_32 br_0_32 bl_1_32 br_1_32 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c32
+ bl_0_32 br_0_32 bl_1_32 br_1_32 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c32
+ bl_0_32 br_0_32 bl_1_32 br_1_32 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c32
+ bl_0_32 br_0_32 bl_1_32 br_1_32 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c32
+ bl_0_32 br_0_32 bl_1_32 br_1_32 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c32
+ bl_0_32 br_0_32 bl_1_32 br_1_32 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c32
+ bl_0_32 br_0_32 bl_1_32 br_1_32 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c33
+ bl_0_33 br_0_33 bl_1_33 br_1_33 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c33
+ bl_0_33 br_0_33 bl_1_33 br_1_33 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c33
+ bl_0_33 br_0_33 bl_1_33 br_1_33 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c33
+ bl_0_33 br_0_33 bl_1_33 br_1_33 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c33
+ bl_0_33 br_0_33 bl_1_33 br_1_33 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c33
+ bl_0_33 br_0_33 bl_1_33 br_1_33 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c33
+ bl_0_33 br_0_33 bl_1_33 br_1_33 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c33
+ bl_0_33 br_0_33 bl_1_33 br_1_33 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c33
+ bl_0_33 br_0_33 bl_1_33 br_1_33 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c33
+ bl_0_33 br_0_33 bl_1_33 br_1_33 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c33
+ bl_0_33 br_0_33 bl_1_33 br_1_33 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c33
+ bl_0_33 br_0_33 bl_1_33 br_1_33 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c33
+ bl_0_33 br_0_33 bl_1_33 br_1_33 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c33
+ bl_0_33 br_0_33 bl_1_33 br_1_33 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c33
+ bl_0_33 br_0_33 bl_1_33 br_1_33 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c33
+ bl_0_33 br_0_33 bl_1_33 br_1_33 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c33
+ bl_0_33 br_0_33 bl_1_33 br_1_33 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c33
+ bl_0_33 br_0_33 bl_1_33 br_1_33 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c33
+ bl_0_33 br_0_33 bl_1_33 br_1_33 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c33
+ bl_0_33 br_0_33 bl_1_33 br_1_33 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c33
+ bl_0_33 br_0_33 bl_1_33 br_1_33 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c33
+ bl_0_33 br_0_33 bl_1_33 br_1_33 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c33
+ bl_0_33 br_0_33 bl_1_33 br_1_33 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c33
+ bl_0_33 br_0_33 bl_1_33 br_1_33 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c33
+ bl_0_33 br_0_33 bl_1_33 br_1_33 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c33
+ bl_0_33 br_0_33 bl_1_33 br_1_33 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c33
+ bl_0_33 br_0_33 bl_1_33 br_1_33 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c33
+ bl_0_33 br_0_33 bl_1_33 br_1_33 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c33
+ bl_0_33 br_0_33 bl_1_33 br_1_33 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c33
+ bl_0_33 br_0_33 bl_1_33 br_1_33 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c33
+ bl_0_33 br_0_33 bl_1_33 br_1_33 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c33
+ bl_0_33 br_0_33 bl_1_33 br_1_33 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c34
+ bl_0_34 br_0_34 bl_1_34 br_1_34 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c34
+ bl_0_34 br_0_34 bl_1_34 br_1_34 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c34
+ bl_0_34 br_0_34 bl_1_34 br_1_34 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c34
+ bl_0_34 br_0_34 bl_1_34 br_1_34 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c34
+ bl_0_34 br_0_34 bl_1_34 br_1_34 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c34
+ bl_0_34 br_0_34 bl_1_34 br_1_34 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c34
+ bl_0_34 br_0_34 bl_1_34 br_1_34 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c34
+ bl_0_34 br_0_34 bl_1_34 br_1_34 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c34
+ bl_0_34 br_0_34 bl_1_34 br_1_34 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c34
+ bl_0_34 br_0_34 bl_1_34 br_1_34 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c34
+ bl_0_34 br_0_34 bl_1_34 br_1_34 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c34
+ bl_0_34 br_0_34 bl_1_34 br_1_34 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c34
+ bl_0_34 br_0_34 bl_1_34 br_1_34 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c34
+ bl_0_34 br_0_34 bl_1_34 br_1_34 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c34
+ bl_0_34 br_0_34 bl_1_34 br_1_34 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c34
+ bl_0_34 br_0_34 bl_1_34 br_1_34 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c34
+ bl_0_34 br_0_34 bl_1_34 br_1_34 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c34
+ bl_0_34 br_0_34 bl_1_34 br_1_34 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c34
+ bl_0_34 br_0_34 bl_1_34 br_1_34 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c34
+ bl_0_34 br_0_34 bl_1_34 br_1_34 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c34
+ bl_0_34 br_0_34 bl_1_34 br_1_34 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c34
+ bl_0_34 br_0_34 bl_1_34 br_1_34 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c34
+ bl_0_34 br_0_34 bl_1_34 br_1_34 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c34
+ bl_0_34 br_0_34 bl_1_34 br_1_34 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c34
+ bl_0_34 br_0_34 bl_1_34 br_1_34 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c34
+ bl_0_34 br_0_34 bl_1_34 br_1_34 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c34
+ bl_0_34 br_0_34 bl_1_34 br_1_34 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c34
+ bl_0_34 br_0_34 bl_1_34 br_1_34 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c34
+ bl_0_34 br_0_34 bl_1_34 br_1_34 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c34
+ bl_0_34 br_0_34 bl_1_34 br_1_34 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c34
+ bl_0_34 br_0_34 bl_1_34 br_1_34 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c34
+ bl_0_34 br_0_34 bl_1_34 br_1_34 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c35
+ bl_0_35 br_0_35 bl_1_35 br_1_35 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c35
+ bl_0_35 br_0_35 bl_1_35 br_1_35 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c35
+ bl_0_35 br_0_35 bl_1_35 br_1_35 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c35
+ bl_0_35 br_0_35 bl_1_35 br_1_35 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c35
+ bl_0_35 br_0_35 bl_1_35 br_1_35 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c35
+ bl_0_35 br_0_35 bl_1_35 br_1_35 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c35
+ bl_0_35 br_0_35 bl_1_35 br_1_35 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c35
+ bl_0_35 br_0_35 bl_1_35 br_1_35 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c35
+ bl_0_35 br_0_35 bl_1_35 br_1_35 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c35
+ bl_0_35 br_0_35 bl_1_35 br_1_35 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c35
+ bl_0_35 br_0_35 bl_1_35 br_1_35 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c35
+ bl_0_35 br_0_35 bl_1_35 br_1_35 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c35
+ bl_0_35 br_0_35 bl_1_35 br_1_35 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c35
+ bl_0_35 br_0_35 bl_1_35 br_1_35 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c35
+ bl_0_35 br_0_35 bl_1_35 br_1_35 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c35
+ bl_0_35 br_0_35 bl_1_35 br_1_35 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c35
+ bl_0_35 br_0_35 bl_1_35 br_1_35 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c35
+ bl_0_35 br_0_35 bl_1_35 br_1_35 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c35
+ bl_0_35 br_0_35 bl_1_35 br_1_35 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c35
+ bl_0_35 br_0_35 bl_1_35 br_1_35 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c35
+ bl_0_35 br_0_35 bl_1_35 br_1_35 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c35
+ bl_0_35 br_0_35 bl_1_35 br_1_35 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c35
+ bl_0_35 br_0_35 bl_1_35 br_1_35 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c35
+ bl_0_35 br_0_35 bl_1_35 br_1_35 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c35
+ bl_0_35 br_0_35 bl_1_35 br_1_35 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c35
+ bl_0_35 br_0_35 bl_1_35 br_1_35 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c35
+ bl_0_35 br_0_35 bl_1_35 br_1_35 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c35
+ bl_0_35 br_0_35 bl_1_35 br_1_35 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c35
+ bl_0_35 br_0_35 bl_1_35 br_1_35 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c35
+ bl_0_35 br_0_35 bl_1_35 br_1_35 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c35
+ bl_0_35 br_0_35 bl_1_35 br_1_35 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c35
+ bl_0_35 br_0_35 bl_1_35 br_1_35 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c36
+ bl_0_36 br_0_36 bl_1_36 br_1_36 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c36
+ bl_0_36 br_0_36 bl_1_36 br_1_36 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c36
+ bl_0_36 br_0_36 bl_1_36 br_1_36 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c36
+ bl_0_36 br_0_36 bl_1_36 br_1_36 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c36
+ bl_0_36 br_0_36 bl_1_36 br_1_36 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c36
+ bl_0_36 br_0_36 bl_1_36 br_1_36 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c36
+ bl_0_36 br_0_36 bl_1_36 br_1_36 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c36
+ bl_0_36 br_0_36 bl_1_36 br_1_36 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c36
+ bl_0_36 br_0_36 bl_1_36 br_1_36 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c36
+ bl_0_36 br_0_36 bl_1_36 br_1_36 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c36
+ bl_0_36 br_0_36 bl_1_36 br_1_36 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c36
+ bl_0_36 br_0_36 bl_1_36 br_1_36 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c36
+ bl_0_36 br_0_36 bl_1_36 br_1_36 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c36
+ bl_0_36 br_0_36 bl_1_36 br_1_36 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c36
+ bl_0_36 br_0_36 bl_1_36 br_1_36 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c36
+ bl_0_36 br_0_36 bl_1_36 br_1_36 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c36
+ bl_0_36 br_0_36 bl_1_36 br_1_36 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c36
+ bl_0_36 br_0_36 bl_1_36 br_1_36 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c36
+ bl_0_36 br_0_36 bl_1_36 br_1_36 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c36
+ bl_0_36 br_0_36 bl_1_36 br_1_36 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c36
+ bl_0_36 br_0_36 bl_1_36 br_1_36 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c36
+ bl_0_36 br_0_36 bl_1_36 br_1_36 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c36
+ bl_0_36 br_0_36 bl_1_36 br_1_36 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c36
+ bl_0_36 br_0_36 bl_1_36 br_1_36 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c36
+ bl_0_36 br_0_36 bl_1_36 br_1_36 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c36
+ bl_0_36 br_0_36 bl_1_36 br_1_36 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c36
+ bl_0_36 br_0_36 bl_1_36 br_1_36 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c36
+ bl_0_36 br_0_36 bl_1_36 br_1_36 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c36
+ bl_0_36 br_0_36 bl_1_36 br_1_36 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c36
+ bl_0_36 br_0_36 bl_1_36 br_1_36 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c36
+ bl_0_36 br_0_36 bl_1_36 br_1_36 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c36
+ bl_0_36 br_0_36 bl_1_36 br_1_36 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c37
+ bl_0_37 br_0_37 bl_1_37 br_1_37 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c37
+ bl_0_37 br_0_37 bl_1_37 br_1_37 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c37
+ bl_0_37 br_0_37 bl_1_37 br_1_37 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c37
+ bl_0_37 br_0_37 bl_1_37 br_1_37 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c37
+ bl_0_37 br_0_37 bl_1_37 br_1_37 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c37
+ bl_0_37 br_0_37 bl_1_37 br_1_37 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c37
+ bl_0_37 br_0_37 bl_1_37 br_1_37 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c37
+ bl_0_37 br_0_37 bl_1_37 br_1_37 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c37
+ bl_0_37 br_0_37 bl_1_37 br_1_37 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c37
+ bl_0_37 br_0_37 bl_1_37 br_1_37 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c37
+ bl_0_37 br_0_37 bl_1_37 br_1_37 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c37
+ bl_0_37 br_0_37 bl_1_37 br_1_37 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c37
+ bl_0_37 br_0_37 bl_1_37 br_1_37 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c37
+ bl_0_37 br_0_37 bl_1_37 br_1_37 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c37
+ bl_0_37 br_0_37 bl_1_37 br_1_37 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c37
+ bl_0_37 br_0_37 bl_1_37 br_1_37 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c37
+ bl_0_37 br_0_37 bl_1_37 br_1_37 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c37
+ bl_0_37 br_0_37 bl_1_37 br_1_37 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c37
+ bl_0_37 br_0_37 bl_1_37 br_1_37 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c37
+ bl_0_37 br_0_37 bl_1_37 br_1_37 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c37
+ bl_0_37 br_0_37 bl_1_37 br_1_37 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c37
+ bl_0_37 br_0_37 bl_1_37 br_1_37 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c37
+ bl_0_37 br_0_37 bl_1_37 br_1_37 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c37
+ bl_0_37 br_0_37 bl_1_37 br_1_37 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c37
+ bl_0_37 br_0_37 bl_1_37 br_1_37 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c37
+ bl_0_37 br_0_37 bl_1_37 br_1_37 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c37
+ bl_0_37 br_0_37 bl_1_37 br_1_37 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c37
+ bl_0_37 br_0_37 bl_1_37 br_1_37 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c37
+ bl_0_37 br_0_37 bl_1_37 br_1_37 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c37
+ bl_0_37 br_0_37 bl_1_37 br_1_37 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c37
+ bl_0_37 br_0_37 bl_1_37 br_1_37 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c37
+ bl_0_37 br_0_37 bl_1_37 br_1_37 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c38
+ bl_0_38 br_0_38 bl_1_38 br_1_38 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c38
+ bl_0_38 br_0_38 bl_1_38 br_1_38 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c38
+ bl_0_38 br_0_38 bl_1_38 br_1_38 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c38
+ bl_0_38 br_0_38 bl_1_38 br_1_38 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c38
+ bl_0_38 br_0_38 bl_1_38 br_1_38 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c38
+ bl_0_38 br_0_38 bl_1_38 br_1_38 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c38
+ bl_0_38 br_0_38 bl_1_38 br_1_38 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c38
+ bl_0_38 br_0_38 bl_1_38 br_1_38 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c38
+ bl_0_38 br_0_38 bl_1_38 br_1_38 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c38
+ bl_0_38 br_0_38 bl_1_38 br_1_38 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c38
+ bl_0_38 br_0_38 bl_1_38 br_1_38 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c38
+ bl_0_38 br_0_38 bl_1_38 br_1_38 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c38
+ bl_0_38 br_0_38 bl_1_38 br_1_38 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c38
+ bl_0_38 br_0_38 bl_1_38 br_1_38 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c38
+ bl_0_38 br_0_38 bl_1_38 br_1_38 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c38
+ bl_0_38 br_0_38 bl_1_38 br_1_38 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c38
+ bl_0_38 br_0_38 bl_1_38 br_1_38 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c38
+ bl_0_38 br_0_38 bl_1_38 br_1_38 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c38
+ bl_0_38 br_0_38 bl_1_38 br_1_38 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c38
+ bl_0_38 br_0_38 bl_1_38 br_1_38 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c38
+ bl_0_38 br_0_38 bl_1_38 br_1_38 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c38
+ bl_0_38 br_0_38 bl_1_38 br_1_38 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c38
+ bl_0_38 br_0_38 bl_1_38 br_1_38 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c38
+ bl_0_38 br_0_38 bl_1_38 br_1_38 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c38
+ bl_0_38 br_0_38 bl_1_38 br_1_38 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c38
+ bl_0_38 br_0_38 bl_1_38 br_1_38 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c38
+ bl_0_38 br_0_38 bl_1_38 br_1_38 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c38
+ bl_0_38 br_0_38 bl_1_38 br_1_38 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c38
+ bl_0_38 br_0_38 bl_1_38 br_1_38 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c38
+ bl_0_38 br_0_38 bl_1_38 br_1_38 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c38
+ bl_0_38 br_0_38 bl_1_38 br_1_38 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c38
+ bl_0_38 br_0_38 bl_1_38 br_1_38 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c39
+ bl_0_39 br_0_39 bl_1_39 br_1_39 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c39
+ bl_0_39 br_0_39 bl_1_39 br_1_39 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c39
+ bl_0_39 br_0_39 bl_1_39 br_1_39 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c39
+ bl_0_39 br_0_39 bl_1_39 br_1_39 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c39
+ bl_0_39 br_0_39 bl_1_39 br_1_39 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c39
+ bl_0_39 br_0_39 bl_1_39 br_1_39 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c39
+ bl_0_39 br_0_39 bl_1_39 br_1_39 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c39
+ bl_0_39 br_0_39 bl_1_39 br_1_39 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c39
+ bl_0_39 br_0_39 bl_1_39 br_1_39 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c39
+ bl_0_39 br_0_39 bl_1_39 br_1_39 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c39
+ bl_0_39 br_0_39 bl_1_39 br_1_39 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c39
+ bl_0_39 br_0_39 bl_1_39 br_1_39 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c39
+ bl_0_39 br_0_39 bl_1_39 br_1_39 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c39
+ bl_0_39 br_0_39 bl_1_39 br_1_39 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c39
+ bl_0_39 br_0_39 bl_1_39 br_1_39 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c39
+ bl_0_39 br_0_39 bl_1_39 br_1_39 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c39
+ bl_0_39 br_0_39 bl_1_39 br_1_39 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c39
+ bl_0_39 br_0_39 bl_1_39 br_1_39 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c39
+ bl_0_39 br_0_39 bl_1_39 br_1_39 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c39
+ bl_0_39 br_0_39 bl_1_39 br_1_39 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c39
+ bl_0_39 br_0_39 bl_1_39 br_1_39 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c39
+ bl_0_39 br_0_39 bl_1_39 br_1_39 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c39
+ bl_0_39 br_0_39 bl_1_39 br_1_39 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c39
+ bl_0_39 br_0_39 bl_1_39 br_1_39 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c39
+ bl_0_39 br_0_39 bl_1_39 br_1_39 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c39
+ bl_0_39 br_0_39 bl_1_39 br_1_39 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c39
+ bl_0_39 br_0_39 bl_1_39 br_1_39 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c39
+ bl_0_39 br_0_39 bl_1_39 br_1_39 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c39
+ bl_0_39 br_0_39 bl_1_39 br_1_39 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c39
+ bl_0_39 br_0_39 bl_1_39 br_1_39 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c39
+ bl_0_39 br_0_39 bl_1_39 br_1_39 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c39
+ bl_0_39 br_0_39 bl_1_39 br_1_39 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c40
+ bl_0_40 br_0_40 bl_1_40 br_1_40 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c40
+ bl_0_40 br_0_40 bl_1_40 br_1_40 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c40
+ bl_0_40 br_0_40 bl_1_40 br_1_40 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c40
+ bl_0_40 br_0_40 bl_1_40 br_1_40 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c40
+ bl_0_40 br_0_40 bl_1_40 br_1_40 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c40
+ bl_0_40 br_0_40 bl_1_40 br_1_40 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c40
+ bl_0_40 br_0_40 bl_1_40 br_1_40 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c40
+ bl_0_40 br_0_40 bl_1_40 br_1_40 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c40
+ bl_0_40 br_0_40 bl_1_40 br_1_40 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c40
+ bl_0_40 br_0_40 bl_1_40 br_1_40 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c40
+ bl_0_40 br_0_40 bl_1_40 br_1_40 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c40
+ bl_0_40 br_0_40 bl_1_40 br_1_40 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c40
+ bl_0_40 br_0_40 bl_1_40 br_1_40 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c40
+ bl_0_40 br_0_40 bl_1_40 br_1_40 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c40
+ bl_0_40 br_0_40 bl_1_40 br_1_40 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c40
+ bl_0_40 br_0_40 bl_1_40 br_1_40 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c40
+ bl_0_40 br_0_40 bl_1_40 br_1_40 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c40
+ bl_0_40 br_0_40 bl_1_40 br_1_40 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c40
+ bl_0_40 br_0_40 bl_1_40 br_1_40 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c40
+ bl_0_40 br_0_40 bl_1_40 br_1_40 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c40
+ bl_0_40 br_0_40 bl_1_40 br_1_40 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c40
+ bl_0_40 br_0_40 bl_1_40 br_1_40 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c40
+ bl_0_40 br_0_40 bl_1_40 br_1_40 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c40
+ bl_0_40 br_0_40 bl_1_40 br_1_40 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c40
+ bl_0_40 br_0_40 bl_1_40 br_1_40 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c40
+ bl_0_40 br_0_40 bl_1_40 br_1_40 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c40
+ bl_0_40 br_0_40 bl_1_40 br_1_40 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c40
+ bl_0_40 br_0_40 bl_1_40 br_1_40 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c40
+ bl_0_40 br_0_40 bl_1_40 br_1_40 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c40
+ bl_0_40 br_0_40 bl_1_40 br_1_40 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c40
+ bl_0_40 br_0_40 bl_1_40 br_1_40 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c40
+ bl_0_40 br_0_40 bl_1_40 br_1_40 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c41
+ bl_0_41 br_0_41 bl_1_41 br_1_41 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c41
+ bl_0_41 br_0_41 bl_1_41 br_1_41 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c41
+ bl_0_41 br_0_41 bl_1_41 br_1_41 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c41
+ bl_0_41 br_0_41 bl_1_41 br_1_41 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c41
+ bl_0_41 br_0_41 bl_1_41 br_1_41 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c41
+ bl_0_41 br_0_41 bl_1_41 br_1_41 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c41
+ bl_0_41 br_0_41 bl_1_41 br_1_41 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c41
+ bl_0_41 br_0_41 bl_1_41 br_1_41 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c41
+ bl_0_41 br_0_41 bl_1_41 br_1_41 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c41
+ bl_0_41 br_0_41 bl_1_41 br_1_41 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c41
+ bl_0_41 br_0_41 bl_1_41 br_1_41 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c41
+ bl_0_41 br_0_41 bl_1_41 br_1_41 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c41
+ bl_0_41 br_0_41 bl_1_41 br_1_41 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c41
+ bl_0_41 br_0_41 bl_1_41 br_1_41 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c41
+ bl_0_41 br_0_41 bl_1_41 br_1_41 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c41
+ bl_0_41 br_0_41 bl_1_41 br_1_41 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c41
+ bl_0_41 br_0_41 bl_1_41 br_1_41 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c41
+ bl_0_41 br_0_41 bl_1_41 br_1_41 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c41
+ bl_0_41 br_0_41 bl_1_41 br_1_41 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c41
+ bl_0_41 br_0_41 bl_1_41 br_1_41 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c41
+ bl_0_41 br_0_41 bl_1_41 br_1_41 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c41
+ bl_0_41 br_0_41 bl_1_41 br_1_41 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c41
+ bl_0_41 br_0_41 bl_1_41 br_1_41 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c41
+ bl_0_41 br_0_41 bl_1_41 br_1_41 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c41
+ bl_0_41 br_0_41 bl_1_41 br_1_41 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c41
+ bl_0_41 br_0_41 bl_1_41 br_1_41 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c41
+ bl_0_41 br_0_41 bl_1_41 br_1_41 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c41
+ bl_0_41 br_0_41 bl_1_41 br_1_41 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c41
+ bl_0_41 br_0_41 bl_1_41 br_1_41 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c41
+ bl_0_41 br_0_41 bl_1_41 br_1_41 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c41
+ bl_0_41 br_0_41 bl_1_41 br_1_41 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c41
+ bl_0_41 br_0_41 bl_1_41 br_1_41 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c42
+ bl_0_42 br_0_42 bl_1_42 br_1_42 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c42
+ bl_0_42 br_0_42 bl_1_42 br_1_42 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c42
+ bl_0_42 br_0_42 bl_1_42 br_1_42 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c42
+ bl_0_42 br_0_42 bl_1_42 br_1_42 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c42
+ bl_0_42 br_0_42 bl_1_42 br_1_42 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c42
+ bl_0_42 br_0_42 bl_1_42 br_1_42 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c42
+ bl_0_42 br_0_42 bl_1_42 br_1_42 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c42
+ bl_0_42 br_0_42 bl_1_42 br_1_42 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c42
+ bl_0_42 br_0_42 bl_1_42 br_1_42 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c42
+ bl_0_42 br_0_42 bl_1_42 br_1_42 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c42
+ bl_0_42 br_0_42 bl_1_42 br_1_42 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c42
+ bl_0_42 br_0_42 bl_1_42 br_1_42 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c42
+ bl_0_42 br_0_42 bl_1_42 br_1_42 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c42
+ bl_0_42 br_0_42 bl_1_42 br_1_42 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c42
+ bl_0_42 br_0_42 bl_1_42 br_1_42 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c42
+ bl_0_42 br_0_42 bl_1_42 br_1_42 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c42
+ bl_0_42 br_0_42 bl_1_42 br_1_42 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c42
+ bl_0_42 br_0_42 bl_1_42 br_1_42 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c42
+ bl_0_42 br_0_42 bl_1_42 br_1_42 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c42
+ bl_0_42 br_0_42 bl_1_42 br_1_42 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c42
+ bl_0_42 br_0_42 bl_1_42 br_1_42 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c42
+ bl_0_42 br_0_42 bl_1_42 br_1_42 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c42
+ bl_0_42 br_0_42 bl_1_42 br_1_42 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c42
+ bl_0_42 br_0_42 bl_1_42 br_1_42 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c42
+ bl_0_42 br_0_42 bl_1_42 br_1_42 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c42
+ bl_0_42 br_0_42 bl_1_42 br_1_42 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c42
+ bl_0_42 br_0_42 bl_1_42 br_1_42 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c42
+ bl_0_42 br_0_42 bl_1_42 br_1_42 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c42
+ bl_0_42 br_0_42 bl_1_42 br_1_42 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c42
+ bl_0_42 br_0_42 bl_1_42 br_1_42 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c42
+ bl_0_42 br_0_42 bl_1_42 br_1_42 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c42
+ bl_0_42 br_0_42 bl_1_42 br_1_42 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c43
+ bl_0_43 br_0_43 bl_1_43 br_1_43 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c43
+ bl_0_43 br_0_43 bl_1_43 br_1_43 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c43
+ bl_0_43 br_0_43 bl_1_43 br_1_43 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c43
+ bl_0_43 br_0_43 bl_1_43 br_1_43 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c43
+ bl_0_43 br_0_43 bl_1_43 br_1_43 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c43
+ bl_0_43 br_0_43 bl_1_43 br_1_43 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c43
+ bl_0_43 br_0_43 bl_1_43 br_1_43 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c43
+ bl_0_43 br_0_43 bl_1_43 br_1_43 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c43
+ bl_0_43 br_0_43 bl_1_43 br_1_43 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c43
+ bl_0_43 br_0_43 bl_1_43 br_1_43 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c43
+ bl_0_43 br_0_43 bl_1_43 br_1_43 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c43
+ bl_0_43 br_0_43 bl_1_43 br_1_43 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c43
+ bl_0_43 br_0_43 bl_1_43 br_1_43 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c43
+ bl_0_43 br_0_43 bl_1_43 br_1_43 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c43
+ bl_0_43 br_0_43 bl_1_43 br_1_43 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c43
+ bl_0_43 br_0_43 bl_1_43 br_1_43 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c43
+ bl_0_43 br_0_43 bl_1_43 br_1_43 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c43
+ bl_0_43 br_0_43 bl_1_43 br_1_43 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c43
+ bl_0_43 br_0_43 bl_1_43 br_1_43 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c43
+ bl_0_43 br_0_43 bl_1_43 br_1_43 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c43
+ bl_0_43 br_0_43 bl_1_43 br_1_43 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c43
+ bl_0_43 br_0_43 bl_1_43 br_1_43 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c43
+ bl_0_43 br_0_43 bl_1_43 br_1_43 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c43
+ bl_0_43 br_0_43 bl_1_43 br_1_43 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c43
+ bl_0_43 br_0_43 bl_1_43 br_1_43 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c43
+ bl_0_43 br_0_43 bl_1_43 br_1_43 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c43
+ bl_0_43 br_0_43 bl_1_43 br_1_43 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c43
+ bl_0_43 br_0_43 bl_1_43 br_1_43 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c43
+ bl_0_43 br_0_43 bl_1_43 br_1_43 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c43
+ bl_0_43 br_0_43 bl_1_43 br_1_43 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c43
+ bl_0_43 br_0_43 bl_1_43 br_1_43 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c43
+ bl_0_43 br_0_43 bl_1_43 br_1_43 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c44
+ bl_0_44 br_0_44 bl_1_44 br_1_44 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c44
+ bl_0_44 br_0_44 bl_1_44 br_1_44 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c44
+ bl_0_44 br_0_44 bl_1_44 br_1_44 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c44
+ bl_0_44 br_0_44 bl_1_44 br_1_44 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c44
+ bl_0_44 br_0_44 bl_1_44 br_1_44 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c44
+ bl_0_44 br_0_44 bl_1_44 br_1_44 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c44
+ bl_0_44 br_0_44 bl_1_44 br_1_44 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c44
+ bl_0_44 br_0_44 bl_1_44 br_1_44 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c44
+ bl_0_44 br_0_44 bl_1_44 br_1_44 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c44
+ bl_0_44 br_0_44 bl_1_44 br_1_44 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c44
+ bl_0_44 br_0_44 bl_1_44 br_1_44 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c44
+ bl_0_44 br_0_44 bl_1_44 br_1_44 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c44
+ bl_0_44 br_0_44 bl_1_44 br_1_44 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c44
+ bl_0_44 br_0_44 bl_1_44 br_1_44 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c44
+ bl_0_44 br_0_44 bl_1_44 br_1_44 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c44
+ bl_0_44 br_0_44 bl_1_44 br_1_44 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c44
+ bl_0_44 br_0_44 bl_1_44 br_1_44 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c44
+ bl_0_44 br_0_44 bl_1_44 br_1_44 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c44
+ bl_0_44 br_0_44 bl_1_44 br_1_44 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c44
+ bl_0_44 br_0_44 bl_1_44 br_1_44 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c44
+ bl_0_44 br_0_44 bl_1_44 br_1_44 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c44
+ bl_0_44 br_0_44 bl_1_44 br_1_44 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c44
+ bl_0_44 br_0_44 bl_1_44 br_1_44 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c44
+ bl_0_44 br_0_44 bl_1_44 br_1_44 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c44
+ bl_0_44 br_0_44 bl_1_44 br_1_44 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c44
+ bl_0_44 br_0_44 bl_1_44 br_1_44 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c44
+ bl_0_44 br_0_44 bl_1_44 br_1_44 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c44
+ bl_0_44 br_0_44 bl_1_44 br_1_44 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c44
+ bl_0_44 br_0_44 bl_1_44 br_1_44 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c44
+ bl_0_44 br_0_44 bl_1_44 br_1_44 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c44
+ bl_0_44 br_0_44 bl_1_44 br_1_44 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c44
+ bl_0_44 br_0_44 bl_1_44 br_1_44 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c45
+ bl_0_45 br_0_45 bl_1_45 br_1_45 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c45
+ bl_0_45 br_0_45 bl_1_45 br_1_45 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c45
+ bl_0_45 br_0_45 bl_1_45 br_1_45 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c45
+ bl_0_45 br_0_45 bl_1_45 br_1_45 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c45
+ bl_0_45 br_0_45 bl_1_45 br_1_45 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c45
+ bl_0_45 br_0_45 bl_1_45 br_1_45 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c45
+ bl_0_45 br_0_45 bl_1_45 br_1_45 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c45
+ bl_0_45 br_0_45 bl_1_45 br_1_45 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c45
+ bl_0_45 br_0_45 bl_1_45 br_1_45 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c45
+ bl_0_45 br_0_45 bl_1_45 br_1_45 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c45
+ bl_0_45 br_0_45 bl_1_45 br_1_45 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c45
+ bl_0_45 br_0_45 bl_1_45 br_1_45 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c45
+ bl_0_45 br_0_45 bl_1_45 br_1_45 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c45
+ bl_0_45 br_0_45 bl_1_45 br_1_45 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c45
+ bl_0_45 br_0_45 bl_1_45 br_1_45 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c45
+ bl_0_45 br_0_45 bl_1_45 br_1_45 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c45
+ bl_0_45 br_0_45 bl_1_45 br_1_45 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c45
+ bl_0_45 br_0_45 bl_1_45 br_1_45 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c45
+ bl_0_45 br_0_45 bl_1_45 br_1_45 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c45
+ bl_0_45 br_0_45 bl_1_45 br_1_45 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c45
+ bl_0_45 br_0_45 bl_1_45 br_1_45 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c45
+ bl_0_45 br_0_45 bl_1_45 br_1_45 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c45
+ bl_0_45 br_0_45 bl_1_45 br_1_45 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c45
+ bl_0_45 br_0_45 bl_1_45 br_1_45 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c45
+ bl_0_45 br_0_45 bl_1_45 br_1_45 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c45
+ bl_0_45 br_0_45 bl_1_45 br_1_45 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c45
+ bl_0_45 br_0_45 bl_1_45 br_1_45 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c45
+ bl_0_45 br_0_45 bl_1_45 br_1_45 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c45
+ bl_0_45 br_0_45 bl_1_45 br_1_45 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c45
+ bl_0_45 br_0_45 bl_1_45 br_1_45 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c45
+ bl_0_45 br_0_45 bl_1_45 br_1_45 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c45
+ bl_0_45 br_0_45 bl_1_45 br_1_45 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c46
+ bl_0_46 br_0_46 bl_1_46 br_1_46 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c46
+ bl_0_46 br_0_46 bl_1_46 br_1_46 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c46
+ bl_0_46 br_0_46 bl_1_46 br_1_46 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c46
+ bl_0_46 br_0_46 bl_1_46 br_1_46 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c46
+ bl_0_46 br_0_46 bl_1_46 br_1_46 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c46
+ bl_0_46 br_0_46 bl_1_46 br_1_46 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c46
+ bl_0_46 br_0_46 bl_1_46 br_1_46 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c46
+ bl_0_46 br_0_46 bl_1_46 br_1_46 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c46
+ bl_0_46 br_0_46 bl_1_46 br_1_46 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c46
+ bl_0_46 br_0_46 bl_1_46 br_1_46 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c46
+ bl_0_46 br_0_46 bl_1_46 br_1_46 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c46
+ bl_0_46 br_0_46 bl_1_46 br_1_46 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c46
+ bl_0_46 br_0_46 bl_1_46 br_1_46 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c46
+ bl_0_46 br_0_46 bl_1_46 br_1_46 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c46
+ bl_0_46 br_0_46 bl_1_46 br_1_46 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c46
+ bl_0_46 br_0_46 bl_1_46 br_1_46 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c46
+ bl_0_46 br_0_46 bl_1_46 br_1_46 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c46
+ bl_0_46 br_0_46 bl_1_46 br_1_46 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c46
+ bl_0_46 br_0_46 bl_1_46 br_1_46 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c46
+ bl_0_46 br_0_46 bl_1_46 br_1_46 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c46
+ bl_0_46 br_0_46 bl_1_46 br_1_46 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c46
+ bl_0_46 br_0_46 bl_1_46 br_1_46 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c46
+ bl_0_46 br_0_46 bl_1_46 br_1_46 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c46
+ bl_0_46 br_0_46 bl_1_46 br_1_46 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c46
+ bl_0_46 br_0_46 bl_1_46 br_1_46 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c46
+ bl_0_46 br_0_46 bl_1_46 br_1_46 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c46
+ bl_0_46 br_0_46 bl_1_46 br_1_46 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c46
+ bl_0_46 br_0_46 bl_1_46 br_1_46 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c46
+ bl_0_46 br_0_46 bl_1_46 br_1_46 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c46
+ bl_0_46 br_0_46 bl_1_46 br_1_46 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c46
+ bl_0_46 br_0_46 bl_1_46 br_1_46 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c46
+ bl_0_46 br_0_46 bl_1_46 br_1_46 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c47
+ bl_0_47 br_0_47 bl_1_47 br_1_47 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c47
+ bl_0_47 br_0_47 bl_1_47 br_1_47 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c47
+ bl_0_47 br_0_47 bl_1_47 br_1_47 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c47
+ bl_0_47 br_0_47 bl_1_47 br_1_47 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c47
+ bl_0_47 br_0_47 bl_1_47 br_1_47 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c47
+ bl_0_47 br_0_47 bl_1_47 br_1_47 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c47
+ bl_0_47 br_0_47 bl_1_47 br_1_47 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c47
+ bl_0_47 br_0_47 bl_1_47 br_1_47 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c47
+ bl_0_47 br_0_47 bl_1_47 br_1_47 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c47
+ bl_0_47 br_0_47 bl_1_47 br_1_47 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c47
+ bl_0_47 br_0_47 bl_1_47 br_1_47 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c47
+ bl_0_47 br_0_47 bl_1_47 br_1_47 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c47
+ bl_0_47 br_0_47 bl_1_47 br_1_47 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c47
+ bl_0_47 br_0_47 bl_1_47 br_1_47 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c47
+ bl_0_47 br_0_47 bl_1_47 br_1_47 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c47
+ bl_0_47 br_0_47 bl_1_47 br_1_47 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c47
+ bl_0_47 br_0_47 bl_1_47 br_1_47 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c47
+ bl_0_47 br_0_47 bl_1_47 br_1_47 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c47
+ bl_0_47 br_0_47 bl_1_47 br_1_47 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c47
+ bl_0_47 br_0_47 bl_1_47 br_1_47 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c47
+ bl_0_47 br_0_47 bl_1_47 br_1_47 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c47
+ bl_0_47 br_0_47 bl_1_47 br_1_47 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c47
+ bl_0_47 br_0_47 bl_1_47 br_1_47 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c47
+ bl_0_47 br_0_47 bl_1_47 br_1_47 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c47
+ bl_0_47 br_0_47 bl_1_47 br_1_47 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c47
+ bl_0_47 br_0_47 bl_1_47 br_1_47 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c47
+ bl_0_47 br_0_47 bl_1_47 br_1_47 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c47
+ bl_0_47 br_0_47 bl_1_47 br_1_47 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c47
+ bl_0_47 br_0_47 bl_1_47 br_1_47 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c47
+ bl_0_47 br_0_47 bl_1_47 br_1_47 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c47
+ bl_0_47 br_0_47 bl_1_47 br_1_47 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c47
+ bl_0_47 br_0_47 bl_1_47 br_1_47 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c48
+ bl_0_48 br_0_48 bl_1_48 br_1_48 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c48
+ bl_0_48 br_0_48 bl_1_48 br_1_48 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c48
+ bl_0_48 br_0_48 bl_1_48 br_1_48 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c48
+ bl_0_48 br_0_48 bl_1_48 br_1_48 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c48
+ bl_0_48 br_0_48 bl_1_48 br_1_48 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c48
+ bl_0_48 br_0_48 bl_1_48 br_1_48 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c48
+ bl_0_48 br_0_48 bl_1_48 br_1_48 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c48
+ bl_0_48 br_0_48 bl_1_48 br_1_48 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c48
+ bl_0_48 br_0_48 bl_1_48 br_1_48 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c48
+ bl_0_48 br_0_48 bl_1_48 br_1_48 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c48
+ bl_0_48 br_0_48 bl_1_48 br_1_48 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c48
+ bl_0_48 br_0_48 bl_1_48 br_1_48 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c48
+ bl_0_48 br_0_48 bl_1_48 br_1_48 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c48
+ bl_0_48 br_0_48 bl_1_48 br_1_48 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c48
+ bl_0_48 br_0_48 bl_1_48 br_1_48 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c48
+ bl_0_48 br_0_48 bl_1_48 br_1_48 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c48
+ bl_0_48 br_0_48 bl_1_48 br_1_48 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c48
+ bl_0_48 br_0_48 bl_1_48 br_1_48 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c48
+ bl_0_48 br_0_48 bl_1_48 br_1_48 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c48
+ bl_0_48 br_0_48 bl_1_48 br_1_48 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c48
+ bl_0_48 br_0_48 bl_1_48 br_1_48 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c48
+ bl_0_48 br_0_48 bl_1_48 br_1_48 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c48
+ bl_0_48 br_0_48 bl_1_48 br_1_48 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c48
+ bl_0_48 br_0_48 bl_1_48 br_1_48 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c48
+ bl_0_48 br_0_48 bl_1_48 br_1_48 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c48
+ bl_0_48 br_0_48 bl_1_48 br_1_48 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c48
+ bl_0_48 br_0_48 bl_1_48 br_1_48 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c48
+ bl_0_48 br_0_48 bl_1_48 br_1_48 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c48
+ bl_0_48 br_0_48 bl_1_48 br_1_48 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c48
+ bl_0_48 br_0_48 bl_1_48 br_1_48 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c48
+ bl_0_48 br_0_48 bl_1_48 br_1_48 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c48
+ bl_0_48 br_0_48 bl_1_48 br_1_48 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c49
+ bl_0_49 br_0_49 bl_1_49 br_1_49 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c49
+ bl_0_49 br_0_49 bl_1_49 br_1_49 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c49
+ bl_0_49 br_0_49 bl_1_49 br_1_49 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c49
+ bl_0_49 br_0_49 bl_1_49 br_1_49 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c49
+ bl_0_49 br_0_49 bl_1_49 br_1_49 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c49
+ bl_0_49 br_0_49 bl_1_49 br_1_49 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c49
+ bl_0_49 br_0_49 bl_1_49 br_1_49 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c49
+ bl_0_49 br_0_49 bl_1_49 br_1_49 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c49
+ bl_0_49 br_0_49 bl_1_49 br_1_49 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c49
+ bl_0_49 br_0_49 bl_1_49 br_1_49 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c49
+ bl_0_49 br_0_49 bl_1_49 br_1_49 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c49
+ bl_0_49 br_0_49 bl_1_49 br_1_49 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c49
+ bl_0_49 br_0_49 bl_1_49 br_1_49 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c49
+ bl_0_49 br_0_49 bl_1_49 br_1_49 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c49
+ bl_0_49 br_0_49 bl_1_49 br_1_49 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c49
+ bl_0_49 br_0_49 bl_1_49 br_1_49 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c49
+ bl_0_49 br_0_49 bl_1_49 br_1_49 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c49
+ bl_0_49 br_0_49 bl_1_49 br_1_49 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c49
+ bl_0_49 br_0_49 bl_1_49 br_1_49 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c49
+ bl_0_49 br_0_49 bl_1_49 br_1_49 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c49
+ bl_0_49 br_0_49 bl_1_49 br_1_49 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c49
+ bl_0_49 br_0_49 bl_1_49 br_1_49 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c49
+ bl_0_49 br_0_49 bl_1_49 br_1_49 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c49
+ bl_0_49 br_0_49 bl_1_49 br_1_49 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c49
+ bl_0_49 br_0_49 bl_1_49 br_1_49 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c49
+ bl_0_49 br_0_49 bl_1_49 br_1_49 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c49
+ bl_0_49 br_0_49 bl_1_49 br_1_49 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c49
+ bl_0_49 br_0_49 bl_1_49 br_1_49 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c49
+ bl_0_49 br_0_49 bl_1_49 br_1_49 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c49
+ bl_0_49 br_0_49 bl_1_49 br_1_49 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c49
+ bl_0_49 br_0_49 bl_1_49 br_1_49 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c49
+ bl_0_49 br_0_49 bl_1_49 br_1_49 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c50
+ bl_0_50 br_0_50 bl_1_50 br_1_50 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c50
+ bl_0_50 br_0_50 bl_1_50 br_1_50 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c50
+ bl_0_50 br_0_50 bl_1_50 br_1_50 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c50
+ bl_0_50 br_0_50 bl_1_50 br_1_50 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c50
+ bl_0_50 br_0_50 bl_1_50 br_1_50 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c50
+ bl_0_50 br_0_50 bl_1_50 br_1_50 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c50
+ bl_0_50 br_0_50 bl_1_50 br_1_50 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c50
+ bl_0_50 br_0_50 bl_1_50 br_1_50 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c50
+ bl_0_50 br_0_50 bl_1_50 br_1_50 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c50
+ bl_0_50 br_0_50 bl_1_50 br_1_50 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c50
+ bl_0_50 br_0_50 bl_1_50 br_1_50 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c50
+ bl_0_50 br_0_50 bl_1_50 br_1_50 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c50
+ bl_0_50 br_0_50 bl_1_50 br_1_50 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c50
+ bl_0_50 br_0_50 bl_1_50 br_1_50 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c50
+ bl_0_50 br_0_50 bl_1_50 br_1_50 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c50
+ bl_0_50 br_0_50 bl_1_50 br_1_50 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c50
+ bl_0_50 br_0_50 bl_1_50 br_1_50 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c50
+ bl_0_50 br_0_50 bl_1_50 br_1_50 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c50
+ bl_0_50 br_0_50 bl_1_50 br_1_50 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c50
+ bl_0_50 br_0_50 bl_1_50 br_1_50 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c50
+ bl_0_50 br_0_50 bl_1_50 br_1_50 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c50
+ bl_0_50 br_0_50 bl_1_50 br_1_50 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c50
+ bl_0_50 br_0_50 bl_1_50 br_1_50 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c50
+ bl_0_50 br_0_50 bl_1_50 br_1_50 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c50
+ bl_0_50 br_0_50 bl_1_50 br_1_50 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c50
+ bl_0_50 br_0_50 bl_1_50 br_1_50 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c50
+ bl_0_50 br_0_50 bl_1_50 br_1_50 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c50
+ bl_0_50 br_0_50 bl_1_50 br_1_50 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c50
+ bl_0_50 br_0_50 bl_1_50 br_1_50 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c50
+ bl_0_50 br_0_50 bl_1_50 br_1_50 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c50
+ bl_0_50 br_0_50 bl_1_50 br_1_50 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c50
+ bl_0_50 br_0_50 bl_1_50 br_1_50 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c51
+ bl_0_51 br_0_51 bl_1_51 br_1_51 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c51
+ bl_0_51 br_0_51 bl_1_51 br_1_51 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c51
+ bl_0_51 br_0_51 bl_1_51 br_1_51 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c51
+ bl_0_51 br_0_51 bl_1_51 br_1_51 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c51
+ bl_0_51 br_0_51 bl_1_51 br_1_51 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c51
+ bl_0_51 br_0_51 bl_1_51 br_1_51 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c51
+ bl_0_51 br_0_51 bl_1_51 br_1_51 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c51
+ bl_0_51 br_0_51 bl_1_51 br_1_51 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c51
+ bl_0_51 br_0_51 bl_1_51 br_1_51 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c51
+ bl_0_51 br_0_51 bl_1_51 br_1_51 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c51
+ bl_0_51 br_0_51 bl_1_51 br_1_51 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c51
+ bl_0_51 br_0_51 bl_1_51 br_1_51 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c51
+ bl_0_51 br_0_51 bl_1_51 br_1_51 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c51
+ bl_0_51 br_0_51 bl_1_51 br_1_51 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c51
+ bl_0_51 br_0_51 bl_1_51 br_1_51 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c51
+ bl_0_51 br_0_51 bl_1_51 br_1_51 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c51
+ bl_0_51 br_0_51 bl_1_51 br_1_51 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c51
+ bl_0_51 br_0_51 bl_1_51 br_1_51 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c51
+ bl_0_51 br_0_51 bl_1_51 br_1_51 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c51
+ bl_0_51 br_0_51 bl_1_51 br_1_51 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c51
+ bl_0_51 br_0_51 bl_1_51 br_1_51 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c51
+ bl_0_51 br_0_51 bl_1_51 br_1_51 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c51
+ bl_0_51 br_0_51 bl_1_51 br_1_51 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c51
+ bl_0_51 br_0_51 bl_1_51 br_1_51 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c51
+ bl_0_51 br_0_51 bl_1_51 br_1_51 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c51
+ bl_0_51 br_0_51 bl_1_51 br_1_51 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c51
+ bl_0_51 br_0_51 bl_1_51 br_1_51 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c51
+ bl_0_51 br_0_51 bl_1_51 br_1_51 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c51
+ bl_0_51 br_0_51 bl_1_51 br_1_51 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c51
+ bl_0_51 br_0_51 bl_1_51 br_1_51 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c51
+ bl_0_51 br_0_51 bl_1_51 br_1_51 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c51
+ bl_0_51 br_0_51 bl_1_51 br_1_51 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c52
+ bl_0_52 br_0_52 bl_1_52 br_1_52 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c52
+ bl_0_52 br_0_52 bl_1_52 br_1_52 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c52
+ bl_0_52 br_0_52 bl_1_52 br_1_52 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c52
+ bl_0_52 br_0_52 bl_1_52 br_1_52 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c52
+ bl_0_52 br_0_52 bl_1_52 br_1_52 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c52
+ bl_0_52 br_0_52 bl_1_52 br_1_52 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c52
+ bl_0_52 br_0_52 bl_1_52 br_1_52 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c52
+ bl_0_52 br_0_52 bl_1_52 br_1_52 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c52
+ bl_0_52 br_0_52 bl_1_52 br_1_52 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c52
+ bl_0_52 br_0_52 bl_1_52 br_1_52 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c52
+ bl_0_52 br_0_52 bl_1_52 br_1_52 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c52
+ bl_0_52 br_0_52 bl_1_52 br_1_52 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c52
+ bl_0_52 br_0_52 bl_1_52 br_1_52 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c52
+ bl_0_52 br_0_52 bl_1_52 br_1_52 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c52
+ bl_0_52 br_0_52 bl_1_52 br_1_52 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c52
+ bl_0_52 br_0_52 bl_1_52 br_1_52 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c52
+ bl_0_52 br_0_52 bl_1_52 br_1_52 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c52
+ bl_0_52 br_0_52 bl_1_52 br_1_52 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c52
+ bl_0_52 br_0_52 bl_1_52 br_1_52 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c52
+ bl_0_52 br_0_52 bl_1_52 br_1_52 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c52
+ bl_0_52 br_0_52 bl_1_52 br_1_52 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c52
+ bl_0_52 br_0_52 bl_1_52 br_1_52 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c52
+ bl_0_52 br_0_52 bl_1_52 br_1_52 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c52
+ bl_0_52 br_0_52 bl_1_52 br_1_52 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c52
+ bl_0_52 br_0_52 bl_1_52 br_1_52 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c52
+ bl_0_52 br_0_52 bl_1_52 br_1_52 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c52
+ bl_0_52 br_0_52 bl_1_52 br_1_52 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c52
+ bl_0_52 br_0_52 bl_1_52 br_1_52 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c52
+ bl_0_52 br_0_52 bl_1_52 br_1_52 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c52
+ bl_0_52 br_0_52 bl_1_52 br_1_52 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c52
+ bl_0_52 br_0_52 bl_1_52 br_1_52 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c52
+ bl_0_52 br_0_52 bl_1_52 br_1_52 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c53
+ bl_0_53 br_0_53 bl_1_53 br_1_53 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c53
+ bl_0_53 br_0_53 bl_1_53 br_1_53 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c53
+ bl_0_53 br_0_53 bl_1_53 br_1_53 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c53
+ bl_0_53 br_0_53 bl_1_53 br_1_53 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c53
+ bl_0_53 br_0_53 bl_1_53 br_1_53 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c53
+ bl_0_53 br_0_53 bl_1_53 br_1_53 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c53
+ bl_0_53 br_0_53 bl_1_53 br_1_53 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c53
+ bl_0_53 br_0_53 bl_1_53 br_1_53 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c53
+ bl_0_53 br_0_53 bl_1_53 br_1_53 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c53
+ bl_0_53 br_0_53 bl_1_53 br_1_53 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c53
+ bl_0_53 br_0_53 bl_1_53 br_1_53 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c53
+ bl_0_53 br_0_53 bl_1_53 br_1_53 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c53
+ bl_0_53 br_0_53 bl_1_53 br_1_53 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c53
+ bl_0_53 br_0_53 bl_1_53 br_1_53 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c53
+ bl_0_53 br_0_53 bl_1_53 br_1_53 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c53
+ bl_0_53 br_0_53 bl_1_53 br_1_53 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c53
+ bl_0_53 br_0_53 bl_1_53 br_1_53 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c53
+ bl_0_53 br_0_53 bl_1_53 br_1_53 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c53
+ bl_0_53 br_0_53 bl_1_53 br_1_53 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c53
+ bl_0_53 br_0_53 bl_1_53 br_1_53 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c53
+ bl_0_53 br_0_53 bl_1_53 br_1_53 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c53
+ bl_0_53 br_0_53 bl_1_53 br_1_53 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c53
+ bl_0_53 br_0_53 bl_1_53 br_1_53 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c53
+ bl_0_53 br_0_53 bl_1_53 br_1_53 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c53
+ bl_0_53 br_0_53 bl_1_53 br_1_53 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c53
+ bl_0_53 br_0_53 bl_1_53 br_1_53 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c53
+ bl_0_53 br_0_53 bl_1_53 br_1_53 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c53
+ bl_0_53 br_0_53 bl_1_53 br_1_53 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c53
+ bl_0_53 br_0_53 bl_1_53 br_1_53 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c53
+ bl_0_53 br_0_53 bl_1_53 br_1_53 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c53
+ bl_0_53 br_0_53 bl_1_53 br_1_53 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c53
+ bl_0_53 br_0_53 bl_1_53 br_1_53 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c54
+ bl_0_54 br_0_54 bl_1_54 br_1_54 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c54
+ bl_0_54 br_0_54 bl_1_54 br_1_54 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c54
+ bl_0_54 br_0_54 bl_1_54 br_1_54 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c54
+ bl_0_54 br_0_54 bl_1_54 br_1_54 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c54
+ bl_0_54 br_0_54 bl_1_54 br_1_54 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c54
+ bl_0_54 br_0_54 bl_1_54 br_1_54 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c54
+ bl_0_54 br_0_54 bl_1_54 br_1_54 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c54
+ bl_0_54 br_0_54 bl_1_54 br_1_54 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c54
+ bl_0_54 br_0_54 bl_1_54 br_1_54 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c54
+ bl_0_54 br_0_54 bl_1_54 br_1_54 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c54
+ bl_0_54 br_0_54 bl_1_54 br_1_54 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c54
+ bl_0_54 br_0_54 bl_1_54 br_1_54 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c54
+ bl_0_54 br_0_54 bl_1_54 br_1_54 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c54
+ bl_0_54 br_0_54 bl_1_54 br_1_54 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c54
+ bl_0_54 br_0_54 bl_1_54 br_1_54 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c54
+ bl_0_54 br_0_54 bl_1_54 br_1_54 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c54
+ bl_0_54 br_0_54 bl_1_54 br_1_54 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c54
+ bl_0_54 br_0_54 bl_1_54 br_1_54 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c54
+ bl_0_54 br_0_54 bl_1_54 br_1_54 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c54
+ bl_0_54 br_0_54 bl_1_54 br_1_54 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c54
+ bl_0_54 br_0_54 bl_1_54 br_1_54 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c54
+ bl_0_54 br_0_54 bl_1_54 br_1_54 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c54
+ bl_0_54 br_0_54 bl_1_54 br_1_54 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c54
+ bl_0_54 br_0_54 bl_1_54 br_1_54 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c54
+ bl_0_54 br_0_54 bl_1_54 br_1_54 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c54
+ bl_0_54 br_0_54 bl_1_54 br_1_54 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c54
+ bl_0_54 br_0_54 bl_1_54 br_1_54 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c54
+ bl_0_54 br_0_54 bl_1_54 br_1_54 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c54
+ bl_0_54 br_0_54 bl_1_54 br_1_54 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c54
+ bl_0_54 br_0_54 bl_1_54 br_1_54 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c54
+ bl_0_54 br_0_54 bl_1_54 br_1_54 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c54
+ bl_0_54 br_0_54 bl_1_54 br_1_54 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c55
+ bl_0_55 br_0_55 bl_1_55 br_1_55 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c55
+ bl_0_55 br_0_55 bl_1_55 br_1_55 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c55
+ bl_0_55 br_0_55 bl_1_55 br_1_55 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c55
+ bl_0_55 br_0_55 bl_1_55 br_1_55 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c55
+ bl_0_55 br_0_55 bl_1_55 br_1_55 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c55
+ bl_0_55 br_0_55 bl_1_55 br_1_55 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c55
+ bl_0_55 br_0_55 bl_1_55 br_1_55 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c55
+ bl_0_55 br_0_55 bl_1_55 br_1_55 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c55
+ bl_0_55 br_0_55 bl_1_55 br_1_55 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c55
+ bl_0_55 br_0_55 bl_1_55 br_1_55 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c55
+ bl_0_55 br_0_55 bl_1_55 br_1_55 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c55
+ bl_0_55 br_0_55 bl_1_55 br_1_55 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c55
+ bl_0_55 br_0_55 bl_1_55 br_1_55 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c55
+ bl_0_55 br_0_55 bl_1_55 br_1_55 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c55
+ bl_0_55 br_0_55 bl_1_55 br_1_55 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c55
+ bl_0_55 br_0_55 bl_1_55 br_1_55 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c55
+ bl_0_55 br_0_55 bl_1_55 br_1_55 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c55
+ bl_0_55 br_0_55 bl_1_55 br_1_55 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c55
+ bl_0_55 br_0_55 bl_1_55 br_1_55 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c55
+ bl_0_55 br_0_55 bl_1_55 br_1_55 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c55
+ bl_0_55 br_0_55 bl_1_55 br_1_55 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c55
+ bl_0_55 br_0_55 bl_1_55 br_1_55 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c55
+ bl_0_55 br_0_55 bl_1_55 br_1_55 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c55
+ bl_0_55 br_0_55 bl_1_55 br_1_55 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c55
+ bl_0_55 br_0_55 bl_1_55 br_1_55 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c55
+ bl_0_55 br_0_55 bl_1_55 br_1_55 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c55
+ bl_0_55 br_0_55 bl_1_55 br_1_55 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c55
+ bl_0_55 br_0_55 bl_1_55 br_1_55 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c55
+ bl_0_55 br_0_55 bl_1_55 br_1_55 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c55
+ bl_0_55 br_0_55 bl_1_55 br_1_55 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c55
+ bl_0_55 br_0_55 bl_1_55 br_1_55 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c55
+ bl_0_55 br_0_55 bl_1_55 br_1_55 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c56
+ bl_0_56 br_0_56 bl_1_56 br_1_56 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c56
+ bl_0_56 br_0_56 bl_1_56 br_1_56 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c56
+ bl_0_56 br_0_56 bl_1_56 br_1_56 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c56
+ bl_0_56 br_0_56 bl_1_56 br_1_56 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c56
+ bl_0_56 br_0_56 bl_1_56 br_1_56 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c56
+ bl_0_56 br_0_56 bl_1_56 br_1_56 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c56
+ bl_0_56 br_0_56 bl_1_56 br_1_56 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c56
+ bl_0_56 br_0_56 bl_1_56 br_1_56 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c56
+ bl_0_56 br_0_56 bl_1_56 br_1_56 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c56
+ bl_0_56 br_0_56 bl_1_56 br_1_56 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c56
+ bl_0_56 br_0_56 bl_1_56 br_1_56 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c56
+ bl_0_56 br_0_56 bl_1_56 br_1_56 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c56
+ bl_0_56 br_0_56 bl_1_56 br_1_56 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c56
+ bl_0_56 br_0_56 bl_1_56 br_1_56 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c56
+ bl_0_56 br_0_56 bl_1_56 br_1_56 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c56
+ bl_0_56 br_0_56 bl_1_56 br_1_56 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c56
+ bl_0_56 br_0_56 bl_1_56 br_1_56 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c56
+ bl_0_56 br_0_56 bl_1_56 br_1_56 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c56
+ bl_0_56 br_0_56 bl_1_56 br_1_56 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c56
+ bl_0_56 br_0_56 bl_1_56 br_1_56 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c56
+ bl_0_56 br_0_56 bl_1_56 br_1_56 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c56
+ bl_0_56 br_0_56 bl_1_56 br_1_56 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c56
+ bl_0_56 br_0_56 bl_1_56 br_1_56 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c56
+ bl_0_56 br_0_56 bl_1_56 br_1_56 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c56
+ bl_0_56 br_0_56 bl_1_56 br_1_56 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c56
+ bl_0_56 br_0_56 bl_1_56 br_1_56 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c56
+ bl_0_56 br_0_56 bl_1_56 br_1_56 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c56
+ bl_0_56 br_0_56 bl_1_56 br_1_56 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c56
+ bl_0_56 br_0_56 bl_1_56 br_1_56 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c56
+ bl_0_56 br_0_56 bl_1_56 br_1_56 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c56
+ bl_0_56 br_0_56 bl_1_56 br_1_56 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c56
+ bl_0_56 br_0_56 bl_1_56 br_1_56 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c57
+ bl_0_57 br_0_57 bl_1_57 br_1_57 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c57
+ bl_0_57 br_0_57 bl_1_57 br_1_57 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c57
+ bl_0_57 br_0_57 bl_1_57 br_1_57 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c57
+ bl_0_57 br_0_57 bl_1_57 br_1_57 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c57
+ bl_0_57 br_0_57 bl_1_57 br_1_57 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c57
+ bl_0_57 br_0_57 bl_1_57 br_1_57 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c57
+ bl_0_57 br_0_57 bl_1_57 br_1_57 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c57
+ bl_0_57 br_0_57 bl_1_57 br_1_57 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c57
+ bl_0_57 br_0_57 bl_1_57 br_1_57 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c57
+ bl_0_57 br_0_57 bl_1_57 br_1_57 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c57
+ bl_0_57 br_0_57 bl_1_57 br_1_57 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c57
+ bl_0_57 br_0_57 bl_1_57 br_1_57 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c57
+ bl_0_57 br_0_57 bl_1_57 br_1_57 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c57
+ bl_0_57 br_0_57 bl_1_57 br_1_57 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c57
+ bl_0_57 br_0_57 bl_1_57 br_1_57 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c57
+ bl_0_57 br_0_57 bl_1_57 br_1_57 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c57
+ bl_0_57 br_0_57 bl_1_57 br_1_57 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c57
+ bl_0_57 br_0_57 bl_1_57 br_1_57 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c57
+ bl_0_57 br_0_57 bl_1_57 br_1_57 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c57
+ bl_0_57 br_0_57 bl_1_57 br_1_57 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c57
+ bl_0_57 br_0_57 bl_1_57 br_1_57 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c57
+ bl_0_57 br_0_57 bl_1_57 br_1_57 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c57
+ bl_0_57 br_0_57 bl_1_57 br_1_57 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c57
+ bl_0_57 br_0_57 bl_1_57 br_1_57 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c57
+ bl_0_57 br_0_57 bl_1_57 br_1_57 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c57
+ bl_0_57 br_0_57 bl_1_57 br_1_57 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c57
+ bl_0_57 br_0_57 bl_1_57 br_1_57 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c57
+ bl_0_57 br_0_57 bl_1_57 br_1_57 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c57
+ bl_0_57 br_0_57 bl_1_57 br_1_57 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c57
+ bl_0_57 br_0_57 bl_1_57 br_1_57 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c57
+ bl_0_57 br_0_57 bl_1_57 br_1_57 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c57
+ bl_0_57 br_0_57 bl_1_57 br_1_57 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c58
+ bl_0_58 br_0_58 bl_1_58 br_1_58 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c58
+ bl_0_58 br_0_58 bl_1_58 br_1_58 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c58
+ bl_0_58 br_0_58 bl_1_58 br_1_58 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c58
+ bl_0_58 br_0_58 bl_1_58 br_1_58 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c58
+ bl_0_58 br_0_58 bl_1_58 br_1_58 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c58
+ bl_0_58 br_0_58 bl_1_58 br_1_58 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c58
+ bl_0_58 br_0_58 bl_1_58 br_1_58 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c58
+ bl_0_58 br_0_58 bl_1_58 br_1_58 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c58
+ bl_0_58 br_0_58 bl_1_58 br_1_58 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c58
+ bl_0_58 br_0_58 bl_1_58 br_1_58 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c58
+ bl_0_58 br_0_58 bl_1_58 br_1_58 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c58
+ bl_0_58 br_0_58 bl_1_58 br_1_58 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c58
+ bl_0_58 br_0_58 bl_1_58 br_1_58 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c58
+ bl_0_58 br_0_58 bl_1_58 br_1_58 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c58
+ bl_0_58 br_0_58 bl_1_58 br_1_58 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c58
+ bl_0_58 br_0_58 bl_1_58 br_1_58 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c58
+ bl_0_58 br_0_58 bl_1_58 br_1_58 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c58
+ bl_0_58 br_0_58 bl_1_58 br_1_58 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c58
+ bl_0_58 br_0_58 bl_1_58 br_1_58 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c58
+ bl_0_58 br_0_58 bl_1_58 br_1_58 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c58
+ bl_0_58 br_0_58 bl_1_58 br_1_58 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c58
+ bl_0_58 br_0_58 bl_1_58 br_1_58 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c58
+ bl_0_58 br_0_58 bl_1_58 br_1_58 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c58
+ bl_0_58 br_0_58 bl_1_58 br_1_58 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c58
+ bl_0_58 br_0_58 bl_1_58 br_1_58 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c58
+ bl_0_58 br_0_58 bl_1_58 br_1_58 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c58
+ bl_0_58 br_0_58 bl_1_58 br_1_58 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c58
+ bl_0_58 br_0_58 bl_1_58 br_1_58 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c58
+ bl_0_58 br_0_58 bl_1_58 br_1_58 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c58
+ bl_0_58 br_0_58 bl_1_58 br_1_58 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c58
+ bl_0_58 br_0_58 bl_1_58 br_1_58 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c58
+ bl_0_58 br_0_58 bl_1_58 br_1_58 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c59
+ bl_0_59 br_0_59 bl_1_59 br_1_59 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c59
+ bl_0_59 br_0_59 bl_1_59 br_1_59 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c59
+ bl_0_59 br_0_59 bl_1_59 br_1_59 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c59
+ bl_0_59 br_0_59 bl_1_59 br_1_59 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c59
+ bl_0_59 br_0_59 bl_1_59 br_1_59 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c59
+ bl_0_59 br_0_59 bl_1_59 br_1_59 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c59
+ bl_0_59 br_0_59 bl_1_59 br_1_59 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c59
+ bl_0_59 br_0_59 bl_1_59 br_1_59 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c59
+ bl_0_59 br_0_59 bl_1_59 br_1_59 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c59
+ bl_0_59 br_0_59 bl_1_59 br_1_59 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c59
+ bl_0_59 br_0_59 bl_1_59 br_1_59 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c59
+ bl_0_59 br_0_59 bl_1_59 br_1_59 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c59
+ bl_0_59 br_0_59 bl_1_59 br_1_59 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c59
+ bl_0_59 br_0_59 bl_1_59 br_1_59 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c59
+ bl_0_59 br_0_59 bl_1_59 br_1_59 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c59
+ bl_0_59 br_0_59 bl_1_59 br_1_59 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c59
+ bl_0_59 br_0_59 bl_1_59 br_1_59 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c59
+ bl_0_59 br_0_59 bl_1_59 br_1_59 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c59
+ bl_0_59 br_0_59 bl_1_59 br_1_59 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c59
+ bl_0_59 br_0_59 bl_1_59 br_1_59 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c59
+ bl_0_59 br_0_59 bl_1_59 br_1_59 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c59
+ bl_0_59 br_0_59 bl_1_59 br_1_59 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c59
+ bl_0_59 br_0_59 bl_1_59 br_1_59 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c59
+ bl_0_59 br_0_59 bl_1_59 br_1_59 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c59
+ bl_0_59 br_0_59 bl_1_59 br_1_59 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c59
+ bl_0_59 br_0_59 bl_1_59 br_1_59 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c59
+ bl_0_59 br_0_59 bl_1_59 br_1_59 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c59
+ bl_0_59 br_0_59 bl_1_59 br_1_59 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c59
+ bl_0_59 br_0_59 bl_1_59 br_1_59 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c59
+ bl_0_59 br_0_59 bl_1_59 br_1_59 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c59
+ bl_0_59 br_0_59 bl_1_59 br_1_59 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c59
+ bl_0_59 br_0_59 bl_1_59 br_1_59 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c60
+ bl_0_60 br_0_60 bl_1_60 br_1_60 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c60
+ bl_0_60 br_0_60 bl_1_60 br_1_60 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c60
+ bl_0_60 br_0_60 bl_1_60 br_1_60 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c60
+ bl_0_60 br_0_60 bl_1_60 br_1_60 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c60
+ bl_0_60 br_0_60 bl_1_60 br_1_60 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c60
+ bl_0_60 br_0_60 bl_1_60 br_1_60 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c60
+ bl_0_60 br_0_60 bl_1_60 br_1_60 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c60
+ bl_0_60 br_0_60 bl_1_60 br_1_60 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c60
+ bl_0_60 br_0_60 bl_1_60 br_1_60 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c60
+ bl_0_60 br_0_60 bl_1_60 br_1_60 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c60
+ bl_0_60 br_0_60 bl_1_60 br_1_60 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c60
+ bl_0_60 br_0_60 bl_1_60 br_1_60 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c60
+ bl_0_60 br_0_60 bl_1_60 br_1_60 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c60
+ bl_0_60 br_0_60 bl_1_60 br_1_60 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c60
+ bl_0_60 br_0_60 bl_1_60 br_1_60 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c60
+ bl_0_60 br_0_60 bl_1_60 br_1_60 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c60
+ bl_0_60 br_0_60 bl_1_60 br_1_60 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c60
+ bl_0_60 br_0_60 bl_1_60 br_1_60 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c60
+ bl_0_60 br_0_60 bl_1_60 br_1_60 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c60
+ bl_0_60 br_0_60 bl_1_60 br_1_60 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c60
+ bl_0_60 br_0_60 bl_1_60 br_1_60 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c60
+ bl_0_60 br_0_60 bl_1_60 br_1_60 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c60
+ bl_0_60 br_0_60 bl_1_60 br_1_60 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c60
+ bl_0_60 br_0_60 bl_1_60 br_1_60 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c60
+ bl_0_60 br_0_60 bl_1_60 br_1_60 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c60
+ bl_0_60 br_0_60 bl_1_60 br_1_60 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c60
+ bl_0_60 br_0_60 bl_1_60 br_1_60 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c60
+ bl_0_60 br_0_60 bl_1_60 br_1_60 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c60
+ bl_0_60 br_0_60 bl_1_60 br_1_60 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c60
+ bl_0_60 br_0_60 bl_1_60 br_1_60 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c60
+ bl_0_60 br_0_60 bl_1_60 br_1_60 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c60
+ bl_0_60 br_0_60 bl_1_60 br_1_60 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c61
+ bl_0_61 br_0_61 bl_1_61 br_1_61 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c61
+ bl_0_61 br_0_61 bl_1_61 br_1_61 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c61
+ bl_0_61 br_0_61 bl_1_61 br_1_61 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c61
+ bl_0_61 br_0_61 bl_1_61 br_1_61 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c61
+ bl_0_61 br_0_61 bl_1_61 br_1_61 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c61
+ bl_0_61 br_0_61 bl_1_61 br_1_61 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c61
+ bl_0_61 br_0_61 bl_1_61 br_1_61 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c61
+ bl_0_61 br_0_61 bl_1_61 br_1_61 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c61
+ bl_0_61 br_0_61 bl_1_61 br_1_61 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c61
+ bl_0_61 br_0_61 bl_1_61 br_1_61 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c61
+ bl_0_61 br_0_61 bl_1_61 br_1_61 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c61
+ bl_0_61 br_0_61 bl_1_61 br_1_61 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c61
+ bl_0_61 br_0_61 bl_1_61 br_1_61 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c61
+ bl_0_61 br_0_61 bl_1_61 br_1_61 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c61
+ bl_0_61 br_0_61 bl_1_61 br_1_61 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c61
+ bl_0_61 br_0_61 bl_1_61 br_1_61 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c61
+ bl_0_61 br_0_61 bl_1_61 br_1_61 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c61
+ bl_0_61 br_0_61 bl_1_61 br_1_61 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c61
+ bl_0_61 br_0_61 bl_1_61 br_1_61 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c61
+ bl_0_61 br_0_61 bl_1_61 br_1_61 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c61
+ bl_0_61 br_0_61 bl_1_61 br_1_61 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c61
+ bl_0_61 br_0_61 bl_1_61 br_1_61 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c61
+ bl_0_61 br_0_61 bl_1_61 br_1_61 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c61
+ bl_0_61 br_0_61 bl_1_61 br_1_61 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c61
+ bl_0_61 br_0_61 bl_1_61 br_1_61 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c61
+ bl_0_61 br_0_61 bl_1_61 br_1_61 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c61
+ bl_0_61 br_0_61 bl_1_61 br_1_61 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c61
+ bl_0_61 br_0_61 bl_1_61 br_1_61 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c61
+ bl_0_61 br_0_61 bl_1_61 br_1_61 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c61
+ bl_0_61 br_0_61 bl_1_61 br_1_61 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c61
+ bl_0_61 br_0_61 bl_1_61 br_1_61 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c61
+ bl_0_61 br_0_61 bl_1_61 br_1_61 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c62
+ bl_0_62 br_0_62 bl_1_62 br_1_62 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c62
+ bl_0_62 br_0_62 bl_1_62 br_1_62 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c62
+ bl_0_62 br_0_62 bl_1_62 br_1_62 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c62
+ bl_0_62 br_0_62 bl_1_62 br_1_62 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c62
+ bl_0_62 br_0_62 bl_1_62 br_1_62 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c62
+ bl_0_62 br_0_62 bl_1_62 br_1_62 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c62
+ bl_0_62 br_0_62 bl_1_62 br_1_62 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c62
+ bl_0_62 br_0_62 bl_1_62 br_1_62 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c62
+ bl_0_62 br_0_62 bl_1_62 br_1_62 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c62
+ bl_0_62 br_0_62 bl_1_62 br_1_62 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c62
+ bl_0_62 br_0_62 bl_1_62 br_1_62 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c62
+ bl_0_62 br_0_62 bl_1_62 br_1_62 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c62
+ bl_0_62 br_0_62 bl_1_62 br_1_62 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c62
+ bl_0_62 br_0_62 bl_1_62 br_1_62 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c62
+ bl_0_62 br_0_62 bl_1_62 br_1_62 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c62
+ bl_0_62 br_0_62 bl_1_62 br_1_62 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c62
+ bl_0_62 br_0_62 bl_1_62 br_1_62 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c62
+ bl_0_62 br_0_62 bl_1_62 br_1_62 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c62
+ bl_0_62 br_0_62 bl_1_62 br_1_62 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c62
+ bl_0_62 br_0_62 bl_1_62 br_1_62 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c62
+ bl_0_62 br_0_62 bl_1_62 br_1_62 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c62
+ bl_0_62 br_0_62 bl_1_62 br_1_62 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c62
+ bl_0_62 br_0_62 bl_1_62 br_1_62 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c62
+ bl_0_62 br_0_62 bl_1_62 br_1_62 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c62
+ bl_0_62 br_0_62 bl_1_62 br_1_62 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c62
+ bl_0_62 br_0_62 bl_1_62 br_1_62 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c62
+ bl_0_62 br_0_62 bl_1_62 br_1_62 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c62
+ bl_0_62 br_0_62 bl_1_62 br_1_62 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c62
+ bl_0_62 br_0_62 bl_1_62 br_1_62 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c62
+ bl_0_62 br_0_62 bl_1_62 br_1_62 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c62
+ bl_0_62 br_0_62 bl_1_62 br_1_62 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c62
+ bl_0_62 br_0_62 bl_1_62 br_1_62 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c63
+ bl_0_63 br_0_63 bl_1_63 br_1_63 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c63
+ bl_0_63 br_0_63 bl_1_63 br_1_63 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c63
+ bl_0_63 br_0_63 bl_1_63 br_1_63 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c63
+ bl_0_63 br_0_63 bl_1_63 br_1_63 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c63
+ bl_0_63 br_0_63 bl_1_63 br_1_63 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c63
+ bl_0_63 br_0_63 bl_1_63 br_1_63 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c63
+ bl_0_63 br_0_63 bl_1_63 br_1_63 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c63
+ bl_0_63 br_0_63 bl_1_63 br_1_63 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c63
+ bl_0_63 br_0_63 bl_1_63 br_1_63 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c63
+ bl_0_63 br_0_63 bl_1_63 br_1_63 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c63
+ bl_0_63 br_0_63 bl_1_63 br_1_63 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c63
+ bl_0_63 br_0_63 bl_1_63 br_1_63 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c63
+ bl_0_63 br_0_63 bl_1_63 br_1_63 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c63
+ bl_0_63 br_0_63 bl_1_63 br_1_63 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c63
+ bl_0_63 br_0_63 bl_1_63 br_1_63 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c63
+ bl_0_63 br_0_63 bl_1_63 br_1_63 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c63
+ bl_0_63 br_0_63 bl_1_63 br_1_63 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c63
+ bl_0_63 br_0_63 bl_1_63 br_1_63 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c63
+ bl_0_63 br_0_63 bl_1_63 br_1_63 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c63
+ bl_0_63 br_0_63 bl_1_63 br_1_63 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c63
+ bl_0_63 br_0_63 bl_1_63 br_1_63 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c63
+ bl_0_63 br_0_63 bl_1_63 br_1_63 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c63
+ bl_0_63 br_0_63 bl_1_63 br_1_63 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c63
+ bl_0_63 br_0_63 bl_1_63 br_1_63 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c63
+ bl_0_63 br_0_63 bl_1_63 br_1_63 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c63
+ bl_0_63 br_0_63 bl_1_63 br_1_63 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c63
+ bl_0_63 br_0_63 bl_1_63 br_1_63 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c63
+ bl_0_63 br_0_63 bl_1_63 br_1_63 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c63
+ bl_0_63 br_0_63 bl_1_63 br_1_63 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c63
+ bl_0_63 br_0_63 bl_1_63 br_1_63 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c63
+ bl_0_63 br_0_63 bl_1_63 br_1_63 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c63
+ bl_0_63 br_0_63 bl_1_63 br_1_63 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c64
+ bl_0_64 br_0_64 bl_1_64 br_1_64 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c64
+ bl_0_64 br_0_64 bl_1_64 br_1_64 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c64
+ bl_0_64 br_0_64 bl_1_64 br_1_64 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c64
+ bl_0_64 br_0_64 bl_1_64 br_1_64 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c64
+ bl_0_64 br_0_64 bl_1_64 br_1_64 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c64
+ bl_0_64 br_0_64 bl_1_64 br_1_64 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c64
+ bl_0_64 br_0_64 bl_1_64 br_1_64 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c64
+ bl_0_64 br_0_64 bl_1_64 br_1_64 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c64
+ bl_0_64 br_0_64 bl_1_64 br_1_64 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c64
+ bl_0_64 br_0_64 bl_1_64 br_1_64 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c64
+ bl_0_64 br_0_64 bl_1_64 br_1_64 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c64
+ bl_0_64 br_0_64 bl_1_64 br_1_64 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c64
+ bl_0_64 br_0_64 bl_1_64 br_1_64 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c64
+ bl_0_64 br_0_64 bl_1_64 br_1_64 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c64
+ bl_0_64 br_0_64 bl_1_64 br_1_64 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c64
+ bl_0_64 br_0_64 bl_1_64 br_1_64 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c64
+ bl_0_64 br_0_64 bl_1_64 br_1_64 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c64
+ bl_0_64 br_0_64 bl_1_64 br_1_64 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c64
+ bl_0_64 br_0_64 bl_1_64 br_1_64 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c64
+ bl_0_64 br_0_64 bl_1_64 br_1_64 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c64
+ bl_0_64 br_0_64 bl_1_64 br_1_64 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c64
+ bl_0_64 br_0_64 bl_1_64 br_1_64 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c64
+ bl_0_64 br_0_64 bl_1_64 br_1_64 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c64
+ bl_0_64 br_0_64 bl_1_64 br_1_64 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c64
+ bl_0_64 br_0_64 bl_1_64 br_1_64 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c64
+ bl_0_64 br_0_64 bl_1_64 br_1_64 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c64
+ bl_0_64 br_0_64 bl_1_64 br_1_64 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c64
+ bl_0_64 br_0_64 bl_1_64 br_1_64 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c64
+ bl_0_64 br_0_64 bl_1_64 br_1_64 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c64
+ bl_0_64 br_0_64 bl_1_64 br_1_64 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c64
+ bl_0_64 br_0_64 bl_1_64 br_1_64 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c64
+ bl_0_64 br_0_64 bl_1_64 br_1_64 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c65
+ bl_0_65 br_0_65 bl_1_65 br_1_65 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c65
+ bl_0_65 br_0_65 bl_1_65 br_1_65 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c65
+ bl_0_65 br_0_65 bl_1_65 br_1_65 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c65
+ bl_0_65 br_0_65 bl_1_65 br_1_65 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c65
+ bl_0_65 br_0_65 bl_1_65 br_1_65 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c65
+ bl_0_65 br_0_65 bl_1_65 br_1_65 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c65
+ bl_0_65 br_0_65 bl_1_65 br_1_65 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c65
+ bl_0_65 br_0_65 bl_1_65 br_1_65 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c65
+ bl_0_65 br_0_65 bl_1_65 br_1_65 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c65
+ bl_0_65 br_0_65 bl_1_65 br_1_65 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c65
+ bl_0_65 br_0_65 bl_1_65 br_1_65 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c65
+ bl_0_65 br_0_65 bl_1_65 br_1_65 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c65
+ bl_0_65 br_0_65 bl_1_65 br_1_65 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c65
+ bl_0_65 br_0_65 bl_1_65 br_1_65 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c65
+ bl_0_65 br_0_65 bl_1_65 br_1_65 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c65
+ bl_0_65 br_0_65 bl_1_65 br_1_65 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c65
+ bl_0_65 br_0_65 bl_1_65 br_1_65 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c65
+ bl_0_65 br_0_65 bl_1_65 br_1_65 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c65
+ bl_0_65 br_0_65 bl_1_65 br_1_65 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c65
+ bl_0_65 br_0_65 bl_1_65 br_1_65 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c65
+ bl_0_65 br_0_65 bl_1_65 br_1_65 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c65
+ bl_0_65 br_0_65 bl_1_65 br_1_65 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c65
+ bl_0_65 br_0_65 bl_1_65 br_1_65 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c65
+ bl_0_65 br_0_65 bl_1_65 br_1_65 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c65
+ bl_0_65 br_0_65 bl_1_65 br_1_65 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c65
+ bl_0_65 br_0_65 bl_1_65 br_1_65 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c65
+ bl_0_65 br_0_65 bl_1_65 br_1_65 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c65
+ bl_0_65 br_0_65 bl_1_65 br_1_65 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c65
+ bl_0_65 br_0_65 bl_1_65 br_1_65 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c65
+ bl_0_65 br_0_65 bl_1_65 br_1_65 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c65
+ bl_0_65 br_0_65 bl_1_65 br_1_65 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c65
+ bl_0_65 br_0_65 bl_1_65 br_1_65 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c66
+ bl_0_66 br_0_66 bl_1_66 br_1_66 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c66
+ bl_0_66 br_0_66 bl_1_66 br_1_66 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c66
+ bl_0_66 br_0_66 bl_1_66 br_1_66 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c66
+ bl_0_66 br_0_66 bl_1_66 br_1_66 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c66
+ bl_0_66 br_0_66 bl_1_66 br_1_66 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c66
+ bl_0_66 br_0_66 bl_1_66 br_1_66 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c66
+ bl_0_66 br_0_66 bl_1_66 br_1_66 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c66
+ bl_0_66 br_0_66 bl_1_66 br_1_66 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c66
+ bl_0_66 br_0_66 bl_1_66 br_1_66 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c66
+ bl_0_66 br_0_66 bl_1_66 br_1_66 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c66
+ bl_0_66 br_0_66 bl_1_66 br_1_66 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c66
+ bl_0_66 br_0_66 bl_1_66 br_1_66 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c66
+ bl_0_66 br_0_66 bl_1_66 br_1_66 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c66
+ bl_0_66 br_0_66 bl_1_66 br_1_66 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c66
+ bl_0_66 br_0_66 bl_1_66 br_1_66 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c66
+ bl_0_66 br_0_66 bl_1_66 br_1_66 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c66
+ bl_0_66 br_0_66 bl_1_66 br_1_66 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c66
+ bl_0_66 br_0_66 bl_1_66 br_1_66 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c66
+ bl_0_66 br_0_66 bl_1_66 br_1_66 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c66
+ bl_0_66 br_0_66 bl_1_66 br_1_66 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c66
+ bl_0_66 br_0_66 bl_1_66 br_1_66 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c66
+ bl_0_66 br_0_66 bl_1_66 br_1_66 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c66
+ bl_0_66 br_0_66 bl_1_66 br_1_66 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c66
+ bl_0_66 br_0_66 bl_1_66 br_1_66 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c66
+ bl_0_66 br_0_66 bl_1_66 br_1_66 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c66
+ bl_0_66 br_0_66 bl_1_66 br_1_66 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c66
+ bl_0_66 br_0_66 bl_1_66 br_1_66 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c66
+ bl_0_66 br_0_66 bl_1_66 br_1_66 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c66
+ bl_0_66 br_0_66 bl_1_66 br_1_66 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c66
+ bl_0_66 br_0_66 bl_1_66 br_1_66 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c66
+ bl_0_66 br_0_66 bl_1_66 br_1_66 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c66
+ bl_0_66 br_0_66 bl_1_66 br_1_66 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c67
+ bl_0_67 br_0_67 bl_1_67 br_1_67 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c67
+ bl_0_67 br_0_67 bl_1_67 br_1_67 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c67
+ bl_0_67 br_0_67 bl_1_67 br_1_67 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c67
+ bl_0_67 br_0_67 bl_1_67 br_1_67 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c67
+ bl_0_67 br_0_67 bl_1_67 br_1_67 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c67
+ bl_0_67 br_0_67 bl_1_67 br_1_67 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c67
+ bl_0_67 br_0_67 bl_1_67 br_1_67 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c67
+ bl_0_67 br_0_67 bl_1_67 br_1_67 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c67
+ bl_0_67 br_0_67 bl_1_67 br_1_67 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c67
+ bl_0_67 br_0_67 bl_1_67 br_1_67 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c67
+ bl_0_67 br_0_67 bl_1_67 br_1_67 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c67
+ bl_0_67 br_0_67 bl_1_67 br_1_67 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c67
+ bl_0_67 br_0_67 bl_1_67 br_1_67 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c67
+ bl_0_67 br_0_67 bl_1_67 br_1_67 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c67
+ bl_0_67 br_0_67 bl_1_67 br_1_67 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c67
+ bl_0_67 br_0_67 bl_1_67 br_1_67 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c67
+ bl_0_67 br_0_67 bl_1_67 br_1_67 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c67
+ bl_0_67 br_0_67 bl_1_67 br_1_67 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c67
+ bl_0_67 br_0_67 bl_1_67 br_1_67 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c67
+ bl_0_67 br_0_67 bl_1_67 br_1_67 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c67
+ bl_0_67 br_0_67 bl_1_67 br_1_67 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c67
+ bl_0_67 br_0_67 bl_1_67 br_1_67 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c67
+ bl_0_67 br_0_67 bl_1_67 br_1_67 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c67
+ bl_0_67 br_0_67 bl_1_67 br_1_67 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c67
+ bl_0_67 br_0_67 bl_1_67 br_1_67 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c67
+ bl_0_67 br_0_67 bl_1_67 br_1_67 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c67
+ bl_0_67 br_0_67 bl_1_67 br_1_67 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c67
+ bl_0_67 br_0_67 bl_1_67 br_1_67 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c67
+ bl_0_67 br_0_67 bl_1_67 br_1_67 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c67
+ bl_0_67 br_0_67 bl_1_67 br_1_67 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c67
+ bl_0_67 br_0_67 bl_1_67 br_1_67 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c67
+ bl_0_67 br_0_67 bl_1_67 br_1_67 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c68
+ bl_0_68 br_0_68 bl_1_68 br_1_68 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c68
+ bl_0_68 br_0_68 bl_1_68 br_1_68 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c68
+ bl_0_68 br_0_68 bl_1_68 br_1_68 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c68
+ bl_0_68 br_0_68 bl_1_68 br_1_68 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c68
+ bl_0_68 br_0_68 bl_1_68 br_1_68 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c68
+ bl_0_68 br_0_68 bl_1_68 br_1_68 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c68
+ bl_0_68 br_0_68 bl_1_68 br_1_68 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c68
+ bl_0_68 br_0_68 bl_1_68 br_1_68 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c68
+ bl_0_68 br_0_68 bl_1_68 br_1_68 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c68
+ bl_0_68 br_0_68 bl_1_68 br_1_68 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c68
+ bl_0_68 br_0_68 bl_1_68 br_1_68 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c68
+ bl_0_68 br_0_68 bl_1_68 br_1_68 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c68
+ bl_0_68 br_0_68 bl_1_68 br_1_68 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c68
+ bl_0_68 br_0_68 bl_1_68 br_1_68 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c68
+ bl_0_68 br_0_68 bl_1_68 br_1_68 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c68
+ bl_0_68 br_0_68 bl_1_68 br_1_68 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c68
+ bl_0_68 br_0_68 bl_1_68 br_1_68 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c68
+ bl_0_68 br_0_68 bl_1_68 br_1_68 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c68
+ bl_0_68 br_0_68 bl_1_68 br_1_68 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c68
+ bl_0_68 br_0_68 bl_1_68 br_1_68 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c68
+ bl_0_68 br_0_68 bl_1_68 br_1_68 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c68
+ bl_0_68 br_0_68 bl_1_68 br_1_68 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c68
+ bl_0_68 br_0_68 bl_1_68 br_1_68 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c68
+ bl_0_68 br_0_68 bl_1_68 br_1_68 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c68
+ bl_0_68 br_0_68 bl_1_68 br_1_68 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c68
+ bl_0_68 br_0_68 bl_1_68 br_1_68 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c68
+ bl_0_68 br_0_68 bl_1_68 br_1_68 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c68
+ bl_0_68 br_0_68 bl_1_68 br_1_68 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c68
+ bl_0_68 br_0_68 bl_1_68 br_1_68 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c68
+ bl_0_68 br_0_68 bl_1_68 br_1_68 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c68
+ bl_0_68 br_0_68 bl_1_68 br_1_68 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c68
+ bl_0_68 br_0_68 bl_1_68 br_1_68 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c69
+ bl_0_69 br_0_69 bl_1_69 br_1_69 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c69
+ bl_0_69 br_0_69 bl_1_69 br_1_69 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c69
+ bl_0_69 br_0_69 bl_1_69 br_1_69 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c69
+ bl_0_69 br_0_69 bl_1_69 br_1_69 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c69
+ bl_0_69 br_0_69 bl_1_69 br_1_69 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c69
+ bl_0_69 br_0_69 bl_1_69 br_1_69 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c69
+ bl_0_69 br_0_69 bl_1_69 br_1_69 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c69
+ bl_0_69 br_0_69 bl_1_69 br_1_69 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c69
+ bl_0_69 br_0_69 bl_1_69 br_1_69 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c69
+ bl_0_69 br_0_69 bl_1_69 br_1_69 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c69
+ bl_0_69 br_0_69 bl_1_69 br_1_69 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c69
+ bl_0_69 br_0_69 bl_1_69 br_1_69 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c69
+ bl_0_69 br_0_69 bl_1_69 br_1_69 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c69
+ bl_0_69 br_0_69 bl_1_69 br_1_69 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c69
+ bl_0_69 br_0_69 bl_1_69 br_1_69 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c69
+ bl_0_69 br_0_69 bl_1_69 br_1_69 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c69
+ bl_0_69 br_0_69 bl_1_69 br_1_69 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c69
+ bl_0_69 br_0_69 bl_1_69 br_1_69 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c69
+ bl_0_69 br_0_69 bl_1_69 br_1_69 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c69
+ bl_0_69 br_0_69 bl_1_69 br_1_69 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c69
+ bl_0_69 br_0_69 bl_1_69 br_1_69 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c69
+ bl_0_69 br_0_69 bl_1_69 br_1_69 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c69
+ bl_0_69 br_0_69 bl_1_69 br_1_69 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c69
+ bl_0_69 br_0_69 bl_1_69 br_1_69 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c69
+ bl_0_69 br_0_69 bl_1_69 br_1_69 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c69
+ bl_0_69 br_0_69 bl_1_69 br_1_69 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c69
+ bl_0_69 br_0_69 bl_1_69 br_1_69 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c69
+ bl_0_69 br_0_69 bl_1_69 br_1_69 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c69
+ bl_0_69 br_0_69 bl_1_69 br_1_69 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c69
+ bl_0_69 br_0_69 bl_1_69 br_1_69 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c69
+ bl_0_69 br_0_69 bl_1_69 br_1_69 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c69
+ bl_0_69 br_0_69 bl_1_69 br_1_69 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c70
+ bl_0_70 br_0_70 bl_1_70 br_1_70 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c70
+ bl_0_70 br_0_70 bl_1_70 br_1_70 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c70
+ bl_0_70 br_0_70 bl_1_70 br_1_70 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c70
+ bl_0_70 br_0_70 bl_1_70 br_1_70 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c70
+ bl_0_70 br_0_70 bl_1_70 br_1_70 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c70
+ bl_0_70 br_0_70 bl_1_70 br_1_70 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c70
+ bl_0_70 br_0_70 bl_1_70 br_1_70 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c70
+ bl_0_70 br_0_70 bl_1_70 br_1_70 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c70
+ bl_0_70 br_0_70 bl_1_70 br_1_70 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c70
+ bl_0_70 br_0_70 bl_1_70 br_1_70 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c70
+ bl_0_70 br_0_70 bl_1_70 br_1_70 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c70
+ bl_0_70 br_0_70 bl_1_70 br_1_70 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c70
+ bl_0_70 br_0_70 bl_1_70 br_1_70 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c70
+ bl_0_70 br_0_70 bl_1_70 br_1_70 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c70
+ bl_0_70 br_0_70 bl_1_70 br_1_70 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c70
+ bl_0_70 br_0_70 bl_1_70 br_1_70 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c70
+ bl_0_70 br_0_70 bl_1_70 br_1_70 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c70
+ bl_0_70 br_0_70 bl_1_70 br_1_70 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c70
+ bl_0_70 br_0_70 bl_1_70 br_1_70 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c70
+ bl_0_70 br_0_70 bl_1_70 br_1_70 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c70
+ bl_0_70 br_0_70 bl_1_70 br_1_70 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c70
+ bl_0_70 br_0_70 bl_1_70 br_1_70 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c70
+ bl_0_70 br_0_70 bl_1_70 br_1_70 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c70
+ bl_0_70 br_0_70 bl_1_70 br_1_70 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c70
+ bl_0_70 br_0_70 bl_1_70 br_1_70 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c70
+ bl_0_70 br_0_70 bl_1_70 br_1_70 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c70
+ bl_0_70 br_0_70 bl_1_70 br_1_70 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c70
+ bl_0_70 br_0_70 bl_1_70 br_1_70 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c70
+ bl_0_70 br_0_70 bl_1_70 br_1_70 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c70
+ bl_0_70 br_0_70 bl_1_70 br_1_70 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c70
+ bl_0_70 br_0_70 bl_1_70 br_1_70 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c70
+ bl_0_70 br_0_70 bl_1_70 br_1_70 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
Xbit_r0_c71
+ bl_0_71 br_0_71 bl_1_71 br_1_71 wl_0_0 wl_1_0 vdd gnd
+ cell_2rw
Xbit_r1_c71
+ bl_0_71 br_0_71 bl_1_71 br_1_71 wl_0_1 wl_1_1 vdd gnd
+ cell_2rw
Xbit_r2_c71
+ bl_0_71 br_0_71 bl_1_71 br_1_71 wl_0_2 wl_1_2 vdd gnd
+ cell_2rw
Xbit_r3_c71
+ bl_0_71 br_0_71 bl_1_71 br_1_71 wl_0_3 wl_1_3 vdd gnd
+ cell_2rw
Xbit_r4_c71
+ bl_0_71 br_0_71 bl_1_71 br_1_71 wl_0_4 wl_1_4 vdd gnd
+ cell_2rw
Xbit_r5_c71
+ bl_0_71 br_0_71 bl_1_71 br_1_71 wl_0_5 wl_1_5 vdd gnd
+ cell_2rw
Xbit_r6_c71
+ bl_0_71 br_0_71 bl_1_71 br_1_71 wl_0_6 wl_1_6 vdd gnd
+ cell_2rw
Xbit_r7_c71
+ bl_0_71 br_0_71 bl_1_71 br_1_71 wl_0_7 wl_1_7 vdd gnd
+ cell_2rw
Xbit_r8_c71
+ bl_0_71 br_0_71 bl_1_71 br_1_71 wl_0_8 wl_1_8 vdd gnd
+ cell_2rw
Xbit_r9_c71
+ bl_0_71 br_0_71 bl_1_71 br_1_71 wl_0_9 wl_1_9 vdd gnd
+ cell_2rw
Xbit_r10_c71
+ bl_0_71 br_0_71 bl_1_71 br_1_71 wl_0_10 wl_1_10 vdd gnd
+ cell_2rw
Xbit_r11_c71
+ bl_0_71 br_0_71 bl_1_71 br_1_71 wl_0_11 wl_1_11 vdd gnd
+ cell_2rw
Xbit_r12_c71
+ bl_0_71 br_0_71 bl_1_71 br_1_71 wl_0_12 wl_1_12 vdd gnd
+ cell_2rw
Xbit_r13_c71
+ bl_0_71 br_0_71 bl_1_71 br_1_71 wl_0_13 wl_1_13 vdd gnd
+ cell_2rw
Xbit_r14_c71
+ bl_0_71 br_0_71 bl_1_71 br_1_71 wl_0_14 wl_1_14 vdd gnd
+ cell_2rw
Xbit_r15_c71
+ bl_0_71 br_0_71 bl_1_71 br_1_71 wl_0_15 wl_1_15 vdd gnd
+ cell_2rw
Xbit_r16_c71
+ bl_0_71 br_0_71 bl_1_71 br_1_71 wl_0_16 wl_1_16 vdd gnd
+ cell_2rw
Xbit_r17_c71
+ bl_0_71 br_0_71 bl_1_71 br_1_71 wl_0_17 wl_1_17 vdd gnd
+ cell_2rw
Xbit_r18_c71
+ bl_0_71 br_0_71 bl_1_71 br_1_71 wl_0_18 wl_1_18 vdd gnd
+ cell_2rw
Xbit_r19_c71
+ bl_0_71 br_0_71 bl_1_71 br_1_71 wl_0_19 wl_1_19 vdd gnd
+ cell_2rw
Xbit_r20_c71
+ bl_0_71 br_0_71 bl_1_71 br_1_71 wl_0_20 wl_1_20 vdd gnd
+ cell_2rw
Xbit_r21_c71
+ bl_0_71 br_0_71 bl_1_71 br_1_71 wl_0_21 wl_1_21 vdd gnd
+ cell_2rw
Xbit_r22_c71
+ bl_0_71 br_0_71 bl_1_71 br_1_71 wl_0_22 wl_1_22 vdd gnd
+ cell_2rw
Xbit_r23_c71
+ bl_0_71 br_0_71 bl_1_71 br_1_71 wl_0_23 wl_1_23 vdd gnd
+ cell_2rw
Xbit_r24_c71
+ bl_0_71 br_0_71 bl_1_71 br_1_71 wl_0_24 wl_1_24 vdd gnd
+ cell_2rw
Xbit_r25_c71
+ bl_0_71 br_0_71 bl_1_71 br_1_71 wl_0_25 wl_1_25 vdd gnd
+ cell_2rw
Xbit_r26_c71
+ bl_0_71 br_0_71 bl_1_71 br_1_71 wl_0_26 wl_1_26 vdd gnd
+ cell_2rw
Xbit_r27_c71
+ bl_0_71 br_0_71 bl_1_71 br_1_71 wl_0_27 wl_1_27 vdd gnd
+ cell_2rw
Xbit_r28_c71
+ bl_0_71 br_0_71 bl_1_71 br_1_71 wl_0_28 wl_1_28 vdd gnd
+ cell_2rw
Xbit_r29_c71
+ bl_0_71 br_0_71 bl_1_71 br_1_71 wl_0_29 wl_1_29 vdd gnd
+ cell_2rw
Xbit_r30_c71
+ bl_0_71 br_0_71 bl_1_71 br_1_71 wl_0_30 wl_1_30 vdd gnd
+ cell_2rw
Xbit_r31_c71
+ bl_0_71 br_0_71 bl_1_71 br_1_71 wl_0_31 wl_1_31 vdd gnd
+ cell_2rw
.ENDS freepdk45_sram_1w1r_32x72_bitcell_array

.SUBCKT freepdk45_sram_1w1r_32x72_dummy_array
+ bl_0_0 bl_1_0 br_0_0 br_1_0 bl_0_1 bl_1_1 br_0_1 br_1_1 bl_0_2 bl_1_2
+ br_0_2 br_1_2 bl_0_3 bl_1_3 br_0_3 br_1_3 bl_0_4 bl_1_4 br_0_4 br_1_4
+ bl_0_5 bl_1_5 br_0_5 br_1_5 bl_0_6 bl_1_6 br_0_6 br_1_6 bl_0_7 bl_1_7
+ br_0_7 br_1_7 bl_0_8 bl_1_8 br_0_8 br_1_8 bl_0_9 bl_1_9 br_0_9 br_1_9
+ bl_0_10 bl_1_10 br_0_10 br_1_10 bl_0_11 bl_1_11 br_0_11 br_1_11
+ bl_0_12 bl_1_12 br_0_12 br_1_12 bl_0_13 bl_1_13 br_0_13 br_1_13
+ bl_0_14 bl_1_14 br_0_14 br_1_14 bl_0_15 bl_1_15 br_0_15 br_1_15
+ bl_0_16 bl_1_16 br_0_16 br_1_16 bl_0_17 bl_1_17 br_0_17 br_1_17
+ bl_0_18 bl_1_18 br_0_18 br_1_18 bl_0_19 bl_1_19 br_0_19 br_1_19
+ bl_0_20 bl_1_20 br_0_20 br_1_20 bl_0_21 bl_1_21 br_0_21 br_1_21
+ bl_0_22 bl_1_22 br_0_22 br_1_22 bl_0_23 bl_1_23 br_0_23 br_1_23
+ bl_0_24 bl_1_24 br_0_24 br_1_24 bl_0_25 bl_1_25 br_0_25 br_1_25
+ bl_0_26 bl_1_26 br_0_26 br_1_26 bl_0_27 bl_1_27 br_0_27 br_1_27
+ bl_0_28 bl_1_28 br_0_28 br_1_28 bl_0_29 bl_1_29 br_0_29 br_1_29
+ bl_0_30 bl_1_30 br_0_30 br_1_30 bl_0_31 bl_1_31 br_0_31 br_1_31
+ bl_0_32 bl_1_32 br_0_32 br_1_32 bl_0_33 bl_1_33 br_0_33 br_1_33
+ bl_0_34 bl_1_34 br_0_34 br_1_34 bl_0_35 bl_1_35 br_0_35 br_1_35
+ bl_0_36 bl_1_36 br_0_36 br_1_36 bl_0_37 bl_1_37 br_0_37 br_1_37
+ bl_0_38 bl_1_38 br_0_38 br_1_38 bl_0_39 bl_1_39 br_0_39 br_1_39
+ bl_0_40 bl_1_40 br_0_40 br_1_40 bl_0_41 bl_1_41 br_0_41 br_1_41
+ bl_0_42 bl_1_42 br_0_42 br_1_42 bl_0_43 bl_1_43 br_0_43 br_1_43
+ bl_0_44 bl_1_44 br_0_44 br_1_44 bl_0_45 bl_1_45 br_0_45 br_1_45
+ bl_0_46 bl_1_46 br_0_46 br_1_46 bl_0_47 bl_1_47 br_0_47 br_1_47
+ bl_0_48 bl_1_48 br_0_48 br_1_48 bl_0_49 bl_1_49 br_0_49 br_1_49
+ bl_0_50 bl_1_50 br_0_50 br_1_50 bl_0_51 bl_1_51 br_0_51 br_1_51
+ bl_0_52 bl_1_52 br_0_52 br_1_52 bl_0_53 bl_1_53 br_0_53 br_1_53
+ bl_0_54 bl_1_54 br_0_54 br_1_54 bl_0_55 bl_1_55 br_0_55 br_1_55
+ bl_0_56 bl_1_56 br_0_56 br_1_56 bl_0_57 bl_1_57 br_0_57 br_1_57
+ bl_0_58 bl_1_58 br_0_58 br_1_58 bl_0_59 bl_1_59 br_0_59 br_1_59
+ bl_0_60 bl_1_60 br_0_60 br_1_60 bl_0_61 bl_1_61 br_0_61 br_1_61
+ bl_0_62 bl_1_62 br_0_62 br_1_62 bl_0_63 bl_1_63 br_0_63 br_1_63
+ bl_0_64 bl_1_64 br_0_64 br_1_64 bl_0_65 bl_1_65 br_0_65 br_1_65
+ bl_0_66 bl_1_66 br_0_66 br_1_66 bl_0_67 bl_1_67 br_0_67 br_1_67
+ bl_0_68 bl_1_68 br_0_68 br_1_68 bl_0_69 bl_1_69 br_0_69 br_1_69
+ bl_0_70 bl_1_70 br_0_70 br_1_70 bl_0_71 bl_1_71 br_0_71 br_1_71 wl_0_0
+ wl_1_0 vdd gnd
* INOUT : bl_0_0 
* INOUT : bl_1_0 
* INOUT : br_0_0 
* INOUT : br_1_0 
* INOUT : bl_0_1 
* INOUT : bl_1_1 
* INOUT : br_0_1 
* INOUT : br_1_1 
* INOUT : bl_0_2 
* INOUT : bl_1_2 
* INOUT : br_0_2 
* INOUT : br_1_2 
* INOUT : bl_0_3 
* INOUT : bl_1_3 
* INOUT : br_0_3 
* INOUT : br_1_3 
* INOUT : bl_0_4 
* INOUT : bl_1_4 
* INOUT : br_0_4 
* INOUT : br_1_4 
* INOUT : bl_0_5 
* INOUT : bl_1_5 
* INOUT : br_0_5 
* INOUT : br_1_5 
* INOUT : bl_0_6 
* INOUT : bl_1_6 
* INOUT : br_0_6 
* INOUT : br_1_6 
* INOUT : bl_0_7 
* INOUT : bl_1_7 
* INOUT : br_0_7 
* INOUT : br_1_7 
* INOUT : bl_0_8 
* INOUT : bl_1_8 
* INOUT : br_0_8 
* INOUT : br_1_8 
* INOUT : bl_0_9 
* INOUT : bl_1_9 
* INOUT : br_0_9 
* INOUT : br_1_9 
* INOUT : bl_0_10 
* INOUT : bl_1_10 
* INOUT : br_0_10 
* INOUT : br_1_10 
* INOUT : bl_0_11 
* INOUT : bl_1_11 
* INOUT : br_0_11 
* INOUT : br_1_11 
* INOUT : bl_0_12 
* INOUT : bl_1_12 
* INOUT : br_0_12 
* INOUT : br_1_12 
* INOUT : bl_0_13 
* INOUT : bl_1_13 
* INOUT : br_0_13 
* INOUT : br_1_13 
* INOUT : bl_0_14 
* INOUT : bl_1_14 
* INOUT : br_0_14 
* INOUT : br_1_14 
* INOUT : bl_0_15 
* INOUT : bl_1_15 
* INOUT : br_0_15 
* INOUT : br_1_15 
* INOUT : bl_0_16 
* INOUT : bl_1_16 
* INOUT : br_0_16 
* INOUT : br_1_16 
* INOUT : bl_0_17 
* INOUT : bl_1_17 
* INOUT : br_0_17 
* INOUT : br_1_17 
* INOUT : bl_0_18 
* INOUT : bl_1_18 
* INOUT : br_0_18 
* INOUT : br_1_18 
* INOUT : bl_0_19 
* INOUT : bl_1_19 
* INOUT : br_0_19 
* INOUT : br_1_19 
* INOUT : bl_0_20 
* INOUT : bl_1_20 
* INOUT : br_0_20 
* INOUT : br_1_20 
* INOUT : bl_0_21 
* INOUT : bl_1_21 
* INOUT : br_0_21 
* INOUT : br_1_21 
* INOUT : bl_0_22 
* INOUT : bl_1_22 
* INOUT : br_0_22 
* INOUT : br_1_22 
* INOUT : bl_0_23 
* INOUT : bl_1_23 
* INOUT : br_0_23 
* INOUT : br_1_23 
* INOUT : bl_0_24 
* INOUT : bl_1_24 
* INOUT : br_0_24 
* INOUT : br_1_24 
* INOUT : bl_0_25 
* INOUT : bl_1_25 
* INOUT : br_0_25 
* INOUT : br_1_25 
* INOUT : bl_0_26 
* INOUT : bl_1_26 
* INOUT : br_0_26 
* INOUT : br_1_26 
* INOUT : bl_0_27 
* INOUT : bl_1_27 
* INOUT : br_0_27 
* INOUT : br_1_27 
* INOUT : bl_0_28 
* INOUT : bl_1_28 
* INOUT : br_0_28 
* INOUT : br_1_28 
* INOUT : bl_0_29 
* INOUT : bl_1_29 
* INOUT : br_0_29 
* INOUT : br_1_29 
* INOUT : bl_0_30 
* INOUT : bl_1_30 
* INOUT : br_0_30 
* INOUT : br_1_30 
* INOUT : bl_0_31 
* INOUT : bl_1_31 
* INOUT : br_0_31 
* INOUT : br_1_31 
* INOUT : bl_0_32 
* INOUT : bl_1_32 
* INOUT : br_0_32 
* INOUT : br_1_32 
* INOUT : bl_0_33 
* INOUT : bl_1_33 
* INOUT : br_0_33 
* INOUT : br_1_33 
* INOUT : bl_0_34 
* INOUT : bl_1_34 
* INOUT : br_0_34 
* INOUT : br_1_34 
* INOUT : bl_0_35 
* INOUT : bl_1_35 
* INOUT : br_0_35 
* INOUT : br_1_35 
* INOUT : bl_0_36 
* INOUT : bl_1_36 
* INOUT : br_0_36 
* INOUT : br_1_36 
* INOUT : bl_0_37 
* INOUT : bl_1_37 
* INOUT : br_0_37 
* INOUT : br_1_37 
* INOUT : bl_0_38 
* INOUT : bl_1_38 
* INOUT : br_0_38 
* INOUT : br_1_38 
* INOUT : bl_0_39 
* INOUT : bl_1_39 
* INOUT : br_0_39 
* INOUT : br_1_39 
* INOUT : bl_0_40 
* INOUT : bl_1_40 
* INOUT : br_0_40 
* INOUT : br_1_40 
* INOUT : bl_0_41 
* INOUT : bl_1_41 
* INOUT : br_0_41 
* INOUT : br_1_41 
* INOUT : bl_0_42 
* INOUT : bl_1_42 
* INOUT : br_0_42 
* INOUT : br_1_42 
* INOUT : bl_0_43 
* INOUT : bl_1_43 
* INOUT : br_0_43 
* INOUT : br_1_43 
* INOUT : bl_0_44 
* INOUT : bl_1_44 
* INOUT : br_0_44 
* INOUT : br_1_44 
* INOUT : bl_0_45 
* INOUT : bl_1_45 
* INOUT : br_0_45 
* INOUT : br_1_45 
* INOUT : bl_0_46 
* INOUT : bl_1_46 
* INOUT : br_0_46 
* INOUT : br_1_46 
* INOUT : bl_0_47 
* INOUT : bl_1_47 
* INOUT : br_0_47 
* INOUT : br_1_47 
* INOUT : bl_0_48 
* INOUT : bl_1_48 
* INOUT : br_0_48 
* INOUT : br_1_48 
* INOUT : bl_0_49 
* INOUT : bl_1_49 
* INOUT : br_0_49 
* INOUT : br_1_49 
* INOUT : bl_0_50 
* INOUT : bl_1_50 
* INOUT : br_0_50 
* INOUT : br_1_50 
* INOUT : bl_0_51 
* INOUT : bl_1_51 
* INOUT : br_0_51 
* INOUT : br_1_51 
* INOUT : bl_0_52 
* INOUT : bl_1_52 
* INOUT : br_0_52 
* INOUT : br_1_52 
* INOUT : bl_0_53 
* INOUT : bl_1_53 
* INOUT : br_0_53 
* INOUT : br_1_53 
* INOUT : bl_0_54 
* INOUT : bl_1_54 
* INOUT : br_0_54 
* INOUT : br_1_54 
* INOUT : bl_0_55 
* INOUT : bl_1_55 
* INOUT : br_0_55 
* INOUT : br_1_55 
* INOUT : bl_0_56 
* INOUT : bl_1_56 
* INOUT : br_0_56 
* INOUT : br_1_56 
* INOUT : bl_0_57 
* INOUT : bl_1_57 
* INOUT : br_0_57 
* INOUT : br_1_57 
* INOUT : bl_0_58 
* INOUT : bl_1_58 
* INOUT : br_0_58 
* INOUT : br_1_58 
* INOUT : bl_0_59 
* INOUT : bl_1_59 
* INOUT : br_0_59 
* INOUT : br_1_59 
* INOUT : bl_0_60 
* INOUT : bl_1_60 
* INOUT : br_0_60 
* INOUT : br_1_60 
* INOUT : bl_0_61 
* INOUT : bl_1_61 
* INOUT : br_0_61 
* INOUT : br_1_61 
* INOUT : bl_0_62 
* INOUT : bl_1_62 
* INOUT : br_0_62 
* INOUT : br_1_62 
* INOUT : bl_0_63 
* INOUT : bl_1_63 
* INOUT : br_0_63 
* INOUT : br_1_63 
* INOUT : bl_0_64 
* INOUT : bl_1_64 
* INOUT : br_0_64 
* INOUT : br_1_64 
* INOUT : bl_0_65 
* INOUT : bl_1_65 
* INOUT : br_0_65 
* INOUT : br_1_65 
* INOUT : bl_0_66 
* INOUT : bl_1_66 
* INOUT : br_0_66 
* INOUT : br_1_66 
* INOUT : bl_0_67 
* INOUT : bl_1_67 
* INOUT : br_0_67 
* INOUT : br_1_67 
* INOUT : bl_0_68 
* INOUT : bl_1_68 
* INOUT : br_0_68 
* INOUT : br_1_68 
* INOUT : bl_0_69 
* INOUT : bl_1_69 
* INOUT : br_0_69 
* INOUT : br_1_69 
* INOUT : bl_0_70 
* INOUT : bl_1_70 
* INOUT : br_0_70 
* INOUT : br_1_70 
* INOUT : bl_0_71 
* INOUT : bl_1_71 
* INOUT : br_0_71 
* INOUT : br_1_71 
* INPUT : wl_0_0 
* INPUT : wl_1_0 
* POWER : vdd 
* GROUND: gnd 
Xbit_r0_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c32
+ bl_0_32 br_0_32 bl_1_32 br_1_32 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c33
+ bl_0_33 br_0_33 bl_1_33 br_1_33 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c34
+ bl_0_34 br_0_34 bl_1_34 br_1_34 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c35
+ bl_0_35 br_0_35 bl_1_35 br_1_35 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c36
+ bl_0_36 br_0_36 bl_1_36 br_1_36 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c37
+ bl_0_37 br_0_37 bl_1_37 br_1_37 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c38
+ bl_0_38 br_0_38 bl_1_38 br_1_38 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c39
+ bl_0_39 br_0_39 bl_1_39 br_1_39 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c40
+ bl_0_40 br_0_40 bl_1_40 br_1_40 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c41
+ bl_0_41 br_0_41 bl_1_41 br_1_41 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c42
+ bl_0_42 br_0_42 bl_1_42 br_1_42 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c43
+ bl_0_43 br_0_43 bl_1_43 br_1_43 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c44
+ bl_0_44 br_0_44 bl_1_44 br_1_44 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c45
+ bl_0_45 br_0_45 bl_1_45 br_1_45 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c46
+ bl_0_46 br_0_46 bl_1_46 br_1_46 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c47
+ bl_0_47 br_0_47 bl_1_47 br_1_47 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c48
+ bl_0_48 br_0_48 bl_1_48 br_1_48 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c49
+ bl_0_49 br_0_49 bl_1_49 br_1_49 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c50
+ bl_0_50 br_0_50 bl_1_50 br_1_50 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c51
+ bl_0_51 br_0_51 bl_1_51 br_1_51 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c52
+ bl_0_52 br_0_52 bl_1_52 br_1_52 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c53
+ bl_0_53 br_0_53 bl_1_53 br_1_53 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c54
+ bl_0_54 br_0_54 bl_1_54 br_1_54 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c55
+ bl_0_55 br_0_55 bl_1_55 br_1_55 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c56
+ bl_0_56 br_0_56 bl_1_56 br_1_56 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c57
+ bl_0_57 br_0_57 bl_1_57 br_1_57 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c58
+ bl_0_58 br_0_58 bl_1_58 br_1_58 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c59
+ bl_0_59 br_0_59 bl_1_59 br_1_59 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c60
+ bl_0_60 br_0_60 bl_1_60 br_1_60 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c61
+ bl_0_61 br_0_61 bl_1_61 br_1_61 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c62
+ bl_0_62 br_0_62 bl_1_62 br_1_62 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c63
+ bl_0_63 br_0_63 bl_1_63 br_1_63 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c64
+ bl_0_64 br_0_64 bl_1_64 br_1_64 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c65
+ bl_0_65 br_0_65 bl_1_65 br_1_65 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c66
+ bl_0_66 br_0_66 bl_1_66 br_1_66 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c67
+ bl_0_67 br_0_67 bl_1_67 br_1_67 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c68
+ bl_0_68 br_0_68 bl_1_68 br_1_68 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c69
+ bl_0_69 br_0_69 bl_1_69 br_1_69 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c70
+ bl_0_70 br_0_70 bl_1_70 br_1_70 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c71
+ bl_0_71 br_0_71 bl_1_71 br_1_71 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
.ENDS freepdk45_sram_1w1r_32x72_dummy_array

.SUBCKT freepdk45_sram_1w1r_32x72_replica_column
+ bl_0_0 bl_1_0 br_0_0 br_1_0 wl_0_0 wl_1_0 wl_0_1 wl_1_1 wl_0_2 wl_1_2
+ wl_0_3 wl_1_3 wl_0_4 wl_1_4 wl_0_5 wl_1_5 wl_0_6 wl_1_6 wl_0_7 wl_1_7
+ wl_0_8 wl_1_8 wl_0_9 wl_1_9 wl_0_10 wl_1_10 wl_0_11 wl_1_11 wl_0_12
+ wl_1_12 wl_0_13 wl_1_13 wl_0_14 wl_1_14 wl_0_15 wl_1_15 wl_0_16
+ wl_1_16 wl_0_17 wl_1_17 wl_0_18 wl_1_18 wl_0_19 wl_1_19 wl_0_20
+ wl_1_20 wl_0_21 wl_1_21 wl_0_22 wl_1_22 wl_0_23 wl_1_23 wl_0_24
+ wl_1_24 wl_0_25 wl_1_25 wl_0_26 wl_1_26 wl_0_27 wl_1_27 wl_0_28
+ wl_1_28 wl_0_29 wl_1_29 wl_0_30 wl_1_30 wl_0_31 wl_1_31 wl_0_32
+ wl_1_32 wl_0_33 wl_1_33 vdd gnd
* OUTPUT: bl_0_0 
* OUTPUT: bl_1_0 
* OUTPUT: br_0_0 
* OUTPUT: br_1_0 
* INPUT : wl_0_0 
* INPUT : wl_1_0 
* INPUT : wl_0_1 
* INPUT : wl_1_1 
* INPUT : wl_0_2 
* INPUT : wl_1_2 
* INPUT : wl_0_3 
* INPUT : wl_1_3 
* INPUT : wl_0_4 
* INPUT : wl_1_4 
* INPUT : wl_0_5 
* INPUT : wl_1_5 
* INPUT : wl_0_6 
* INPUT : wl_1_6 
* INPUT : wl_0_7 
* INPUT : wl_1_7 
* INPUT : wl_0_8 
* INPUT : wl_1_8 
* INPUT : wl_0_9 
* INPUT : wl_1_9 
* INPUT : wl_0_10 
* INPUT : wl_1_10 
* INPUT : wl_0_11 
* INPUT : wl_1_11 
* INPUT : wl_0_12 
* INPUT : wl_1_12 
* INPUT : wl_0_13 
* INPUT : wl_1_13 
* INPUT : wl_0_14 
* INPUT : wl_1_14 
* INPUT : wl_0_15 
* INPUT : wl_1_15 
* INPUT : wl_0_16 
* INPUT : wl_1_16 
* INPUT : wl_0_17 
* INPUT : wl_1_17 
* INPUT : wl_0_18 
* INPUT : wl_1_18 
* INPUT : wl_0_19 
* INPUT : wl_1_19 
* INPUT : wl_0_20 
* INPUT : wl_1_20 
* INPUT : wl_0_21 
* INPUT : wl_1_21 
* INPUT : wl_0_22 
* INPUT : wl_1_22 
* INPUT : wl_0_23 
* INPUT : wl_1_23 
* INPUT : wl_0_24 
* INPUT : wl_1_24 
* INPUT : wl_0_25 
* INPUT : wl_1_25 
* INPUT : wl_0_26 
* INPUT : wl_1_26 
* INPUT : wl_0_27 
* INPUT : wl_1_27 
* INPUT : wl_0_28 
* INPUT : wl_1_28 
* INPUT : wl_0_29 
* INPUT : wl_1_29 
* INPUT : wl_0_30 
* INPUT : wl_1_30 
* INPUT : wl_0_31 
* INPUT : wl_1_31 
* INPUT : wl_0_32 
* INPUT : wl_1_32 
* INPUT : wl_0_33 
* INPUT : wl_1_33 
* POWER : vdd 
* GROUND: gnd 
Xrbc_0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_0 wl_1_0 vdd gnd
+ replica_cell_2rw
Xrbc_1
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_1 wl_1_1 vdd gnd
+ replica_cell_2rw
Xrbc_2
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_2 wl_1_2 vdd gnd
+ replica_cell_2rw
Xrbc_3
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_3 wl_1_3 vdd gnd
+ replica_cell_2rw
Xrbc_4
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_4 wl_1_4 vdd gnd
+ replica_cell_2rw
Xrbc_5
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_5 wl_1_5 vdd gnd
+ replica_cell_2rw
Xrbc_6
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_6 wl_1_6 vdd gnd
+ replica_cell_2rw
Xrbc_7
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_7 wl_1_7 vdd gnd
+ replica_cell_2rw
Xrbc_8
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_8 wl_1_8 vdd gnd
+ replica_cell_2rw
Xrbc_9
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_9 wl_1_9 vdd gnd
+ replica_cell_2rw
Xrbc_10
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_10 wl_1_10 vdd gnd
+ replica_cell_2rw
Xrbc_11
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_11 wl_1_11 vdd gnd
+ replica_cell_2rw
Xrbc_12
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_12 wl_1_12 vdd gnd
+ replica_cell_2rw
Xrbc_13
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_13 wl_1_13 vdd gnd
+ replica_cell_2rw
Xrbc_14
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_14 wl_1_14 vdd gnd
+ replica_cell_2rw
Xrbc_15
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_15 wl_1_15 vdd gnd
+ replica_cell_2rw
Xrbc_16
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_16 wl_1_16 vdd gnd
+ replica_cell_2rw
Xrbc_17
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_17 wl_1_17 vdd gnd
+ replica_cell_2rw
Xrbc_18
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_18 wl_1_18 vdd gnd
+ replica_cell_2rw
Xrbc_19
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_19 wl_1_19 vdd gnd
+ replica_cell_2rw
Xrbc_20
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_20 wl_1_20 vdd gnd
+ replica_cell_2rw
Xrbc_21
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_21 wl_1_21 vdd gnd
+ replica_cell_2rw
Xrbc_22
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_22 wl_1_22 vdd gnd
+ replica_cell_2rw
Xrbc_23
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_23 wl_1_23 vdd gnd
+ replica_cell_2rw
Xrbc_24
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_24 wl_1_24 vdd gnd
+ replica_cell_2rw
Xrbc_25
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_25 wl_1_25 vdd gnd
+ replica_cell_2rw
Xrbc_26
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_26 wl_1_26 vdd gnd
+ replica_cell_2rw
Xrbc_27
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_27 wl_1_27 vdd gnd
+ replica_cell_2rw
Xrbc_28
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_28 wl_1_28 vdd gnd
+ replica_cell_2rw
Xrbc_29
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_29 wl_1_29 vdd gnd
+ replica_cell_2rw
Xrbc_30
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_30 wl_1_30 vdd gnd
+ replica_cell_2rw
Xrbc_31
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_31 wl_1_31 vdd gnd
+ replica_cell_2rw
Xrbc_32
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_32 wl_1_32 vdd gnd
+ replica_cell_2rw
Xrbc_33
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_33 wl_1_33 vdd gnd
+ dummy_cell_2rw
.ENDS freepdk45_sram_1w1r_32x72_replica_column

.SUBCKT freepdk45_sram_1w1r_32x72_replica_bitcell_array
+ rbl_bl_0_0 rbl_bl_1_0 rbl_br_0_0 rbl_br_1_0 bl_0_0 bl_1_0 br_0_0
+ br_1_0 bl_0_1 bl_1_1 br_0_1 br_1_1 bl_0_2 bl_1_2 br_0_2 br_1_2 bl_0_3
+ bl_1_3 br_0_3 br_1_3 bl_0_4 bl_1_4 br_0_4 br_1_4 bl_0_5 bl_1_5 br_0_5
+ br_1_5 bl_0_6 bl_1_6 br_0_6 br_1_6 bl_0_7 bl_1_7 br_0_7 br_1_7 bl_0_8
+ bl_1_8 br_0_8 br_1_8 bl_0_9 bl_1_9 br_0_9 br_1_9 bl_0_10 bl_1_10
+ br_0_10 br_1_10 bl_0_11 bl_1_11 br_0_11 br_1_11 bl_0_12 bl_1_12
+ br_0_12 br_1_12 bl_0_13 bl_1_13 br_0_13 br_1_13 bl_0_14 bl_1_14
+ br_0_14 br_1_14 bl_0_15 bl_1_15 br_0_15 br_1_15 bl_0_16 bl_1_16
+ br_0_16 br_1_16 bl_0_17 bl_1_17 br_0_17 br_1_17 bl_0_18 bl_1_18
+ br_0_18 br_1_18 bl_0_19 bl_1_19 br_0_19 br_1_19 bl_0_20 bl_1_20
+ br_0_20 br_1_20 bl_0_21 bl_1_21 br_0_21 br_1_21 bl_0_22 bl_1_22
+ br_0_22 br_1_22 bl_0_23 bl_1_23 br_0_23 br_1_23 bl_0_24 bl_1_24
+ br_0_24 br_1_24 bl_0_25 bl_1_25 br_0_25 br_1_25 bl_0_26 bl_1_26
+ br_0_26 br_1_26 bl_0_27 bl_1_27 br_0_27 br_1_27 bl_0_28 bl_1_28
+ br_0_28 br_1_28 bl_0_29 bl_1_29 br_0_29 br_1_29 bl_0_30 bl_1_30
+ br_0_30 br_1_30 bl_0_31 bl_1_31 br_0_31 br_1_31 bl_0_32 bl_1_32
+ br_0_32 br_1_32 bl_0_33 bl_1_33 br_0_33 br_1_33 bl_0_34 bl_1_34
+ br_0_34 br_1_34 bl_0_35 bl_1_35 br_0_35 br_1_35 bl_0_36 bl_1_36
+ br_0_36 br_1_36 bl_0_37 bl_1_37 br_0_37 br_1_37 bl_0_38 bl_1_38
+ br_0_38 br_1_38 bl_0_39 bl_1_39 br_0_39 br_1_39 bl_0_40 bl_1_40
+ br_0_40 br_1_40 bl_0_41 bl_1_41 br_0_41 br_1_41 bl_0_42 bl_1_42
+ br_0_42 br_1_42 bl_0_43 bl_1_43 br_0_43 br_1_43 bl_0_44 bl_1_44
+ br_0_44 br_1_44 bl_0_45 bl_1_45 br_0_45 br_1_45 bl_0_46 bl_1_46
+ br_0_46 br_1_46 bl_0_47 bl_1_47 br_0_47 br_1_47 bl_0_48 bl_1_48
+ br_0_48 br_1_48 bl_0_49 bl_1_49 br_0_49 br_1_49 bl_0_50 bl_1_50
+ br_0_50 br_1_50 bl_0_51 bl_1_51 br_0_51 br_1_51 bl_0_52 bl_1_52
+ br_0_52 br_1_52 bl_0_53 bl_1_53 br_0_53 br_1_53 bl_0_54 bl_1_54
+ br_0_54 br_1_54 bl_0_55 bl_1_55 br_0_55 br_1_55 bl_0_56 bl_1_56
+ br_0_56 br_1_56 bl_0_57 bl_1_57 br_0_57 br_1_57 bl_0_58 bl_1_58
+ br_0_58 br_1_58 bl_0_59 bl_1_59 br_0_59 br_1_59 bl_0_60 bl_1_60
+ br_0_60 br_1_60 bl_0_61 bl_1_61 br_0_61 br_1_61 bl_0_62 bl_1_62
+ br_0_62 br_1_62 bl_0_63 bl_1_63 br_0_63 br_1_63 bl_0_64 bl_1_64
+ br_0_64 br_1_64 bl_0_65 bl_1_65 br_0_65 br_1_65 bl_0_66 bl_1_66
+ br_0_66 br_1_66 bl_0_67 bl_1_67 br_0_67 br_1_67 bl_0_68 bl_1_68
+ br_0_68 br_1_68 bl_0_69 bl_1_69 br_0_69 br_1_69 bl_0_70 bl_1_70
+ br_0_70 br_1_70 bl_0_71 bl_1_71 br_0_71 br_1_71 rbl_bl_0_1 rbl_bl_1_1
+ rbl_br_0_1 rbl_br_1_1 rbl_wl_0_0 rbl_wl_0_1 wl_0_0 wl_1_0 wl_0_1
+ wl_1_1 wl_0_2 wl_1_2 wl_0_3 wl_1_3 wl_0_4 wl_1_4 wl_0_5 wl_1_5 wl_0_6
+ wl_1_6 wl_0_7 wl_1_7 wl_0_8 wl_1_8 wl_0_9 wl_1_9 wl_0_10 wl_1_10
+ wl_0_11 wl_1_11 wl_0_12 wl_1_12 wl_0_13 wl_1_13 wl_0_14 wl_1_14
+ wl_0_15 wl_1_15 wl_0_16 wl_1_16 wl_0_17 wl_1_17 wl_0_18 wl_1_18
+ wl_0_19 wl_1_19 wl_0_20 wl_1_20 wl_0_21 wl_1_21 wl_0_22 wl_1_22
+ wl_0_23 wl_1_23 wl_0_24 wl_1_24 wl_0_25 wl_1_25 wl_0_26 wl_1_26
+ wl_0_27 wl_1_27 wl_0_28 wl_1_28 wl_0_29 wl_1_29 wl_0_30 wl_1_30
+ wl_0_31 wl_1_31 rbl_wl_1_0 rbl_wl_1_1 vdd gnd
* INOUT : rbl_bl_0_0 
* INOUT : rbl_bl_1_0 
* INOUT : rbl_br_0_0 
* INOUT : rbl_br_1_0 
* INOUT : bl_0_0 
* INOUT : bl_1_0 
* INOUT : br_0_0 
* INOUT : br_1_0 
* INOUT : bl_0_1 
* INOUT : bl_1_1 
* INOUT : br_0_1 
* INOUT : br_1_1 
* INOUT : bl_0_2 
* INOUT : bl_1_2 
* INOUT : br_0_2 
* INOUT : br_1_2 
* INOUT : bl_0_3 
* INOUT : bl_1_3 
* INOUT : br_0_3 
* INOUT : br_1_3 
* INOUT : bl_0_4 
* INOUT : bl_1_4 
* INOUT : br_0_4 
* INOUT : br_1_4 
* INOUT : bl_0_5 
* INOUT : bl_1_5 
* INOUT : br_0_5 
* INOUT : br_1_5 
* INOUT : bl_0_6 
* INOUT : bl_1_6 
* INOUT : br_0_6 
* INOUT : br_1_6 
* INOUT : bl_0_7 
* INOUT : bl_1_7 
* INOUT : br_0_7 
* INOUT : br_1_7 
* INOUT : bl_0_8 
* INOUT : bl_1_8 
* INOUT : br_0_8 
* INOUT : br_1_8 
* INOUT : bl_0_9 
* INOUT : bl_1_9 
* INOUT : br_0_9 
* INOUT : br_1_9 
* INOUT : bl_0_10 
* INOUT : bl_1_10 
* INOUT : br_0_10 
* INOUT : br_1_10 
* INOUT : bl_0_11 
* INOUT : bl_1_11 
* INOUT : br_0_11 
* INOUT : br_1_11 
* INOUT : bl_0_12 
* INOUT : bl_1_12 
* INOUT : br_0_12 
* INOUT : br_1_12 
* INOUT : bl_0_13 
* INOUT : bl_1_13 
* INOUT : br_0_13 
* INOUT : br_1_13 
* INOUT : bl_0_14 
* INOUT : bl_1_14 
* INOUT : br_0_14 
* INOUT : br_1_14 
* INOUT : bl_0_15 
* INOUT : bl_1_15 
* INOUT : br_0_15 
* INOUT : br_1_15 
* INOUT : bl_0_16 
* INOUT : bl_1_16 
* INOUT : br_0_16 
* INOUT : br_1_16 
* INOUT : bl_0_17 
* INOUT : bl_1_17 
* INOUT : br_0_17 
* INOUT : br_1_17 
* INOUT : bl_0_18 
* INOUT : bl_1_18 
* INOUT : br_0_18 
* INOUT : br_1_18 
* INOUT : bl_0_19 
* INOUT : bl_1_19 
* INOUT : br_0_19 
* INOUT : br_1_19 
* INOUT : bl_0_20 
* INOUT : bl_1_20 
* INOUT : br_0_20 
* INOUT : br_1_20 
* INOUT : bl_0_21 
* INOUT : bl_1_21 
* INOUT : br_0_21 
* INOUT : br_1_21 
* INOUT : bl_0_22 
* INOUT : bl_1_22 
* INOUT : br_0_22 
* INOUT : br_1_22 
* INOUT : bl_0_23 
* INOUT : bl_1_23 
* INOUT : br_0_23 
* INOUT : br_1_23 
* INOUT : bl_0_24 
* INOUT : bl_1_24 
* INOUT : br_0_24 
* INOUT : br_1_24 
* INOUT : bl_0_25 
* INOUT : bl_1_25 
* INOUT : br_0_25 
* INOUT : br_1_25 
* INOUT : bl_0_26 
* INOUT : bl_1_26 
* INOUT : br_0_26 
* INOUT : br_1_26 
* INOUT : bl_0_27 
* INOUT : bl_1_27 
* INOUT : br_0_27 
* INOUT : br_1_27 
* INOUT : bl_0_28 
* INOUT : bl_1_28 
* INOUT : br_0_28 
* INOUT : br_1_28 
* INOUT : bl_0_29 
* INOUT : bl_1_29 
* INOUT : br_0_29 
* INOUT : br_1_29 
* INOUT : bl_0_30 
* INOUT : bl_1_30 
* INOUT : br_0_30 
* INOUT : br_1_30 
* INOUT : bl_0_31 
* INOUT : bl_1_31 
* INOUT : br_0_31 
* INOUT : br_1_31 
* INOUT : bl_0_32 
* INOUT : bl_1_32 
* INOUT : br_0_32 
* INOUT : br_1_32 
* INOUT : bl_0_33 
* INOUT : bl_1_33 
* INOUT : br_0_33 
* INOUT : br_1_33 
* INOUT : bl_0_34 
* INOUT : bl_1_34 
* INOUT : br_0_34 
* INOUT : br_1_34 
* INOUT : bl_0_35 
* INOUT : bl_1_35 
* INOUT : br_0_35 
* INOUT : br_1_35 
* INOUT : bl_0_36 
* INOUT : bl_1_36 
* INOUT : br_0_36 
* INOUT : br_1_36 
* INOUT : bl_0_37 
* INOUT : bl_1_37 
* INOUT : br_0_37 
* INOUT : br_1_37 
* INOUT : bl_0_38 
* INOUT : bl_1_38 
* INOUT : br_0_38 
* INOUT : br_1_38 
* INOUT : bl_0_39 
* INOUT : bl_1_39 
* INOUT : br_0_39 
* INOUT : br_1_39 
* INOUT : bl_0_40 
* INOUT : bl_1_40 
* INOUT : br_0_40 
* INOUT : br_1_40 
* INOUT : bl_0_41 
* INOUT : bl_1_41 
* INOUT : br_0_41 
* INOUT : br_1_41 
* INOUT : bl_0_42 
* INOUT : bl_1_42 
* INOUT : br_0_42 
* INOUT : br_1_42 
* INOUT : bl_0_43 
* INOUT : bl_1_43 
* INOUT : br_0_43 
* INOUT : br_1_43 
* INOUT : bl_0_44 
* INOUT : bl_1_44 
* INOUT : br_0_44 
* INOUT : br_1_44 
* INOUT : bl_0_45 
* INOUT : bl_1_45 
* INOUT : br_0_45 
* INOUT : br_1_45 
* INOUT : bl_0_46 
* INOUT : bl_1_46 
* INOUT : br_0_46 
* INOUT : br_1_46 
* INOUT : bl_0_47 
* INOUT : bl_1_47 
* INOUT : br_0_47 
* INOUT : br_1_47 
* INOUT : bl_0_48 
* INOUT : bl_1_48 
* INOUT : br_0_48 
* INOUT : br_1_48 
* INOUT : bl_0_49 
* INOUT : bl_1_49 
* INOUT : br_0_49 
* INOUT : br_1_49 
* INOUT : bl_0_50 
* INOUT : bl_1_50 
* INOUT : br_0_50 
* INOUT : br_1_50 
* INOUT : bl_0_51 
* INOUT : bl_1_51 
* INOUT : br_0_51 
* INOUT : br_1_51 
* INOUT : bl_0_52 
* INOUT : bl_1_52 
* INOUT : br_0_52 
* INOUT : br_1_52 
* INOUT : bl_0_53 
* INOUT : bl_1_53 
* INOUT : br_0_53 
* INOUT : br_1_53 
* INOUT : bl_0_54 
* INOUT : bl_1_54 
* INOUT : br_0_54 
* INOUT : br_1_54 
* INOUT : bl_0_55 
* INOUT : bl_1_55 
* INOUT : br_0_55 
* INOUT : br_1_55 
* INOUT : bl_0_56 
* INOUT : bl_1_56 
* INOUT : br_0_56 
* INOUT : br_1_56 
* INOUT : bl_0_57 
* INOUT : bl_1_57 
* INOUT : br_0_57 
* INOUT : br_1_57 
* INOUT : bl_0_58 
* INOUT : bl_1_58 
* INOUT : br_0_58 
* INOUT : br_1_58 
* INOUT : bl_0_59 
* INOUT : bl_1_59 
* INOUT : br_0_59 
* INOUT : br_1_59 
* INOUT : bl_0_60 
* INOUT : bl_1_60 
* INOUT : br_0_60 
* INOUT : br_1_60 
* INOUT : bl_0_61 
* INOUT : bl_1_61 
* INOUT : br_0_61 
* INOUT : br_1_61 
* INOUT : bl_0_62 
* INOUT : bl_1_62 
* INOUT : br_0_62 
* INOUT : br_1_62 
* INOUT : bl_0_63 
* INOUT : bl_1_63 
* INOUT : br_0_63 
* INOUT : br_1_63 
* INOUT : bl_0_64 
* INOUT : bl_1_64 
* INOUT : br_0_64 
* INOUT : br_1_64 
* INOUT : bl_0_65 
* INOUT : bl_1_65 
* INOUT : br_0_65 
* INOUT : br_1_65 
* INOUT : bl_0_66 
* INOUT : bl_1_66 
* INOUT : br_0_66 
* INOUT : br_1_66 
* INOUT : bl_0_67 
* INOUT : bl_1_67 
* INOUT : br_0_67 
* INOUT : br_1_67 
* INOUT : bl_0_68 
* INOUT : bl_1_68 
* INOUT : br_0_68 
* INOUT : br_1_68 
* INOUT : bl_0_69 
* INOUT : bl_1_69 
* INOUT : br_0_69 
* INOUT : br_1_69 
* INOUT : bl_0_70 
* INOUT : bl_1_70 
* INOUT : br_0_70 
* INOUT : br_1_70 
* INOUT : bl_0_71 
* INOUT : bl_1_71 
* INOUT : br_0_71 
* INOUT : br_1_71 
* INOUT : rbl_bl_0_1 
* INOUT : rbl_bl_1_1 
* INOUT : rbl_br_0_1 
* INOUT : rbl_br_1_1 
* INPUT : rbl_wl_0_0 
* INPUT : rbl_wl_0_1 
* INPUT : wl_0_0 
* INPUT : wl_1_0 
* INPUT : wl_0_1 
* INPUT : wl_1_1 
* INPUT : wl_0_2 
* INPUT : wl_1_2 
* INPUT : wl_0_3 
* INPUT : wl_1_3 
* INPUT : wl_0_4 
* INPUT : wl_1_4 
* INPUT : wl_0_5 
* INPUT : wl_1_5 
* INPUT : wl_0_6 
* INPUT : wl_1_6 
* INPUT : wl_0_7 
* INPUT : wl_1_7 
* INPUT : wl_0_8 
* INPUT : wl_1_8 
* INPUT : wl_0_9 
* INPUT : wl_1_9 
* INPUT : wl_0_10 
* INPUT : wl_1_10 
* INPUT : wl_0_11 
* INPUT : wl_1_11 
* INPUT : wl_0_12 
* INPUT : wl_1_12 
* INPUT : wl_0_13 
* INPUT : wl_1_13 
* INPUT : wl_0_14 
* INPUT : wl_1_14 
* INPUT : wl_0_15 
* INPUT : wl_1_15 
* INPUT : wl_0_16 
* INPUT : wl_1_16 
* INPUT : wl_0_17 
* INPUT : wl_1_17 
* INPUT : wl_0_18 
* INPUT : wl_1_18 
* INPUT : wl_0_19 
* INPUT : wl_1_19 
* INPUT : wl_0_20 
* INPUT : wl_1_20 
* INPUT : wl_0_21 
* INPUT : wl_1_21 
* INPUT : wl_0_22 
* INPUT : wl_1_22 
* INPUT : wl_0_23 
* INPUT : wl_1_23 
* INPUT : wl_0_24 
* INPUT : wl_1_24 
* INPUT : wl_0_25 
* INPUT : wl_1_25 
* INPUT : wl_0_26 
* INPUT : wl_1_26 
* INPUT : wl_0_27 
* INPUT : wl_1_27 
* INPUT : wl_0_28 
* INPUT : wl_1_28 
* INPUT : wl_0_29 
* INPUT : wl_1_29 
* INPUT : wl_0_30 
* INPUT : wl_1_30 
* INPUT : wl_0_31 
* INPUT : wl_1_31 
* INPUT : rbl_wl_1_0 
* INPUT : rbl_wl_1_1 
* POWER : vdd 
* GROUND: gnd 
* rbl: [1, 1] left_rbl: [0] right_rbl: [1]
Xbitcell_array
+ bl_0_0 bl_1_0 br_0_0 br_1_0 bl_0_1 bl_1_1 br_0_1 br_1_1 bl_0_2 bl_1_2
+ br_0_2 br_1_2 bl_0_3 bl_1_3 br_0_3 br_1_3 bl_0_4 bl_1_4 br_0_4 br_1_4
+ bl_0_5 bl_1_5 br_0_5 br_1_5 bl_0_6 bl_1_6 br_0_6 br_1_6 bl_0_7 bl_1_7
+ br_0_7 br_1_7 bl_0_8 bl_1_8 br_0_8 br_1_8 bl_0_9 bl_1_9 br_0_9 br_1_9
+ bl_0_10 bl_1_10 br_0_10 br_1_10 bl_0_11 bl_1_11 br_0_11 br_1_11
+ bl_0_12 bl_1_12 br_0_12 br_1_12 bl_0_13 bl_1_13 br_0_13 br_1_13
+ bl_0_14 bl_1_14 br_0_14 br_1_14 bl_0_15 bl_1_15 br_0_15 br_1_15
+ bl_0_16 bl_1_16 br_0_16 br_1_16 bl_0_17 bl_1_17 br_0_17 br_1_17
+ bl_0_18 bl_1_18 br_0_18 br_1_18 bl_0_19 bl_1_19 br_0_19 br_1_19
+ bl_0_20 bl_1_20 br_0_20 br_1_20 bl_0_21 bl_1_21 br_0_21 br_1_21
+ bl_0_22 bl_1_22 br_0_22 br_1_22 bl_0_23 bl_1_23 br_0_23 br_1_23
+ bl_0_24 bl_1_24 br_0_24 br_1_24 bl_0_25 bl_1_25 br_0_25 br_1_25
+ bl_0_26 bl_1_26 br_0_26 br_1_26 bl_0_27 bl_1_27 br_0_27 br_1_27
+ bl_0_28 bl_1_28 br_0_28 br_1_28 bl_0_29 bl_1_29 br_0_29 br_1_29
+ bl_0_30 bl_1_30 br_0_30 br_1_30 bl_0_31 bl_1_31 br_0_31 br_1_31
+ bl_0_32 bl_1_32 br_0_32 br_1_32 bl_0_33 bl_1_33 br_0_33 br_1_33
+ bl_0_34 bl_1_34 br_0_34 br_1_34 bl_0_35 bl_1_35 br_0_35 br_1_35
+ bl_0_36 bl_1_36 br_0_36 br_1_36 bl_0_37 bl_1_37 br_0_37 br_1_37
+ bl_0_38 bl_1_38 br_0_38 br_1_38 bl_0_39 bl_1_39 br_0_39 br_1_39
+ bl_0_40 bl_1_40 br_0_40 br_1_40 bl_0_41 bl_1_41 br_0_41 br_1_41
+ bl_0_42 bl_1_42 br_0_42 br_1_42 bl_0_43 bl_1_43 br_0_43 br_1_43
+ bl_0_44 bl_1_44 br_0_44 br_1_44 bl_0_45 bl_1_45 br_0_45 br_1_45
+ bl_0_46 bl_1_46 br_0_46 br_1_46 bl_0_47 bl_1_47 br_0_47 br_1_47
+ bl_0_48 bl_1_48 br_0_48 br_1_48 bl_0_49 bl_1_49 br_0_49 br_1_49
+ bl_0_50 bl_1_50 br_0_50 br_1_50 bl_0_51 bl_1_51 br_0_51 br_1_51
+ bl_0_52 bl_1_52 br_0_52 br_1_52 bl_0_53 bl_1_53 br_0_53 br_1_53
+ bl_0_54 bl_1_54 br_0_54 br_1_54 bl_0_55 bl_1_55 br_0_55 br_1_55
+ bl_0_56 bl_1_56 br_0_56 br_1_56 bl_0_57 bl_1_57 br_0_57 br_1_57
+ bl_0_58 bl_1_58 br_0_58 br_1_58 bl_0_59 bl_1_59 br_0_59 br_1_59
+ bl_0_60 bl_1_60 br_0_60 br_1_60 bl_0_61 bl_1_61 br_0_61 br_1_61
+ bl_0_62 bl_1_62 br_0_62 br_1_62 bl_0_63 bl_1_63 br_0_63 br_1_63
+ bl_0_64 bl_1_64 br_0_64 br_1_64 bl_0_65 bl_1_65 br_0_65 br_1_65
+ bl_0_66 bl_1_66 br_0_66 br_1_66 bl_0_67 bl_1_67 br_0_67 br_1_67
+ bl_0_68 bl_1_68 br_0_68 br_1_68 bl_0_69 bl_1_69 br_0_69 br_1_69
+ bl_0_70 bl_1_70 br_0_70 br_1_70 bl_0_71 bl_1_71 br_0_71 br_1_71 wl_0_0
+ wl_1_0 wl_0_1 wl_1_1 wl_0_2 wl_1_2 wl_0_3 wl_1_3 wl_0_4 wl_1_4 wl_0_5
+ wl_1_5 wl_0_6 wl_1_6 wl_0_7 wl_1_7 wl_0_8 wl_1_8 wl_0_9 wl_1_9 wl_0_10
+ wl_1_10 wl_0_11 wl_1_11 wl_0_12 wl_1_12 wl_0_13 wl_1_13 wl_0_14
+ wl_1_14 wl_0_15 wl_1_15 wl_0_16 wl_1_16 wl_0_17 wl_1_17 wl_0_18
+ wl_1_18 wl_0_19 wl_1_19 wl_0_20 wl_1_20 wl_0_21 wl_1_21 wl_0_22
+ wl_1_22 wl_0_23 wl_1_23 wl_0_24 wl_1_24 wl_0_25 wl_1_25 wl_0_26
+ wl_1_26 wl_0_27 wl_1_27 wl_0_28 wl_1_28 wl_0_29 wl_1_29 wl_0_30
+ wl_1_30 wl_0_31 wl_1_31 vdd gnd
+ freepdk45_sram_1w1r_32x72_bitcell_array
Xreplica_col_0
+ rbl_bl_0_0 rbl_bl_1_0 rbl_br_0_0 rbl_br_1_0 rbl_wl_0_0 rbl_wl_0_1
+ wl_0_0 wl_1_0 wl_0_1 wl_1_1 wl_0_2 wl_1_2 wl_0_3 wl_1_3 wl_0_4 wl_1_4
+ wl_0_5 wl_1_5 wl_0_6 wl_1_6 wl_0_7 wl_1_7 wl_0_8 wl_1_8 wl_0_9 wl_1_9
+ wl_0_10 wl_1_10 wl_0_11 wl_1_11 wl_0_12 wl_1_12 wl_0_13 wl_1_13
+ wl_0_14 wl_1_14 wl_0_15 wl_1_15 wl_0_16 wl_1_16 wl_0_17 wl_1_17
+ wl_0_18 wl_1_18 wl_0_19 wl_1_19 wl_0_20 wl_1_20 wl_0_21 wl_1_21
+ wl_0_22 wl_1_22 wl_0_23 wl_1_23 wl_0_24 wl_1_24 wl_0_25 wl_1_25
+ wl_0_26 wl_1_26 wl_0_27 wl_1_27 wl_0_28 wl_1_28 wl_0_29 wl_1_29
+ wl_0_30 wl_1_30 wl_0_31 wl_1_31 rbl_wl_1_0 rbl_wl_1_1 vdd gnd
+ freepdk45_sram_1w1r_32x72_replica_column
Xreplica_col_1
+ rbl_bl_0_1 rbl_bl_1_1 rbl_br_0_1 rbl_br_1_1 rbl_wl_0_0 rbl_wl_0_1
+ wl_0_0 wl_1_0 wl_0_1 wl_1_1 wl_0_2 wl_1_2 wl_0_3 wl_1_3 wl_0_4 wl_1_4
+ wl_0_5 wl_1_5 wl_0_6 wl_1_6 wl_0_7 wl_1_7 wl_0_8 wl_1_8 wl_0_9 wl_1_9
+ wl_0_10 wl_1_10 wl_0_11 wl_1_11 wl_0_12 wl_1_12 wl_0_13 wl_1_13
+ wl_0_14 wl_1_14 wl_0_15 wl_1_15 wl_0_16 wl_1_16 wl_0_17 wl_1_17
+ wl_0_18 wl_1_18 wl_0_19 wl_1_19 wl_0_20 wl_1_20 wl_0_21 wl_1_21
+ wl_0_22 wl_1_22 wl_0_23 wl_1_23 wl_0_24 wl_1_24 wl_0_25 wl_1_25
+ wl_0_26 wl_1_26 wl_0_27 wl_1_27 wl_0_28 wl_1_28 wl_0_29 wl_1_29
+ wl_0_30 wl_1_30 wl_0_31 wl_1_31 rbl_wl_1_0 rbl_wl_1_1 vdd gnd
+ freepdk45_sram_1w1r_32x72_replica_column_0
Xdummy_row_0
+ bl_0_0 bl_1_0 br_0_0 br_1_0 bl_0_1 bl_1_1 br_0_1 br_1_1 bl_0_2 bl_1_2
+ br_0_2 br_1_2 bl_0_3 bl_1_3 br_0_3 br_1_3 bl_0_4 bl_1_4 br_0_4 br_1_4
+ bl_0_5 bl_1_5 br_0_5 br_1_5 bl_0_6 bl_1_6 br_0_6 br_1_6 bl_0_7 bl_1_7
+ br_0_7 br_1_7 bl_0_8 bl_1_8 br_0_8 br_1_8 bl_0_9 bl_1_9 br_0_9 br_1_9
+ bl_0_10 bl_1_10 br_0_10 br_1_10 bl_0_11 bl_1_11 br_0_11 br_1_11
+ bl_0_12 bl_1_12 br_0_12 br_1_12 bl_0_13 bl_1_13 br_0_13 br_1_13
+ bl_0_14 bl_1_14 br_0_14 br_1_14 bl_0_15 bl_1_15 br_0_15 br_1_15
+ bl_0_16 bl_1_16 br_0_16 br_1_16 bl_0_17 bl_1_17 br_0_17 br_1_17
+ bl_0_18 bl_1_18 br_0_18 br_1_18 bl_0_19 bl_1_19 br_0_19 br_1_19
+ bl_0_20 bl_1_20 br_0_20 br_1_20 bl_0_21 bl_1_21 br_0_21 br_1_21
+ bl_0_22 bl_1_22 br_0_22 br_1_22 bl_0_23 bl_1_23 br_0_23 br_1_23
+ bl_0_24 bl_1_24 br_0_24 br_1_24 bl_0_25 bl_1_25 br_0_25 br_1_25
+ bl_0_26 bl_1_26 br_0_26 br_1_26 bl_0_27 bl_1_27 br_0_27 br_1_27
+ bl_0_28 bl_1_28 br_0_28 br_1_28 bl_0_29 bl_1_29 br_0_29 br_1_29
+ bl_0_30 bl_1_30 br_0_30 br_1_30 bl_0_31 bl_1_31 br_0_31 br_1_31
+ bl_0_32 bl_1_32 br_0_32 br_1_32 bl_0_33 bl_1_33 br_0_33 br_1_33
+ bl_0_34 bl_1_34 br_0_34 br_1_34 bl_0_35 bl_1_35 br_0_35 br_1_35
+ bl_0_36 bl_1_36 br_0_36 br_1_36 bl_0_37 bl_1_37 br_0_37 br_1_37
+ bl_0_38 bl_1_38 br_0_38 br_1_38 bl_0_39 bl_1_39 br_0_39 br_1_39
+ bl_0_40 bl_1_40 br_0_40 br_1_40 bl_0_41 bl_1_41 br_0_41 br_1_41
+ bl_0_42 bl_1_42 br_0_42 br_1_42 bl_0_43 bl_1_43 br_0_43 br_1_43
+ bl_0_44 bl_1_44 br_0_44 br_1_44 bl_0_45 bl_1_45 br_0_45 br_1_45
+ bl_0_46 bl_1_46 br_0_46 br_1_46 bl_0_47 bl_1_47 br_0_47 br_1_47
+ bl_0_48 bl_1_48 br_0_48 br_1_48 bl_0_49 bl_1_49 br_0_49 br_1_49
+ bl_0_50 bl_1_50 br_0_50 br_1_50 bl_0_51 bl_1_51 br_0_51 br_1_51
+ bl_0_52 bl_1_52 br_0_52 br_1_52 bl_0_53 bl_1_53 br_0_53 br_1_53
+ bl_0_54 bl_1_54 br_0_54 br_1_54 bl_0_55 bl_1_55 br_0_55 br_1_55
+ bl_0_56 bl_1_56 br_0_56 br_1_56 bl_0_57 bl_1_57 br_0_57 br_1_57
+ bl_0_58 bl_1_58 br_0_58 br_1_58 bl_0_59 bl_1_59 br_0_59 br_1_59
+ bl_0_60 bl_1_60 br_0_60 br_1_60 bl_0_61 bl_1_61 br_0_61 br_1_61
+ bl_0_62 bl_1_62 br_0_62 br_1_62 bl_0_63 bl_1_63 br_0_63 br_1_63
+ bl_0_64 bl_1_64 br_0_64 br_1_64 bl_0_65 bl_1_65 br_0_65 br_1_65
+ bl_0_66 bl_1_66 br_0_66 br_1_66 bl_0_67 bl_1_67 br_0_67 br_1_67
+ bl_0_68 bl_1_68 br_0_68 br_1_68 bl_0_69 bl_1_69 br_0_69 br_1_69
+ bl_0_70 bl_1_70 br_0_70 br_1_70 bl_0_71 bl_1_71 br_0_71 br_1_71
+ rbl_wl_0_0 rbl_wl_0_1 vdd gnd
+ freepdk45_sram_1w1r_32x72_dummy_array
Xdummy_row_1
+ bl_0_0 bl_1_0 br_0_0 br_1_0 bl_0_1 bl_1_1 br_0_1 br_1_1 bl_0_2 bl_1_2
+ br_0_2 br_1_2 bl_0_3 bl_1_3 br_0_3 br_1_3 bl_0_4 bl_1_4 br_0_4 br_1_4
+ bl_0_5 bl_1_5 br_0_5 br_1_5 bl_0_6 bl_1_6 br_0_6 br_1_6 bl_0_7 bl_1_7
+ br_0_7 br_1_7 bl_0_8 bl_1_8 br_0_8 br_1_8 bl_0_9 bl_1_9 br_0_9 br_1_9
+ bl_0_10 bl_1_10 br_0_10 br_1_10 bl_0_11 bl_1_11 br_0_11 br_1_11
+ bl_0_12 bl_1_12 br_0_12 br_1_12 bl_0_13 bl_1_13 br_0_13 br_1_13
+ bl_0_14 bl_1_14 br_0_14 br_1_14 bl_0_15 bl_1_15 br_0_15 br_1_15
+ bl_0_16 bl_1_16 br_0_16 br_1_16 bl_0_17 bl_1_17 br_0_17 br_1_17
+ bl_0_18 bl_1_18 br_0_18 br_1_18 bl_0_19 bl_1_19 br_0_19 br_1_19
+ bl_0_20 bl_1_20 br_0_20 br_1_20 bl_0_21 bl_1_21 br_0_21 br_1_21
+ bl_0_22 bl_1_22 br_0_22 br_1_22 bl_0_23 bl_1_23 br_0_23 br_1_23
+ bl_0_24 bl_1_24 br_0_24 br_1_24 bl_0_25 bl_1_25 br_0_25 br_1_25
+ bl_0_26 bl_1_26 br_0_26 br_1_26 bl_0_27 bl_1_27 br_0_27 br_1_27
+ bl_0_28 bl_1_28 br_0_28 br_1_28 bl_0_29 bl_1_29 br_0_29 br_1_29
+ bl_0_30 bl_1_30 br_0_30 br_1_30 bl_0_31 bl_1_31 br_0_31 br_1_31
+ bl_0_32 bl_1_32 br_0_32 br_1_32 bl_0_33 bl_1_33 br_0_33 br_1_33
+ bl_0_34 bl_1_34 br_0_34 br_1_34 bl_0_35 bl_1_35 br_0_35 br_1_35
+ bl_0_36 bl_1_36 br_0_36 br_1_36 bl_0_37 bl_1_37 br_0_37 br_1_37
+ bl_0_38 bl_1_38 br_0_38 br_1_38 bl_0_39 bl_1_39 br_0_39 br_1_39
+ bl_0_40 bl_1_40 br_0_40 br_1_40 bl_0_41 bl_1_41 br_0_41 br_1_41
+ bl_0_42 bl_1_42 br_0_42 br_1_42 bl_0_43 bl_1_43 br_0_43 br_1_43
+ bl_0_44 bl_1_44 br_0_44 br_1_44 bl_0_45 bl_1_45 br_0_45 br_1_45
+ bl_0_46 bl_1_46 br_0_46 br_1_46 bl_0_47 bl_1_47 br_0_47 br_1_47
+ bl_0_48 bl_1_48 br_0_48 br_1_48 bl_0_49 bl_1_49 br_0_49 br_1_49
+ bl_0_50 bl_1_50 br_0_50 br_1_50 bl_0_51 bl_1_51 br_0_51 br_1_51
+ bl_0_52 bl_1_52 br_0_52 br_1_52 bl_0_53 bl_1_53 br_0_53 br_1_53
+ bl_0_54 bl_1_54 br_0_54 br_1_54 bl_0_55 bl_1_55 br_0_55 br_1_55
+ bl_0_56 bl_1_56 br_0_56 br_1_56 bl_0_57 bl_1_57 br_0_57 br_1_57
+ bl_0_58 bl_1_58 br_0_58 br_1_58 bl_0_59 bl_1_59 br_0_59 br_1_59
+ bl_0_60 bl_1_60 br_0_60 br_1_60 bl_0_61 bl_1_61 br_0_61 br_1_61
+ bl_0_62 bl_1_62 br_0_62 br_1_62 bl_0_63 bl_1_63 br_0_63 br_1_63
+ bl_0_64 bl_1_64 br_0_64 br_1_64 bl_0_65 bl_1_65 br_0_65 br_1_65
+ bl_0_66 bl_1_66 br_0_66 br_1_66 bl_0_67 bl_1_67 br_0_67 br_1_67
+ bl_0_68 bl_1_68 br_0_68 br_1_68 bl_0_69 bl_1_69 br_0_69 br_1_69
+ bl_0_70 bl_1_70 br_0_70 br_1_70 bl_0_71 bl_1_71 br_0_71 br_1_71
+ rbl_wl_1_0 rbl_wl_1_1 vdd gnd
+ freepdk45_sram_1w1r_32x72_dummy_array
.ENDS freepdk45_sram_1w1r_32x72_replica_bitcell_array

.SUBCKT freepdk45_sram_1w1r_32x72_dummy_array_0
+ bl_0_0 bl_1_0 br_0_0 br_1_0 bl_0_1 bl_1_1 br_0_1 br_1_1 bl_0_2 bl_1_2
+ br_0_2 br_1_2 bl_0_3 bl_1_3 br_0_3 br_1_3 bl_0_4 bl_1_4 br_0_4 br_1_4
+ bl_0_5 bl_1_5 br_0_5 br_1_5 bl_0_6 bl_1_6 br_0_6 br_1_6 bl_0_7 bl_1_7
+ br_0_7 br_1_7 bl_0_8 bl_1_8 br_0_8 br_1_8 bl_0_9 bl_1_9 br_0_9 br_1_9
+ bl_0_10 bl_1_10 br_0_10 br_1_10 bl_0_11 bl_1_11 br_0_11 br_1_11
+ bl_0_12 bl_1_12 br_0_12 br_1_12 bl_0_13 bl_1_13 br_0_13 br_1_13
+ bl_0_14 bl_1_14 br_0_14 br_1_14 bl_0_15 bl_1_15 br_0_15 br_1_15
+ bl_0_16 bl_1_16 br_0_16 br_1_16 bl_0_17 bl_1_17 br_0_17 br_1_17
+ bl_0_18 bl_1_18 br_0_18 br_1_18 bl_0_19 bl_1_19 br_0_19 br_1_19
+ bl_0_20 bl_1_20 br_0_20 br_1_20 bl_0_21 bl_1_21 br_0_21 br_1_21
+ bl_0_22 bl_1_22 br_0_22 br_1_22 bl_0_23 bl_1_23 br_0_23 br_1_23
+ bl_0_24 bl_1_24 br_0_24 br_1_24 bl_0_25 bl_1_25 br_0_25 br_1_25
+ bl_0_26 bl_1_26 br_0_26 br_1_26 bl_0_27 bl_1_27 br_0_27 br_1_27
+ bl_0_28 bl_1_28 br_0_28 br_1_28 bl_0_29 bl_1_29 br_0_29 br_1_29
+ bl_0_30 bl_1_30 br_0_30 br_1_30 bl_0_31 bl_1_31 br_0_31 br_1_31
+ bl_0_32 bl_1_32 br_0_32 br_1_32 bl_0_33 bl_1_33 br_0_33 br_1_33
+ bl_0_34 bl_1_34 br_0_34 br_1_34 bl_0_35 bl_1_35 br_0_35 br_1_35
+ bl_0_36 bl_1_36 br_0_36 br_1_36 bl_0_37 bl_1_37 br_0_37 br_1_37
+ bl_0_38 bl_1_38 br_0_38 br_1_38 bl_0_39 bl_1_39 br_0_39 br_1_39
+ bl_0_40 bl_1_40 br_0_40 br_1_40 bl_0_41 bl_1_41 br_0_41 br_1_41
+ bl_0_42 bl_1_42 br_0_42 br_1_42 bl_0_43 bl_1_43 br_0_43 br_1_43
+ bl_0_44 bl_1_44 br_0_44 br_1_44 bl_0_45 bl_1_45 br_0_45 br_1_45
+ bl_0_46 bl_1_46 br_0_46 br_1_46 bl_0_47 bl_1_47 br_0_47 br_1_47
+ bl_0_48 bl_1_48 br_0_48 br_1_48 bl_0_49 bl_1_49 br_0_49 br_1_49
+ bl_0_50 bl_1_50 br_0_50 br_1_50 bl_0_51 bl_1_51 br_0_51 br_1_51
+ bl_0_52 bl_1_52 br_0_52 br_1_52 bl_0_53 bl_1_53 br_0_53 br_1_53
+ bl_0_54 bl_1_54 br_0_54 br_1_54 bl_0_55 bl_1_55 br_0_55 br_1_55
+ bl_0_56 bl_1_56 br_0_56 br_1_56 bl_0_57 bl_1_57 br_0_57 br_1_57
+ bl_0_58 bl_1_58 br_0_58 br_1_58 bl_0_59 bl_1_59 br_0_59 br_1_59
+ bl_0_60 bl_1_60 br_0_60 br_1_60 bl_0_61 bl_1_61 br_0_61 br_1_61
+ bl_0_62 bl_1_62 br_0_62 br_1_62 bl_0_63 bl_1_63 br_0_63 br_1_63
+ bl_0_64 bl_1_64 br_0_64 br_1_64 bl_0_65 bl_1_65 br_0_65 br_1_65
+ bl_0_66 bl_1_66 br_0_66 br_1_66 bl_0_67 bl_1_67 br_0_67 br_1_67
+ bl_0_68 bl_1_68 br_0_68 br_1_68 bl_0_69 bl_1_69 br_0_69 br_1_69
+ bl_0_70 bl_1_70 br_0_70 br_1_70 bl_0_71 bl_1_71 br_0_71 br_1_71
+ bl_0_72 bl_1_72 br_0_72 br_1_72 bl_0_73 bl_1_73 br_0_73 br_1_73 wl_0_0
+ wl_1_0 vdd gnd
* INOUT : bl_0_0 
* INOUT : bl_1_0 
* INOUT : br_0_0 
* INOUT : br_1_0 
* INOUT : bl_0_1 
* INOUT : bl_1_1 
* INOUT : br_0_1 
* INOUT : br_1_1 
* INOUT : bl_0_2 
* INOUT : bl_1_2 
* INOUT : br_0_2 
* INOUT : br_1_2 
* INOUT : bl_0_3 
* INOUT : bl_1_3 
* INOUT : br_0_3 
* INOUT : br_1_3 
* INOUT : bl_0_4 
* INOUT : bl_1_4 
* INOUT : br_0_4 
* INOUT : br_1_4 
* INOUT : bl_0_5 
* INOUT : bl_1_5 
* INOUT : br_0_5 
* INOUT : br_1_5 
* INOUT : bl_0_6 
* INOUT : bl_1_6 
* INOUT : br_0_6 
* INOUT : br_1_6 
* INOUT : bl_0_7 
* INOUT : bl_1_7 
* INOUT : br_0_7 
* INOUT : br_1_7 
* INOUT : bl_0_8 
* INOUT : bl_1_8 
* INOUT : br_0_8 
* INOUT : br_1_8 
* INOUT : bl_0_9 
* INOUT : bl_1_9 
* INOUT : br_0_9 
* INOUT : br_1_9 
* INOUT : bl_0_10 
* INOUT : bl_1_10 
* INOUT : br_0_10 
* INOUT : br_1_10 
* INOUT : bl_0_11 
* INOUT : bl_1_11 
* INOUT : br_0_11 
* INOUT : br_1_11 
* INOUT : bl_0_12 
* INOUT : bl_1_12 
* INOUT : br_0_12 
* INOUT : br_1_12 
* INOUT : bl_0_13 
* INOUT : bl_1_13 
* INOUT : br_0_13 
* INOUT : br_1_13 
* INOUT : bl_0_14 
* INOUT : bl_1_14 
* INOUT : br_0_14 
* INOUT : br_1_14 
* INOUT : bl_0_15 
* INOUT : bl_1_15 
* INOUT : br_0_15 
* INOUT : br_1_15 
* INOUT : bl_0_16 
* INOUT : bl_1_16 
* INOUT : br_0_16 
* INOUT : br_1_16 
* INOUT : bl_0_17 
* INOUT : bl_1_17 
* INOUT : br_0_17 
* INOUT : br_1_17 
* INOUT : bl_0_18 
* INOUT : bl_1_18 
* INOUT : br_0_18 
* INOUT : br_1_18 
* INOUT : bl_0_19 
* INOUT : bl_1_19 
* INOUT : br_0_19 
* INOUT : br_1_19 
* INOUT : bl_0_20 
* INOUT : bl_1_20 
* INOUT : br_0_20 
* INOUT : br_1_20 
* INOUT : bl_0_21 
* INOUT : bl_1_21 
* INOUT : br_0_21 
* INOUT : br_1_21 
* INOUT : bl_0_22 
* INOUT : bl_1_22 
* INOUT : br_0_22 
* INOUT : br_1_22 
* INOUT : bl_0_23 
* INOUT : bl_1_23 
* INOUT : br_0_23 
* INOUT : br_1_23 
* INOUT : bl_0_24 
* INOUT : bl_1_24 
* INOUT : br_0_24 
* INOUT : br_1_24 
* INOUT : bl_0_25 
* INOUT : bl_1_25 
* INOUT : br_0_25 
* INOUT : br_1_25 
* INOUT : bl_0_26 
* INOUT : bl_1_26 
* INOUT : br_0_26 
* INOUT : br_1_26 
* INOUT : bl_0_27 
* INOUT : bl_1_27 
* INOUT : br_0_27 
* INOUT : br_1_27 
* INOUT : bl_0_28 
* INOUT : bl_1_28 
* INOUT : br_0_28 
* INOUT : br_1_28 
* INOUT : bl_0_29 
* INOUT : bl_1_29 
* INOUT : br_0_29 
* INOUT : br_1_29 
* INOUT : bl_0_30 
* INOUT : bl_1_30 
* INOUT : br_0_30 
* INOUT : br_1_30 
* INOUT : bl_0_31 
* INOUT : bl_1_31 
* INOUT : br_0_31 
* INOUT : br_1_31 
* INOUT : bl_0_32 
* INOUT : bl_1_32 
* INOUT : br_0_32 
* INOUT : br_1_32 
* INOUT : bl_0_33 
* INOUT : bl_1_33 
* INOUT : br_0_33 
* INOUT : br_1_33 
* INOUT : bl_0_34 
* INOUT : bl_1_34 
* INOUT : br_0_34 
* INOUT : br_1_34 
* INOUT : bl_0_35 
* INOUT : bl_1_35 
* INOUT : br_0_35 
* INOUT : br_1_35 
* INOUT : bl_0_36 
* INOUT : bl_1_36 
* INOUT : br_0_36 
* INOUT : br_1_36 
* INOUT : bl_0_37 
* INOUT : bl_1_37 
* INOUT : br_0_37 
* INOUT : br_1_37 
* INOUT : bl_0_38 
* INOUT : bl_1_38 
* INOUT : br_0_38 
* INOUT : br_1_38 
* INOUT : bl_0_39 
* INOUT : bl_1_39 
* INOUT : br_0_39 
* INOUT : br_1_39 
* INOUT : bl_0_40 
* INOUT : bl_1_40 
* INOUT : br_0_40 
* INOUT : br_1_40 
* INOUT : bl_0_41 
* INOUT : bl_1_41 
* INOUT : br_0_41 
* INOUT : br_1_41 
* INOUT : bl_0_42 
* INOUT : bl_1_42 
* INOUT : br_0_42 
* INOUT : br_1_42 
* INOUT : bl_0_43 
* INOUT : bl_1_43 
* INOUT : br_0_43 
* INOUT : br_1_43 
* INOUT : bl_0_44 
* INOUT : bl_1_44 
* INOUT : br_0_44 
* INOUT : br_1_44 
* INOUT : bl_0_45 
* INOUT : bl_1_45 
* INOUT : br_0_45 
* INOUT : br_1_45 
* INOUT : bl_0_46 
* INOUT : bl_1_46 
* INOUT : br_0_46 
* INOUT : br_1_46 
* INOUT : bl_0_47 
* INOUT : bl_1_47 
* INOUT : br_0_47 
* INOUT : br_1_47 
* INOUT : bl_0_48 
* INOUT : bl_1_48 
* INOUT : br_0_48 
* INOUT : br_1_48 
* INOUT : bl_0_49 
* INOUT : bl_1_49 
* INOUT : br_0_49 
* INOUT : br_1_49 
* INOUT : bl_0_50 
* INOUT : bl_1_50 
* INOUT : br_0_50 
* INOUT : br_1_50 
* INOUT : bl_0_51 
* INOUT : bl_1_51 
* INOUT : br_0_51 
* INOUT : br_1_51 
* INOUT : bl_0_52 
* INOUT : bl_1_52 
* INOUT : br_0_52 
* INOUT : br_1_52 
* INOUT : bl_0_53 
* INOUT : bl_1_53 
* INOUT : br_0_53 
* INOUT : br_1_53 
* INOUT : bl_0_54 
* INOUT : bl_1_54 
* INOUT : br_0_54 
* INOUT : br_1_54 
* INOUT : bl_0_55 
* INOUT : bl_1_55 
* INOUT : br_0_55 
* INOUT : br_1_55 
* INOUT : bl_0_56 
* INOUT : bl_1_56 
* INOUT : br_0_56 
* INOUT : br_1_56 
* INOUT : bl_0_57 
* INOUT : bl_1_57 
* INOUT : br_0_57 
* INOUT : br_1_57 
* INOUT : bl_0_58 
* INOUT : bl_1_58 
* INOUT : br_0_58 
* INOUT : br_1_58 
* INOUT : bl_0_59 
* INOUT : bl_1_59 
* INOUT : br_0_59 
* INOUT : br_1_59 
* INOUT : bl_0_60 
* INOUT : bl_1_60 
* INOUT : br_0_60 
* INOUT : br_1_60 
* INOUT : bl_0_61 
* INOUT : bl_1_61 
* INOUT : br_0_61 
* INOUT : br_1_61 
* INOUT : bl_0_62 
* INOUT : bl_1_62 
* INOUT : br_0_62 
* INOUT : br_1_62 
* INOUT : bl_0_63 
* INOUT : bl_1_63 
* INOUT : br_0_63 
* INOUT : br_1_63 
* INOUT : bl_0_64 
* INOUT : bl_1_64 
* INOUT : br_0_64 
* INOUT : br_1_64 
* INOUT : bl_0_65 
* INOUT : bl_1_65 
* INOUT : br_0_65 
* INOUT : br_1_65 
* INOUT : bl_0_66 
* INOUT : bl_1_66 
* INOUT : br_0_66 
* INOUT : br_1_66 
* INOUT : bl_0_67 
* INOUT : bl_1_67 
* INOUT : br_0_67 
* INOUT : br_1_67 
* INOUT : bl_0_68 
* INOUT : bl_1_68 
* INOUT : br_0_68 
* INOUT : br_1_68 
* INOUT : bl_0_69 
* INOUT : bl_1_69 
* INOUT : br_0_69 
* INOUT : br_1_69 
* INOUT : bl_0_70 
* INOUT : bl_1_70 
* INOUT : br_0_70 
* INOUT : br_1_70 
* INOUT : bl_0_71 
* INOUT : bl_1_71 
* INOUT : br_0_71 
* INOUT : br_1_71 
* INOUT : bl_0_72 
* INOUT : bl_1_72 
* INOUT : br_0_72 
* INOUT : br_1_72 
* INOUT : bl_0_73 
* INOUT : bl_1_73 
* INOUT : br_0_73 
* INOUT : br_1_73 
* INPUT : wl_0_0 
* INPUT : wl_1_0 
* POWER : vdd 
* GROUND: gnd 
Xbit_r0_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c2
+ bl_0_2 br_0_2 bl_1_2 br_1_2 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c3
+ bl_0_3 br_0_3 bl_1_3 br_1_3 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c4
+ bl_0_4 br_0_4 bl_1_4 br_1_4 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c5
+ bl_0_5 br_0_5 bl_1_5 br_1_5 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c6
+ bl_0_6 br_0_6 bl_1_6 br_1_6 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c7
+ bl_0_7 br_0_7 bl_1_7 br_1_7 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c8
+ bl_0_8 br_0_8 bl_1_8 br_1_8 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c9
+ bl_0_9 br_0_9 bl_1_9 br_1_9 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c10
+ bl_0_10 br_0_10 bl_1_10 br_1_10 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c11
+ bl_0_11 br_0_11 bl_1_11 br_1_11 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c12
+ bl_0_12 br_0_12 bl_1_12 br_1_12 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c13
+ bl_0_13 br_0_13 bl_1_13 br_1_13 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c14
+ bl_0_14 br_0_14 bl_1_14 br_1_14 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c15
+ bl_0_15 br_0_15 bl_1_15 br_1_15 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c16
+ bl_0_16 br_0_16 bl_1_16 br_1_16 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c17
+ bl_0_17 br_0_17 bl_1_17 br_1_17 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c18
+ bl_0_18 br_0_18 bl_1_18 br_1_18 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c19
+ bl_0_19 br_0_19 bl_1_19 br_1_19 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c20
+ bl_0_20 br_0_20 bl_1_20 br_1_20 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c21
+ bl_0_21 br_0_21 bl_1_21 br_1_21 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c22
+ bl_0_22 br_0_22 bl_1_22 br_1_22 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c23
+ bl_0_23 br_0_23 bl_1_23 br_1_23 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c24
+ bl_0_24 br_0_24 bl_1_24 br_1_24 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c25
+ bl_0_25 br_0_25 bl_1_25 br_1_25 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c26
+ bl_0_26 br_0_26 bl_1_26 br_1_26 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c27
+ bl_0_27 br_0_27 bl_1_27 br_1_27 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c28
+ bl_0_28 br_0_28 bl_1_28 br_1_28 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c29
+ bl_0_29 br_0_29 bl_1_29 br_1_29 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c30
+ bl_0_30 br_0_30 bl_1_30 br_1_30 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c31
+ bl_0_31 br_0_31 bl_1_31 br_1_31 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c32
+ bl_0_32 br_0_32 bl_1_32 br_1_32 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c33
+ bl_0_33 br_0_33 bl_1_33 br_1_33 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c34
+ bl_0_34 br_0_34 bl_1_34 br_1_34 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c35
+ bl_0_35 br_0_35 bl_1_35 br_1_35 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c36
+ bl_0_36 br_0_36 bl_1_36 br_1_36 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c37
+ bl_0_37 br_0_37 bl_1_37 br_1_37 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c38
+ bl_0_38 br_0_38 bl_1_38 br_1_38 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c39
+ bl_0_39 br_0_39 bl_1_39 br_1_39 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c40
+ bl_0_40 br_0_40 bl_1_40 br_1_40 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c41
+ bl_0_41 br_0_41 bl_1_41 br_1_41 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c42
+ bl_0_42 br_0_42 bl_1_42 br_1_42 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c43
+ bl_0_43 br_0_43 bl_1_43 br_1_43 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c44
+ bl_0_44 br_0_44 bl_1_44 br_1_44 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c45
+ bl_0_45 br_0_45 bl_1_45 br_1_45 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c46
+ bl_0_46 br_0_46 bl_1_46 br_1_46 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c47
+ bl_0_47 br_0_47 bl_1_47 br_1_47 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c48
+ bl_0_48 br_0_48 bl_1_48 br_1_48 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c49
+ bl_0_49 br_0_49 bl_1_49 br_1_49 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c50
+ bl_0_50 br_0_50 bl_1_50 br_1_50 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c51
+ bl_0_51 br_0_51 bl_1_51 br_1_51 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c52
+ bl_0_52 br_0_52 bl_1_52 br_1_52 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c53
+ bl_0_53 br_0_53 bl_1_53 br_1_53 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c54
+ bl_0_54 br_0_54 bl_1_54 br_1_54 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c55
+ bl_0_55 br_0_55 bl_1_55 br_1_55 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c56
+ bl_0_56 br_0_56 bl_1_56 br_1_56 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c57
+ bl_0_57 br_0_57 bl_1_57 br_1_57 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c58
+ bl_0_58 br_0_58 bl_1_58 br_1_58 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c59
+ bl_0_59 br_0_59 bl_1_59 br_1_59 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c60
+ bl_0_60 br_0_60 bl_1_60 br_1_60 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c61
+ bl_0_61 br_0_61 bl_1_61 br_1_61 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c62
+ bl_0_62 br_0_62 bl_1_62 br_1_62 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c63
+ bl_0_63 br_0_63 bl_1_63 br_1_63 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c64
+ bl_0_64 br_0_64 bl_1_64 br_1_64 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c65
+ bl_0_65 br_0_65 bl_1_65 br_1_65 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c66
+ bl_0_66 br_0_66 bl_1_66 br_1_66 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c67
+ bl_0_67 br_0_67 bl_1_67 br_1_67 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c68
+ bl_0_68 br_0_68 bl_1_68 br_1_68 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c69
+ bl_0_69 br_0_69 bl_1_69 br_1_69 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c70
+ bl_0_70 br_0_70 bl_1_70 br_1_70 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c71
+ bl_0_71 br_0_71 bl_1_71 br_1_71 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c72
+ bl_0_72 br_0_72 bl_1_72 br_1_72 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
Xbit_r0_c73
+ bl_0_73 br_0_73 bl_1_73 br_1_73 wl_0_0 wl_1_0 vdd gnd
+ dummy_cell_2rw
.ENDS freepdk45_sram_1w1r_32x72_dummy_array_0

.SUBCKT freepdk45_sram_1w1r_32x72_capped_replica_bitcell_array
+ rbl_bl_0_0 rbl_bl_1_0 rbl_br_0_0 rbl_br_1_0 bl_0_0 bl_1_0 br_0_0
+ br_1_0 bl_0_1 bl_1_1 br_0_1 br_1_1 bl_0_2 bl_1_2 br_0_2 br_1_2 bl_0_3
+ bl_1_3 br_0_3 br_1_3 bl_0_4 bl_1_4 br_0_4 br_1_4 bl_0_5 bl_1_5 br_0_5
+ br_1_5 bl_0_6 bl_1_6 br_0_6 br_1_6 bl_0_7 bl_1_7 br_0_7 br_1_7 bl_0_8
+ bl_1_8 br_0_8 br_1_8 bl_0_9 bl_1_9 br_0_9 br_1_9 bl_0_10 bl_1_10
+ br_0_10 br_1_10 bl_0_11 bl_1_11 br_0_11 br_1_11 bl_0_12 bl_1_12
+ br_0_12 br_1_12 bl_0_13 bl_1_13 br_0_13 br_1_13 bl_0_14 bl_1_14
+ br_0_14 br_1_14 bl_0_15 bl_1_15 br_0_15 br_1_15 bl_0_16 bl_1_16
+ br_0_16 br_1_16 bl_0_17 bl_1_17 br_0_17 br_1_17 bl_0_18 bl_1_18
+ br_0_18 br_1_18 bl_0_19 bl_1_19 br_0_19 br_1_19 bl_0_20 bl_1_20
+ br_0_20 br_1_20 bl_0_21 bl_1_21 br_0_21 br_1_21 bl_0_22 bl_1_22
+ br_0_22 br_1_22 bl_0_23 bl_1_23 br_0_23 br_1_23 bl_0_24 bl_1_24
+ br_0_24 br_1_24 bl_0_25 bl_1_25 br_0_25 br_1_25 bl_0_26 bl_1_26
+ br_0_26 br_1_26 bl_0_27 bl_1_27 br_0_27 br_1_27 bl_0_28 bl_1_28
+ br_0_28 br_1_28 bl_0_29 bl_1_29 br_0_29 br_1_29 bl_0_30 bl_1_30
+ br_0_30 br_1_30 bl_0_31 bl_1_31 br_0_31 br_1_31 bl_0_32 bl_1_32
+ br_0_32 br_1_32 bl_0_33 bl_1_33 br_0_33 br_1_33 bl_0_34 bl_1_34
+ br_0_34 br_1_34 bl_0_35 bl_1_35 br_0_35 br_1_35 bl_0_36 bl_1_36
+ br_0_36 br_1_36 bl_0_37 bl_1_37 br_0_37 br_1_37 bl_0_38 bl_1_38
+ br_0_38 br_1_38 bl_0_39 bl_1_39 br_0_39 br_1_39 bl_0_40 bl_1_40
+ br_0_40 br_1_40 bl_0_41 bl_1_41 br_0_41 br_1_41 bl_0_42 bl_1_42
+ br_0_42 br_1_42 bl_0_43 bl_1_43 br_0_43 br_1_43 bl_0_44 bl_1_44
+ br_0_44 br_1_44 bl_0_45 bl_1_45 br_0_45 br_1_45 bl_0_46 bl_1_46
+ br_0_46 br_1_46 bl_0_47 bl_1_47 br_0_47 br_1_47 bl_0_48 bl_1_48
+ br_0_48 br_1_48 bl_0_49 bl_1_49 br_0_49 br_1_49 bl_0_50 bl_1_50
+ br_0_50 br_1_50 bl_0_51 bl_1_51 br_0_51 br_1_51 bl_0_52 bl_1_52
+ br_0_52 br_1_52 bl_0_53 bl_1_53 br_0_53 br_1_53 bl_0_54 bl_1_54
+ br_0_54 br_1_54 bl_0_55 bl_1_55 br_0_55 br_1_55 bl_0_56 bl_1_56
+ br_0_56 br_1_56 bl_0_57 bl_1_57 br_0_57 br_1_57 bl_0_58 bl_1_58
+ br_0_58 br_1_58 bl_0_59 bl_1_59 br_0_59 br_1_59 bl_0_60 bl_1_60
+ br_0_60 br_1_60 bl_0_61 bl_1_61 br_0_61 br_1_61 bl_0_62 bl_1_62
+ br_0_62 br_1_62 bl_0_63 bl_1_63 br_0_63 br_1_63 bl_0_64 bl_1_64
+ br_0_64 br_1_64 bl_0_65 bl_1_65 br_0_65 br_1_65 bl_0_66 bl_1_66
+ br_0_66 br_1_66 bl_0_67 bl_1_67 br_0_67 br_1_67 bl_0_68 bl_1_68
+ br_0_68 br_1_68 bl_0_69 bl_1_69 br_0_69 br_1_69 bl_0_70 bl_1_70
+ br_0_70 br_1_70 bl_0_71 bl_1_71 br_0_71 br_1_71 rbl_bl_0_1 rbl_bl_1_1
+ rbl_br_0_1 rbl_br_1_1 rbl_wl_0_0 wl_0_0 wl_1_0 wl_0_1 wl_1_1 wl_0_2
+ wl_1_2 wl_0_3 wl_1_3 wl_0_4 wl_1_4 wl_0_5 wl_1_5 wl_0_6 wl_1_6 wl_0_7
+ wl_1_7 wl_0_8 wl_1_8 wl_0_9 wl_1_9 wl_0_10 wl_1_10 wl_0_11 wl_1_11
+ wl_0_12 wl_1_12 wl_0_13 wl_1_13 wl_0_14 wl_1_14 wl_0_15 wl_1_15
+ wl_0_16 wl_1_16 wl_0_17 wl_1_17 wl_0_18 wl_1_18 wl_0_19 wl_1_19
+ wl_0_20 wl_1_20 wl_0_21 wl_1_21 wl_0_22 wl_1_22 wl_0_23 wl_1_23
+ wl_0_24 wl_1_24 wl_0_25 wl_1_25 wl_0_26 wl_1_26 wl_0_27 wl_1_27
+ wl_0_28 wl_1_28 wl_0_29 wl_1_29 wl_0_30 wl_1_30 wl_0_31 wl_1_31
+ rbl_wl_1_1 vdd gnd
* INOUT : rbl_bl_0_0 
* INOUT : rbl_bl_1_0 
* INOUT : rbl_br_0_0 
* INOUT : rbl_br_1_0 
* INOUT : bl_0_0 
* INOUT : bl_1_0 
* INOUT : br_0_0 
* INOUT : br_1_0 
* INOUT : bl_0_1 
* INOUT : bl_1_1 
* INOUT : br_0_1 
* INOUT : br_1_1 
* INOUT : bl_0_2 
* INOUT : bl_1_2 
* INOUT : br_0_2 
* INOUT : br_1_2 
* INOUT : bl_0_3 
* INOUT : bl_1_3 
* INOUT : br_0_3 
* INOUT : br_1_3 
* INOUT : bl_0_4 
* INOUT : bl_1_4 
* INOUT : br_0_4 
* INOUT : br_1_4 
* INOUT : bl_0_5 
* INOUT : bl_1_5 
* INOUT : br_0_5 
* INOUT : br_1_5 
* INOUT : bl_0_6 
* INOUT : bl_1_6 
* INOUT : br_0_6 
* INOUT : br_1_6 
* INOUT : bl_0_7 
* INOUT : bl_1_7 
* INOUT : br_0_7 
* INOUT : br_1_7 
* INOUT : bl_0_8 
* INOUT : bl_1_8 
* INOUT : br_0_8 
* INOUT : br_1_8 
* INOUT : bl_0_9 
* INOUT : bl_1_9 
* INOUT : br_0_9 
* INOUT : br_1_9 
* INOUT : bl_0_10 
* INOUT : bl_1_10 
* INOUT : br_0_10 
* INOUT : br_1_10 
* INOUT : bl_0_11 
* INOUT : bl_1_11 
* INOUT : br_0_11 
* INOUT : br_1_11 
* INOUT : bl_0_12 
* INOUT : bl_1_12 
* INOUT : br_0_12 
* INOUT : br_1_12 
* INOUT : bl_0_13 
* INOUT : bl_1_13 
* INOUT : br_0_13 
* INOUT : br_1_13 
* INOUT : bl_0_14 
* INOUT : bl_1_14 
* INOUT : br_0_14 
* INOUT : br_1_14 
* INOUT : bl_0_15 
* INOUT : bl_1_15 
* INOUT : br_0_15 
* INOUT : br_1_15 
* INOUT : bl_0_16 
* INOUT : bl_1_16 
* INOUT : br_0_16 
* INOUT : br_1_16 
* INOUT : bl_0_17 
* INOUT : bl_1_17 
* INOUT : br_0_17 
* INOUT : br_1_17 
* INOUT : bl_0_18 
* INOUT : bl_1_18 
* INOUT : br_0_18 
* INOUT : br_1_18 
* INOUT : bl_0_19 
* INOUT : bl_1_19 
* INOUT : br_0_19 
* INOUT : br_1_19 
* INOUT : bl_0_20 
* INOUT : bl_1_20 
* INOUT : br_0_20 
* INOUT : br_1_20 
* INOUT : bl_0_21 
* INOUT : bl_1_21 
* INOUT : br_0_21 
* INOUT : br_1_21 
* INOUT : bl_0_22 
* INOUT : bl_1_22 
* INOUT : br_0_22 
* INOUT : br_1_22 
* INOUT : bl_0_23 
* INOUT : bl_1_23 
* INOUT : br_0_23 
* INOUT : br_1_23 
* INOUT : bl_0_24 
* INOUT : bl_1_24 
* INOUT : br_0_24 
* INOUT : br_1_24 
* INOUT : bl_0_25 
* INOUT : bl_1_25 
* INOUT : br_0_25 
* INOUT : br_1_25 
* INOUT : bl_0_26 
* INOUT : bl_1_26 
* INOUT : br_0_26 
* INOUT : br_1_26 
* INOUT : bl_0_27 
* INOUT : bl_1_27 
* INOUT : br_0_27 
* INOUT : br_1_27 
* INOUT : bl_0_28 
* INOUT : bl_1_28 
* INOUT : br_0_28 
* INOUT : br_1_28 
* INOUT : bl_0_29 
* INOUT : bl_1_29 
* INOUT : br_0_29 
* INOUT : br_1_29 
* INOUT : bl_0_30 
* INOUT : bl_1_30 
* INOUT : br_0_30 
* INOUT : br_1_30 
* INOUT : bl_0_31 
* INOUT : bl_1_31 
* INOUT : br_0_31 
* INOUT : br_1_31 
* INOUT : bl_0_32 
* INOUT : bl_1_32 
* INOUT : br_0_32 
* INOUT : br_1_32 
* INOUT : bl_0_33 
* INOUT : bl_1_33 
* INOUT : br_0_33 
* INOUT : br_1_33 
* INOUT : bl_0_34 
* INOUT : bl_1_34 
* INOUT : br_0_34 
* INOUT : br_1_34 
* INOUT : bl_0_35 
* INOUT : bl_1_35 
* INOUT : br_0_35 
* INOUT : br_1_35 
* INOUT : bl_0_36 
* INOUT : bl_1_36 
* INOUT : br_0_36 
* INOUT : br_1_36 
* INOUT : bl_0_37 
* INOUT : bl_1_37 
* INOUT : br_0_37 
* INOUT : br_1_37 
* INOUT : bl_0_38 
* INOUT : bl_1_38 
* INOUT : br_0_38 
* INOUT : br_1_38 
* INOUT : bl_0_39 
* INOUT : bl_1_39 
* INOUT : br_0_39 
* INOUT : br_1_39 
* INOUT : bl_0_40 
* INOUT : bl_1_40 
* INOUT : br_0_40 
* INOUT : br_1_40 
* INOUT : bl_0_41 
* INOUT : bl_1_41 
* INOUT : br_0_41 
* INOUT : br_1_41 
* INOUT : bl_0_42 
* INOUT : bl_1_42 
* INOUT : br_0_42 
* INOUT : br_1_42 
* INOUT : bl_0_43 
* INOUT : bl_1_43 
* INOUT : br_0_43 
* INOUT : br_1_43 
* INOUT : bl_0_44 
* INOUT : bl_1_44 
* INOUT : br_0_44 
* INOUT : br_1_44 
* INOUT : bl_0_45 
* INOUT : bl_1_45 
* INOUT : br_0_45 
* INOUT : br_1_45 
* INOUT : bl_0_46 
* INOUT : bl_1_46 
* INOUT : br_0_46 
* INOUT : br_1_46 
* INOUT : bl_0_47 
* INOUT : bl_1_47 
* INOUT : br_0_47 
* INOUT : br_1_47 
* INOUT : bl_0_48 
* INOUT : bl_1_48 
* INOUT : br_0_48 
* INOUT : br_1_48 
* INOUT : bl_0_49 
* INOUT : bl_1_49 
* INOUT : br_0_49 
* INOUT : br_1_49 
* INOUT : bl_0_50 
* INOUT : bl_1_50 
* INOUT : br_0_50 
* INOUT : br_1_50 
* INOUT : bl_0_51 
* INOUT : bl_1_51 
* INOUT : br_0_51 
* INOUT : br_1_51 
* INOUT : bl_0_52 
* INOUT : bl_1_52 
* INOUT : br_0_52 
* INOUT : br_1_52 
* INOUT : bl_0_53 
* INOUT : bl_1_53 
* INOUT : br_0_53 
* INOUT : br_1_53 
* INOUT : bl_0_54 
* INOUT : bl_1_54 
* INOUT : br_0_54 
* INOUT : br_1_54 
* INOUT : bl_0_55 
* INOUT : bl_1_55 
* INOUT : br_0_55 
* INOUT : br_1_55 
* INOUT : bl_0_56 
* INOUT : bl_1_56 
* INOUT : br_0_56 
* INOUT : br_1_56 
* INOUT : bl_0_57 
* INOUT : bl_1_57 
* INOUT : br_0_57 
* INOUT : br_1_57 
* INOUT : bl_0_58 
* INOUT : bl_1_58 
* INOUT : br_0_58 
* INOUT : br_1_58 
* INOUT : bl_0_59 
* INOUT : bl_1_59 
* INOUT : br_0_59 
* INOUT : br_1_59 
* INOUT : bl_0_60 
* INOUT : bl_1_60 
* INOUT : br_0_60 
* INOUT : br_1_60 
* INOUT : bl_0_61 
* INOUT : bl_1_61 
* INOUT : br_0_61 
* INOUT : br_1_61 
* INOUT : bl_0_62 
* INOUT : bl_1_62 
* INOUT : br_0_62 
* INOUT : br_1_62 
* INOUT : bl_0_63 
* INOUT : bl_1_63 
* INOUT : br_0_63 
* INOUT : br_1_63 
* INOUT : bl_0_64 
* INOUT : bl_1_64 
* INOUT : br_0_64 
* INOUT : br_1_64 
* INOUT : bl_0_65 
* INOUT : bl_1_65 
* INOUT : br_0_65 
* INOUT : br_1_65 
* INOUT : bl_0_66 
* INOUT : bl_1_66 
* INOUT : br_0_66 
* INOUT : br_1_66 
* INOUT : bl_0_67 
* INOUT : bl_1_67 
* INOUT : br_0_67 
* INOUT : br_1_67 
* INOUT : bl_0_68 
* INOUT : bl_1_68 
* INOUT : br_0_68 
* INOUT : br_1_68 
* INOUT : bl_0_69 
* INOUT : bl_1_69 
* INOUT : br_0_69 
* INOUT : br_1_69 
* INOUT : bl_0_70 
* INOUT : bl_1_70 
* INOUT : br_0_70 
* INOUT : br_1_70 
* INOUT : bl_0_71 
* INOUT : bl_1_71 
* INOUT : br_0_71 
* INOUT : br_1_71 
* INOUT : rbl_bl_0_1 
* INOUT : rbl_bl_1_1 
* INOUT : rbl_br_0_1 
* INOUT : rbl_br_1_1 
* INPUT : rbl_wl_0_0 
* INPUT : wl_0_0 
* INPUT : wl_1_0 
* INPUT : wl_0_1 
* INPUT : wl_1_1 
* INPUT : wl_0_2 
* INPUT : wl_1_2 
* INPUT : wl_0_3 
* INPUT : wl_1_3 
* INPUT : wl_0_4 
* INPUT : wl_1_4 
* INPUT : wl_0_5 
* INPUT : wl_1_5 
* INPUT : wl_0_6 
* INPUT : wl_1_6 
* INPUT : wl_0_7 
* INPUT : wl_1_7 
* INPUT : wl_0_8 
* INPUT : wl_1_8 
* INPUT : wl_0_9 
* INPUT : wl_1_9 
* INPUT : wl_0_10 
* INPUT : wl_1_10 
* INPUT : wl_0_11 
* INPUT : wl_1_11 
* INPUT : wl_0_12 
* INPUT : wl_1_12 
* INPUT : wl_0_13 
* INPUT : wl_1_13 
* INPUT : wl_0_14 
* INPUT : wl_1_14 
* INPUT : wl_0_15 
* INPUT : wl_1_15 
* INPUT : wl_0_16 
* INPUT : wl_1_16 
* INPUT : wl_0_17 
* INPUT : wl_1_17 
* INPUT : wl_0_18 
* INPUT : wl_1_18 
* INPUT : wl_0_19 
* INPUT : wl_1_19 
* INPUT : wl_0_20 
* INPUT : wl_1_20 
* INPUT : wl_0_21 
* INPUT : wl_1_21 
* INPUT : wl_0_22 
* INPUT : wl_1_22 
* INPUT : wl_0_23 
* INPUT : wl_1_23 
* INPUT : wl_0_24 
* INPUT : wl_1_24 
* INPUT : wl_0_25 
* INPUT : wl_1_25 
* INPUT : wl_0_26 
* INPUT : wl_1_26 
* INPUT : wl_0_27 
* INPUT : wl_1_27 
* INPUT : wl_0_28 
* INPUT : wl_1_28 
* INPUT : wl_0_29 
* INPUT : wl_1_29 
* INPUT : wl_0_30 
* INPUT : wl_1_30 
* INPUT : wl_0_31 
* INPUT : wl_1_31 
* INPUT : rbl_wl_1_1 
* POWER : vdd 
* GROUND: gnd 
* rbl: [1, 1] left_rbl: [0] right_rbl: [1]
Xreplica_bitcell_array
+ rbl_bl_0_0 rbl_bl_1_0 rbl_br_0_0 rbl_br_1_0 bl_0_0 bl_1_0 br_0_0
+ br_1_0 bl_0_1 bl_1_1 br_0_1 br_1_1 bl_0_2 bl_1_2 br_0_2 br_1_2 bl_0_3
+ bl_1_3 br_0_3 br_1_3 bl_0_4 bl_1_4 br_0_4 br_1_4 bl_0_5 bl_1_5 br_0_5
+ br_1_5 bl_0_6 bl_1_6 br_0_6 br_1_6 bl_0_7 bl_1_7 br_0_7 br_1_7 bl_0_8
+ bl_1_8 br_0_8 br_1_8 bl_0_9 bl_1_9 br_0_9 br_1_9 bl_0_10 bl_1_10
+ br_0_10 br_1_10 bl_0_11 bl_1_11 br_0_11 br_1_11 bl_0_12 bl_1_12
+ br_0_12 br_1_12 bl_0_13 bl_1_13 br_0_13 br_1_13 bl_0_14 bl_1_14
+ br_0_14 br_1_14 bl_0_15 bl_1_15 br_0_15 br_1_15 bl_0_16 bl_1_16
+ br_0_16 br_1_16 bl_0_17 bl_1_17 br_0_17 br_1_17 bl_0_18 bl_1_18
+ br_0_18 br_1_18 bl_0_19 bl_1_19 br_0_19 br_1_19 bl_0_20 bl_1_20
+ br_0_20 br_1_20 bl_0_21 bl_1_21 br_0_21 br_1_21 bl_0_22 bl_1_22
+ br_0_22 br_1_22 bl_0_23 bl_1_23 br_0_23 br_1_23 bl_0_24 bl_1_24
+ br_0_24 br_1_24 bl_0_25 bl_1_25 br_0_25 br_1_25 bl_0_26 bl_1_26
+ br_0_26 br_1_26 bl_0_27 bl_1_27 br_0_27 br_1_27 bl_0_28 bl_1_28
+ br_0_28 br_1_28 bl_0_29 bl_1_29 br_0_29 br_1_29 bl_0_30 bl_1_30
+ br_0_30 br_1_30 bl_0_31 bl_1_31 br_0_31 br_1_31 bl_0_32 bl_1_32
+ br_0_32 br_1_32 bl_0_33 bl_1_33 br_0_33 br_1_33 bl_0_34 bl_1_34
+ br_0_34 br_1_34 bl_0_35 bl_1_35 br_0_35 br_1_35 bl_0_36 bl_1_36
+ br_0_36 br_1_36 bl_0_37 bl_1_37 br_0_37 br_1_37 bl_0_38 bl_1_38
+ br_0_38 br_1_38 bl_0_39 bl_1_39 br_0_39 br_1_39 bl_0_40 bl_1_40
+ br_0_40 br_1_40 bl_0_41 bl_1_41 br_0_41 br_1_41 bl_0_42 bl_1_42
+ br_0_42 br_1_42 bl_0_43 bl_1_43 br_0_43 br_1_43 bl_0_44 bl_1_44
+ br_0_44 br_1_44 bl_0_45 bl_1_45 br_0_45 br_1_45 bl_0_46 bl_1_46
+ br_0_46 br_1_46 bl_0_47 bl_1_47 br_0_47 br_1_47 bl_0_48 bl_1_48
+ br_0_48 br_1_48 bl_0_49 bl_1_49 br_0_49 br_1_49 bl_0_50 bl_1_50
+ br_0_50 br_1_50 bl_0_51 bl_1_51 br_0_51 br_1_51 bl_0_52 bl_1_52
+ br_0_52 br_1_52 bl_0_53 bl_1_53 br_0_53 br_1_53 bl_0_54 bl_1_54
+ br_0_54 br_1_54 bl_0_55 bl_1_55 br_0_55 br_1_55 bl_0_56 bl_1_56
+ br_0_56 br_1_56 bl_0_57 bl_1_57 br_0_57 br_1_57 bl_0_58 bl_1_58
+ br_0_58 br_1_58 bl_0_59 bl_1_59 br_0_59 br_1_59 bl_0_60 bl_1_60
+ br_0_60 br_1_60 bl_0_61 bl_1_61 br_0_61 br_1_61 bl_0_62 bl_1_62
+ br_0_62 br_1_62 bl_0_63 bl_1_63 br_0_63 br_1_63 bl_0_64 bl_1_64
+ br_0_64 br_1_64 bl_0_65 bl_1_65 br_0_65 br_1_65 bl_0_66 bl_1_66
+ br_0_66 br_1_66 bl_0_67 bl_1_67 br_0_67 br_1_67 bl_0_68 bl_1_68
+ br_0_68 br_1_68 bl_0_69 bl_1_69 br_0_69 br_1_69 bl_0_70 bl_1_70
+ br_0_70 br_1_70 bl_0_71 bl_1_71 br_0_71 br_1_71 rbl_bl_0_1 rbl_bl_1_1
+ rbl_br_0_1 rbl_br_1_1 rbl_wl_0_0 gnd wl_0_0 wl_1_0 wl_0_1 wl_1_1
+ wl_0_2 wl_1_2 wl_0_3 wl_1_3 wl_0_4 wl_1_4 wl_0_5 wl_1_5 wl_0_6 wl_1_6
+ wl_0_7 wl_1_7 wl_0_8 wl_1_8 wl_0_9 wl_1_9 wl_0_10 wl_1_10 wl_0_11
+ wl_1_11 wl_0_12 wl_1_12 wl_0_13 wl_1_13 wl_0_14 wl_1_14 wl_0_15
+ wl_1_15 wl_0_16 wl_1_16 wl_0_17 wl_1_17 wl_0_18 wl_1_18 wl_0_19
+ wl_1_19 wl_0_20 wl_1_20 wl_0_21 wl_1_21 wl_0_22 wl_1_22 wl_0_23
+ wl_1_23 wl_0_24 wl_1_24 wl_0_25 wl_1_25 wl_0_26 wl_1_26 wl_0_27
+ wl_1_27 wl_0_28 wl_1_28 wl_0_29 wl_1_29 wl_0_30 wl_1_30 wl_0_31
+ wl_1_31 gnd rbl_wl_1_1 vdd gnd
+ freepdk45_sram_1w1r_32x72_replica_bitcell_array
Xdummy_row_bot
+ rbl_bl_0_0 rbl_bl_1_0 rbl_br_0_0 rbl_br_1_0 bl_0_0 bl_1_0 br_0_0
+ br_1_0 bl_0_1 bl_1_1 br_0_1 br_1_1 bl_0_2 bl_1_2 br_0_2 br_1_2 bl_0_3
+ bl_1_3 br_0_3 br_1_3 bl_0_4 bl_1_4 br_0_4 br_1_4 bl_0_5 bl_1_5 br_0_5
+ br_1_5 bl_0_6 bl_1_6 br_0_6 br_1_6 bl_0_7 bl_1_7 br_0_7 br_1_7 bl_0_8
+ bl_1_8 br_0_8 br_1_8 bl_0_9 bl_1_9 br_0_9 br_1_9 bl_0_10 bl_1_10
+ br_0_10 br_1_10 bl_0_11 bl_1_11 br_0_11 br_1_11 bl_0_12 bl_1_12
+ br_0_12 br_1_12 bl_0_13 bl_1_13 br_0_13 br_1_13 bl_0_14 bl_1_14
+ br_0_14 br_1_14 bl_0_15 bl_1_15 br_0_15 br_1_15 bl_0_16 bl_1_16
+ br_0_16 br_1_16 bl_0_17 bl_1_17 br_0_17 br_1_17 bl_0_18 bl_1_18
+ br_0_18 br_1_18 bl_0_19 bl_1_19 br_0_19 br_1_19 bl_0_20 bl_1_20
+ br_0_20 br_1_20 bl_0_21 bl_1_21 br_0_21 br_1_21 bl_0_22 bl_1_22
+ br_0_22 br_1_22 bl_0_23 bl_1_23 br_0_23 br_1_23 bl_0_24 bl_1_24
+ br_0_24 br_1_24 bl_0_25 bl_1_25 br_0_25 br_1_25 bl_0_26 bl_1_26
+ br_0_26 br_1_26 bl_0_27 bl_1_27 br_0_27 br_1_27 bl_0_28 bl_1_28
+ br_0_28 br_1_28 bl_0_29 bl_1_29 br_0_29 br_1_29 bl_0_30 bl_1_30
+ br_0_30 br_1_30 bl_0_31 bl_1_31 br_0_31 br_1_31 bl_0_32 bl_1_32
+ br_0_32 br_1_32 bl_0_33 bl_1_33 br_0_33 br_1_33 bl_0_34 bl_1_34
+ br_0_34 br_1_34 bl_0_35 bl_1_35 br_0_35 br_1_35 bl_0_36 bl_1_36
+ br_0_36 br_1_36 bl_0_37 bl_1_37 br_0_37 br_1_37 bl_0_38 bl_1_38
+ br_0_38 br_1_38 bl_0_39 bl_1_39 br_0_39 br_1_39 bl_0_40 bl_1_40
+ br_0_40 br_1_40 bl_0_41 bl_1_41 br_0_41 br_1_41 bl_0_42 bl_1_42
+ br_0_42 br_1_42 bl_0_43 bl_1_43 br_0_43 br_1_43 bl_0_44 bl_1_44
+ br_0_44 br_1_44 bl_0_45 bl_1_45 br_0_45 br_1_45 bl_0_46 bl_1_46
+ br_0_46 br_1_46 bl_0_47 bl_1_47 br_0_47 br_1_47 bl_0_48 bl_1_48
+ br_0_48 br_1_48 bl_0_49 bl_1_49 br_0_49 br_1_49 bl_0_50 bl_1_50
+ br_0_50 br_1_50 bl_0_51 bl_1_51 br_0_51 br_1_51 bl_0_52 bl_1_52
+ br_0_52 br_1_52 bl_0_53 bl_1_53 br_0_53 br_1_53 bl_0_54 bl_1_54
+ br_0_54 br_1_54 bl_0_55 bl_1_55 br_0_55 br_1_55 bl_0_56 bl_1_56
+ br_0_56 br_1_56 bl_0_57 bl_1_57 br_0_57 br_1_57 bl_0_58 bl_1_58
+ br_0_58 br_1_58 bl_0_59 bl_1_59 br_0_59 br_1_59 bl_0_60 bl_1_60
+ br_0_60 br_1_60 bl_0_61 bl_1_61 br_0_61 br_1_61 bl_0_62 bl_1_62
+ br_0_62 br_1_62 bl_0_63 bl_1_63 br_0_63 br_1_63 bl_0_64 bl_1_64
+ br_0_64 br_1_64 bl_0_65 bl_1_65 br_0_65 br_1_65 bl_0_66 bl_1_66
+ br_0_66 br_1_66 bl_0_67 bl_1_67 br_0_67 br_1_67 bl_0_68 bl_1_68
+ br_0_68 br_1_68 bl_0_69 bl_1_69 br_0_69 br_1_69 bl_0_70 bl_1_70
+ br_0_70 br_1_70 bl_0_71 bl_1_71 br_0_71 br_1_71 rbl_bl_0_1 rbl_bl_1_1
+ rbl_br_0_1 rbl_br_1_1 gnd gnd vdd gnd
+ freepdk45_sram_1w1r_32x72_dummy_array_1
Xdummy_row_top
+ rbl_bl_0_0 rbl_bl_1_0 rbl_br_0_0 rbl_br_1_0 bl_0_0 bl_1_0 br_0_0
+ br_1_0 bl_0_1 bl_1_1 br_0_1 br_1_1 bl_0_2 bl_1_2 br_0_2 br_1_2 bl_0_3
+ bl_1_3 br_0_3 br_1_3 bl_0_4 bl_1_4 br_0_4 br_1_4 bl_0_5 bl_1_5 br_0_5
+ br_1_5 bl_0_6 bl_1_6 br_0_6 br_1_6 bl_0_7 bl_1_7 br_0_7 br_1_7 bl_0_8
+ bl_1_8 br_0_8 br_1_8 bl_0_9 bl_1_9 br_0_9 br_1_9 bl_0_10 bl_1_10
+ br_0_10 br_1_10 bl_0_11 bl_1_11 br_0_11 br_1_11 bl_0_12 bl_1_12
+ br_0_12 br_1_12 bl_0_13 bl_1_13 br_0_13 br_1_13 bl_0_14 bl_1_14
+ br_0_14 br_1_14 bl_0_15 bl_1_15 br_0_15 br_1_15 bl_0_16 bl_1_16
+ br_0_16 br_1_16 bl_0_17 bl_1_17 br_0_17 br_1_17 bl_0_18 bl_1_18
+ br_0_18 br_1_18 bl_0_19 bl_1_19 br_0_19 br_1_19 bl_0_20 bl_1_20
+ br_0_20 br_1_20 bl_0_21 bl_1_21 br_0_21 br_1_21 bl_0_22 bl_1_22
+ br_0_22 br_1_22 bl_0_23 bl_1_23 br_0_23 br_1_23 bl_0_24 bl_1_24
+ br_0_24 br_1_24 bl_0_25 bl_1_25 br_0_25 br_1_25 bl_0_26 bl_1_26
+ br_0_26 br_1_26 bl_0_27 bl_1_27 br_0_27 br_1_27 bl_0_28 bl_1_28
+ br_0_28 br_1_28 bl_0_29 bl_1_29 br_0_29 br_1_29 bl_0_30 bl_1_30
+ br_0_30 br_1_30 bl_0_31 bl_1_31 br_0_31 br_1_31 bl_0_32 bl_1_32
+ br_0_32 br_1_32 bl_0_33 bl_1_33 br_0_33 br_1_33 bl_0_34 bl_1_34
+ br_0_34 br_1_34 bl_0_35 bl_1_35 br_0_35 br_1_35 bl_0_36 bl_1_36
+ br_0_36 br_1_36 bl_0_37 bl_1_37 br_0_37 br_1_37 bl_0_38 bl_1_38
+ br_0_38 br_1_38 bl_0_39 bl_1_39 br_0_39 br_1_39 bl_0_40 bl_1_40
+ br_0_40 br_1_40 bl_0_41 bl_1_41 br_0_41 br_1_41 bl_0_42 bl_1_42
+ br_0_42 br_1_42 bl_0_43 bl_1_43 br_0_43 br_1_43 bl_0_44 bl_1_44
+ br_0_44 br_1_44 bl_0_45 bl_1_45 br_0_45 br_1_45 bl_0_46 bl_1_46
+ br_0_46 br_1_46 bl_0_47 bl_1_47 br_0_47 br_1_47 bl_0_48 bl_1_48
+ br_0_48 br_1_48 bl_0_49 bl_1_49 br_0_49 br_1_49 bl_0_50 bl_1_50
+ br_0_50 br_1_50 bl_0_51 bl_1_51 br_0_51 br_1_51 bl_0_52 bl_1_52
+ br_0_52 br_1_52 bl_0_53 bl_1_53 br_0_53 br_1_53 bl_0_54 bl_1_54
+ br_0_54 br_1_54 bl_0_55 bl_1_55 br_0_55 br_1_55 bl_0_56 bl_1_56
+ br_0_56 br_1_56 bl_0_57 bl_1_57 br_0_57 br_1_57 bl_0_58 bl_1_58
+ br_0_58 br_1_58 bl_0_59 bl_1_59 br_0_59 br_1_59 bl_0_60 bl_1_60
+ br_0_60 br_1_60 bl_0_61 bl_1_61 br_0_61 br_1_61 bl_0_62 bl_1_62
+ br_0_62 br_1_62 bl_0_63 bl_1_63 br_0_63 br_1_63 bl_0_64 bl_1_64
+ br_0_64 br_1_64 bl_0_65 bl_1_65 br_0_65 br_1_65 bl_0_66 bl_1_66
+ br_0_66 br_1_66 bl_0_67 bl_1_67 br_0_67 br_1_67 bl_0_68 bl_1_68
+ br_0_68 br_1_68 bl_0_69 bl_1_69 br_0_69 br_1_69 bl_0_70 bl_1_70
+ br_0_70 br_1_70 bl_0_71 bl_1_71 br_0_71 br_1_71 rbl_bl_0_1 rbl_bl_1_1
+ rbl_br_0_1 rbl_br_1_1 gnd gnd vdd gnd
+ freepdk45_sram_1w1r_32x72_dummy_array_0
Xdummy_col_left
+ dummy_left_bl_0_0 dummy_left_bl_1_0 dummy_left_br_0_0
+ dummy_left_br_1_0 gnd gnd rbl_wl_0_0 gnd wl_0_0 wl_1_0 wl_0_1 wl_1_1
+ wl_0_2 wl_1_2 wl_0_3 wl_1_3 wl_0_4 wl_1_4 wl_0_5 wl_1_5 wl_0_6 wl_1_6
+ wl_0_7 wl_1_7 wl_0_8 wl_1_8 wl_0_9 wl_1_9 wl_0_10 wl_1_10 wl_0_11
+ wl_1_11 wl_0_12 wl_1_12 wl_0_13 wl_1_13 wl_0_14 wl_1_14 wl_0_15
+ wl_1_15 wl_0_16 wl_1_16 wl_0_17 wl_1_17 wl_0_18 wl_1_18 wl_0_19
+ wl_1_19 wl_0_20 wl_1_20 wl_0_21 wl_1_21 wl_0_22 wl_1_22 wl_0_23
+ wl_1_23 wl_0_24 wl_1_24 wl_0_25 wl_1_25 wl_0_26 wl_1_26 wl_0_27
+ wl_1_27 wl_0_28 wl_1_28 wl_0_29 wl_1_29 wl_0_30 wl_1_30 wl_0_31
+ wl_1_31 gnd rbl_wl_1_1 gnd gnd vdd gnd
+ freepdk45_sram_1w1r_32x72_dummy_array_2
Xdummy_col_right
+ dummy_right_bl_0_0 dummy_right_bl_1_0 dummy_right_br_0_0
+ dummy_right_br_1_0 gnd gnd rbl_wl_0_0 gnd wl_0_0 wl_1_0 wl_0_1 wl_1_1
+ wl_0_2 wl_1_2 wl_0_3 wl_1_3 wl_0_4 wl_1_4 wl_0_5 wl_1_5 wl_0_6 wl_1_6
+ wl_0_7 wl_1_7 wl_0_8 wl_1_8 wl_0_9 wl_1_9 wl_0_10 wl_1_10 wl_0_11
+ wl_1_11 wl_0_12 wl_1_12 wl_0_13 wl_1_13 wl_0_14 wl_1_14 wl_0_15
+ wl_1_15 wl_0_16 wl_1_16 wl_0_17 wl_1_17 wl_0_18 wl_1_18 wl_0_19
+ wl_1_19 wl_0_20 wl_1_20 wl_0_21 wl_1_21 wl_0_22 wl_1_22 wl_0_23
+ wl_1_23 wl_0_24 wl_1_24 wl_0_25 wl_1_25 wl_0_26 wl_1_26 wl_0_27
+ wl_1_27 wl_0_28 wl_1_28 wl_0_29 wl_1_29 wl_0_30 wl_1_30 wl_0_31
+ wl_1_31 gnd rbl_wl_1_1 gnd gnd vdd gnd
+ freepdk45_sram_1w1r_32x72_dummy_array_3
.ENDS freepdk45_sram_1w1r_32x72_capped_replica_bitcell_array

.SUBCKT freepdk45_sram_1w1r_32x72_port_address_0
+ addr_0 addr_1 addr_2 addr_3 addr_4 wl_en wl_0 wl_1 wl_2 wl_3 wl_4 wl_5
+ wl_6 wl_7 wl_8 wl_9 wl_10 wl_11 wl_12 wl_13 wl_14 wl_15 wl_16 wl_17
+ wl_18 wl_19 wl_20 wl_21 wl_22 wl_23 wl_24 wl_25 wl_26 wl_27 wl_28
+ wl_29 wl_30 wl_31 rbl_wl vdd gnd
* INPUT : addr_0 
* INPUT : addr_1 
* INPUT : addr_2 
* INPUT : addr_3 
* INPUT : addr_4 
* INPUT : wl_en 
* OUTPUT: wl_0 
* OUTPUT: wl_1 
* OUTPUT: wl_2 
* OUTPUT: wl_3 
* OUTPUT: wl_4 
* OUTPUT: wl_5 
* OUTPUT: wl_6 
* OUTPUT: wl_7 
* OUTPUT: wl_8 
* OUTPUT: wl_9 
* OUTPUT: wl_10 
* OUTPUT: wl_11 
* OUTPUT: wl_12 
* OUTPUT: wl_13 
* OUTPUT: wl_14 
* OUTPUT: wl_15 
* OUTPUT: wl_16 
* OUTPUT: wl_17 
* OUTPUT: wl_18 
* OUTPUT: wl_19 
* OUTPUT: wl_20 
* OUTPUT: wl_21 
* OUTPUT: wl_22 
* OUTPUT: wl_23 
* OUTPUT: wl_24 
* OUTPUT: wl_25 
* OUTPUT: wl_26 
* OUTPUT: wl_27 
* OUTPUT: wl_28 
* OUTPUT: wl_29 
* OUTPUT: wl_30 
* OUTPUT: wl_31 
* OUTPUT: rbl_wl 
* POWER : vdd 
* GROUND: gnd 
Xrow_decoder
+ addr_0 addr_1 addr_2 addr_3 addr_4 dec_out_0 dec_out_1 dec_out_2
+ dec_out_3 dec_out_4 dec_out_5 dec_out_6 dec_out_7 dec_out_8 dec_out_9
+ dec_out_10 dec_out_11 dec_out_12 dec_out_13 dec_out_14 dec_out_15
+ dec_out_16 dec_out_17 dec_out_18 dec_out_19 dec_out_20 dec_out_21
+ dec_out_22 dec_out_23 dec_out_24 dec_out_25 dec_out_26 dec_out_27
+ dec_out_28 dec_out_29 dec_out_30 dec_out_31 vdd gnd
+ freepdk45_sram_1w1r_32x72_hierarchical_decoder
Xwordline_driver
+ dec_out_0 dec_out_1 dec_out_2 dec_out_3 dec_out_4 dec_out_5 dec_out_6
+ dec_out_7 dec_out_8 dec_out_9 dec_out_10 dec_out_11 dec_out_12
+ dec_out_13 dec_out_14 dec_out_15 dec_out_16 dec_out_17 dec_out_18
+ dec_out_19 dec_out_20 dec_out_21 dec_out_22 dec_out_23 dec_out_24
+ dec_out_25 dec_out_26 dec_out_27 dec_out_28 dec_out_29 dec_out_30
+ dec_out_31 wl_0 wl_1 wl_2 wl_3 wl_4 wl_5 wl_6 wl_7 wl_8 wl_9 wl_10
+ wl_11 wl_12 wl_13 wl_14 wl_15 wl_16 wl_17 wl_18 wl_19 wl_20 wl_21
+ wl_22 wl_23 wl_24 wl_25 wl_26 wl_27 wl_28 wl_29 wl_30 wl_31 wl_en vdd
+ gnd
+ freepdk45_sram_1w1r_32x72_wordline_driver_array
Xrbl_driver
+ wl_en vdd rbl_wl vdd gnd
+ freepdk45_sram_1w1r_32x72_and2_dec_0
.ENDS freepdk45_sram_1w1r_32x72_port_address_0

.SUBCKT freepdk45_sram_1w1r_32x72_precharge_0
+ bl br en_bar vdd
* OUTPUT: bl 
* OUTPUT: br 
* INPUT : en_bar 
* POWER : vdd 
Mlower_pmos bl en_bar br vdd pmos_vtg m=1 w=0.27u l=0.05u 
Mupper_pmos1 bl en_bar vdd vdd pmos_vtg m=1 w=0.27u l=0.05u 
Mupper_pmos2 br en_bar vdd vdd pmos_vtg m=1 w=0.27u l=0.05u 
.ENDS freepdk45_sram_1w1r_32x72_precharge_0

.SUBCKT freepdk45_sram_1w1r_32x72_precharge_array
+ bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6
+ bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12 br_12
+ bl_13 br_13 bl_14 br_14 bl_15 br_15 bl_16 br_16 bl_17 br_17 bl_18
+ br_18 bl_19 br_19 bl_20 br_20 bl_21 br_21 bl_22 br_22 bl_23 br_23
+ bl_24 br_24 bl_25 br_25 bl_26 br_26 bl_27 br_27 bl_28 br_28 bl_29
+ br_29 bl_30 br_30 bl_31 br_31 bl_32 br_32 bl_33 br_33 bl_34 br_34
+ bl_35 br_35 bl_36 br_36 bl_37 br_37 bl_38 br_38 bl_39 br_39 bl_40
+ br_40 bl_41 br_41 bl_42 br_42 bl_43 br_43 bl_44 br_44 bl_45 br_45
+ bl_46 br_46 bl_47 br_47 bl_48 br_48 bl_49 br_49 bl_50 br_50 bl_51
+ br_51 bl_52 br_52 bl_53 br_53 bl_54 br_54 bl_55 br_55 bl_56 br_56
+ bl_57 br_57 bl_58 br_58 bl_59 br_59 bl_60 br_60 bl_61 br_61 bl_62
+ br_62 bl_63 br_63 bl_64 br_64 bl_65 br_65 bl_66 br_66 bl_67 br_67
+ bl_68 br_68 bl_69 br_69 bl_70 br_70 bl_71 br_71 bl_72 br_72 en_bar vdd
* OUTPUT: bl_0 
* OUTPUT: br_0 
* OUTPUT: bl_1 
* OUTPUT: br_1 
* OUTPUT: bl_2 
* OUTPUT: br_2 
* OUTPUT: bl_3 
* OUTPUT: br_3 
* OUTPUT: bl_4 
* OUTPUT: br_4 
* OUTPUT: bl_5 
* OUTPUT: br_5 
* OUTPUT: bl_6 
* OUTPUT: br_6 
* OUTPUT: bl_7 
* OUTPUT: br_7 
* OUTPUT: bl_8 
* OUTPUT: br_8 
* OUTPUT: bl_9 
* OUTPUT: br_9 
* OUTPUT: bl_10 
* OUTPUT: br_10 
* OUTPUT: bl_11 
* OUTPUT: br_11 
* OUTPUT: bl_12 
* OUTPUT: br_12 
* OUTPUT: bl_13 
* OUTPUT: br_13 
* OUTPUT: bl_14 
* OUTPUT: br_14 
* OUTPUT: bl_15 
* OUTPUT: br_15 
* OUTPUT: bl_16 
* OUTPUT: br_16 
* OUTPUT: bl_17 
* OUTPUT: br_17 
* OUTPUT: bl_18 
* OUTPUT: br_18 
* OUTPUT: bl_19 
* OUTPUT: br_19 
* OUTPUT: bl_20 
* OUTPUT: br_20 
* OUTPUT: bl_21 
* OUTPUT: br_21 
* OUTPUT: bl_22 
* OUTPUT: br_22 
* OUTPUT: bl_23 
* OUTPUT: br_23 
* OUTPUT: bl_24 
* OUTPUT: br_24 
* OUTPUT: bl_25 
* OUTPUT: br_25 
* OUTPUT: bl_26 
* OUTPUT: br_26 
* OUTPUT: bl_27 
* OUTPUT: br_27 
* OUTPUT: bl_28 
* OUTPUT: br_28 
* OUTPUT: bl_29 
* OUTPUT: br_29 
* OUTPUT: bl_30 
* OUTPUT: br_30 
* OUTPUT: bl_31 
* OUTPUT: br_31 
* OUTPUT: bl_32 
* OUTPUT: br_32 
* OUTPUT: bl_33 
* OUTPUT: br_33 
* OUTPUT: bl_34 
* OUTPUT: br_34 
* OUTPUT: bl_35 
* OUTPUT: br_35 
* OUTPUT: bl_36 
* OUTPUT: br_36 
* OUTPUT: bl_37 
* OUTPUT: br_37 
* OUTPUT: bl_38 
* OUTPUT: br_38 
* OUTPUT: bl_39 
* OUTPUT: br_39 
* OUTPUT: bl_40 
* OUTPUT: br_40 
* OUTPUT: bl_41 
* OUTPUT: br_41 
* OUTPUT: bl_42 
* OUTPUT: br_42 
* OUTPUT: bl_43 
* OUTPUT: br_43 
* OUTPUT: bl_44 
* OUTPUT: br_44 
* OUTPUT: bl_45 
* OUTPUT: br_45 
* OUTPUT: bl_46 
* OUTPUT: br_46 
* OUTPUT: bl_47 
* OUTPUT: br_47 
* OUTPUT: bl_48 
* OUTPUT: br_48 
* OUTPUT: bl_49 
* OUTPUT: br_49 
* OUTPUT: bl_50 
* OUTPUT: br_50 
* OUTPUT: bl_51 
* OUTPUT: br_51 
* OUTPUT: bl_52 
* OUTPUT: br_52 
* OUTPUT: bl_53 
* OUTPUT: br_53 
* OUTPUT: bl_54 
* OUTPUT: br_54 
* OUTPUT: bl_55 
* OUTPUT: br_55 
* OUTPUT: bl_56 
* OUTPUT: br_56 
* OUTPUT: bl_57 
* OUTPUT: br_57 
* OUTPUT: bl_58 
* OUTPUT: br_58 
* OUTPUT: bl_59 
* OUTPUT: br_59 
* OUTPUT: bl_60 
* OUTPUT: br_60 
* OUTPUT: bl_61 
* OUTPUT: br_61 
* OUTPUT: bl_62 
* OUTPUT: br_62 
* OUTPUT: bl_63 
* OUTPUT: br_63 
* OUTPUT: bl_64 
* OUTPUT: br_64 
* OUTPUT: bl_65 
* OUTPUT: br_65 
* OUTPUT: bl_66 
* OUTPUT: br_66 
* OUTPUT: bl_67 
* OUTPUT: br_67 
* OUTPUT: bl_68 
* OUTPUT: br_68 
* OUTPUT: bl_69 
* OUTPUT: br_69 
* OUTPUT: bl_70 
* OUTPUT: br_70 
* OUTPUT: bl_71 
* OUTPUT: br_71 
* OUTPUT: bl_72 
* OUTPUT: br_72 
* INPUT : en_bar 
* POWER : vdd 
* cols: 73 size: 1 bl: bl0 br: br0
Xpre_column_0
+ bl_0 br_0 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_1
+ bl_1 br_1 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_2
+ bl_2 br_2 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_3
+ bl_3 br_3 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_4
+ bl_4 br_4 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_5
+ bl_5 br_5 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_6
+ bl_6 br_6 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_7
+ bl_7 br_7 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_8
+ bl_8 br_8 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_9
+ bl_9 br_9 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_10
+ bl_10 br_10 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_11
+ bl_11 br_11 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_12
+ bl_12 br_12 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_13
+ bl_13 br_13 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_14
+ bl_14 br_14 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_15
+ bl_15 br_15 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_16
+ bl_16 br_16 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_17
+ bl_17 br_17 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_18
+ bl_18 br_18 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_19
+ bl_19 br_19 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_20
+ bl_20 br_20 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_21
+ bl_21 br_21 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_22
+ bl_22 br_22 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_23
+ bl_23 br_23 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_24
+ bl_24 br_24 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_25
+ bl_25 br_25 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_26
+ bl_26 br_26 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_27
+ bl_27 br_27 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_28
+ bl_28 br_28 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_29
+ bl_29 br_29 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_30
+ bl_30 br_30 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_31
+ bl_31 br_31 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_32
+ bl_32 br_32 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_33
+ bl_33 br_33 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_34
+ bl_34 br_34 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_35
+ bl_35 br_35 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_36
+ bl_36 br_36 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_37
+ bl_37 br_37 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_38
+ bl_38 br_38 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_39
+ bl_39 br_39 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_40
+ bl_40 br_40 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_41
+ bl_41 br_41 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_42
+ bl_42 br_42 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_43
+ bl_43 br_43 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_44
+ bl_44 br_44 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_45
+ bl_45 br_45 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_46
+ bl_46 br_46 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_47
+ bl_47 br_47 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_48
+ bl_48 br_48 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_49
+ bl_49 br_49 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_50
+ bl_50 br_50 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_51
+ bl_51 br_51 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_52
+ bl_52 br_52 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_53
+ bl_53 br_53 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_54
+ bl_54 br_54 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_55
+ bl_55 br_55 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_56
+ bl_56 br_56 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_57
+ bl_57 br_57 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_58
+ bl_58 br_58 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_59
+ bl_59 br_59 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_60
+ bl_60 br_60 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_61
+ bl_61 br_61 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_62
+ bl_62 br_62 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_63
+ bl_63 br_63 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_64
+ bl_64 br_64 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_65
+ bl_65 br_65 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_66
+ bl_66 br_66 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_67
+ bl_67 br_67 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_68
+ bl_68 br_68 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_69
+ bl_69 br_69 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_70
+ bl_70 br_70 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_71
+ bl_71 br_71 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
Xpre_column_72
+ bl_72 br_72 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_0
.ENDS freepdk45_sram_1w1r_32x72_precharge_array

.SUBCKT write_driver din bl br en vdd gnd
*inverters for enable and data input
minP bl_bar din vdd vdd pmos_vtg w=360.000000n l=50.000000n
minN bl_bar din gnd gnd nmos_vtg w=180.000000n l=50.000000n
moutP en_bar en vdd vdd pmos_vtg w=360.000000n l=50.000000n
moutN en_bar en gnd gnd nmos_vtg w=180.000000n l=50.000000n

*tristate for BL
mout0P int1 bl_bar vdd vdd pmos_vtg w=360.000000n l=50.000000n
mout0P2 bl en_bar int1 vdd pmos_vtg w=360.000000n l=50.000000n
mout0N bl en int2 gnd nmos_vtg w=180.000000n l=50.000000n
mout0N2 int2 bl_bar gnd gnd nmos_vtg w=180.000000n l=50.000000n

*tristate for BR
mout1P int3 din vdd vdd pmos_vtg w=360.000000n l=50.000000n
mout1P2 br en_bar int3 vdd pmos_vtg w=360.000000n l=50.000000n
mout1N br en int4 gnd nmos_vtg w=180.000000n l=50.000000n
mout1N2 int4 din gnd gnd nmos_vtg w=180.000000n l=50.000000n
.ENDS write_driver


.SUBCKT freepdk45_sram_1w1r_32x72_write_driver_array
+ data_0 data_1 data_2 data_3 data_4 data_5 data_6 data_7 data_8 data_9
+ data_10 data_11 data_12 data_13 data_14 data_15 data_16 data_17
+ data_18 data_19 data_20 data_21 data_22 data_23 data_24 data_25
+ data_26 data_27 data_28 data_29 data_30 data_31 data_32 data_33
+ data_34 data_35 data_36 data_37 data_38 data_39 data_40 data_41
+ data_42 data_43 data_44 data_45 data_46 data_47 data_48 data_49
+ data_50 data_51 data_52 data_53 data_54 data_55 data_56 data_57
+ data_58 data_59 data_60 data_61 data_62 data_63 data_64 data_65
+ data_66 data_67 data_68 data_69 data_70 data_71 bl_0 br_0 bl_1 br_1
+ bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8
+ bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12 br_12 bl_13 br_13 bl_14 br_14
+ bl_15 br_15 bl_16 br_16 bl_17 br_17 bl_18 br_18 bl_19 br_19 bl_20
+ br_20 bl_21 br_21 bl_22 br_22 bl_23 br_23 bl_24 br_24 bl_25 br_25
+ bl_26 br_26 bl_27 br_27 bl_28 br_28 bl_29 br_29 bl_30 br_30 bl_31
+ br_31 bl_32 br_32 bl_33 br_33 bl_34 br_34 bl_35 br_35 bl_36 br_36
+ bl_37 br_37 bl_38 br_38 bl_39 br_39 bl_40 br_40 bl_41 br_41 bl_42
+ br_42 bl_43 br_43 bl_44 br_44 bl_45 br_45 bl_46 br_46 bl_47 br_47
+ bl_48 br_48 bl_49 br_49 bl_50 br_50 bl_51 br_51 bl_52 br_52 bl_53
+ br_53 bl_54 br_54 bl_55 br_55 bl_56 br_56 bl_57 br_57 bl_58 br_58
+ bl_59 br_59 bl_60 br_60 bl_61 br_61 bl_62 br_62 bl_63 br_63 bl_64
+ br_64 bl_65 br_65 bl_66 br_66 bl_67 br_67 bl_68 br_68 bl_69 br_69
+ bl_70 br_70 bl_71 br_71 en vdd gnd
* INPUT : data_0 
* INPUT : data_1 
* INPUT : data_2 
* INPUT : data_3 
* INPUT : data_4 
* INPUT : data_5 
* INPUT : data_6 
* INPUT : data_7 
* INPUT : data_8 
* INPUT : data_9 
* INPUT : data_10 
* INPUT : data_11 
* INPUT : data_12 
* INPUT : data_13 
* INPUT : data_14 
* INPUT : data_15 
* INPUT : data_16 
* INPUT : data_17 
* INPUT : data_18 
* INPUT : data_19 
* INPUT : data_20 
* INPUT : data_21 
* INPUT : data_22 
* INPUT : data_23 
* INPUT : data_24 
* INPUT : data_25 
* INPUT : data_26 
* INPUT : data_27 
* INPUT : data_28 
* INPUT : data_29 
* INPUT : data_30 
* INPUT : data_31 
* INPUT : data_32 
* INPUT : data_33 
* INPUT : data_34 
* INPUT : data_35 
* INPUT : data_36 
* INPUT : data_37 
* INPUT : data_38 
* INPUT : data_39 
* INPUT : data_40 
* INPUT : data_41 
* INPUT : data_42 
* INPUT : data_43 
* INPUT : data_44 
* INPUT : data_45 
* INPUT : data_46 
* INPUT : data_47 
* INPUT : data_48 
* INPUT : data_49 
* INPUT : data_50 
* INPUT : data_51 
* INPUT : data_52 
* INPUT : data_53 
* INPUT : data_54 
* INPUT : data_55 
* INPUT : data_56 
* INPUT : data_57 
* INPUT : data_58 
* INPUT : data_59 
* INPUT : data_60 
* INPUT : data_61 
* INPUT : data_62 
* INPUT : data_63 
* INPUT : data_64 
* INPUT : data_65 
* INPUT : data_66 
* INPUT : data_67 
* INPUT : data_68 
* INPUT : data_69 
* INPUT : data_70 
* INPUT : data_71 
* OUTPUT: bl_0 
* OUTPUT: br_0 
* OUTPUT: bl_1 
* OUTPUT: br_1 
* OUTPUT: bl_2 
* OUTPUT: br_2 
* OUTPUT: bl_3 
* OUTPUT: br_3 
* OUTPUT: bl_4 
* OUTPUT: br_4 
* OUTPUT: bl_5 
* OUTPUT: br_5 
* OUTPUT: bl_6 
* OUTPUT: br_6 
* OUTPUT: bl_7 
* OUTPUT: br_7 
* OUTPUT: bl_8 
* OUTPUT: br_8 
* OUTPUT: bl_9 
* OUTPUT: br_9 
* OUTPUT: bl_10 
* OUTPUT: br_10 
* OUTPUT: bl_11 
* OUTPUT: br_11 
* OUTPUT: bl_12 
* OUTPUT: br_12 
* OUTPUT: bl_13 
* OUTPUT: br_13 
* OUTPUT: bl_14 
* OUTPUT: br_14 
* OUTPUT: bl_15 
* OUTPUT: br_15 
* OUTPUT: bl_16 
* OUTPUT: br_16 
* OUTPUT: bl_17 
* OUTPUT: br_17 
* OUTPUT: bl_18 
* OUTPUT: br_18 
* OUTPUT: bl_19 
* OUTPUT: br_19 
* OUTPUT: bl_20 
* OUTPUT: br_20 
* OUTPUT: bl_21 
* OUTPUT: br_21 
* OUTPUT: bl_22 
* OUTPUT: br_22 
* OUTPUT: bl_23 
* OUTPUT: br_23 
* OUTPUT: bl_24 
* OUTPUT: br_24 
* OUTPUT: bl_25 
* OUTPUT: br_25 
* OUTPUT: bl_26 
* OUTPUT: br_26 
* OUTPUT: bl_27 
* OUTPUT: br_27 
* OUTPUT: bl_28 
* OUTPUT: br_28 
* OUTPUT: bl_29 
* OUTPUT: br_29 
* OUTPUT: bl_30 
* OUTPUT: br_30 
* OUTPUT: bl_31 
* OUTPUT: br_31 
* OUTPUT: bl_32 
* OUTPUT: br_32 
* OUTPUT: bl_33 
* OUTPUT: br_33 
* OUTPUT: bl_34 
* OUTPUT: br_34 
* OUTPUT: bl_35 
* OUTPUT: br_35 
* OUTPUT: bl_36 
* OUTPUT: br_36 
* OUTPUT: bl_37 
* OUTPUT: br_37 
* OUTPUT: bl_38 
* OUTPUT: br_38 
* OUTPUT: bl_39 
* OUTPUT: br_39 
* OUTPUT: bl_40 
* OUTPUT: br_40 
* OUTPUT: bl_41 
* OUTPUT: br_41 
* OUTPUT: bl_42 
* OUTPUT: br_42 
* OUTPUT: bl_43 
* OUTPUT: br_43 
* OUTPUT: bl_44 
* OUTPUT: br_44 
* OUTPUT: bl_45 
* OUTPUT: br_45 
* OUTPUT: bl_46 
* OUTPUT: br_46 
* OUTPUT: bl_47 
* OUTPUT: br_47 
* OUTPUT: bl_48 
* OUTPUT: br_48 
* OUTPUT: bl_49 
* OUTPUT: br_49 
* OUTPUT: bl_50 
* OUTPUT: br_50 
* OUTPUT: bl_51 
* OUTPUT: br_51 
* OUTPUT: bl_52 
* OUTPUT: br_52 
* OUTPUT: bl_53 
* OUTPUT: br_53 
* OUTPUT: bl_54 
* OUTPUT: br_54 
* OUTPUT: bl_55 
* OUTPUT: br_55 
* OUTPUT: bl_56 
* OUTPUT: br_56 
* OUTPUT: bl_57 
* OUTPUT: br_57 
* OUTPUT: bl_58 
* OUTPUT: br_58 
* OUTPUT: bl_59 
* OUTPUT: br_59 
* OUTPUT: bl_60 
* OUTPUT: br_60 
* OUTPUT: bl_61 
* OUTPUT: br_61 
* OUTPUT: bl_62 
* OUTPUT: br_62 
* OUTPUT: bl_63 
* OUTPUT: br_63 
* OUTPUT: bl_64 
* OUTPUT: br_64 
* OUTPUT: bl_65 
* OUTPUT: br_65 
* OUTPUT: bl_66 
* OUTPUT: br_66 
* OUTPUT: bl_67 
* OUTPUT: br_67 
* OUTPUT: bl_68 
* OUTPUT: br_68 
* OUTPUT: bl_69 
* OUTPUT: br_69 
* OUTPUT: bl_70 
* OUTPUT: br_70 
* OUTPUT: bl_71 
* OUTPUT: br_71 
* INPUT : en 
* POWER : vdd 
* GROUND: gnd 
* word_size 72
Xwrite_driver0
+ data_0 bl_0 br_0 en vdd gnd
+ write_driver
Xwrite_driver1
+ data_1 bl_1 br_1 en vdd gnd
+ write_driver
Xwrite_driver2
+ data_2 bl_2 br_2 en vdd gnd
+ write_driver
Xwrite_driver3
+ data_3 bl_3 br_3 en vdd gnd
+ write_driver
Xwrite_driver4
+ data_4 bl_4 br_4 en vdd gnd
+ write_driver
Xwrite_driver5
+ data_5 bl_5 br_5 en vdd gnd
+ write_driver
Xwrite_driver6
+ data_6 bl_6 br_6 en vdd gnd
+ write_driver
Xwrite_driver7
+ data_7 bl_7 br_7 en vdd gnd
+ write_driver
Xwrite_driver8
+ data_8 bl_8 br_8 en vdd gnd
+ write_driver
Xwrite_driver9
+ data_9 bl_9 br_9 en vdd gnd
+ write_driver
Xwrite_driver10
+ data_10 bl_10 br_10 en vdd gnd
+ write_driver
Xwrite_driver11
+ data_11 bl_11 br_11 en vdd gnd
+ write_driver
Xwrite_driver12
+ data_12 bl_12 br_12 en vdd gnd
+ write_driver
Xwrite_driver13
+ data_13 bl_13 br_13 en vdd gnd
+ write_driver
Xwrite_driver14
+ data_14 bl_14 br_14 en vdd gnd
+ write_driver
Xwrite_driver15
+ data_15 bl_15 br_15 en vdd gnd
+ write_driver
Xwrite_driver16
+ data_16 bl_16 br_16 en vdd gnd
+ write_driver
Xwrite_driver17
+ data_17 bl_17 br_17 en vdd gnd
+ write_driver
Xwrite_driver18
+ data_18 bl_18 br_18 en vdd gnd
+ write_driver
Xwrite_driver19
+ data_19 bl_19 br_19 en vdd gnd
+ write_driver
Xwrite_driver20
+ data_20 bl_20 br_20 en vdd gnd
+ write_driver
Xwrite_driver21
+ data_21 bl_21 br_21 en vdd gnd
+ write_driver
Xwrite_driver22
+ data_22 bl_22 br_22 en vdd gnd
+ write_driver
Xwrite_driver23
+ data_23 bl_23 br_23 en vdd gnd
+ write_driver
Xwrite_driver24
+ data_24 bl_24 br_24 en vdd gnd
+ write_driver
Xwrite_driver25
+ data_25 bl_25 br_25 en vdd gnd
+ write_driver
Xwrite_driver26
+ data_26 bl_26 br_26 en vdd gnd
+ write_driver
Xwrite_driver27
+ data_27 bl_27 br_27 en vdd gnd
+ write_driver
Xwrite_driver28
+ data_28 bl_28 br_28 en vdd gnd
+ write_driver
Xwrite_driver29
+ data_29 bl_29 br_29 en vdd gnd
+ write_driver
Xwrite_driver30
+ data_30 bl_30 br_30 en vdd gnd
+ write_driver
Xwrite_driver31
+ data_31 bl_31 br_31 en vdd gnd
+ write_driver
Xwrite_driver32
+ data_32 bl_32 br_32 en vdd gnd
+ write_driver
Xwrite_driver33
+ data_33 bl_33 br_33 en vdd gnd
+ write_driver
Xwrite_driver34
+ data_34 bl_34 br_34 en vdd gnd
+ write_driver
Xwrite_driver35
+ data_35 bl_35 br_35 en vdd gnd
+ write_driver
Xwrite_driver36
+ data_36 bl_36 br_36 en vdd gnd
+ write_driver
Xwrite_driver37
+ data_37 bl_37 br_37 en vdd gnd
+ write_driver
Xwrite_driver38
+ data_38 bl_38 br_38 en vdd gnd
+ write_driver
Xwrite_driver39
+ data_39 bl_39 br_39 en vdd gnd
+ write_driver
Xwrite_driver40
+ data_40 bl_40 br_40 en vdd gnd
+ write_driver
Xwrite_driver41
+ data_41 bl_41 br_41 en vdd gnd
+ write_driver
Xwrite_driver42
+ data_42 bl_42 br_42 en vdd gnd
+ write_driver
Xwrite_driver43
+ data_43 bl_43 br_43 en vdd gnd
+ write_driver
Xwrite_driver44
+ data_44 bl_44 br_44 en vdd gnd
+ write_driver
Xwrite_driver45
+ data_45 bl_45 br_45 en vdd gnd
+ write_driver
Xwrite_driver46
+ data_46 bl_46 br_46 en vdd gnd
+ write_driver
Xwrite_driver47
+ data_47 bl_47 br_47 en vdd gnd
+ write_driver
Xwrite_driver48
+ data_48 bl_48 br_48 en vdd gnd
+ write_driver
Xwrite_driver49
+ data_49 bl_49 br_49 en vdd gnd
+ write_driver
Xwrite_driver50
+ data_50 bl_50 br_50 en vdd gnd
+ write_driver
Xwrite_driver51
+ data_51 bl_51 br_51 en vdd gnd
+ write_driver
Xwrite_driver52
+ data_52 bl_52 br_52 en vdd gnd
+ write_driver
Xwrite_driver53
+ data_53 bl_53 br_53 en vdd gnd
+ write_driver
Xwrite_driver54
+ data_54 bl_54 br_54 en vdd gnd
+ write_driver
Xwrite_driver55
+ data_55 bl_55 br_55 en vdd gnd
+ write_driver
Xwrite_driver56
+ data_56 bl_56 br_56 en vdd gnd
+ write_driver
Xwrite_driver57
+ data_57 bl_57 br_57 en vdd gnd
+ write_driver
Xwrite_driver58
+ data_58 bl_58 br_58 en vdd gnd
+ write_driver
Xwrite_driver59
+ data_59 bl_59 br_59 en vdd gnd
+ write_driver
Xwrite_driver60
+ data_60 bl_60 br_60 en vdd gnd
+ write_driver
Xwrite_driver61
+ data_61 bl_61 br_61 en vdd gnd
+ write_driver
Xwrite_driver62
+ data_62 bl_62 br_62 en vdd gnd
+ write_driver
Xwrite_driver63
+ data_63 bl_63 br_63 en vdd gnd
+ write_driver
Xwrite_driver64
+ data_64 bl_64 br_64 en vdd gnd
+ write_driver
Xwrite_driver65
+ data_65 bl_65 br_65 en vdd gnd
+ write_driver
Xwrite_driver66
+ data_66 bl_66 br_66 en vdd gnd
+ write_driver
Xwrite_driver67
+ data_67 bl_67 br_67 en vdd gnd
+ write_driver
Xwrite_driver68
+ data_68 bl_68 br_68 en vdd gnd
+ write_driver
Xwrite_driver69
+ data_69 bl_69 br_69 en vdd gnd
+ write_driver
Xwrite_driver70
+ data_70 bl_70 br_70 en vdd gnd
+ write_driver
Xwrite_driver71
+ data_71 bl_71 br_71 en vdd gnd
+ write_driver
.ENDS freepdk45_sram_1w1r_32x72_write_driver_array

.SUBCKT freepdk45_sram_1w1r_32x72_port_data
+ rbl_bl rbl_br bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5
+ br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11
+ bl_12 br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15 bl_16 br_16 bl_17
+ br_17 bl_18 br_18 bl_19 br_19 bl_20 br_20 bl_21 br_21 bl_22 br_22
+ bl_23 br_23 bl_24 br_24 bl_25 br_25 bl_26 br_26 bl_27 br_27 bl_28
+ br_28 bl_29 br_29 bl_30 br_30 bl_31 br_31 bl_32 br_32 bl_33 br_33
+ bl_34 br_34 bl_35 br_35 bl_36 br_36 bl_37 br_37 bl_38 br_38 bl_39
+ br_39 bl_40 br_40 bl_41 br_41 bl_42 br_42 bl_43 br_43 bl_44 br_44
+ bl_45 br_45 bl_46 br_46 bl_47 br_47 bl_48 br_48 bl_49 br_49 bl_50
+ br_50 bl_51 br_51 bl_52 br_52 bl_53 br_53 bl_54 br_54 bl_55 br_55
+ bl_56 br_56 bl_57 br_57 bl_58 br_58 bl_59 br_59 bl_60 br_60 bl_61
+ br_61 bl_62 br_62 bl_63 br_63 bl_64 br_64 bl_65 br_65 bl_66 br_66
+ bl_67 br_67 bl_68 br_68 bl_69 br_69 bl_70 br_70 bl_71 br_71 din_0
+ din_1 din_2 din_3 din_4 din_5 din_6 din_7 din_8 din_9 din_10 din_11
+ din_12 din_13 din_14 din_15 din_16 din_17 din_18 din_19 din_20 din_21
+ din_22 din_23 din_24 din_25 din_26 din_27 din_28 din_29 din_30 din_31
+ din_32 din_33 din_34 din_35 din_36 din_37 din_38 din_39 din_40 din_41
+ din_42 din_43 din_44 din_45 din_46 din_47 din_48 din_49 din_50 din_51
+ din_52 din_53 din_54 din_55 din_56 din_57 din_58 din_59 din_60 din_61
+ din_62 din_63 din_64 din_65 din_66 din_67 din_68 din_69 din_70 din_71
+ p_en_bar w_en vdd gnd
* INOUT : rbl_bl 
* INOUT : rbl_br 
* INOUT : bl_0 
* INOUT : br_0 
* INOUT : bl_1 
* INOUT : br_1 
* INOUT : bl_2 
* INOUT : br_2 
* INOUT : bl_3 
* INOUT : br_3 
* INOUT : bl_4 
* INOUT : br_4 
* INOUT : bl_5 
* INOUT : br_5 
* INOUT : bl_6 
* INOUT : br_6 
* INOUT : bl_7 
* INOUT : br_7 
* INOUT : bl_8 
* INOUT : br_8 
* INOUT : bl_9 
* INOUT : br_9 
* INOUT : bl_10 
* INOUT : br_10 
* INOUT : bl_11 
* INOUT : br_11 
* INOUT : bl_12 
* INOUT : br_12 
* INOUT : bl_13 
* INOUT : br_13 
* INOUT : bl_14 
* INOUT : br_14 
* INOUT : bl_15 
* INOUT : br_15 
* INOUT : bl_16 
* INOUT : br_16 
* INOUT : bl_17 
* INOUT : br_17 
* INOUT : bl_18 
* INOUT : br_18 
* INOUT : bl_19 
* INOUT : br_19 
* INOUT : bl_20 
* INOUT : br_20 
* INOUT : bl_21 
* INOUT : br_21 
* INOUT : bl_22 
* INOUT : br_22 
* INOUT : bl_23 
* INOUT : br_23 
* INOUT : bl_24 
* INOUT : br_24 
* INOUT : bl_25 
* INOUT : br_25 
* INOUT : bl_26 
* INOUT : br_26 
* INOUT : bl_27 
* INOUT : br_27 
* INOUT : bl_28 
* INOUT : br_28 
* INOUT : bl_29 
* INOUT : br_29 
* INOUT : bl_30 
* INOUT : br_30 
* INOUT : bl_31 
* INOUT : br_31 
* INOUT : bl_32 
* INOUT : br_32 
* INOUT : bl_33 
* INOUT : br_33 
* INOUT : bl_34 
* INOUT : br_34 
* INOUT : bl_35 
* INOUT : br_35 
* INOUT : bl_36 
* INOUT : br_36 
* INOUT : bl_37 
* INOUT : br_37 
* INOUT : bl_38 
* INOUT : br_38 
* INOUT : bl_39 
* INOUT : br_39 
* INOUT : bl_40 
* INOUT : br_40 
* INOUT : bl_41 
* INOUT : br_41 
* INOUT : bl_42 
* INOUT : br_42 
* INOUT : bl_43 
* INOUT : br_43 
* INOUT : bl_44 
* INOUT : br_44 
* INOUT : bl_45 
* INOUT : br_45 
* INOUT : bl_46 
* INOUT : br_46 
* INOUT : bl_47 
* INOUT : br_47 
* INOUT : bl_48 
* INOUT : br_48 
* INOUT : bl_49 
* INOUT : br_49 
* INOUT : bl_50 
* INOUT : br_50 
* INOUT : bl_51 
* INOUT : br_51 
* INOUT : bl_52 
* INOUT : br_52 
* INOUT : bl_53 
* INOUT : br_53 
* INOUT : bl_54 
* INOUT : br_54 
* INOUT : bl_55 
* INOUT : br_55 
* INOUT : bl_56 
* INOUT : br_56 
* INOUT : bl_57 
* INOUT : br_57 
* INOUT : bl_58 
* INOUT : br_58 
* INOUT : bl_59 
* INOUT : br_59 
* INOUT : bl_60 
* INOUT : br_60 
* INOUT : bl_61 
* INOUT : br_61 
* INOUT : bl_62 
* INOUT : br_62 
* INOUT : bl_63 
* INOUT : br_63 
* INOUT : bl_64 
* INOUT : br_64 
* INOUT : bl_65 
* INOUT : br_65 
* INOUT : bl_66 
* INOUT : br_66 
* INOUT : bl_67 
* INOUT : br_67 
* INOUT : bl_68 
* INOUT : br_68 
* INOUT : bl_69 
* INOUT : br_69 
* INOUT : bl_70 
* INOUT : br_70 
* INOUT : bl_71 
* INOUT : br_71 
* INPUT : din_0 
* INPUT : din_1 
* INPUT : din_2 
* INPUT : din_3 
* INPUT : din_4 
* INPUT : din_5 
* INPUT : din_6 
* INPUT : din_7 
* INPUT : din_8 
* INPUT : din_9 
* INPUT : din_10 
* INPUT : din_11 
* INPUT : din_12 
* INPUT : din_13 
* INPUT : din_14 
* INPUT : din_15 
* INPUT : din_16 
* INPUT : din_17 
* INPUT : din_18 
* INPUT : din_19 
* INPUT : din_20 
* INPUT : din_21 
* INPUT : din_22 
* INPUT : din_23 
* INPUT : din_24 
* INPUT : din_25 
* INPUT : din_26 
* INPUT : din_27 
* INPUT : din_28 
* INPUT : din_29 
* INPUT : din_30 
* INPUT : din_31 
* INPUT : din_32 
* INPUT : din_33 
* INPUT : din_34 
* INPUT : din_35 
* INPUT : din_36 
* INPUT : din_37 
* INPUT : din_38 
* INPUT : din_39 
* INPUT : din_40 
* INPUT : din_41 
* INPUT : din_42 
* INPUT : din_43 
* INPUT : din_44 
* INPUT : din_45 
* INPUT : din_46 
* INPUT : din_47 
* INPUT : din_48 
* INPUT : din_49 
* INPUT : din_50 
* INPUT : din_51 
* INPUT : din_52 
* INPUT : din_53 
* INPUT : din_54 
* INPUT : din_55 
* INPUT : din_56 
* INPUT : din_57 
* INPUT : din_58 
* INPUT : din_59 
* INPUT : din_60 
* INPUT : din_61 
* INPUT : din_62 
* INPUT : din_63 
* INPUT : din_64 
* INPUT : din_65 
* INPUT : din_66 
* INPUT : din_67 
* INPUT : din_68 
* INPUT : din_69 
* INPUT : din_70 
* INPUT : din_71 
* INPUT : p_en_bar 
* INPUT : w_en 
* POWER : vdd 
* GROUND: gnd 
Xprecharge_array0
+ rbl_bl rbl_br bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5
+ br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11
+ bl_12 br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15 bl_16 br_16 bl_17
+ br_17 bl_18 br_18 bl_19 br_19 bl_20 br_20 bl_21 br_21 bl_22 br_22
+ bl_23 br_23 bl_24 br_24 bl_25 br_25 bl_26 br_26 bl_27 br_27 bl_28
+ br_28 bl_29 br_29 bl_30 br_30 bl_31 br_31 bl_32 br_32 bl_33 br_33
+ bl_34 br_34 bl_35 br_35 bl_36 br_36 bl_37 br_37 bl_38 br_38 bl_39
+ br_39 bl_40 br_40 bl_41 br_41 bl_42 br_42 bl_43 br_43 bl_44 br_44
+ bl_45 br_45 bl_46 br_46 bl_47 br_47 bl_48 br_48 bl_49 br_49 bl_50
+ br_50 bl_51 br_51 bl_52 br_52 bl_53 br_53 bl_54 br_54 bl_55 br_55
+ bl_56 br_56 bl_57 br_57 bl_58 br_58 bl_59 br_59 bl_60 br_60 bl_61
+ br_61 bl_62 br_62 bl_63 br_63 bl_64 br_64 bl_65 br_65 bl_66 br_66
+ bl_67 br_67 bl_68 br_68 bl_69 br_69 bl_70 br_70 bl_71 br_71 p_en_bar
+ vdd
+ freepdk45_sram_1w1r_32x72_precharge_array
Xwrite_driver_array0
+ din_0 din_1 din_2 din_3 din_4 din_5 din_6 din_7 din_8 din_9 din_10
+ din_11 din_12 din_13 din_14 din_15 din_16 din_17 din_18 din_19 din_20
+ din_21 din_22 din_23 din_24 din_25 din_26 din_27 din_28 din_29 din_30
+ din_31 din_32 din_33 din_34 din_35 din_36 din_37 din_38 din_39 din_40
+ din_41 din_42 din_43 din_44 din_45 din_46 din_47 din_48 din_49 din_50
+ din_51 din_52 din_53 din_54 din_55 din_56 din_57 din_58 din_59 din_60
+ din_61 din_62 din_63 din_64 din_65 din_66 din_67 din_68 din_69 din_70
+ din_71 bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5
+ bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12
+ br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15 bl_16 br_16 bl_17 br_17
+ bl_18 br_18 bl_19 br_19 bl_20 br_20 bl_21 br_21 bl_22 br_22 bl_23
+ br_23 bl_24 br_24 bl_25 br_25 bl_26 br_26 bl_27 br_27 bl_28 br_28
+ bl_29 br_29 bl_30 br_30 bl_31 br_31 bl_32 br_32 bl_33 br_33 bl_34
+ br_34 bl_35 br_35 bl_36 br_36 bl_37 br_37 bl_38 br_38 bl_39 br_39
+ bl_40 br_40 bl_41 br_41 bl_42 br_42 bl_43 br_43 bl_44 br_44 bl_45
+ br_45 bl_46 br_46 bl_47 br_47 bl_48 br_48 bl_49 br_49 bl_50 br_50
+ bl_51 br_51 bl_52 br_52 bl_53 br_53 bl_54 br_54 bl_55 br_55 bl_56
+ br_56 bl_57 br_57 bl_58 br_58 bl_59 br_59 bl_60 br_60 bl_61 br_61
+ bl_62 br_62 bl_63 br_63 bl_64 br_64 bl_65 br_65 bl_66 br_66 bl_67
+ br_67 bl_68 br_68 bl_69 br_69 bl_70 br_70 bl_71 br_71 w_en vdd gnd
+ freepdk45_sram_1w1r_32x72_write_driver_array
.ENDS freepdk45_sram_1w1r_32x72_port_data

.SUBCKT sense_amp bl br dout en vdd gnd
M_1 dout net_1 vdd vdd pmos_vtg w=540.0n l=50.0n
M_3 net_1 dout vdd vdd pmos_vtg w=540.0n l=50.0n
M_2 dout net_1 net_2 gnd nmos_vtg w=270.0n l=50.0n
M_8 net_1 dout net_2 gnd nmos_vtg w=270.0n l=50.0n
M_5 bl en dout vdd pmos_vtg w=720.0n l=50.0n
M_6 br en net_1 vdd pmos_vtg w=720.0n l=50.0n
M_7 net_2 en gnd gnd nmos_vtg w=270.0n l=50.0n
.ENDS sense_amp


.SUBCKT freepdk45_sram_1w1r_32x72_sense_amp_array
+ data_0 bl_0 br_0 data_1 bl_1 br_1 data_2 bl_2 br_2 data_3 bl_3 br_3
+ data_4 bl_4 br_4 data_5 bl_5 br_5 data_6 bl_6 br_6 data_7 bl_7 br_7
+ data_8 bl_8 br_8 data_9 bl_9 br_9 data_10 bl_10 br_10 data_11 bl_11
+ br_11 data_12 bl_12 br_12 data_13 bl_13 br_13 data_14 bl_14 br_14
+ data_15 bl_15 br_15 data_16 bl_16 br_16 data_17 bl_17 br_17 data_18
+ bl_18 br_18 data_19 bl_19 br_19 data_20 bl_20 br_20 data_21 bl_21
+ br_21 data_22 bl_22 br_22 data_23 bl_23 br_23 data_24 bl_24 br_24
+ data_25 bl_25 br_25 data_26 bl_26 br_26 data_27 bl_27 br_27 data_28
+ bl_28 br_28 data_29 bl_29 br_29 data_30 bl_30 br_30 data_31 bl_31
+ br_31 data_32 bl_32 br_32 data_33 bl_33 br_33 data_34 bl_34 br_34
+ data_35 bl_35 br_35 data_36 bl_36 br_36 data_37 bl_37 br_37 data_38
+ bl_38 br_38 data_39 bl_39 br_39 data_40 bl_40 br_40 data_41 bl_41
+ br_41 data_42 bl_42 br_42 data_43 bl_43 br_43 data_44 bl_44 br_44
+ data_45 bl_45 br_45 data_46 bl_46 br_46 data_47 bl_47 br_47 data_48
+ bl_48 br_48 data_49 bl_49 br_49 data_50 bl_50 br_50 data_51 bl_51
+ br_51 data_52 bl_52 br_52 data_53 bl_53 br_53 data_54 bl_54 br_54
+ data_55 bl_55 br_55 data_56 bl_56 br_56 data_57 bl_57 br_57 data_58
+ bl_58 br_58 data_59 bl_59 br_59 data_60 bl_60 br_60 data_61 bl_61
+ br_61 data_62 bl_62 br_62 data_63 bl_63 br_63 data_64 bl_64 br_64
+ data_65 bl_65 br_65 data_66 bl_66 br_66 data_67 bl_67 br_67 data_68
+ bl_68 br_68 data_69 bl_69 br_69 data_70 bl_70 br_70 data_71 bl_71
+ br_71 en vdd gnd
* OUTPUT: data_0 
* INPUT : bl_0 
* INPUT : br_0 
* OUTPUT: data_1 
* INPUT : bl_1 
* INPUT : br_1 
* OUTPUT: data_2 
* INPUT : bl_2 
* INPUT : br_2 
* OUTPUT: data_3 
* INPUT : bl_3 
* INPUT : br_3 
* OUTPUT: data_4 
* INPUT : bl_4 
* INPUT : br_4 
* OUTPUT: data_5 
* INPUT : bl_5 
* INPUT : br_5 
* OUTPUT: data_6 
* INPUT : bl_6 
* INPUT : br_6 
* OUTPUT: data_7 
* INPUT : bl_7 
* INPUT : br_7 
* OUTPUT: data_8 
* INPUT : bl_8 
* INPUT : br_8 
* OUTPUT: data_9 
* INPUT : bl_9 
* INPUT : br_9 
* OUTPUT: data_10 
* INPUT : bl_10 
* INPUT : br_10 
* OUTPUT: data_11 
* INPUT : bl_11 
* INPUT : br_11 
* OUTPUT: data_12 
* INPUT : bl_12 
* INPUT : br_12 
* OUTPUT: data_13 
* INPUT : bl_13 
* INPUT : br_13 
* OUTPUT: data_14 
* INPUT : bl_14 
* INPUT : br_14 
* OUTPUT: data_15 
* INPUT : bl_15 
* INPUT : br_15 
* OUTPUT: data_16 
* INPUT : bl_16 
* INPUT : br_16 
* OUTPUT: data_17 
* INPUT : bl_17 
* INPUT : br_17 
* OUTPUT: data_18 
* INPUT : bl_18 
* INPUT : br_18 
* OUTPUT: data_19 
* INPUT : bl_19 
* INPUT : br_19 
* OUTPUT: data_20 
* INPUT : bl_20 
* INPUT : br_20 
* OUTPUT: data_21 
* INPUT : bl_21 
* INPUT : br_21 
* OUTPUT: data_22 
* INPUT : bl_22 
* INPUT : br_22 
* OUTPUT: data_23 
* INPUT : bl_23 
* INPUT : br_23 
* OUTPUT: data_24 
* INPUT : bl_24 
* INPUT : br_24 
* OUTPUT: data_25 
* INPUT : bl_25 
* INPUT : br_25 
* OUTPUT: data_26 
* INPUT : bl_26 
* INPUT : br_26 
* OUTPUT: data_27 
* INPUT : bl_27 
* INPUT : br_27 
* OUTPUT: data_28 
* INPUT : bl_28 
* INPUT : br_28 
* OUTPUT: data_29 
* INPUT : bl_29 
* INPUT : br_29 
* OUTPUT: data_30 
* INPUT : bl_30 
* INPUT : br_30 
* OUTPUT: data_31 
* INPUT : bl_31 
* INPUT : br_31 
* OUTPUT: data_32 
* INPUT : bl_32 
* INPUT : br_32 
* OUTPUT: data_33 
* INPUT : bl_33 
* INPUT : br_33 
* OUTPUT: data_34 
* INPUT : bl_34 
* INPUT : br_34 
* OUTPUT: data_35 
* INPUT : bl_35 
* INPUT : br_35 
* OUTPUT: data_36 
* INPUT : bl_36 
* INPUT : br_36 
* OUTPUT: data_37 
* INPUT : bl_37 
* INPUT : br_37 
* OUTPUT: data_38 
* INPUT : bl_38 
* INPUT : br_38 
* OUTPUT: data_39 
* INPUT : bl_39 
* INPUT : br_39 
* OUTPUT: data_40 
* INPUT : bl_40 
* INPUT : br_40 
* OUTPUT: data_41 
* INPUT : bl_41 
* INPUT : br_41 
* OUTPUT: data_42 
* INPUT : bl_42 
* INPUT : br_42 
* OUTPUT: data_43 
* INPUT : bl_43 
* INPUT : br_43 
* OUTPUT: data_44 
* INPUT : bl_44 
* INPUT : br_44 
* OUTPUT: data_45 
* INPUT : bl_45 
* INPUT : br_45 
* OUTPUT: data_46 
* INPUT : bl_46 
* INPUT : br_46 
* OUTPUT: data_47 
* INPUT : bl_47 
* INPUT : br_47 
* OUTPUT: data_48 
* INPUT : bl_48 
* INPUT : br_48 
* OUTPUT: data_49 
* INPUT : bl_49 
* INPUT : br_49 
* OUTPUT: data_50 
* INPUT : bl_50 
* INPUT : br_50 
* OUTPUT: data_51 
* INPUT : bl_51 
* INPUT : br_51 
* OUTPUT: data_52 
* INPUT : bl_52 
* INPUT : br_52 
* OUTPUT: data_53 
* INPUT : bl_53 
* INPUT : br_53 
* OUTPUT: data_54 
* INPUT : bl_54 
* INPUT : br_54 
* OUTPUT: data_55 
* INPUT : bl_55 
* INPUT : br_55 
* OUTPUT: data_56 
* INPUT : bl_56 
* INPUT : br_56 
* OUTPUT: data_57 
* INPUT : bl_57 
* INPUT : br_57 
* OUTPUT: data_58 
* INPUT : bl_58 
* INPUT : br_58 
* OUTPUT: data_59 
* INPUT : bl_59 
* INPUT : br_59 
* OUTPUT: data_60 
* INPUT : bl_60 
* INPUT : br_60 
* OUTPUT: data_61 
* INPUT : bl_61 
* INPUT : br_61 
* OUTPUT: data_62 
* INPUT : bl_62 
* INPUT : br_62 
* OUTPUT: data_63 
* INPUT : bl_63 
* INPUT : br_63 
* OUTPUT: data_64 
* INPUT : bl_64 
* INPUT : br_64 
* OUTPUT: data_65 
* INPUT : bl_65 
* INPUT : br_65 
* OUTPUT: data_66 
* INPUT : bl_66 
* INPUT : br_66 
* OUTPUT: data_67 
* INPUT : bl_67 
* INPUT : br_67 
* OUTPUT: data_68 
* INPUT : bl_68 
* INPUT : br_68 
* OUTPUT: data_69 
* INPUT : bl_69 
* INPUT : br_69 
* OUTPUT: data_70 
* INPUT : bl_70 
* INPUT : br_70 
* OUTPUT: data_71 
* INPUT : bl_71 
* INPUT : br_71 
* INPUT : en 
* POWER : vdd 
* GROUND: gnd 
* words_per_row: 1
Xsa_d0
+ bl_0 br_0 data_0 en vdd gnd
+ sense_amp
Xsa_d1
+ bl_1 br_1 data_1 en vdd gnd
+ sense_amp
Xsa_d2
+ bl_2 br_2 data_2 en vdd gnd
+ sense_amp
Xsa_d3
+ bl_3 br_3 data_3 en vdd gnd
+ sense_amp
Xsa_d4
+ bl_4 br_4 data_4 en vdd gnd
+ sense_amp
Xsa_d5
+ bl_5 br_5 data_5 en vdd gnd
+ sense_amp
Xsa_d6
+ bl_6 br_6 data_6 en vdd gnd
+ sense_amp
Xsa_d7
+ bl_7 br_7 data_7 en vdd gnd
+ sense_amp
Xsa_d8
+ bl_8 br_8 data_8 en vdd gnd
+ sense_amp
Xsa_d9
+ bl_9 br_9 data_9 en vdd gnd
+ sense_amp
Xsa_d10
+ bl_10 br_10 data_10 en vdd gnd
+ sense_amp
Xsa_d11
+ bl_11 br_11 data_11 en vdd gnd
+ sense_amp
Xsa_d12
+ bl_12 br_12 data_12 en vdd gnd
+ sense_amp
Xsa_d13
+ bl_13 br_13 data_13 en vdd gnd
+ sense_amp
Xsa_d14
+ bl_14 br_14 data_14 en vdd gnd
+ sense_amp
Xsa_d15
+ bl_15 br_15 data_15 en vdd gnd
+ sense_amp
Xsa_d16
+ bl_16 br_16 data_16 en vdd gnd
+ sense_amp
Xsa_d17
+ bl_17 br_17 data_17 en vdd gnd
+ sense_amp
Xsa_d18
+ bl_18 br_18 data_18 en vdd gnd
+ sense_amp
Xsa_d19
+ bl_19 br_19 data_19 en vdd gnd
+ sense_amp
Xsa_d20
+ bl_20 br_20 data_20 en vdd gnd
+ sense_amp
Xsa_d21
+ bl_21 br_21 data_21 en vdd gnd
+ sense_amp
Xsa_d22
+ bl_22 br_22 data_22 en vdd gnd
+ sense_amp
Xsa_d23
+ bl_23 br_23 data_23 en vdd gnd
+ sense_amp
Xsa_d24
+ bl_24 br_24 data_24 en vdd gnd
+ sense_amp
Xsa_d25
+ bl_25 br_25 data_25 en vdd gnd
+ sense_amp
Xsa_d26
+ bl_26 br_26 data_26 en vdd gnd
+ sense_amp
Xsa_d27
+ bl_27 br_27 data_27 en vdd gnd
+ sense_amp
Xsa_d28
+ bl_28 br_28 data_28 en vdd gnd
+ sense_amp
Xsa_d29
+ bl_29 br_29 data_29 en vdd gnd
+ sense_amp
Xsa_d30
+ bl_30 br_30 data_30 en vdd gnd
+ sense_amp
Xsa_d31
+ bl_31 br_31 data_31 en vdd gnd
+ sense_amp
Xsa_d32
+ bl_32 br_32 data_32 en vdd gnd
+ sense_amp
Xsa_d33
+ bl_33 br_33 data_33 en vdd gnd
+ sense_amp
Xsa_d34
+ bl_34 br_34 data_34 en vdd gnd
+ sense_amp
Xsa_d35
+ bl_35 br_35 data_35 en vdd gnd
+ sense_amp
Xsa_d36
+ bl_36 br_36 data_36 en vdd gnd
+ sense_amp
Xsa_d37
+ bl_37 br_37 data_37 en vdd gnd
+ sense_amp
Xsa_d38
+ bl_38 br_38 data_38 en vdd gnd
+ sense_amp
Xsa_d39
+ bl_39 br_39 data_39 en vdd gnd
+ sense_amp
Xsa_d40
+ bl_40 br_40 data_40 en vdd gnd
+ sense_amp
Xsa_d41
+ bl_41 br_41 data_41 en vdd gnd
+ sense_amp
Xsa_d42
+ bl_42 br_42 data_42 en vdd gnd
+ sense_amp
Xsa_d43
+ bl_43 br_43 data_43 en vdd gnd
+ sense_amp
Xsa_d44
+ bl_44 br_44 data_44 en vdd gnd
+ sense_amp
Xsa_d45
+ bl_45 br_45 data_45 en vdd gnd
+ sense_amp
Xsa_d46
+ bl_46 br_46 data_46 en vdd gnd
+ sense_amp
Xsa_d47
+ bl_47 br_47 data_47 en vdd gnd
+ sense_amp
Xsa_d48
+ bl_48 br_48 data_48 en vdd gnd
+ sense_amp
Xsa_d49
+ bl_49 br_49 data_49 en vdd gnd
+ sense_amp
Xsa_d50
+ bl_50 br_50 data_50 en vdd gnd
+ sense_amp
Xsa_d51
+ bl_51 br_51 data_51 en vdd gnd
+ sense_amp
Xsa_d52
+ bl_52 br_52 data_52 en vdd gnd
+ sense_amp
Xsa_d53
+ bl_53 br_53 data_53 en vdd gnd
+ sense_amp
Xsa_d54
+ bl_54 br_54 data_54 en vdd gnd
+ sense_amp
Xsa_d55
+ bl_55 br_55 data_55 en vdd gnd
+ sense_amp
Xsa_d56
+ bl_56 br_56 data_56 en vdd gnd
+ sense_amp
Xsa_d57
+ bl_57 br_57 data_57 en vdd gnd
+ sense_amp
Xsa_d58
+ bl_58 br_58 data_58 en vdd gnd
+ sense_amp
Xsa_d59
+ bl_59 br_59 data_59 en vdd gnd
+ sense_amp
Xsa_d60
+ bl_60 br_60 data_60 en vdd gnd
+ sense_amp
Xsa_d61
+ bl_61 br_61 data_61 en vdd gnd
+ sense_amp
Xsa_d62
+ bl_62 br_62 data_62 en vdd gnd
+ sense_amp
Xsa_d63
+ bl_63 br_63 data_63 en vdd gnd
+ sense_amp
Xsa_d64
+ bl_64 br_64 data_64 en vdd gnd
+ sense_amp
Xsa_d65
+ bl_65 br_65 data_65 en vdd gnd
+ sense_amp
Xsa_d66
+ bl_66 br_66 data_66 en vdd gnd
+ sense_amp
Xsa_d67
+ bl_67 br_67 data_67 en vdd gnd
+ sense_amp
Xsa_d68
+ bl_68 br_68 data_68 en vdd gnd
+ sense_amp
Xsa_d69
+ bl_69 br_69 data_69 en vdd gnd
+ sense_amp
Xsa_d70
+ bl_70 br_70 data_70 en vdd gnd
+ sense_amp
Xsa_d71
+ bl_71 br_71 data_71 en vdd gnd
+ sense_amp
.ENDS freepdk45_sram_1w1r_32x72_sense_amp_array

.SUBCKT freepdk45_sram_1w1r_32x72_precharge_1
+ bl br en_bar vdd
* OUTPUT: bl 
* OUTPUT: br 
* INPUT : en_bar 
* POWER : vdd 
Mlower_pmos bl en_bar br vdd pmos_vtg m=1 w=0.27u l=0.05u 
Mupper_pmos1 bl en_bar vdd vdd pmos_vtg m=1 w=0.27u l=0.05u 
Mupper_pmos2 br en_bar vdd vdd pmos_vtg m=1 w=0.27u l=0.05u 
.ENDS freepdk45_sram_1w1r_32x72_precharge_1

.SUBCKT freepdk45_sram_1w1r_32x72_precharge_array_0
+ bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6
+ bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12 br_12
+ bl_13 br_13 bl_14 br_14 bl_15 br_15 bl_16 br_16 bl_17 br_17 bl_18
+ br_18 bl_19 br_19 bl_20 br_20 bl_21 br_21 bl_22 br_22 bl_23 br_23
+ bl_24 br_24 bl_25 br_25 bl_26 br_26 bl_27 br_27 bl_28 br_28 bl_29
+ br_29 bl_30 br_30 bl_31 br_31 bl_32 br_32 bl_33 br_33 bl_34 br_34
+ bl_35 br_35 bl_36 br_36 bl_37 br_37 bl_38 br_38 bl_39 br_39 bl_40
+ br_40 bl_41 br_41 bl_42 br_42 bl_43 br_43 bl_44 br_44 bl_45 br_45
+ bl_46 br_46 bl_47 br_47 bl_48 br_48 bl_49 br_49 bl_50 br_50 bl_51
+ br_51 bl_52 br_52 bl_53 br_53 bl_54 br_54 bl_55 br_55 bl_56 br_56
+ bl_57 br_57 bl_58 br_58 bl_59 br_59 bl_60 br_60 bl_61 br_61 bl_62
+ br_62 bl_63 br_63 bl_64 br_64 bl_65 br_65 bl_66 br_66 bl_67 br_67
+ bl_68 br_68 bl_69 br_69 bl_70 br_70 bl_71 br_71 bl_72 br_72 en_bar vdd
* OUTPUT: bl_0 
* OUTPUT: br_0 
* OUTPUT: bl_1 
* OUTPUT: br_1 
* OUTPUT: bl_2 
* OUTPUT: br_2 
* OUTPUT: bl_3 
* OUTPUT: br_3 
* OUTPUT: bl_4 
* OUTPUT: br_4 
* OUTPUT: bl_5 
* OUTPUT: br_5 
* OUTPUT: bl_6 
* OUTPUT: br_6 
* OUTPUT: bl_7 
* OUTPUT: br_7 
* OUTPUT: bl_8 
* OUTPUT: br_8 
* OUTPUT: bl_9 
* OUTPUT: br_9 
* OUTPUT: bl_10 
* OUTPUT: br_10 
* OUTPUT: bl_11 
* OUTPUT: br_11 
* OUTPUT: bl_12 
* OUTPUT: br_12 
* OUTPUT: bl_13 
* OUTPUT: br_13 
* OUTPUT: bl_14 
* OUTPUT: br_14 
* OUTPUT: bl_15 
* OUTPUT: br_15 
* OUTPUT: bl_16 
* OUTPUT: br_16 
* OUTPUT: bl_17 
* OUTPUT: br_17 
* OUTPUT: bl_18 
* OUTPUT: br_18 
* OUTPUT: bl_19 
* OUTPUT: br_19 
* OUTPUT: bl_20 
* OUTPUT: br_20 
* OUTPUT: bl_21 
* OUTPUT: br_21 
* OUTPUT: bl_22 
* OUTPUT: br_22 
* OUTPUT: bl_23 
* OUTPUT: br_23 
* OUTPUT: bl_24 
* OUTPUT: br_24 
* OUTPUT: bl_25 
* OUTPUT: br_25 
* OUTPUT: bl_26 
* OUTPUT: br_26 
* OUTPUT: bl_27 
* OUTPUT: br_27 
* OUTPUT: bl_28 
* OUTPUT: br_28 
* OUTPUT: bl_29 
* OUTPUT: br_29 
* OUTPUT: bl_30 
* OUTPUT: br_30 
* OUTPUT: bl_31 
* OUTPUT: br_31 
* OUTPUT: bl_32 
* OUTPUT: br_32 
* OUTPUT: bl_33 
* OUTPUT: br_33 
* OUTPUT: bl_34 
* OUTPUT: br_34 
* OUTPUT: bl_35 
* OUTPUT: br_35 
* OUTPUT: bl_36 
* OUTPUT: br_36 
* OUTPUT: bl_37 
* OUTPUT: br_37 
* OUTPUT: bl_38 
* OUTPUT: br_38 
* OUTPUT: bl_39 
* OUTPUT: br_39 
* OUTPUT: bl_40 
* OUTPUT: br_40 
* OUTPUT: bl_41 
* OUTPUT: br_41 
* OUTPUT: bl_42 
* OUTPUT: br_42 
* OUTPUT: bl_43 
* OUTPUT: br_43 
* OUTPUT: bl_44 
* OUTPUT: br_44 
* OUTPUT: bl_45 
* OUTPUT: br_45 
* OUTPUT: bl_46 
* OUTPUT: br_46 
* OUTPUT: bl_47 
* OUTPUT: br_47 
* OUTPUT: bl_48 
* OUTPUT: br_48 
* OUTPUT: bl_49 
* OUTPUT: br_49 
* OUTPUT: bl_50 
* OUTPUT: br_50 
* OUTPUT: bl_51 
* OUTPUT: br_51 
* OUTPUT: bl_52 
* OUTPUT: br_52 
* OUTPUT: bl_53 
* OUTPUT: br_53 
* OUTPUT: bl_54 
* OUTPUT: br_54 
* OUTPUT: bl_55 
* OUTPUT: br_55 
* OUTPUT: bl_56 
* OUTPUT: br_56 
* OUTPUT: bl_57 
* OUTPUT: br_57 
* OUTPUT: bl_58 
* OUTPUT: br_58 
* OUTPUT: bl_59 
* OUTPUT: br_59 
* OUTPUT: bl_60 
* OUTPUT: br_60 
* OUTPUT: bl_61 
* OUTPUT: br_61 
* OUTPUT: bl_62 
* OUTPUT: br_62 
* OUTPUT: bl_63 
* OUTPUT: br_63 
* OUTPUT: bl_64 
* OUTPUT: br_64 
* OUTPUT: bl_65 
* OUTPUT: br_65 
* OUTPUT: bl_66 
* OUTPUT: br_66 
* OUTPUT: bl_67 
* OUTPUT: br_67 
* OUTPUT: bl_68 
* OUTPUT: br_68 
* OUTPUT: bl_69 
* OUTPUT: br_69 
* OUTPUT: bl_70 
* OUTPUT: br_70 
* OUTPUT: bl_71 
* OUTPUT: br_71 
* OUTPUT: bl_72 
* OUTPUT: br_72 
* INPUT : en_bar 
* POWER : vdd 
* cols: 73 size: 1 bl: bl1 br: br1
Xpre_column_0
+ bl_0 br_0 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_1
+ bl_1 br_1 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_2
+ bl_2 br_2 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_3
+ bl_3 br_3 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_4
+ bl_4 br_4 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_5
+ bl_5 br_5 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_6
+ bl_6 br_6 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_7
+ bl_7 br_7 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_8
+ bl_8 br_8 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_9
+ bl_9 br_9 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_10
+ bl_10 br_10 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_11
+ bl_11 br_11 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_12
+ bl_12 br_12 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_13
+ bl_13 br_13 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_14
+ bl_14 br_14 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_15
+ bl_15 br_15 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_16
+ bl_16 br_16 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_17
+ bl_17 br_17 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_18
+ bl_18 br_18 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_19
+ bl_19 br_19 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_20
+ bl_20 br_20 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_21
+ bl_21 br_21 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_22
+ bl_22 br_22 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_23
+ bl_23 br_23 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_24
+ bl_24 br_24 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_25
+ bl_25 br_25 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_26
+ bl_26 br_26 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_27
+ bl_27 br_27 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_28
+ bl_28 br_28 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_29
+ bl_29 br_29 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_30
+ bl_30 br_30 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_31
+ bl_31 br_31 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_32
+ bl_32 br_32 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_33
+ bl_33 br_33 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_34
+ bl_34 br_34 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_35
+ bl_35 br_35 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_36
+ bl_36 br_36 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_37
+ bl_37 br_37 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_38
+ bl_38 br_38 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_39
+ bl_39 br_39 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_40
+ bl_40 br_40 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_41
+ bl_41 br_41 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_42
+ bl_42 br_42 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_43
+ bl_43 br_43 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_44
+ bl_44 br_44 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_45
+ bl_45 br_45 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_46
+ bl_46 br_46 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_47
+ bl_47 br_47 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_48
+ bl_48 br_48 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_49
+ bl_49 br_49 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_50
+ bl_50 br_50 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_51
+ bl_51 br_51 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_52
+ bl_52 br_52 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_53
+ bl_53 br_53 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_54
+ bl_54 br_54 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_55
+ bl_55 br_55 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_56
+ bl_56 br_56 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_57
+ bl_57 br_57 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_58
+ bl_58 br_58 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_59
+ bl_59 br_59 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_60
+ bl_60 br_60 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_61
+ bl_61 br_61 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_62
+ bl_62 br_62 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_63
+ bl_63 br_63 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_64
+ bl_64 br_64 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_65
+ bl_65 br_65 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_66
+ bl_66 br_66 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_67
+ bl_67 br_67 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_68
+ bl_68 br_68 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_69
+ bl_69 br_69 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_70
+ bl_70 br_70 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_71
+ bl_71 br_71 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
Xpre_column_72
+ bl_72 br_72 en_bar vdd
+ freepdk45_sram_1w1r_32x72_precharge_1
.ENDS freepdk45_sram_1w1r_32x72_precharge_array_0

.SUBCKT freepdk45_sram_1w1r_32x72_port_data_0
+ rbl_bl rbl_br bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5
+ br_5 bl_6 br_6 bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11
+ bl_12 br_12 bl_13 br_13 bl_14 br_14 bl_15 br_15 bl_16 br_16 bl_17
+ br_17 bl_18 br_18 bl_19 br_19 bl_20 br_20 bl_21 br_21 bl_22 br_22
+ bl_23 br_23 bl_24 br_24 bl_25 br_25 bl_26 br_26 bl_27 br_27 bl_28
+ br_28 bl_29 br_29 bl_30 br_30 bl_31 br_31 bl_32 br_32 bl_33 br_33
+ bl_34 br_34 bl_35 br_35 bl_36 br_36 bl_37 br_37 bl_38 br_38 bl_39
+ br_39 bl_40 br_40 bl_41 br_41 bl_42 br_42 bl_43 br_43 bl_44 br_44
+ bl_45 br_45 bl_46 br_46 bl_47 br_47 bl_48 br_48 bl_49 br_49 bl_50
+ br_50 bl_51 br_51 bl_52 br_52 bl_53 br_53 bl_54 br_54 bl_55 br_55
+ bl_56 br_56 bl_57 br_57 bl_58 br_58 bl_59 br_59 bl_60 br_60 bl_61
+ br_61 bl_62 br_62 bl_63 br_63 bl_64 br_64 bl_65 br_65 bl_66 br_66
+ bl_67 br_67 bl_68 br_68 bl_69 br_69 bl_70 br_70 bl_71 br_71 dout_0
+ dout_1 dout_2 dout_3 dout_4 dout_5 dout_6 dout_7 dout_8 dout_9 dout_10
+ dout_11 dout_12 dout_13 dout_14 dout_15 dout_16 dout_17 dout_18
+ dout_19 dout_20 dout_21 dout_22 dout_23 dout_24 dout_25 dout_26
+ dout_27 dout_28 dout_29 dout_30 dout_31 dout_32 dout_33 dout_34
+ dout_35 dout_36 dout_37 dout_38 dout_39 dout_40 dout_41 dout_42
+ dout_43 dout_44 dout_45 dout_46 dout_47 dout_48 dout_49 dout_50
+ dout_51 dout_52 dout_53 dout_54 dout_55 dout_56 dout_57 dout_58
+ dout_59 dout_60 dout_61 dout_62 dout_63 dout_64 dout_65 dout_66
+ dout_67 dout_68 dout_69 dout_70 dout_71 s_en p_en_bar vdd gnd
* INOUT : rbl_bl 
* INOUT : rbl_br 
* INOUT : bl_0 
* INOUT : br_0 
* INOUT : bl_1 
* INOUT : br_1 
* INOUT : bl_2 
* INOUT : br_2 
* INOUT : bl_3 
* INOUT : br_3 
* INOUT : bl_4 
* INOUT : br_4 
* INOUT : bl_5 
* INOUT : br_5 
* INOUT : bl_6 
* INOUT : br_6 
* INOUT : bl_7 
* INOUT : br_7 
* INOUT : bl_8 
* INOUT : br_8 
* INOUT : bl_9 
* INOUT : br_9 
* INOUT : bl_10 
* INOUT : br_10 
* INOUT : bl_11 
* INOUT : br_11 
* INOUT : bl_12 
* INOUT : br_12 
* INOUT : bl_13 
* INOUT : br_13 
* INOUT : bl_14 
* INOUT : br_14 
* INOUT : bl_15 
* INOUT : br_15 
* INOUT : bl_16 
* INOUT : br_16 
* INOUT : bl_17 
* INOUT : br_17 
* INOUT : bl_18 
* INOUT : br_18 
* INOUT : bl_19 
* INOUT : br_19 
* INOUT : bl_20 
* INOUT : br_20 
* INOUT : bl_21 
* INOUT : br_21 
* INOUT : bl_22 
* INOUT : br_22 
* INOUT : bl_23 
* INOUT : br_23 
* INOUT : bl_24 
* INOUT : br_24 
* INOUT : bl_25 
* INOUT : br_25 
* INOUT : bl_26 
* INOUT : br_26 
* INOUT : bl_27 
* INOUT : br_27 
* INOUT : bl_28 
* INOUT : br_28 
* INOUT : bl_29 
* INOUT : br_29 
* INOUT : bl_30 
* INOUT : br_30 
* INOUT : bl_31 
* INOUT : br_31 
* INOUT : bl_32 
* INOUT : br_32 
* INOUT : bl_33 
* INOUT : br_33 
* INOUT : bl_34 
* INOUT : br_34 
* INOUT : bl_35 
* INOUT : br_35 
* INOUT : bl_36 
* INOUT : br_36 
* INOUT : bl_37 
* INOUT : br_37 
* INOUT : bl_38 
* INOUT : br_38 
* INOUT : bl_39 
* INOUT : br_39 
* INOUT : bl_40 
* INOUT : br_40 
* INOUT : bl_41 
* INOUT : br_41 
* INOUT : bl_42 
* INOUT : br_42 
* INOUT : bl_43 
* INOUT : br_43 
* INOUT : bl_44 
* INOUT : br_44 
* INOUT : bl_45 
* INOUT : br_45 
* INOUT : bl_46 
* INOUT : br_46 
* INOUT : bl_47 
* INOUT : br_47 
* INOUT : bl_48 
* INOUT : br_48 
* INOUT : bl_49 
* INOUT : br_49 
* INOUT : bl_50 
* INOUT : br_50 
* INOUT : bl_51 
* INOUT : br_51 
* INOUT : bl_52 
* INOUT : br_52 
* INOUT : bl_53 
* INOUT : br_53 
* INOUT : bl_54 
* INOUT : br_54 
* INOUT : bl_55 
* INOUT : br_55 
* INOUT : bl_56 
* INOUT : br_56 
* INOUT : bl_57 
* INOUT : br_57 
* INOUT : bl_58 
* INOUT : br_58 
* INOUT : bl_59 
* INOUT : br_59 
* INOUT : bl_60 
* INOUT : br_60 
* INOUT : bl_61 
* INOUT : br_61 
* INOUT : bl_62 
* INOUT : br_62 
* INOUT : bl_63 
* INOUT : br_63 
* INOUT : bl_64 
* INOUT : br_64 
* INOUT : bl_65 
* INOUT : br_65 
* INOUT : bl_66 
* INOUT : br_66 
* INOUT : bl_67 
* INOUT : br_67 
* INOUT : bl_68 
* INOUT : br_68 
* INOUT : bl_69 
* INOUT : br_69 
* INOUT : bl_70 
* INOUT : br_70 
* INOUT : bl_71 
* INOUT : br_71 
* OUTPUT: dout_0 
* OUTPUT: dout_1 
* OUTPUT: dout_2 
* OUTPUT: dout_3 
* OUTPUT: dout_4 
* OUTPUT: dout_5 
* OUTPUT: dout_6 
* OUTPUT: dout_7 
* OUTPUT: dout_8 
* OUTPUT: dout_9 
* OUTPUT: dout_10 
* OUTPUT: dout_11 
* OUTPUT: dout_12 
* OUTPUT: dout_13 
* OUTPUT: dout_14 
* OUTPUT: dout_15 
* OUTPUT: dout_16 
* OUTPUT: dout_17 
* OUTPUT: dout_18 
* OUTPUT: dout_19 
* OUTPUT: dout_20 
* OUTPUT: dout_21 
* OUTPUT: dout_22 
* OUTPUT: dout_23 
* OUTPUT: dout_24 
* OUTPUT: dout_25 
* OUTPUT: dout_26 
* OUTPUT: dout_27 
* OUTPUT: dout_28 
* OUTPUT: dout_29 
* OUTPUT: dout_30 
* OUTPUT: dout_31 
* OUTPUT: dout_32 
* OUTPUT: dout_33 
* OUTPUT: dout_34 
* OUTPUT: dout_35 
* OUTPUT: dout_36 
* OUTPUT: dout_37 
* OUTPUT: dout_38 
* OUTPUT: dout_39 
* OUTPUT: dout_40 
* OUTPUT: dout_41 
* OUTPUT: dout_42 
* OUTPUT: dout_43 
* OUTPUT: dout_44 
* OUTPUT: dout_45 
* OUTPUT: dout_46 
* OUTPUT: dout_47 
* OUTPUT: dout_48 
* OUTPUT: dout_49 
* OUTPUT: dout_50 
* OUTPUT: dout_51 
* OUTPUT: dout_52 
* OUTPUT: dout_53 
* OUTPUT: dout_54 
* OUTPUT: dout_55 
* OUTPUT: dout_56 
* OUTPUT: dout_57 
* OUTPUT: dout_58 
* OUTPUT: dout_59 
* OUTPUT: dout_60 
* OUTPUT: dout_61 
* OUTPUT: dout_62 
* OUTPUT: dout_63 
* OUTPUT: dout_64 
* OUTPUT: dout_65 
* OUTPUT: dout_66 
* OUTPUT: dout_67 
* OUTPUT: dout_68 
* OUTPUT: dout_69 
* OUTPUT: dout_70 
* OUTPUT: dout_71 
* INPUT : s_en 
* INPUT : p_en_bar 
* POWER : vdd 
* GROUND: gnd 
Xprecharge_array1
+ bl_0 br_0 bl_1 br_1 bl_2 br_2 bl_3 br_3 bl_4 br_4 bl_5 br_5 bl_6 br_6
+ bl_7 br_7 bl_8 br_8 bl_9 br_9 bl_10 br_10 bl_11 br_11 bl_12 br_12
+ bl_13 br_13 bl_14 br_14 bl_15 br_15 bl_16 br_16 bl_17 br_17 bl_18
+ br_18 bl_19 br_19 bl_20 br_20 bl_21 br_21 bl_22 br_22 bl_23 br_23
+ bl_24 br_24 bl_25 br_25 bl_26 br_26 bl_27 br_27 bl_28 br_28 bl_29
+ br_29 bl_30 br_30 bl_31 br_31 bl_32 br_32 bl_33 br_33 bl_34 br_34
+ bl_35 br_35 bl_36 br_36 bl_37 br_37 bl_38 br_38 bl_39 br_39 bl_40
+ br_40 bl_41 br_41 bl_42 br_42 bl_43 br_43 bl_44 br_44 bl_45 br_45
+ bl_46 br_46 bl_47 br_47 bl_48 br_48 bl_49 br_49 bl_50 br_50 bl_51
+ br_51 bl_52 br_52 bl_53 br_53 bl_54 br_54 bl_55 br_55 bl_56 br_56
+ bl_57 br_57 bl_58 br_58 bl_59 br_59 bl_60 br_60 bl_61 br_61 bl_62
+ br_62 bl_63 br_63 bl_64 br_64 bl_65 br_65 bl_66 br_66 bl_67 br_67
+ bl_68 br_68 bl_69 br_69 bl_70 br_70 bl_71 br_71 rbl_bl rbl_br p_en_bar
+ vdd
+ freepdk45_sram_1w1r_32x72_precharge_array_0
Xsense_amp_array1
+ dout_0 bl_0 br_0 dout_1 bl_1 br_1 dout_2 bl_2 br_2 dout_3 bl_3 br_3
+ dout_4 bl_4 br_4 dout_5 bl_5 br_5 dout_6 bl_6 br_6 dout_7 bl_7 br_7
+ dout_8 bl_8 br_8 dout_9 bl_9 br_9 dout_10 bl_10 br_10 dout_11 bl_11
+ br_11 dout_12 bl_12 br_12 dout_13 bl_13 br_13 dout_14 bl_14 br_14
+ dout_15 bl_15 br_15 dout_16 bl_16 br_16 dout_17 bl_17 br_17 dout_18
+ bl_18 br_18 dout_19 bl_19 br_19 dout_20 bl_20 br_20 dout_21 bl_21
+ br_21 dout_22 bl_22 br_22 dout_23 bl_23 br_23 dout_24 bl_24 br_24
+ dout_25 bl_25 br_25 dout_26 bl_26 br_26 dout_27 bl_27 br_27 dout_28
+ bl_28 br_28 dout_29 bl_29 br_29 dout_30 bl_30 br_30 dout_31 bl_31
+ br_31 dout_32 bl_32 br_32 dout_33 bl_33 br_33 dout_34 bl_34 br_34
+ dout_35 bl_35 br_35 dout_36 bl_36 br_36 dout_37 bl_37 br_37 dout_38
+ bl_38 br_38 dout_39 bl_39 br_39 dout_40 bl_40 br_40 dout_41 bl_41
+ br_41 dout_42 bl_42 br_42 dout_43 bl_43 br_43 dout_44 bl_44 br_44
+ dout_45 bl_45 br_45 dout_46 bl_46 br_46 dout_47 bl_47 br_47 dout_48
+ bl_48 br_48 dout_49 bl_49 br_49 dout_50 bl_50 br_50 dout_51 bl_51
+ br_51 dout_52 bl_52 br_52 dout_53 bl_53 br_53 dout_54 bl_54 br_54
+ dout_55 bl_55 br_55 dout_56 bl_56 br_56 dout_57 bl_57 br_57 dout_58
+ bl_58 br_58 dout_59 bl_59 br_59 dout_60 bl_60 br_60 dout_61 bl_61
+ br_61 dout_62 bl_62 br_62 dout_63 bl_63 br_63 dout_64 bl_64 br_64
+ dout_65 bl_65 br_65 dout_66 bl_66 br_66 dout_67 bl_67 br_67 dout_68
+ bl_68 br_68 dout_69 bl_69 br_69 dout_70 bl_70 br_70 dout_71 bl_71
+ br_71 s_en vdd gnd
+ freepdk45_sram_1w1r_32x72_sense_amp_array
.ENDS freepdk45_sram_1w1r_32x72_port_data_0

.SUBCKT freepdk45_sram_1w1r_32x72_bank
+ dout1_0 dout1_1 dout1_2 dout1_3 dout1_4 dout1_5 dout1_6 dout1_7
+ dout1_8 dout1_9 dout1_10 dout1_11 dout1_12 dout1_13 dout1_14 dout1_15
+ dout1_16 dout1_17 dout1_18 dout1_19 dout1_20 dout1_21 dout1_22
+ dout1_23 dout1_24 dout1_25 dout1_26 dout1_27 dout1_28 dout1_29
+ dout1_30 dout1_31 dout1_32 dout1_33 dout1_34 dout1_35 dout1_36
+ dout1_37 dout1_38 dout1_39 dout1_40 dout1_41 dout1_42 dout1_43
+ dout1_44 dout1_45 dout1_46 dout1_47 dout1_48 dout1_49 dout1_50
+ dout1_51 dout1_52 dout1_53 dout1_54 dout1_55 dout1_56 dout1_57
+ dout1_58 dout1_59 dout1_60 dout1_61 dout1_62 dout1_63 dout1_64
+ dout1_65 dout1_66 dout1_67 dout1_68 dout1_69 dout1_70 dout1_71
+ rbl_bl_0_0 rbl_bl_1_1 din0_0 din0_1 din0_2 din0_3 din0_4 din0_5 din0_6
+ din0_7 din0_8 din0_9 din0_10 din0_11 din0_12 din0_13 din0_14 din0_15
+ din0_16 din0_17 din0_18 din0_19 din0_20 din0_21 din0_22 din0_23
+ din0_24 din0_25 din0_26 din0_27 din0_28 din0_29 din0_30 din0_31
+ din0_32 din0_33 din0_34 din0_35 din0_36 din0_37 din0_38 din0_39
+ din0_40 din0_41 din0_42 din0_43 din0_44 din0_45 din0_46 din0_47
+ din0_48 din0_49 din0_50 din0_51 din0_52 din0_53 din0_54 din0_55
+ din0_56 din0_57 din0_58 din0_59 din0_60 din0_61 din0_62 din0_63
+ din0_64 din0_65 din0_66 din0_67 din0_68 din0_69 din0_70 din0_71
+ addr0_0 addr0_1 addr0_2 addr0_3 addr0_4 addr1_0 addr1_1 addr1_2
+ addr1_3 addr1_4 s_en1 p_en_bar0 p_en_bar1 w_en0 wl_en0 wl_en1 vdd gnd
* OUTPUT: dout1_0 
* OUTPUT: dout1_1 
* OUTPUT: dout1_2 
* OUTPUT: dout1_3 
* OUTPUT: dout1_4 
* OUTPUT: dout1_5 
* OUTPUT: dout1_6 
* OUTPUT: dout1_7 
* OUTPUT: dout1_8 
* OUTPUT: dout1_9 
* OUTPUT: dout1_10 
* OUTPUT: dout1_11 
* OUTPUT: dout1_12 
* OUTPUT: dout1_13 
* OUTPUT: dout1_14 
* OUTPUT: dout1_15 
* OUTPUT: dout1_16 
* OUTPUT: dout1_17 
* OUTPUT: dout1_18 
* OUTPUT: dout1_19 
* OUTPUT: dout1_20 
* OUTPUT: dout1_21 
* OUTPUT: dout1_22 
* OUTPUT: dout1_23 
* OUTPUT: dout1_24 
* OUTPUT: dout1_25 
* OUTPUT: dout1_26 
* OUTPUT: dout1_27 
* OUTPUT: dout1_28 
* OUTPUT: dout1_29 
* OUTPUT: dout1_30 
* OUTPUT: dout1_31 
* OUTPUT: dout1_32 
* OUTPUT: dout1_33 
* OUTPUT: dout1_34 
* OUTPUT: dout1_35 
* OUTPUT: dout1_36 
* OUTPUT: dout1_37 
* OUTPUT: dout1_38 
* OUTPUT: dout1_39 
* OUTPUT: dout1_40 
* OUTPUT: dout1_41 
* OUTPUT: dout1_42 
* OUTPUT: dout1_43 
* OUTPUT: dout1_44 
* OUTPUT: dout1_45 
* OUTPUT: dout1_46 
* OUTPUT: dout1_47 
* OUTPUT: dout1_48 
* OUTPUT: dout1_49 
* OUTPUT: dout1_50 
* OUTPUT: dout1_51 
* OUTPUT: dout1_52 
* OUTPUT: dout1_53 
* OUTPUT: dout1_54 
* OUTPUT: dout1_55 
* OUTPUT: dout1_56 
* OUTPUT: dout1_57 
* OUTPUT: dout1_58 
* OUTPUT: dout1_59 
* OUTPUT: dout1_60 
* OUTPUT: dout1_61 
* OUTPUT: dout1_62 
* OUTPUT: dout1_63 
* OUTPUT: dout1_64 
* OUTPUT: dout1_65 
* OUTPUT: dout1_66 
* OUTPUT: dout1_67 
* OUTPUT: dout1_68 
* OUTPUT: dout1_69 
* OUTPUT: dout1_70 
* OUTPUT: dout1_71 
* OUTPUT: rbl_bl_0_0 
* OUTPUT: rbl_bl_1_1 
* INPUT : din0_0 
* INPUT : din0_1 
* INPUT : din0_2 
* INPUT : din0_3 
* INPUT : din0_4 
* INPUT : din0_5 
* INPUT : din0_6 
* INPUT : din0_7 
* INPUT : din0_8 
* INPUT : din0_9 
* INPUT : din0_10 
* INPUT : din0_11 
* INPUT : din0_12 
* INPUT : din0_13 
* INPUT : din0_14 
* INPUT : din0_15 
* INPUT : din0_16 
* INPUT : din0_17 
* INPUT : din0_18 
* INPUT : din0_19 
* INPUT : din0_20 
* INPUT : din0_21 
* INPUT : din0_22 
* INPUT : din0_23 
* INPUT : din0_24 
* INPUT : din0_25 
* INPUT : din0_26 
* INPUT : din0_27 
* INPUT : din0_28 
* INPUT : din0_29 
* INPUT : din0_30 
* INPUT : din0_31 
* INPUT : din0_32 
* INPUT : din0_33 
* INPUT : din0_34 
* INPUT : din0_35 
* INPUT : din0_36 
* INPUT : din0_37 
* INPUT : din0_38 
* INPUT : din0_39 
* INPUT : din0_40 
* INPUT : din0_41 
* INPUT : din0_42 
* INPUT : din0_43 
* INPUT : din0_44 
* INPUT : din0_45 
* INPUT : din0_46 
* INPUT : din0_47 
* INPUT : din0_48 
* INPUT : din0_49 
* INPUT : din0_50 
* INPUT : din0_51 
* INPUT : din0_52 
* INPUT : din0_53 
* INPUT : din0_54 
* INPUT : din0_55 
* INPUT : din0_56 
* INPUT : din0_57 
* INPUT : din0_58 
* INPUT : din0_59 
* INPUT : din0_60 
* INPUT : din0_61 
* INPUT : din0_62 
* INPUT : din0_63 
* INPUT : din0_64 
* INPUT : din0_65 
* INPUT : din0_66 
* INPUT : din0_67 
* INPUT : din0_68 
* INPUT : din0_69 
* INPUT : din0_70 
* INPUT : din0_71 
* INPUT : addr0_0 
* INPUT : addr0_1 
* INPUT : addr0_2 
* INPUT : addr0_3 
* INPUT : addr0_4 
* INPUT : addr1_0 
* INPUT : addr1_1 
* INPUT : addr1_2 
* INPUT : addr1_3 
* INPUT : addr1_4 
* INPUT : s_en1 
* INPUT : p_en_bar0 
* INPUT : p_en_bar1 
* INPUT : w_en0 
* INPUT : wl_en0 
* INPUT : wl_en1 
* POWER : vdd 
* GROUND: gnd 
Xbitcell_array
+ rbl_bl_0_0 rbl_bl_1_0 rbl_br_0_0 rbl_br_1_0 bl_0_0 bl_1_0 br_0_0
+ br_1_0 bl_0_1 bl_1_1 br_0_1 br_1_1 bl_0_2 bl_1_2 br_0_2 br_1_2 bl_0_3
+ bl_1_3 br_0_3 br_1_3 bl_0_4 bl_1_4 br_0_4 br_1_4 bl_0_5 bl_1_5 br_0_5
+ br_1_5 bl_0_6 bl_1_6 br_0_6 br_1_6 bl_0_7 bl_1_7 br_0_7 br_1_7 bl_0_8
+ bl_1_8 br_0_8 br_1_8 bl_0_9 bl_1_9 br_0_9 br_1_9 bl_0_10 bl_1_10
+ br_0_10 br_1_10 bl_0_11 bl_1_11 br_0_11 br_1_11 bl_0_12 bl_1_12
+ br_0_12 br_1_12 bl_0_13 bl_1_13 br_0_13 br_1_13 bl_0_14 bl_1_14
+ br_0_14 br_1_14 bl_0_15 bl_1_15 br_0_15 br_1_15 bl_0_16 bl_1_16
+ br_0_16 br_1_16 bl_0_17 bl_1_17 br_0_17 br_1_17 bl_0_18 bl_1_18
+ br_0_18 br_1_18 bl_0_19 bl_1_19 br_0_19 br_1_19 bl_0_20 bl_1_20
+ br_0_20 br_1_20 bl_0_21 bl_1_21 br_0_21 br_1_21 bl_0_22 bl_1_22
+ br_0_22 br_1_22 bl_0_23 bl_1_23 br_0_23 br_1_23 bl_0_24 bl_1_24
+ br_0_24 br_1_24 bl_0_25 bl_1_25 br_0_25 br_1_25 bl_0_26 bl_1_26
+ br_0_26 br_1_26 bl_0_27 bl_1_27 br_0_27 br_1_27 bl_0_28 bl_1_28
+ br_0_28 br_1_28 bl_0_29 bl_1_29 br_0_29 br_1_29 bl_0_30 bl_1_30
+ br_0_30 br_1_30 bl_0_31 bl_1_31 br_0_31 br_1_31 bl_0_32 bl_1_32
+ br_0_32 br_1_32 bl_0_33 bl_1_33 br_0_33 br_1_33 bl_0_34 bl_1_34
+ br_0_34 br_1_34 bl_0_35 bl_1_35 br_0_35 br_1_35 bl_0_36 bl_1_36
+ br_0_36 br_1_36 bl_0_37 bl_1_37 br_0_37 br_1_37 bl_0_38 bl_1_38
+ br_0_38 br_1_38 bl_0_39 bl_1_39 br_0_39 br_1_39 bl_0_40 bl_1_40
+ br_0_40 br_1_40 bl_0_41 bl_1_41 br_0_41 br_1_41 bl_0_42 bl_1_42
+ br_0_42 br_1_42 bl_0_43 bl_1_43 br_0_43 br_1_43 bl_0_44 bl_1_44
+ br_0_44 br_1_44 bl_0_45 bl_1_45 br_0_45 br_1_45 bl_0_46 bl_1_46
+ br_0_46 br_1_46 bl_0_47 bl_1_47 br_0_47 br_1_47 bl_0_48 bl_1_48
+ br_0_48 br_1_48 bl_0_49 bl_1_49 br_0_49 br_1_49 bl_0_50 bl_1_50
+ br_0_50 br_1_50 bl_0_51 bl_1_51 br_0_51 br_1_51 bl_0_52 bl_1_52
+ br_0_52 br_1_52 bl_0_53 bl_1_53 br_0_53 br_1_53 bl_0_54 bl_1_54
+ br_0_54 br_1_54 bl_0_55 bl_1_55 br_0_55 br_1_55 bl_0_56 bl_1_56
+ br_0_56 br_1_56 bl_0_57 bl_1_57 br_0_57 br_1_57 bl_0_58 bl_1_58
+ br_0_58 br_1_58 bl_0_59 bl_1_59 br_0_59 br_1_59 bl_0_60 bl_1_60
+ br_0_60 br_1_60 bl_0_61 bl_1_61 br_0_61 br_1_61 bl_0_62 bl_1_62
+ br_0_62 br_1_62 bl_0_63 bl_1_63 br_0_63 br_1_63 bl_0_64 bl_1_64
+ br_0_64 br_1_64 bl_0_65 bl_1_65 br_0_65 br_1_65 bl_0_66 bl_1_66
+ br_0_66 br_1_66 bl_0_67 bl_1_67 br_0_67 br_1_67 bl_0_68 bl_1_68
+ br_0_68 br_1_68 bl_0_69 bl_1_69 br_0_69 br_1_69 bl_0_70 bl_1_70
+ br_0_70 br_1_70 bl_0_71 bl_1_71 br_0_71 br_1_71 rbl_bl_0_1 rbl_bl_1_1
+ rbl_br_0_1 rbl_br_1_1 rbl_wl0 wl_0_0 wl_1_0 wl_0_1 wl_1_1 wl_0_2
+ wl_1_2 wl_0_3 wl_1_3 wl_0_4 wl_1_4 wl_0_5 wl_1_5 wl_0_6 wl_1_6 wl_0_7
+ wl_1_7 wl_0_8 wl_1_8 wl_0_9 wl_1_9 wl_0_10 wl_1_10 wl_0_11 wl_1_11
+ wl_0_12 wl_1_12 wl_0_13 wl_1_13 wl_0_14 wl_1_14 wl_0_15 wl_1_15
+ wl_0_16 wl_1_16 wl_0_17 wl_1_17 wl_0_18 wl_1_18 wl_0_19 wl_1_19
+ wl_0_20 wl_1_20 wl_0_21 wl_1_21 wl_0_22 wl_1_22 wl_0_23 wl_1_23
+ wl_0_24 wl_1_24 wl_0_25 wl_1_25 wl_0_26 wl_1_26 wl_0_27 wl_1_27
+ wl_0_28 wl_1_28 wl_0_29 wl_1_29 wl_0_30 wl_1_30 wl_0_31 wl_1_31
+ rbl_wl1 vdd gnd
+ freepdk45_sram_1w1r_32x72_capped_replica_bitcell_array
Xport_data0
+ rbl_bl_0_0 rbl_br_0_0 bl_0_0 br_0_0 bl_0_1 br_0_1 bl_0_2 br_0_2 bl_0_3
+ br_0_3 bl_0_4 br_0_4 bl_0_5 br_0_5 bl_0_6 br_0_6 bl_0_7 br_0_7 bl_0_8
+ br_0_8 bl_0_9 br_0_9 bl_0_10 br_0_10 bl_0_11 br_0_11 bl_0_12 br_0_12
+ bl_0_13 br_0_13 bl_0_14 br_0_14 bl_0_15 br_0_15 bl_0_16 br_0_16
+ bl_0_17 br_0_17 bl_0_18 br_0_18 bl_0_19 br_0_19 bl_0_20 br_0_20
+ bl_0_21 br_0_21 bl_0_22 br_0_22 bl_0_23 br_0_23 bl_0_24 br_0_24
+ bl_0_25 br_0_25 bl_0_26 br_0_26 bl_0_27 br_0_27 bl_0_28 br_0_28
+ bl_0_29 br_0_29 bl_0_30 br_0_30 bl_0_31 br_0_31 bl_0_32 br_0_32
+ bl_0_33 br_0_33 bl_0_34 br_0_34 bl_0_35 br_0_35 bl_0_36 br_0_36
+ bl_0_37 br_0_37 bl_0_38 br_0_38 bl_0_39 br_0_39 bl_0_40 br_0_40
+ bl_0_41 br_0_41 bl_0_42 br_0_42 bl_0_43 br_0_43 bl_0_44 br_0_44
+ bl_0_45 br_0_45 bl_0_46 br_0_46 bl_0_47 br_0_47 bl_0_48 br_0_48
+ bl_0_49 br_0_49 bl_0_50 br_0_50 bl_0_51 br_0_51 bl_0_52 br_0_52
+ bl_0_53 br_0_53 bl_0_54 br_0_54 bl_0_55 br_0_55 bl_0_56 br_0_56
+ bl_0_57 br_0_57 bl_0_58 br_0_58 bl_0_59 br_0_59 bl_0_60 br_0_60
+ bl_0_61 br_0_61 bl_0_62 br_0_62 bl_0_63 br_0_63 bl_0_64 br_0_64
+ bl_0_65 br_0_65 bl_0_66 br_0_66 bl_0_67 br_0_67 bl_0_68 br_0_68
+ bl_0_69 br_0_69 bl_0_70 br_0_70 bl_0_71 br_0_71 din0_0 din0_1 din0_2
+ din0_3 din0_4 din0_5 din0_6 din0_7 din0_8 din0_9 din0_10 din0_11
+ din0_12 din0_13 din0_14 din0_15 din0_16 din0_17 din0_18 din0_19
+ din0_20 din0_21 din0_22 din0_23 din0_24 din0_25 din0_26 din0_27
+ din0_28 din0_29 din0_30 din0_31 din0_32 din0_33 din0_34 din0_35
+ din0_36 din0_37 din0_38 din0_39 din0_40 din0_41 din0_42 din0_43
+ din0_44 din0_45 din0_46 din0_47 din0_48 din0_49 din0_50 din0_51
+ din0_52 din0_53 din0_54 din0_55 din0_56 din0_57 din0_58 din0_59
+ din0_60 din0_61 din0_62 din0_63 din0_64 din0_65 din0_66 din0_67
+ din0_68 din0_69 din0_70 din0_71 p_en_bar0 w_en0 vdd gnd
+ freepdk45_sram_1w1r_32x72_port_data
Xport_data1
+ rbl_bl_1_1 rbl_br_1_1 bl_1_0 br_1_0 bl_1_1 br_1_1 bl_1_2 br_1_2 bl_1_3
+ br_1_3 bl_1_4 br_1_4 bl_1_5 br_1_5 bl_1_6 br_1_6 bl_1_7 br_1_7 bl_1_8
+ br_1_8 bl_1_9 br_1_9 bl_1_10 br_1_10 bl_1_11 br_1_11 bl_1_12 br_1_12
+ bl_1_13 br_1_13 bl_1_14 br_1_14 bl_1_15 br_1_15 bl_1_16 br_1_16
+ bl_1_17 br_1_17 bl_1_18 br_1_18 bl_1_19 br_1_19 bl_1_20 br_1_20
+ bl_1_21 br_1_21 bl_1_22 br_1_22 bl_1_23 br_1_23 bl_1_24 br_1_24
+ bl_1_25 br_1_25 bl_1_26 br_1_26 bl_1_27 br_1_27 bl_1_28 br_1_28
+ bl_1_29 br_1_29 bl_1_30 br_1_30 bl_1_31 br_1_31 bl_1_32 br_1_32
+ bl_1_33 br_1_33 bl_1_34 br_1_34 bl_1_35 br_1_35 bl_1_36 br_1_36
+ bl_1_37 br_1_37 bl_1_38 br_1_38 bl_1_39 br_1_39 bl_1_40 br_1_40
+ bl_1_41 br_1_41 bl_1_42 br_1_42 bl_1_43 br_1_43 bl_1_44 br_1_44
+ bl_1_45 br_1_45 bl_1_46 br_1_46 bl_1_47 br_1_47 bl_1_48 br_1_48
+ bl_1_49 br_1_49 bl_1_50 br_1_50 bl_1_51 br_1_51 bl_1_52 br_1_52
+ bl_1_53 br_1_53 bl_1_54 br_1_54 bl_1_55 br_1_55 bl_1_56 br_1_56
+ bl_1_57 br_1_57 bl_1_58 br_1_58 bl_1_59 br_1_59 bl_1_60 br_1_60
+ bl_1_61 br_1_61 bl_1_62 br_1_62 bl_1_63 br_1_63 bl_1_64 br_1_64
+ bl_1_65 br_1_65 bl_1_66 br_1_66 bl_1_67 br_1_67 bl_1_68 br_1_68
+ bl_1_69 br_1_69 bl_1_70 br_1_70 bl_1_71 br_1_71 dout1_0 dout1_1
+ dout1_2 dout1_3 dout1_4 dout1_5 dout1_6 dout1_7 dout1_8 dout1_9
+ dout1_10 dout1_11 dout1_12 dout1_13 dout1_14 dout1_15 dout1_16
+ dout1_17 dout1_18 dout1_19 dout1_20 dout1_21 dout1_22 dout1_23
+ dout1_24 dout1_25 dout1_26 dout1_27 dout1_28 dout1_29 dout1_30
+ dout1_31 dout1_32 dout1_33 dout1_34 dout1_35 dout1_36 dout1_37
+ dout1_38 dout1_39 dout1_40 dout1_41 dout1_42 dout1_43 dout1_44
+ dout1_45 dout1_46 dout1_47 dout1_48 dout1_49 dout1_50 dout1_51
+ dout1_52 dout1_53 dout1_54 dout1_55 dout1_56 dout1_57 dout1_58
+ dout1_59 dout1_60 dout1_61 dout1_62 dout1_63 dout1_64 dout1_65
+ dout1_66 dout1_67 dout1_68 dout1_69 dout1_70 dout1_71 s_en1 p_en_bar1
+ vdd gnd
+ freepdk45_sram_1w1r_32x72_port_data_0
Xport_address0
+ addr0_0 addr0_1 addr0_2 addr0_3 addr0_4 wl_en0 wl_0_0 wl_0_1 wl_0_2
+ wl_0_3 wl_0_4 wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10 wl_0_11
+ wl_0_12 wl_0_13 wl_0_14 wl_0_15 wl_0_16 wl_0_17 wl_0_18 wl_0_19
+ wl_0_20 wl_0_21 wl_0_22 wl_0_23 wl_0_24 wl_0_25 wl_0_26 wl_0_27
+ wl_0_28 wl_0_29 wl_0_30 wl_0_31 rbl_wl0 vdd gnd
+ freepdk45_sram_1w1r_32x72_port_address
Xport_address1
+ addr1_0 addr1_1 addr1_2 addr1_3 addr1_4 wl_en1 wl_1_0 wl_1_1 wl_1_2
+ wl_1_3 wl_1_4 wl_1_5 wl_1_6 wl_1_7 wl_1_8 wl_1_9 wl_1_10 wl_1_11
+ wl_1_12 wl_1_13 wl_1_14 wl_1_15 wl_1_16 wl_1_17 wl_1_18 wl_1_19
+ wl_1_20 wl_1_21 wl_1_22 wl_1_23 wl_1_24 wl_1_25 wl_1_26 wl_1_27
+ wl_1_28 wl_1_29 wl_1_30 wl_1_31 rbl_wl1 vdd gnd
+ freepdk45_sram_1w1r_32x72_port_address_0
.ENDS freepdk45_sram_1w1r_32x72_bank
* File: DFFPOSX1.pex.netlist
* Created: Wed Jan  2 18:36:24 2008
* Program "Calibre xRC"
* Version "v2007.2_34.24"
*
.subckt dff D Q clk vdd gnd
*
MM21 Q a_66_6# gnd gnd NMOS_VTG L=5e-08 W=5e-07
MM19 a_76_6# a_2_6# a_66_6# gnd NMOS_VTG L=5e-08 W=2.5e-07
MM20 gnd Q a_76_6# gnd NMOS_VTG L=5e-08 W=2.5e-07
MM18 a_66_6# clk a_61_6# gnd NMOS_VTG L=5e-08 W=2.5e-07
MM17 a_61_6# a_34_4# gnd gnd NMOS_VTG L=5e-08 W=2.5e-07
MM10 gnd clk a_2_6# gnd NMOS_VTG L=5e-08 W=5e-07
MM16 a_34_4# a_22_6# gnd gnd NMOS_VTG L=5e-08 W=2.5e-07
MM15 gnd a_34_4# a_31_6# gnd NMOS_VTG L=5e-08 W=2.5e-07
MM14 a_31_6# clk a_22_6# gnd NMOS_VTG L=5e-08 W=2.5e-07
MM13 a_22_6# a_2_6# a_17_6# gnd NMOS_VTG L=5e-08 W=2.5e-07
MM12 a_17_6# D gnd gnd NMOS_VTG L=5e-08 W=2.5e-07
MM11 Q a_66_6# vdd vdd PMOS_VTG L=5e-08 W=1e-06
MM9 vdd Q a_76_84# vdd PMOS_VTG L=5e-08 W=2.5e-07
MM8 a_76_84# clk a_66_6# vdd PMOS_VTG L=5e-08 W=2.5e-07
MM7 a_66_6# a_2_6# a_61_74# vdd PMOS_VTG L=5e-08 W=5e-07
MM6 a_61_74# a_34_4# vdd vdd PMOS_VTG L=5e-08 W=5e-07
MM0 vdd clk a_2_6# vdd PMOS_VTG L=5e-08 W=1e-06
MM5 a_34_4# a_22_6# vdd vdd PMOS_VTG L=5e-08 W=5e-07
MM4 vdd a_34_4# a_31_74# vdd PMOS_VTG L=5e-08 W=5e-07
MM3 a_31_74# a_2_6# a_22_6# vdd PMOS_VTG L=5e-08 W=5e-07
MM2 a_22_6# clk a_17_74# vdd PMOS_VTG L=5e-08 W=5e-07
MM1 a_17_74# D vdd vdd PMOS_VTG L=5e-08 W=5e-07
* c_9 a_66_6# 0 0.271997f
* c_20 clk 0 0.350944f
* c_27 Q 0 0.202617f
* c_32 a_76_84# 0 0.0210573f
* c_38 a_76_6# 0 0.0204911f
* c_45 a_34_4# 0 0.172306f
* c_55 a_2_6# 0 0.283119f
* c_59 a_22_6# 0 0.157312f
* c_64 D 0 0.0816386f
* c_73 gnd 0 0.254131f
* c_81 vdd 0 0.23624f
*
*.include "dff.pex.netlist.dff.pxi"
*
.ends
*
*

.SUBCKT freepdk45_sram_1w1r_32x72_row_addr_dff
+ din_0 din_1 din_2 din_3 din_4 dout_0 dout_1 dout_2 dout_3 dout_4 clk
+ vdd gnd
* INPUT : din_0 
* INPUT : din_1 
* INPUT : din_2 
* INPUT : din_3 
* INPUT : din_4 
* OUTPUT: dout_0 
* OUTPUT: dout_1 
* OUTPUT: dout_2 
* OUTPUT: dout_3 
* OUTPUT: dout_4 
* INPUT : clk 
* POWER : vdd 
* GROUND: gnd 
* rows: 5 cols: 1
Xdff_r0_c0
+ din_0 dout_0 clk vdd gnd
+ dff
Xdff_r1_c0
+ din_1 dout_1 clk vdd gnd
+ dff
Xdff_r2_c0
+ din_2 dout_2 clk vdd gnd
+ dff
Xdff_r3_c0
+ din_3 dout_3 clk vdd gnd
+ dff
Xdff_r4_c0
+ din_4 dout_4 clk vdd gnd
+ dff
.ENDS freepdk45_sram_1w1r_32x72_row_addr_dff

.SUBCKT freepdk45_sram_1w1r_32x72_data_dff
+ din_0 din_1 din_2 din_3 din_4 din_5 din_6 din_7 din_8 din_9 din_10
+ din_11 din_12 din_13 din_14 din_15 din_16 din_17 din_18 din_19 din_20
+ din_21 din_22 din_23 din_24 din_25 din_26 din_27 din_28 din_29 din_30
+ din_31 din_32 din_33 din_34 din_35 din_36 din_37 din_38 din_39 din_40
+ din_41 din_42 din_43 din_44 din_45 din_46 din_47 din_48 din_49 din_50
+ din_51 din_52 din_53 din_54 din_55 din_56 din_57 din_58 din_59 din_60
+ din_61 din_62 din_63 din_64 din_65 din_66 din_67 din_68 din_69 din_70
+ din_71 dout_0 dout_1 dout_2 dout_3 dout_4 dout_5 dout_6 dout_7 dout_8
+ dout_9 dout_10 dout_11 dout_12 dout_13 dout_14 dout_15 dout_16 dout_17
+ dout_18 dout_19 dout_20 dout_21 dout_22 dout_23 dout_24 dout_25
+ dout_26 dout_27 dout_28 dout_29 dout_30 dout_31 dout_32 dout_33
+ dout_34 dout_35 dout_36 dout_37 dout_38 dout_39 dout_40 dout_41
+ dout_42 dout_43 dout_44 dout_45 dout_46 dout_47 dout_48 dout_49
+ dout_50 dout_51 dout_52 dout_53 dout_54 dout_55 dout_56 dout_57
+ dout_58 dout_59 dout_60 dout_61 dout_62 dout_63 dout_64 dout_65
+ dout_66 dout_67 dout_68 dout_69 dout_70 dout_71 clk vdd gnd
* INPUT : din_0 
* INPUT : din_1 
* INPUT : din_2 
* INPUT : din_3 
* INPUT : din_4 
* INPUT : din_5 
* INPUT : din_6 
* INPUT : din_7 
* INPUT : din_8 
* INPUT : din_9 
* INPUT : din_10 
* INPUT : din_11 
* INPUT : din_12 
* INPUT : din_13 
* INPUT : din_14 
* INPUT : din_15 
* INPUT : din_16 
* INPUT : din_17 
* INPUT : din_18 
* INPUT : din_19 
* INPUT : din_20 
* INPUT : din_21 
* INPUT : din_22 
* INPUT : din_23 
* INPUT : din_24 
* INPUT : din_25 
* INPUT : din_26 
* INPUT : din_27 
* INPUT : din_28 
* INPUT : din_29 
* INPUT : din_30 
* INPUT : din_31 
* INPUT : din_32 
* INPUT : din_33 
* INPUT : din_34 
* INPUT : din_35 
* INPUT : din_36 
* INPUT : din_37 
* INPUT : din_38 
* INPUT : din_39 
* INPUT : din_40 
* INPUT : din_41 
* INPUT : din_42 
* INPUT : din_43 
* INPUT : din_44 
* INPUT : din_45 
* INPUT : din_46 
* INPUT : din_47 
* INPUT : din_48 
* INPUT : din_49 
* INPUT : din_50 
* INPUT : din_51 
* INPUT : din_52 
* INPUT : din_53 
* INPUT : din_54 
* INPUT : din_55 
* INPUT : din_56 
* INPUT : din_57 
* INPUT : din_58 
* INPUT : din_59 
* INPUT : din_60 
* INPUT : din_61 
* INPUT : din_62 
* INPUT : din_63 
* INPUT : din_64 
* INPUT : din_65 
* INPUT : din_66 
* INPUT : din_67 
* INPUT : din_68 
* INPUT : din_69 
* INPUT : din_70 
* INPUT : din_71 
* OUTPUT: dout_0 
* OUTPUT: dout_1 
* OUTPUT: dout_2 
* OUTPUT: dout_3 
* OUTPUT: dout_4 
* OUTPUT: dout_5 
* OUTPUT: dout_6 
* OUTPUT: dout_7 
* OUTPUT: dout_8 
* OUTPUT: dout_9 
* OUTPUT: dout_10 
* OUTPUT: dout_11 
* OUTPUT: dout_12 
* OUTPUT: dout_13 
* OUTPUT: dout_14 
* OUTPUT: dout_15 
* OUTPUT: dout_16 
* OUTPUT: dout_17 
* OUTPUT: dout_18 
* OUTPUT: dout_19 
* OUTPUT: dout_20 
* OUTPUT: dout_21 
* OUTPUT: dout_22 
* OUTPUT: dout_23 
* OUTPUT: dout_24 
* OUTPUT: dout_25 
* OUTPUT: dout_26 
* OUTPUT: dout_27 
* OUTPUT: dout_28 
* OUTPUT: dout_29 
* OUTPUT: dout_30 
* OUTPUT: dout_31 
* OUTPUT: dout_32 
* OUTPUT: dout_33 
* OUTPUT: dout_34 
* OUTPUT: dout_35 
* OUTPUT: dout_36 
* OUTPUT: dout_37 
* OUTPUT: dout_38 
* OUTPUT: dout_39 
* OUTPUT: dout_40 
* OUTPUT: dout_41 
* OUTPUT: dout_42 
* OUTPUT: dout_43 
* OUTPUT: dout_44 
* OUTPUT: dout_45 
* OUTPUT: dout_46 
* OUTPUT: dout_47 
* OUTPUT: dout_48 
* OUTPUT: dout_49 
* OUTPUT: dout_50 
* OUTPUT: dout_51 
* OUTPUT: dout_52 
* OUTPUT: dout_53 
* OUTPUT: dout_54 
* OUTPUT: dout_55 
* OUTPUT: dout_56 
* OUTPUT: dout_57 
* OUTPUT: dout_58 
* OUTPUT: dout_59 
* OUTPUT: dout_60 
* OUTPUT: dout_61 
* OUTPUT: dout_62 
* OUTPUT: dout_63 
* OUTPUT: dout_64 
* OUTPUT: dout_65 
* OUTPUT: dout_66 
* OUTPUT: dout_67 
* OUTPUT: dout_68 
* OUTPUT: dout_69 
* OUTPUT: dout_70 
* OUTPUT: dout_71 
* INPUT : clk 
* POWER : vdd 
* GROUND: gnd 
* rows: 1 cols: 72
Xdff_r0_c0
+ din_0 dout_0 clk vdd gnd
+ dff
Xdff_r0_c1
+ din_1 dout_1 clk vdd gnd
+ dff
Xdff_r0_c2
+ din_2 dout_2 clk vdd gnd
+ dff
Xdff_r0_c3
+ din_3 dout_3 clk vdd gnd
+ dff
Xdff_r0_c4
+ din_4 dout_4 clk vdd gnd
+ dff
Xdff_r0_c5
+ din_5 dout_5 clk vdd gnd
+ dff
Xdff_r0_c6
+ din_6 dout_6 clk vdd gnd
+ dff
Xdff_r0_c7
+ din_7 dout_7 clk vdd gnd
+ dff
Xdff_r0_c8
+ din_8 dout_8 clk vdd gnd
+ dff
Xdff_r0_c9
+ din_9 dout_9 clk vdd gnd
+ dff
Xdff_r0_c10
+ din_10 dout_10 clk vdd gnd
+ dff
Xdff_r0_c11
+ din_11 dout_11 clk vdd gnd
+ dff
Xdff_r0_c12
+ din_12 dout_12 clk vdd gnd
+ dff
Xdff_r0_c13
+ din_13 dout_13 clk vdd gnd
+ dff
Xdff_r0_c14
+ din_14 dout_14 clk vdd gnd
+ dff
Xdff_r0_c15
+ din_15 dout_15 clk vdd gnd
+ dff
Xdff_r0_c16
+ din_16 dout_16 clk vdd gnd
+ dff
Xdff_r0_c17
+ din_17 dout_17 clk vdd gnd
+ dff
Xdff_r0_c18
+ din_18 dout_18 clk vdd gnd
+ dff
Xdff_r0_c19
+ din_19 dout_19 clk vdd gnd
+ dff
Xdff_r0_c20
+ din_20 dout_20 clk vdd gnd
+ dff
Xdff_r0_c21
+ din_21 dout_21 clk vdd gnd
+ dff
Xdff_r0_c22
+ din_22 dout_22 clk vdd gnd
+ dff
Xdff_r0_c23
+ din_23 dout_23 clk vdd gnd
+ dff
Xdff_r0_c24
+ din_24 dout_24 clk vdd gnd
+ dff
Xdff_r0_c25
+ din_25 dout_25 clk vdd gnd
+ dff
Xdff_r0_c26
+ din_26 dout_26 clk vdd gnd
+ dff
Xdff_r0_c27
+ din_27 dout_27 clk vdd gnd
+ dff
Xdff_r0_c28
+ din_28 dout_28 clk vdd gnd
+ dff
Xdff_r0_c29
+ din_29 dout_29 clk vdd gnd
+ dff
Xdff_r0_c30
+ din_30 dout_30 clk vdd gnd
+ dff
Xdff_r0_c31
+ din_31 dout_31 clk vdd gnd
+ dff
Xdff_r0_c32
+ din_32 dout_32 clk vdd gnd
+ dff
Xdff_r0_c33
+ din_33 dout_33 clk vdd gnd
+ dff
Xdff_r0_c34
+ din_34 dout_34 clk vdd gnd
+ dff
Xdff_r0_c35
+ din_35 dout_35 clk vdd gnd
+ dff
Xdff_r0_c36
+ din_36 dout_36 clk vdd gnd
+ dff
Xdff_r0_c37
+ din_37 dout_37 clk vdd gnd
+ dff
Xdff_r0_c38
+ din_38 dout_38 clk vdd gnd
+ dff
Xdff_r0_c39
+ din_39 dout_39 clk vdd gnd
+ dff
Xdff_r0_c40
+ din_40 dout_40 clk vdd gnd
+ dff
Xdff_r0_c41
+ din_41 dout_41 clk vdd gnd
+ dff
Xdff_r0_c42
+ din_42 dout_42 clk vdd gnd
+ dff
Xdff_r0_c43
+ din_43 dout_43 clk vdd gnd
+ dff
Xdff_r0_c44
+ din_44 dout_44 clk vdd gnd
+ dff
Xdff_r0_c45
+ din_45 dout_45 clk vdd gnd
+ dff
Xdff_r0_c46
+ din_46 dout_46 clk vdd gnd
+ dff
Xdff_r0_c47
+ din_47 dout_47 clk vdd gnd
+ dff
Xdff_r0_c48
+ din_48 dout_48 clk vdd gnd
+ dff
Xdff_r0_c49
+ din_49 dout_49 clk vdd gnd
+ dff
Xdff_r0_c50
+ din_50 dout_50 clk vdd gnd
+ dff
Xdff_r0_c51
+ din_51 dout_51 clk vdd gnd
+ dff
Xdff_r0_c52
+ din_52 dout_52 clk vdd gnd
+ dff
Xdff_r0_c53
+ din_53 dout_53 clk vdd gnd
+ dff
Xdff_r0_c54
+ din_54 dout_54 clk vdd gnd
+ dff
Xdff_r0_c55
+ din_55 dout_55 clk vdd gnd
+ dff
Xdff_r0_c56
+ din_56 dout_56 clk vdd gnd
+ dff
Xdff_r0_c57
+ din_57 dout_57 clk vdd gnd
+ dff
Xdff_r0_c58
+ din_58 dout_58 clk vdd gnd
+ dff
Xdff_r0_c59
+ din_59 dout_59 clk vdd gnd
+ dff
Xdff_r0_c60
+ din_60 dout_60 clk vdd gnd
+ dff
Xdff_r0_c61
+ din_61 dout_61 clk vdd gnd
+ dff
Xdff_r0_c62
+ din_62 dout_62 clk vdd gnd
+ dff
Xdff_r0_c63
+ din_63 dout_63 clk vdd gnd
+ dff
Xdff_r0_c64
+ din_64 dout_64 clk vdd gnd
+ dff
Xdff_r0_c65
+ din_65 dout_65 clk vdd gnd
+ dff
Xdff_r0_c66
+ din_66 dout_66 clk vdd gnd
+ dff
Xdff_r0_c67
+ din_67 dout_67 clk vdd gnd
+ dff
Xdff_r0_c68
+ din_68 dout_68 clk vdd gnd
+ dff
Xdff_r0_c69
+ din_69 dout_69 clk vdd gnd
+ dff
Xdff_r0_c70
+ din_70 dout_70 clk vdd gnd
+ dff
Xdff_r0_c71
+ din_71 dout_71 clk vdd gnd
+ dff
.ENDS freepdk45_sram_1w1r_32x72_data_dff

* spice ptx M{0} {1} nmos_vtg m=1 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p

* spice ptx M{0} {1} pmos_vtg m=1 w=0.54u l=0.05u pd=1.18u ps=1.18u as=0.07p ad=0.07p

.SUBCKT freepdk45_sram_1w1r_32x72_pinv_1
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.54u l=0.05u 
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.18u l=0.05u 
.ENDS freepdk45_sram_1w1r_32x72_pinv_1

* spice ptx M{0} {1} pmos_vtg m=2 w=0.54u l=0.05u pd=1.18u ps=1.18u as=0.07p ad=0.07p

* spice ptx M{0} {1} nmos_vtg m=2 w=0.18u l=0.05u pd=0.46u ps=0.46u as=0.02p ad=0.02p

.SUBCKT freepdk45_sram_1w1r_32x72_pinv_2
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd pmos_vtg m=2 w=0.54u l=0.05u 
Mpinv_nmos Z A gnd gnd nmos_vtg m=2 w=0.18u l=0.05u 
.ENDS freepdk45_sram_1w1r_32x72_pinv_2

.SUBCKT freepdk45_sram_1w1r_32x72_dff_buf_0
+ D Q Qb clk vdd gnd
* INPUT : D 
* OUTPUT: Q 
* OUTPUT: Qb 
* INPUT : clk 
* POWER : vdd 
* GROUND: gnd 
* inv1: 2 inv2: 4
Xdff_buf_dff
+ D qint clk vdd gnd
+ dff
Xdff_buf_inv1
+ qint Qb vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_1
Xdff_buf_inv2
+ Qb Q vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_2
.ENDS freepdk45_sram_1w1r_32x72_dff_buf_0

.SUBCKT freepdk45_sram_1w1r_32x72_dff_buf_array
+ din_0 dout_0 dout_bar_0 clk vdd gnd
* INPUT : din_0 
* OUTPUT: dout_0 
* OUTPUT: dout_bar_0 
* INPUT : clk 
* POWER : vdd 
* GROUND: gnd 
* inv1: 2 inv2: 4
Xdff_r0_c0
+ din_0 dout_0 dout_bar_0 clk vdd gnd
+ freepdk45_sram_1w1r_32x72_dff_buf_0
.ENDS freepdk45_sram_1w1r_32x72_dff_buf_array

.SUBCKT freepdk45_sram_1w1r_32x72_pinv_16
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.27u l=0.05u 
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.09u l=0.05u 
.ENDS freepdk45_sram_1w1r_32x72_pinv_16

* spice ptx M{0} {1} nmos_vtg m=22 w=0.295u l=0.05u pd=0.69u ps=0.69u as=0.04p ad=0.04p

* spice ptx M{0} {1} pmos_vtg m=22 w=0.8825000000000001u l=0.05u pd=1.87u ps=1.87u as=0.11p ad=0.11p

.SUBCKT freepdk45_sram_1w1r_32x72_pinv_15
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd pmos_vtg m=22 w=0.8825000000000001u l=0.05u 
Mpinv_nmos Z A gnd gnd nmos_vtg m=22 w=0.295u l=0.05u 
.ENDS freepdk45_sram_1w1r_32x72_pinv_15

.SUBCKT freepdk45_sram_1w1r_32x72_pdriver_3
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [72]
Xbuf_inv1
+ A Z vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_15
.ENDS freepdk45_sram_1w1r_32x72_pdriver_3

.SUBCKT freepdk45_sram_1w1r_32x72_pnand3_0
+ A B C Z vdd gnd
* INPUT : A 
* INPUT : B 
* INPUT : C 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpnand3_pmos1 vdd A Z vdd pmos_vtg m=1 w=0.27u l=0.05u 
Mpnand3_pmos2 Z B vdd vdd pmos_vtg m=1 w=0.27u l=0.05u 
Mpnand3_pmos3 Z C vdd vdd pmos_vtg m=1 w=0.27u l=0.05u 
Mpnand3_nmos1 Z C net1 gnd nmos_vtg m=1 w=0.18u l=0.05u 
Mpnand3_nmos2 net1 B net2 gnd nmos_vtg m=1 w=0.18u l=0.05u 
Mpnand3_nmos3 net2 A gnd gnd nmos_vtg m=1 w=0.18u l=0.05u 
.ENDS freepdk45_sram_1w1r_32x72_pnand3_0

.SUBCKT freepdk45_sram_1w1r_32x72_pand3_0
+ A B C Z vdd gnd
* INPUT : A 
* INPUT : B 
* INPUT : C 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Xpand3_nand
+ A B C zb_int vdd gnd
+ freepdk45_sram_1w1r_32x72_pnand3_0
Xpand3_inv
+ zb_int Z vdd gnd
+ freepdk45_sram_1w1r_32x72_pdriver_3
.ENDS freepdk45_sram_1w1r_32x72_pand3_0

.SUBCKT freepdk45_sram_1w1r_32x72_pinv_19
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.27u l=0.05u 
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.09u l=0.05u 
.ENDS freepdk45_sram_1w1r_32x72_pinv_19

.SUBCKT freepdk45_sram_1w1r_32x72_delay_chain
+ in out vdd gnd
* INPUT : in 
* OUTPUT: out 
* POWER : vdd 
* GROUND: gnd 
* fanouts: [4, 4, 4, 4, 4, 4, 4, 4, 4]
Xdinv0
+ in dout_1 vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_19
Xdload_0_0
+ dout_1 n_0_0 vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_19
Xdload_0_1
+ dout_1 n_0_1 vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_19
Xdload_0_2
+ dout_1 n_0_2 vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_19
Xdload_0_3
+ dout_1 n_0_3 vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_19
Xdinv1
+ dout_1 dout_2 vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_19
Xdload_1_0
+ dout_2 n_1_0 vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_19
Xdload_1_1
+ dout_2 n_1_1 vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_19
Xdload_1_2
+ dout_2 n_1_2 vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_19
Xdload_1_3
+ dout_2 n_1_3 vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_19
Xdinv2
+ dout_2 dout_3 vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_19
Xdload_2_0
+ dout_3 n_2_0 vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_19
Xdload_2_1
+ dout_3 n_2_1 vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_19
Xdload_2_2
+ dout_3 n_2_2 vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_19
Xdload_2_3
+ dout_3 n_2_3 vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_19
Xdinv3
+ dout_3 dout_4 vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_19
Xdload_3_0
+ dout_4 n_3_0 vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_19
Xdload_3_1
+ dout_4 n_3_1 vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_19
Xdload_3_2
+ dout_4 n_3_2 vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_19
Xdload_3_3
+ dout_4 n_3_3 vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_19
Xdinv4
+ dout_4 dout_5 vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_19
Xdload_4_0
+ dout_5 n_4_0 vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_19
Xdload_4_1
+ dout_5 n_4_1 vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_19
Xdload_4_2
+ dout_5 n_4_2 vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_19
Xdload_4_3
+ dout_5 n_4_3 vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_19
Xdinv5
+ dout_5 dout_6 vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_19
Xdload_5_0
+ dout_6 n_5_0 vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_19
Xdload_5_1
+ dout_6 n_5_1 vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_19
Xdload_5_2
+ dout_6 n_5_2 vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_19
Xdload_5_3
+ dout_6 n_5_3 vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_19
Xdinv6
+ dout_6 dout_7 vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_19
Xdload_6_0
+ dout_7 n_6_0 vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_19
Xdload_6_1
+ dout_7 n_6_1 vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_19
Xdload_6_2
+ dout_7 n_6_2 vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_19
Xdload_6_3
+ dout_7 n_6_3 vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_19
Xdinv7
+ dout_7 dout_8 vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_19
Xdload_7_0
+ dout_8 n_7_0 vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_19
Xdload_7_1
+ dout_8 n_7_1 vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_19
Xdload_7_2
+ dout_8 n_7_2 vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_19
Xdload_7_3
+ dout_8 n_7_3 vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_19
Xdinv8
+ dout_8 out vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_19
Xdload_8_0
+ out n_8_0 vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_19
Xdload_8_1
+ out n_8_1 vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_19
Xdload_8_2
+ out n_8_2 vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_19
Xdload_8_3
+ out n_8_3 vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_19
.ENDS freepdk45_sram_1w1r_32x72_delay_chain

* spice ptx M{0} {1} nmos_vtg m=8 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p

* spice ptx M{0} {1} pmos_vtg m=8 w=0.81u l=0.05u pd=1.72u ps=1.72u as=0.10p ad=0.10p

.SUBCKT freepdk45_sram_1w1r_32x72_pinv_18
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd pmos_vtg m=8 w=0.81u l=0.05u 
Mpinv_nmos Z A gnd gnd nmos_vtg m=8 w=0.27u l=0.05u 
.ENDS freepdk45_sram_1w1r_32x72_pinv_18

* spice ptx M{0} {1} pmos_vtg m=1 w=0.81u l=0.05u pd=1.72u ps=1.72u as=0.10p ad=0.10p

* spice ptx M{0} {1} nmos_vtg m=1 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p

.SUBCKT freepdk45_sram_1w1r_32x72_pinv_12
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.81u l=0.05u 
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.27u l=0.05u 
.ENDS freepdk45_sram_1w1r_32x72_pinv_12

.SUBCKT freepdk45_sram_1w1r_32x72_pinv_6
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.27u l=0.05u 
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.09u l=0.05u 
.ENDS freepdk45_sram_1w1r_32x72_pinv_6

* spice ptx M{0} {1} pmos_vtg m=3 w=0.72u l=0.05u pd=1.54u ps=1.54u as=0.09p ad=0.09p

* spice ptx M{0} {1} nmos_vtg m=3 w=0.24u l=0.05u pd=0.58u ps=0.58u as=0.03p ad=0.03p

.SUBCKT freepdk45_sram_1w1r_32x72_pinv_17
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd pmos_vtg m=3 w=0.72u l=0.05u 
Mpinv_nmos Z A gnd gnd nmos_vtg m=3 w=0.24u l=0.05u 
.ENDS freepdk45_sram_1w1r_32x72_pinv_17

.SUBCKT freepdk45_sram_1w1r_32x72_pdriver_4
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [1, 3, 8, 24]
Xbuf_inv1
+ A Zb1_int vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_6
Xbuf_inv2
+ Zb1_int Zb2_int vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_12
Xbuf_inv3
+ Zb2_int Zb3_int vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_17
Xbuf_inv4
+ Zb3_int Z vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_18
.ENDS freepdk45_sram_1w1r_32x72_pdriver_4

* spice ptx M{0} {1} nmos_vtg m=3 w=0.3u l=0.05u pd=0.70u ps=0.70u as=0.04p ad=0.04p

* spice ptx M{0} {1} pmos_vtg m=3 w=0.9u l=0.05u pd=1.90u ps=1.90u as=0.11p ad=0.11p

.SUBCKT freepdk45_sram_1w1r_32x72_pinv_13
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd pmos_vtg m=3 w=0.9u l=0.05u 
Mpinv_nmos Z A gnd gnd nmos_vtg m=3 w=0.3u l=0.05u 
.ENDS freepdk45_sram_1w1r_32x72_pinv_13

.SUBCKT freepdk45_sram_1w1r_32x72_pdriver_1
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [3, 10]
Xbuf_inv1
+ A Zb1_int vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_12
Xbuf_inv2
+ Zb1_int Z vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_13
.ENDS freepdk45_sram_1w1r_32x72_pdriver_1

* spice ptx M{0} {1} pmos_vtg m=2 w=0.675u l=0.05u pd=1.45u ps=1.45u as=0.08p ad=0.08p

* spice ptx M{0} {1} nmos_vtg m=2 w=0.225u l=0.05u pd=0.55u ps=0.55u as=0.03p ad=0.03p

.SUBCKT freepdk45_sram_1w1r_32x72_pinv_8
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd pmos_vtg m=2 w=0.675u l=0.05u 
Mpinv_nmos Z A gnd gnd nmos_vtg m=2 w=0.225u l=0.05u 
.ENDS freepdk45_sram_1w1r_32x72_pinv_8

* spice ptx M{0} {1} nmos_vtg m=39 w=0.305u l=0.05u pd=0.71u ps=0.71u as=0.04p ad=0.04p

* spice ptx M{0} {1} pmos_vtg m=39 w=0.915u l=0.05u pd=1.93u ps=1.93u as=0.11p ad=0.11p

.SUBCKT freepdk45_sram_1w1r_32x72_pinv_11
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd pmos_vtg m=39 w=0.915u l=0.05u 
Mpinv_nmos Z A gnd gnd nmos_vtg m=39 w=0.305u l=0.05u 
.ENDS freepdk45_sram_1w1r_32x72_pinv_11

* spice ptx M{0} {1} nmos_vtg m=13 w=0.305u l=0.05u pd=0.71u ps=0.71u as=0.04p ad=0.04p

* spice ptx M{0} {1} pmos_vtg m=13 w=0.915u l=0.05u pd=1.93u ps=1.93u as=0.11p ad=0.11p

.SUBCKT freepdk45_sram_1w1r_32x72_pinv_10
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd pmos_vtg m=13 w=0.915u l=0.05u 
Mpinv_nmos Z A gnd gnd nmos_vtg m=13 w=0.305u l=0.05u 
.ENDS freepdk45_sram_1w1r_32x72_pinv_10

.SUBCKT freepdk45_sram_1w1r_32x72_pinv_7
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd pmos_vtg m=1 w=0.54u l=0.05u 
Mpinv_nmos Z A gnd gnd nmos_vtg m=1 w=0.18u l=0.05u 
.ENDS freepdk45_sram_1w1r_32x72_pinv_7

* spice ptx M{0} {1} pmos_vtg m=5 w=0.81u l=0.05u pd=1.72u ps=1.72u as=0.10p ad=0.10p

* spice ptx M{0} {1} nmos_vtg m=5 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p

.SUBCKT freepdk45_sram_1w1r_32x72_pinv_9
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd pmos_vtg m=5 w=0.81u l=0.05u 
Mpinv_nmos Z A gnd gnd nmos_vtg m=5 w=0.27u l=0.05u 
.ENDS freepdk45_sram_1w1r_32x72_pinv_9

.SUBCKT freepdk45_sram_1w1r_32x72_pdriver_0
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [1, 1, 1, 2, 5, 15, 44, 132]
Xbuf_inv1
+ A Zb1_int vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_6
Xbuf_inv2
+ Zb1_int Zb2_int vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_6
Xbuf_inv3
+ Zb2_int Zb3_int vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_6
Xbuf_inv4
+ Zb3_int Zb4_int vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_7
Xbuf_inv5
+ Zb4_int Zb5_int vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_8
Xbuf_inv6
+ Zb5_int Zb6_int vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_9
Xbuf_inv7
+ Zb6_int Zb7_int vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_10
Xbuf_inv8
+ Zb7_int Z vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_11
.ENDS freepdk45_sram_1w1r_32x72_pdriver_0

.SUBCKT freepdk45_sram_1w1r_32x72_pnand2_1
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpnand2_pmos1 vdd A Z vdd pmos_vtg m=1 w=0.27u l=0.05u 
Mpnand2_pmos2 Z B vdd vdd pmos_vtg m=1 w=0.27u l=0.05u 
Mpnand2_nmos1 Z B net1 gnd nmos_vtg m=1 w=0.18u l=0.05u 
Mpnand2_nmos2 net1 A gnd gnd nmos_vtg m=1 w=0.18u l=0.05u 
.ENDS freepdk45_sram_1w1r_32x72_pnand2_1

.SUBCKT freepdk45_sram_1w1r_32x72_pnand2_0
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpnand2_pmos1 vdd A Z vdd pmos_vtg m=1 w=0.27u l=0.05u 
Mpnand2_pmos2 Z B vdd vdd pmos_vtg m=1 w=0.27u l=0.05u 
Mpnand2_nmos1 Z B net1 gnd nmos_vtg m=1 w=0.18u l=0.05u 
Mpnand2_nmos2 net1 A gnd gnd nmos_vtg m=1 w=0.18u l=0.05u 
.ENDS freepdk45_sram_1w1r_32x72_pnand2_0

* spice ptx M{0} {1} pmos_vtg m=4 w=0.81u l=0.05u pd=1.72u ps=1.72u as=0.10p ad=0.10p

* spice ptx M{0} {1} nmos_vtg m=4 w=0.27u l=0.05u pd=0.64u ps=0.64u as=0.03p ad=0.03p

.SUBCKT freepdk45_sram_1w1r_32x72_pinv_3
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd pmos_vtg m=4 w=0.81u l=0.05u 
Mpinv_nmos Z A gnd gnd nmos_vtg m=4 w=0.27u l=0.05u 
.ENDS freepdk45_sram_1w1r_32x72_pinv_3

.SUBCKT freepdk45_sram_1w1r_32x72_pdriver
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [12]
Xbuf_inv1
+ A Z vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_3
.ENDS freepdk45_sram_1w1r_32x72_pdriver

.SUBCKT freepdk45_sram_1w1r_32x72_pand2
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Xpand2_nand
+ A B zb_int vdd gnd
+ freepdk45_sram_1w1r_32x72_pnand2_0
Xpand2_inv
+ zb_int Z vdd gnd
+ freepdk45_sram_1w1r_32x72_pdriver
.ENDS freepdk45_sram_1w1r_32x72_pand2

.SUBCKT freepdk45_sram_1w1r_32x72_control_logic_r
+ csb clk rbl_bl s_en p_en_bar wl_en clk_buf vdd gnd
* INPUT : csb 
* INPUT : clk 
* INPUT : rbl_bl 
* OUTPUT: s_en 
* OUTPUT: p_en_bar 
* OUTPUT: wl_en 
* OUTPUT: clk_buf 
* POWER : vdd 
* GROUND: gnd 
* word_size 72
Xctrl_dffs
+ csb cs_bar cs clk_buf vdd gnd
+ freepdk45_sram_1w1r_32x72_dff_buf_array
Xclkbuf
+ clk clk_buf vdd gnd
+ freepdk45_sram_1w1r_32x72_pdriver_0
Xinv_clk_bar
+ clk_buf clk_bar vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_16
Xand2_gated_clk_bar
+ clk_bar cs gated_clk_bar vdd gnd
+ freepdk45_sram_1w1r_32x72_pand2
Xand2_gated_clk_buf
+ clk_buf cs gated_clk_buf vdd gnd
+ freepdk45_sram_1w1r_32x72_pand2
Xbuf_wl_en
+ gated_clk_bar wl_en vdd gnd
+ freepdk45_sram_1w1r_32x72_pdriver_1
Xbuf_s_en_and
+ rbl_bl_delay gated_clk_bar cs s_en vdd gnd
+ freepdk45_sram_1w1r_32x72_pand3_0
Xdelay_chain
+ rbl_bl rbl_bl_delay vdd gnd
+ freepdk45_sram_1w1r_32x72_delay_chain
Xnand_p_en_bar
+ gated_clk_buf rbl_bl_delay p_en_bar_unbuf vdd gnd
+ freepdk45_sram_1w1r_32x72_pnand2_1
Xbuf_p_en_bar
+ p_en_bar_unbuf p_en_bar vdd gnd
+ freepdk45_sram_1w1r_32x72_pdriver_4
.ENDS freepdk45_sram_1w1r_32x72_control_logic_r

* spice ptx M{0} {1} nmos_vtg m=24 w=0.3u l=0.05u pd=0.70u ps=0.70u as=0.04p ad=0.04p

* spice ptx M{0} {1} pmos_vtg m=24 w=0.9u l=0.05u pd=1.90u ps=1.90u as=0.11p ad=0.11p

.SUBCKT freepdk45_sram_1w1r_32x72_pinv_14
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Mpinv_pmos Z A vdd vdd pmos_vtg m=24 w=0.9u l=0.05u 
Mpinv_nmos Z A gnd gnd nmos_vtg m=24 w=0.3u l=0.05u 
.ENDS freepdk45_sram_1w1r_32x72_pinv_14

.SUBCKT freepdk45_sram_1w1r_32x72_pdriver_2
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [80]
Xbuf_inv1
+ A Z vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_14
.ENDS freepdk45_sram_1w1r_32x72_pdriver_2

.SUBCKT freepdk45_sram_1w1r_32x72_pand3
+ A B C Z vdd gnd
* INPUT : A 
* INPUT : B 
* INPUT : C 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
Xpand3_nand
+ A B C zb_int vdd gnd
+ freepdk45_sram_1w1r_32x72_pnand3_0
Xpand3_inv
+ zb_int Z vdd gnd
+ freepdk45_sram_1w1r_32x72_pdriver_2
.ENDS freepdk45_sram_1w1r_32x72_pand3

.SUBCKT freepdk45_sram_1w1r_32x72_control_logic_w
+ csb clk rbl_bl w_en p_en_bar wl_en clk_buf vdd gnd
* INPUT : csb 
* INPUT : clk 
* INPUT : rbl_bl 
* OUTPUT: w_en 
* OUTPUT: p_en_bar 
* OUTPUT: wl_en 
* OUTPUT: clk_buf 
* POWER : vdd 
* GROUND: gnd 
* word_size 72
Xctrl_dffs
+ csb cs_bar cs clk_buf vdd gnd
+ freepdk45_sram_1w1r_32x72_dff_buf_array
Xclkbuf
+ clk clk_buf vdd gnd
+ freepdk45_sram_1w1r_32x72_pdriver_0
Xinv_clk_bar
+ clk_buf clk_bar vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_16
Xand2_gated_clk_bar
+ clk_bar cs gated_clk_bar vdd gnd
+ freepdk45_sram_1w1r_32x72_pand2
Xand2_gated_clk_buf
+ clk_buf cs gated_clk_buf vdd gnd
+ freepdk45_sram_1w1r_32x72_pand2
Xbuf_wl_en
+ gated_clk_bar wl_en vdd gnd
+ freepdk45_sram_1w1r_32x72_pdriver_1
Xrbl_bl_delay_inv
+ rbl_bl_delay rbl_bl_delay_bar vdd gnd
+ freepdk45_sram_1w1r_32x72_pinv_16
Xw_en_and
+ cs rbl_bl_delay_bar gated_clk_bar w_en vdd gnd
+ freepdk45_sram_1w1r_32x72_pand3
Xdelay_chain
+ rbl_bl rbl_bl_delay vdd gnd
+ freepdk45_sram_1w1r_32x72_delay_chain
Xnand_p_en_bar
+ gated_clk_buf rbl_bl_delay p_en_bar_unbuf vdd gnd
+ freepdk45_sram_1w1r_32x72_pnand2_1
Xbuf_p_en_bar
+ p_en_bar_unbuf p_en_bar vdd gnd
+ freepdk45_sram_1w1r_32x72_pdriver_4
.ENDS freepdk45_sram_1w1r_32x72_control_logic_w

.SUBCKT freepdk45_sram_1w1r_32x72
+ din0[0] din0[1] din0[2] din0[3] din0[4] din0[5] din0[6] din0[7]
+ din0[8] din0[9] din0[10] din0[11] din0[12] din0[13] din0[14] din0[15]
+ din0[16] din0[17] din0[18] din0[19] din0[20] din0[21] din0[22]
+ din0[23] din0[24] din0[25] din0[26] din0[27] din0[28] din0[29]
+ din0[30] din0[31] din0[32] din0[33] din0[34] din0[35] din0[36]
+ din0[37] din0[38] din0[39] din0[40] din0[41] din0[42] din0[43]
+ din0[44] din0[45] din0[46] din0[47] din0[48] din0[49] din0[50]
+ din0[51] din0[52] din0[53] din0[54] din0[55] din0[56] din0[57]
+ din0[58] din0[59] din0[60] din0[61] din0[62] din0[63] din0[64]
+ din0[65] din0[66] din0[67] din0[68] din0[69] din0[70] din0[71]
+ addr0[0] addr0[1] addr0[2] addr0[3] addr0[4] addr1[0] addr1[1]
+ addr1[2] addr1[3] addr1[4] csb0 csb1 clk0 clk1 dout1[0] dout1[1]
+ dout1[2] dout1[3] dout1[4] dout1[5] dout1[6] dout1[7] dout1[8]
+ dout1[9] dout1[10] dout1[11] dout1[12] dout1[13] dout1[14] dout1[15]
+ dout1[16] dout1[17] dout1[18] dout1[19] dout1[20] dout1[21] dout1[22]
+ dout1[23] dout1[24] dout1[25] dout1[26] dout1[27] dout1[28] dout1[29]
+ dout1[30] dout1[31] dout1[32] dout1[33] dout1[34] dout1[35] dout1[36]
+ dout1[37] dout1[38] dout1[39] dout1[40] dout1[41] dout1[42] dout1[43]
+ dout1[44] dout1[45] dout1[46] dout1[47] dout1[48] dout1[49] dout1[50]
+ dout1[51] dout1[52] dout1[53] dout1[54] dout1[55] dout1[56] dout1[57]
+ dout1[58] dout1[59] dout1[60] dout1[61] dout1[62] dout1[63] dout1[64]
+ dout1[65] dout1[66] dout1[67] dout1[68] dout1[69] dout1[70] dout1[71]
+ vdd gnd
* INPUT : din0[0] 
* INPUT : din0[1] 
* INPUT : din0[2] 
* INPUT : din0[3] 
* INPUT : din0[4] 
* INPUT : din0[5] 
* INPUT : din0[6] 
* INPUT : din0[7] 
* INPUT : din0[8] 
* INPUT : din0[9] 
* INPUT : din0[10] 
* INPUT : din0[11] 
* INPUT : din0[12] 
* INPUT : din0[13] 
* INPUT : din0[14] 
* INPUT : din0[15] 
* INPUT : din0[16] 
* INPUT : din0[17] 
* INPUT : din0[18] 
* INPUT : din0[19] 
* INPUT : din0[20] 
* INPUT : din0[21] 
* INPUT : din0[22] 
* INPUT : din0[23] 
* INPUT : din0[24] 
* INPUT : din0[25] 
* INPUT : din0[26] 
* INPUT : din0[27] 
* INPUT : din0[28] 
* INPUT : din0[29] 
* INPUT : din0[30] 
* INPUT : din0[31] 
* INPUT : din0[32] 
* INPUT : din0[33] 
* INPUT : din0[34] 
* INPUT : din0[35] 
* INPUT : din0[36] 
* INPUT : din0[37] 
* INPUT : din0[38] 
* INPUT : din0[39] 
* INPUT : din0[40] 
* INPUT : din0[41] 
* INPUT : din0[42] 
* INPUT : din0[43] 
* INPUT : din0[44] 
* INPUT : din0[45] 
* INPUT : din0[46] 
* INPUT : din0[47] 
* INPUT : din0[48] 
* INPUT : din0[49] 
* INPUT : din0[50] 
* INPUT : din0[51] 
* INPUT : din0[52] 
* INPUT : din0[53] 
* INPUT : din0[54] 
* INPUT : din0[55] 
* INPUT : din0[56] 
* INPUT : din0[57] 
* INPUT : din0[58] 
* INPUT : din0[59] 
* INPUT : din0[60] 
* INPUT : din0[61] 
* INPUT : din0[62] 
* INPUT : din0[63] 
* INPUT : din0[64] 
* INPUT : din0[65] 
* INPUT : din0[66] 
* INPUT : din0[67] 
* INPUT : din0[68] 
* INPUT : din0[69] 
* INPUT : din0[70] 
* INPUT : din0[71] 
* INPUT : addr0[0] 
* INPUT : addr0[1] 
* INPUT : addr0[2] 
* INPUT : addr0[3] 
* INPUT : addr0[4] 
* INPUT : addr1[0] 
* INPUT : addr1[1] 
* INPUT : addr1[2] 
* INPUT : addr1[3] 
* INPUT : addr1[4] 
* INPUT : csb0 
* INPUT : csb1 
* INPUT : clk0 
* INPUT : clk1 
* OUTPUT: dout1[0] 
* OUTPUT: dout1[1] 
* OUTPUT: dout1[2] 
* OUTPUT: dout1[3] 
* OUTPUT: dout1[4] 
* OUTPUT: dout1[5] 
* OUTPUT: dout1[6] 
* OUTPUT: dout1[7] 
* OUTPUT: dout1[8] 
* OUTPUT: dout1[9] 
* OUTPUT: dout1[10] 
* OUTPUT: dout1[11] 
* OUTPUT: dout1[12] 
* OUTPUT: dout1[13] 
* OUTPUT: dout1[14] 
* OUTPUT: dout1[15] 
* OUTPUT: dout1[16] 
* OUTPUT: dout1[17] 
* OUTPUT: dout1[18] 
* OUTPUT: dout1[19] 
* OUTPUT: dout1[20] 
* OUTPUT: dout1[21] 
* OUTPUT: dout1[22] 
* OUTPUT: dout1[23] 
* OUTPUT: dout1[24] 
* OUTPUT: dout1[25] 
* OUTPUT: dout1[26] 
* OUTPUT: dout1[27] 
* OUTPUT: dout1[28] 
* OUTPUT: dout1[29] 
* OUTPUT: dout1[30] 
* OUTPUT: dout1[31] 
* OUTPUT: dout1[32] 
* OUTPUT: dout1[33] 
* OUTPUT: dout1[34] 
* OUTPUT: dout1[35] 
* OUTPUT: dout1[36] 
* OUTPUT: dout1[37] 
* OUTPUT: dout1[38] 
* OUTPUT: dout1[39] 
* OUTPUT: dout1[40] 
* OUTPUT: dout1[41] 
* OUTPUT: dout1[42] 
* OUTPUT: dout1[43] 
* OUTPUT: dout1[44] 
* OUTPUT: dout1[45] 
* OUTPUT: dout1[46] 
* OUTPUT: dout1[47] 
* OUTPUT: dout1[48] 
* OUTPUT: dout1[49] 
* OUTPUT: dout1[50] 
* OUTPUT: dout1[51] 
* OUTPUT: dout1[52] 
* OUTPUT: dout1[53] 
* OUTPUT: dout1[54] 
* OUTPUT: dout1[55] 
* OUTPUT: dout1[56] 
* OUTPUT: dout1[57] 
* OUTPUT: dout1[58] 
* OUTPUT: dout1[59] 
* OUTPUT: dout1[60] 
* OUTPUT: dout1[61] 
* OUTPUT: dout1[62] 
* OUTPUT: dout1[63] 
* OUTPUT: dout1[64] 
* OUTPUT: dout1[65] 
* OUTPUT: dout1[66] 
* OUTPUT: dout1[67] 
* OUTPUT: dout1[68] 
* OUTPUT: dout1[69] 
* OUTPUT: dout1[70] 
* OUTPUT: dout1[71] 
* POWER : vdd 
* GROUND: gnd 
Xbank0
+ dout1[0] dout1[1] dout1[2] dout1[3] dout1[4] dout1[5] dout1[6]
+ dout1[7] dout1[8] dout1[9] dout1[10] dout1[11] dout1[12] dout1[13]
+ dout1[14] dout1[15] dout1[16] dout1[17] dout1[18] dout1[19] dout1[20]
+ dout1[21] dout1[22] dout1[23] dout1[24] dout1[25] dout1[26] dout1[27]
+ dout1[28] dout1[29] dout1[30] dout1[31] dout1[32] dout1[33] dout1[34]
+ dout1[35] dout1[36] dout1[37] dout1[38] dout1[39] dout1[40] dout1[41]
+ dout1[42] dout1[43] dout1[44] dout1[45] dout1[46] dout1[47] dout1[48]
+ dout1[49] dout1[50] dout1[51] dout1[52] dout1[53] dout1[54] dout1[55]
+ dout1[56] dout1[57] dout1[58] dout1[59] dout1[60] dout1[61] dout1[62]
+ dout1[63] dout1[64] dout1[65] dout1[66] dout1[67] dout1[68] dout1[69]
+ dout1[70] dout1[71] rbl_bl0 rbl_bl1 bank_din0_0 bank_din0_1
+ bank_din0_2 bank_din0_3 bank_din0_4 bank_din0_5 bank_din0_6
+ bank_din0_7 bank_din0_8 bank_din0_9 bank_din0_10 bank_din0_11
+ bank_din0_12 bank_din0_13 bank_din0_14 bank_din0_15 bank_din0_16
+ bank_din0_17 bank_din0_18 bank_din0_19 bank_din0_20 bank_din0_21
+ bank_din0_22 bank_din0_23 bank_din0_24 bank_din0_25 bank_din0_26
+ bank_din0_27 bank_din0_28 bank_din0_29 bank_din0_30 bank_din0_31
+ bank_din0_32 bank_din0_33 bank_din0_34 bank_din0_35 bank_din0_36
+ bank_din0_37 bank_din0_38 bank_din0_39 bank_din0_40 bank_din0_41
+ bank_din0_42 bank_din0_43 bank_din0_44 bank_din0_45 bank_din0_46
+ bank_din0_47 bank_din0_48 bank_din0_49 bank_din0_50 bank_din0_51
+ bank_din0_52 bank_din0_53 bank_din0_54 bank_din0_55 bank_din0_56
+ bank_din0_57 bank_din0_58 bank_din0_59 bank_din0_60 bank_din0_61
+ bank_din0_62 bank_din0_63 bank_din0_64 bank_din0_65 bank_din0_66
+ bank_din0_67 bank_din0_68 bank_din0_69 bank_din0_70 bank_din0_71 a0_0
+ a0_1 a0_2 a0_3 a0_4 a1_0 a1_1 a1_2 a1_3 a1_4 s_en1 p_en_bar0 p_en_bar1
+ w_en0 wl_en0 wl_en1 vdd gnd
+ freepdk45_sram_1w1r_32x72_bank
Xcontrol0
+ csb0 clk0 rbl_bl0 w_en0 p_en_bar0 wl_en0 clk_buf0 vdd gnd
+ freepdk45_sram_1w1r_32x72_control_logic_w
Xcontrol1
+ csb1 clk1 rbl_bl1 s_en1 p_en_bar1 wl_en1 clk_buf1 vdd gnd
+ freepdk45_sram_1w1r_32x72_control_logic_r
Xrow_address0
+ addr0[0] addr0[1] addr0[2] addr0[3] addr0[4] a0_0 a0_1 a0_2 a0_3 a0_4
+ clk_buf0 vdd gnd
+ freepdk45_sram_1w1r_32x72_row_addr_dff
Xrow_address1
+ addr1[0] addr1[1] addr1[2] addr1[3] addr1[4] a1_0 a1_1 a1_2 a1_3 a1_4
+ clk_buf1 vdd gnd
+ freepdk45_sram_1w1r_32x72_row_addr_dff
Xdata_dff0
+ din0[0] din0[1] din0[2] din0[3] din0[4] din0[5] din0[6] din0[7]
+ din0[8] din0[9] din0[10] din0[11] din0[12] din0[13] din0[14] din0[15]
+ din0[16] din0[17] din0[18] din0[19] din0[20] din0[21] din0[22]
+ din0[23] din0[24] din0[25] din0[26] din0[27] din0[28] din0[29]
+ din0[30] din0[31] din0[32] din0[33] din0[34] din0[35] din0[36]
+ din0[37] din0[38] din0[39] din0[40] din0[41] din0[42] din0[43]
+ din0[44] din0[45] din0[46] din0[47] din0[48] din0[49] din0[50]
+ din0[51] din0[52] din0[53] din0[54] din0[55] din0[56] din0[57]
+ din0[58] din0[59] din0[60] din0[61] din0[62] din0[63] din0[64]
+ din0[65] din0[66] din0[67] din0[68] din0[69] din0[70] din0[71]
+ bank_din0_0 bank_din0_1 bank_din0_2 bank_din0_3 bank_din0_4
+ bank_din0_5 bank_din0_6 bank_din0_7 bank_din0_8 bank_din0_9
+ bank_din0_10 bank_din0_11 bank_din0_12 bank_din0_13 bank_din0_14
+ bank_din0_15 bank_din0_16 bank_din0_17 bank_din0_18 bank_din0_19
+ bank_din0_20 bank_din0_21 bank_din0_22 bank_din0_23 bank_din0_24
+ bank_din0_25 bank_din0_26 bank_din0_27 bank_din0_28 bank_din0_29
+ bank_din0_30 bank_din0_31 bank_din0_32 bank_din0_33 bank_din0_34
+ bank_din0_35 bank_din0_36 bank_din0_37 bank_din0_38 bank_din0_39
+ bank_din0_40 bank_din0_41 bank_din0_42 bank_din0_43 bank_din0_44
+ bank_din0_45 bank_din0_46 bank_din0_47 bank_din0_48 bank_din0_49
+ bank_din0_50 bank_din0_51 bank_din0_52 bank_din0_53 bank_din0_54
+ bank_din0_55 bank_din0_56 bank_din0_57 bank_din0_58 bank_din0_59
+ bank_din0_60 bank_din0_61 bank_din0_62 bank_din0_63 bank_din0_64
+ bank_din0_65 bank_din0_66 bank_din0_67 bank_din0_68 bank_din0_69
+ bank_din0_70 bank_din0_71 clk_buf0 vdd gnd
+ freepdk45_sram_1w1r_32x72_data_dff
.ENDS freepdk45_sram_1w1r_32x72
