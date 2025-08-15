#------------------------------------------------------------------------------
# Save the parameters trasferred from the server
#------------------------------------------------------------------------------
set CELL_DENSITY {{cell_density}}
set CLOCK_GATE_BUFFERING_LOCATION {{clock_gate_buffering_location}}
set CLONE_CLOCK_GATES {{clone_clock_gates}}
set MAX_DENSITY {{maxDensity}}
set POWER_EFFORT {{powerEffort}}
set RECLAIM_AREA {{reclaimArea}}
set FIX_FANOUT_LOAD {{fixFanoutLoad}}

source pnr_save/placement.enc
#-------------------------------------------------------------------------------
# Clock tree synthesis
#-------------------------------------------------------------------------------

set cts_start_time [clock seconds]

set_ccopt_property buffer_cells $CLKBUF_CELLS
set_ccopt_property clock_gating_cells $CLKGT_CELLS
# set_ccopt_property inverter_cells $INV_CELLS

set_ccopt_property cell_density $CELL_DENSITY
set_ccopt_property clock_gate_buffering_location $CLOCK_GATE_BUFFERING_LOCATION
set_ccopt_property clone_clock_gates $CLONE_CLOCK_GATES

setNanoRouteMode -routeWithTimingDriven false -routeDesignFixClockNets true
# set_ccopt_mode -cts_opt_type cluster
ccopt_design -cts
refinePlace
timeDesign -postCTS -outDir pnr_reports/cts_time

#-------------------------------------------------------------------------------
# Post-CTS timing optimization
#-------------------------------------------------------------------------------
setOptMode -maxDensity $MAX_DENSITY \
    -powerEffort $POWER_EFFORT \
    -reclaimArea $RECLAIM_AREA \
    -fixFanoutLoad $FIX_FANOUT_LOAD
optDesign -postCTS -outDir pnr_reports/cts_opt

set inp   [all_inputs -no_clocks]
set outp  [all_outputs]
set mems  [all_registers -macros ]
set icgs  [filter_collection [all_registers] "is_integrated_clock_gating_cell == true"]
set regs  [remove_from_collection [all_registers -edge_triggered] $icgs]
set allregs  [all_registers]
group_path   -name Reg2Reg      -from $regs -to $regs

report_timing -max_paths 100 -path_group Reg2Reg > pnr_reports/cts_opt_timing.rpt.gz

report_ccopt_clock_tree_structure -file pnr_reports/ccopt.txt
defOut pnr_out/clock.def

saveNetlist pnr_out/${TOP_NAME}_cts.v

setExtractRCMode -engine preRoute
extractRC
rcOut -spef pnr_out/RC_cts.spef.gz
streamOut pnr_out/${TOP_NAME}_cts.gds.gz
saveDesign pnr_save/cts.enc

puts "\[Info\] The CTS stage duration is [expr [clock seconds] - $cts_start_time] sec"

if {[info exists start_time]} {
    puts "\[Info\] The total duration is [expr [clock seconds] - $start_time] sec"
}

exec touch _Finished_
exit