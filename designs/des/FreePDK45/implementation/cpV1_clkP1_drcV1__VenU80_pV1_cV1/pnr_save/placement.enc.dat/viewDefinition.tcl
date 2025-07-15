if {![namespace exists ::IMEX]} { namespace eval ::IMEX {} }
set ::IMEX::dataVar [file dirname [file normalize [info script]]]
set ::IMEX::libVar ${::IMEX::dataVar}/libs

create_library_set -name fast\
   -timing\
    [list ${::IMEX::libVar}/mmmc/NangateOpenCellLibrary_fast_ccs.lib\
          [list ${::IMEX::libVar}/mmmc/freepdk45_sram_1rw0r_1024x136_17_FF_1p25V_0C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1rw0r_128x44_FF_1p25V_0C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1rw0r_20x64_FF_1p25V_0C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1rw0r_22x64_FF_1p25V_0C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1rw0r_256x64_FF_1p25V_0C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1rw0r_45x512_FF_1p25V_0C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1rw0r_512x45_FF_1p25V_0C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1rw0r_512x64_FF_1p25V_0C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1rw0r_64x160_20_FF_1p25V_0C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1rw0r_64x176_22_FF_1p25V_0C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1rw0r_64x20_64_FF_1p25V_0C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1rw0r_64x40_20_FF_1p25V_0C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1rw0r_64x44_22_FF_1p25V_0C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1rw0r_64x512_FF_1p25V_0C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1rw0r_64x80_20_FF_1p25V_0C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1rw0r_64x88_22_FF_1p25V_0C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_120x16_FF_1p25V_0C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_128x120_30_FF_1p25V_0C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_128x124_31_FF_1p25V_0C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_128x32_32_FF_1p25V_0C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_128x40_FF_1p25V_0C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_128x44_11_FF_1p25V_0C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_128x4_1_FF_1p25V_0C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_128x52_13_FF_1p25V_0C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_128x56_14_FF_1p25V_0C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_16x120_FF_1p25V_0C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_16x32_32_FF_1p25V_0C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_16x72_FF_1p25V_0C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_2048x8_2_FF_1p25V_0C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_256x128_64_FF_1p25V_0C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_256x48_12_FF_1p25V_0C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_256x4_1_FF_1p25V_0C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_27x96_32_FF_1p25V_0C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_28x128_32_FF_1p25V_0C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_31x128_FF_1p25V_0C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_32x120_FF_1p25V_0C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_32x128_32_FF_1p25V_0C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_32x240_FF_1p25V_0C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_32x32_FF_1p25V_0C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_32x32_32_FF_1p25V_0C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_32x64_32_FF_1p25V_0C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_32x72_FF_1p25V_0C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_32x96_32_FF_1p25V_0C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_34x128_32_FF_1p25V_0C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_38x96_32_FF_1p25V_0C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_40x128_FF_1p25V_0C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_40x240_FF_1p25V_0C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_40x64_32_FF_1p25V_0C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_40x72_FF_1p25V_0C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_48x32_32_FF_1p25V_0C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_512x64_64_FF_1p25V_0C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_64x32_32_FF_1p25V_0C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_64x512_FF_1p25V_0C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_96x32_32_FF_1p25V_0C.lib]]
create_library_set -name slow\
   -timing\
    [list ${::IMEX::libVar}/mmmc/NangateOpenCellLibrary_slow_ccs.lib\
          [list ${::IMEX::libVar}/mmmc/freepdk45_sram_1rw0r_1024x136_17_SS_0p95V_125C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1rw0r_128x44_SS_0p95V_125C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1rw0r_20x64_SS_0p95V_125C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1rw0r_22x64_SS_0p95V_125C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1rw0r_256x64_SS_0p95V_125C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1rw0r_45x512_SS_0p95V_125C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1rw0r_512x45_SS_0p95V_125C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1rw0r_512x64_SS_0p95V_125C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1rw0r_64x160_20_SS_0p95V_125C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1rw0r_64x176_22_SS_0p95V_125C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1rw0r_64x20_64_SS_0p95V_125C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1rw0r_64x40_20_SS_0p95V_125C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1rw0r_64x44_22_SS_0p95V_125C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1rw0r_64x512_SS_0p95V_125C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1rw0r_64x80_20_SS_0p95V_125C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1rw0r_64x88_22_SS_0p95V_125C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_120x16_SS_0p95V_125C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_128x120_30_SS_0p95V_125C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_128x124_31_SS_0p95V_125C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_128x32_32_SS_0p95V_125C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_128x40_SS_0p95V_125C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_128x44_11_SS_0p95V_125C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_128x4_1_SS_0p95V_125C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_128x52_13_SS_0p95V_125C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_128x56_14_SS_0p95V_125C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_16x120_SS_0p95V_125C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_16x32_32_SS_0p95V_125C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_16x72_SS_0p95V_125C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_2048x8_2_SS_0p95V_125C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_256x128_64_SS_0p95V_125C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_256x48_12_SS_0p95V_125C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_256x4_1_SS_0p95V_125C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_27x96_32_SS_0p95V_125C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_28x128_32_SS_0p95V_125C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_31x128_SS_0p95V_125C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_32x120_SS_0p95V_125C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_32x128_32_SS_0p95V_125C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_32x240_SS_0p95V_125C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_32x32_SS_0p95V_125C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_32x32_32_SS_0p95V_125C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_32x64_32_SS_0p95V_125C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_32x72_SS_0p95V_125C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_32x96_32_SS_0p95V_125C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_34x128_32_SS_0p95V_125C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_38x96_32_SS_0p95V_125C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_40x128_SS_0p95V_125C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_40x240_SS_0p95V_125C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_40x64_32_SS_0p95V_125C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_40x72_SS_0p95V_125C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_48x32_32_SS_0p95V_125C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_512x64_64_SS_0p95V_125C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_64x32_32_SS_0p95V_125C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_64x512_SS_0p95V_125C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_96x32_32_SS_0p95V_125C.lib]]
create_library_set -name typical\
   -timing\
    [list ${::IMEX::libVar}/mmmc/NangateOpenCellLibrary_typical_ccs.lib\
          [list ${::IMEX::libVar}/mmmc/freepdk45_sram_1rw0r_1024x136_17_TT_1p1V_25C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1rw0r_128x44_TT_1p1V_25C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1rw0r_20x64_TT_1p1V_25C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1rw0r_22x64_TT_1p1V_25C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1rw0r_256x64_TT_1p1V_25C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1rw0r_45x512_TT_1p1V_25C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1rw0r_512x45_TT_1p1V_25C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1rw0r_512x64_TT_1p1V_25C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1rw0r_64x160_20_TT_1p1V_25C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1rw0r_64x176_22_TT_1p1V_25C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1rw0r_64x20_64_TT_1p1V_25C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1rw0r_64x40_20_TT_1p1V_25C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1rw0r_64x44_22_TT_1p1V_25C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1rw0r_64x512_TT_1p1V_25C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1rw0r_64x80_20_TT_1p1V_25C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1rw0r_64x88_22_TT_1p1V_25C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_120x16_TT_1p1V_25C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_128x120_30_TT_1p1V_25C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_128x124_31_TT_1p1V_25C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_128x32_32_TT_1p1V_25C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_128x40_TT_1p1V_25C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_128x44_11_TT_1p1V_25C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_128x4_1_TT_1p1V_25C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_128x52_13_TT_1p1V_25C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_128x56_14_TT_1p1V_25C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_16x120_TT_1p1V_25C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_16x32_32_TT_1p1V_25C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_16x72_TT_1p1V_25C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_2048x8_2_TT_1p1V_25C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_256x128_64_TT_1p1V_25C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_256x48_12_TT_1p1V_25C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_256x4_1_TT_1p1V_25C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_27x96_32_TT_1p1V_25C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_28x128_32_TT_1p1V_25C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_31x128_TT_1p1V_25C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_32x120_TT_1p1V_25C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_32x128_32_TT_1p1V_25C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_32x240_TT_1p1V_25C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_32x32_TT_1p1V_25C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_32x32_32_TT_1p1V_25C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_32x64_32_TT_1p1V_25C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_32x72_TT_1p1V_25C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_32x96_32_TT_1p1V_25C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_34x128_32_TT_1p1V_25C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_38x96_32_TT_1p1V_25C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_40x128_TT_1p1V_25C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_40x240_TT_1p1V_25C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_40x64_32_TT_1p1V_25C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_40x72_TT_1p1V_25C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_48x32_32_TT_1p1V_25C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_512x64_64_TT_1p1V_25C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_64x32_32_TT_1p1V_25C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_64x512_TT_1p1V_25C.lib\
          ${::IMEX::libVar}/mmmc/freepdk45_sram_1w1r_96x32_32_TT_1p1V_25C.lib]]
create_rc_corner -name default\
   -cap_table ${::IMEX::libVar}/mmmc/NCSU_FreePDK_45nm.capTbl\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0\
   -T 25
create_delay_corner -name fast\
   -library_set fast\
   -rc_corner default
create_delay_corner -name slow\
   -library_set slow\
   -rc_corner default
create_delay_corner -name typical\
   -library_set typical\
   -rc_corner default
create_constraint_mode -name default\
   -sdc_files\
    [list ${::IMEX::dataVar}/mmmc/modes/default/default.sdc]
create_analysis_view -name worst -constraint_mode default -delay_corner slow -latency_file ${::IMEX::dataVar}/mmmc/views/worst/latency.sdc
create_analysis_view -name best -constraint_mode default -delay_corner fast -latency_file ${::IMEX::dataVar}/mmmc/views/best/latency.sdc
create_analysis_view -name normal -constraint_mode default -delay_corner typical
set_analysis_view -setup [list worst] -hold [list best]
