#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Thu Jul 17 14:02:38 2025                
#                                                     
#######################################################

#@(#)CDS: Innovus v21.17-s075_1 (64bit) 03/15/2023 11:17 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: NanoRoute 21.17-s075_1 NR230308-2354/21_17-UB (database version 18.20.604) {superthreading v2.17}
#@(#)CDS: AAE 21.17-s026 (64bit) 03/15/2023 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: CTE 21.17-s025_1 () Mar 14 2023 11:00:06 ( )
#@(#)CDS: SYNTECH 21.17-s007_1 () Feb 20 2023 06:56:35 ( )
#@(#)CDS: CPE v21.17-s068
#@(#)CDS: IQuantus/TQuantus 21.1.1-s939 (64bit) Wed Nov 9 09:34:24 PST 2022 (Linux 3.10.0-693.el7.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
setMultiCpuUsage -localCpu 8
setLibraryUnit -cap 1pf -time 1ns
create_library_set -name slow -timing [list $slow_lib [prefix_lib $openram_lib(slow) $OPENRAM_MACRO_LIB_DIR]]
create_library_set -name typical -timing [list $typical_lib [prefix_lib $openram_lib(typical) $OPENRAM_MACRO_LIB_DIR]]
create_library_set -name fast -timing [list $fast_lib [prefix_lib $openram_lib(fast) $OPENRAM_MACRO_LIB_DIR]]
create_rc_corner -name default -cap_table $cap_tbl_file -T 25
create_delay_corner -name slow -library_set slow -rc_corner default
create_delay_corner -name typical -library_set typical -rc_corner default
create_delay_corner -name fast -library_set fast -rc_corner default
create_constraint_mode -name default -sdc_files ${SDC_FILE}
create_analysis_view -name best -constraint_mode default -delay_corner fast
create_analysis_view -name worst -constraint_mode default -delay_corner slow
create_analysis_view -name normal -constraint_mode default -delay_corner typical 
set init_lef_file {/home/yl996/proj/mcp-eda-example/libraries/FreePDK45/NangateOpenCellLibrary_PDKv1_3_v2010_12/Back_End/lef/NangateOpenCellLibrary.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1rw0r_1024x136_17.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1rw0r_128x44.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1rw0r_20x64.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1rw0r_22x64.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1rw0r_256x64.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1rw0r_45x512.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1rw0r_512x45.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1rw0r_512x64.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1rw0r_64x160_20.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1rw0r_64x176_22.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1rw0r_64x20_64.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1rw0r_64x40_20.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1rw0r_64x44_22.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1rw0r_64x512.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1rw0r_64x80_20.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1rw0r_64x88_22.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1w1r_11x128.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1w1r_120x16.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1w1r_128x120_30.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1w1r_128x124_31.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1w1r_128x32_32.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1w1r_128x40.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1w1r_128x44_11.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1w1r_128x4_1.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1w1r_128x52_13.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1w1r_128x56_14.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1w1r_12x256.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1w1r_13x128.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1w1r_14x128.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1w1r_16x120.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1w1r_16x32_32.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1w1r_16x72.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1w1r_2048x8_2.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1w1r_256x128_64.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1w1r_256x48_12.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1w1r_256x4_1.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1w1r_27x96_32.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1w1r_28x128_32.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1w1r_31x128.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1w1r_32x120.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1w1r_32x128_32.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1w1r_32x240.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1w1r_32x32.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1w1r_32x32_32.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1w1r_32x64_32.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1w1r_32x72.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1w1r_32x96_32.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1w1r_34x128_32.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1w1r_38x96_32.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1w1r_40x128.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1w1r_40x240.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1w1r_40x64_32.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1w1r_40x72.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1w1r_48x32_32.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1w1r_512x64_64.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1w1r_64x32_32.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1w1r_64x512.lef /home/yl996/proj/mcp-eda-example/libraries/FreePDK45/OpenRAM/lef/freepdk45_sram_1w1r_96x32_32.lef}
set init_verilog /home/yl996/proj/mcp-eda-example/designs/des/FreePDK45/synthesis/cpV1_clkP1_drcV1/results/des3.mapped.v
set init_pwr_net VDD
set init_gnd_net VSS
init_design -setup worst -hold best
setDesignMode -flowEffort express -powerEffort none -process 45
report_analysis_views > pnr_reports/analysis_views.rpt
setDrawView fplan
floorPlan -site FreePDK45_38x28_10R_NP_162NW_34O -r 1 0.8
setPinAssignMode -pinEditInBatch true
get_message -id GLOBAL-100 -suppress
get_message -id GLOBAL-100 -suppress
editPin -fixOverlap 1 -spreadDirection clockwise -layer M2 -spreadType side -side LEFT \
        -pin [get_attribute [get_ports -filter "is_clock_used_as_clock==false && direction==in"] full_name]
get_message -id GLOBAL-100 -suppress
get_message -id GLOBAL-100 -suppress
editPin -fixOverlap 1 -spreadDirection clockwise -layer M2 -spreadType side -side RIGHT \
        -pin [get_attribute [get_ports -filter "is_clock_used_as_clock==false && direction==out"] full_name]
get_message -id GLOBAL-100 -suppress
get_message -id GLOBAL-100 -suppress
editPin -fixOverlap 1 -spreadDirection clockwise -layer M3 -spreadType CENTER -side TOP \
        -pin [get_attribute [get_ports -filter "is_clock_used_as_clock==true"] full_name] \
        -use CLOCK
setPinAssignMode -pinEditInBatch false
planDesign
checkFPlan > pnr_reports/init_check.rpt
defOut pnr_out/init.def
saveDesign pnr_save/floorplan.enc
summaryReport -outfile pnr_reports/floorplan_summary.rpt
