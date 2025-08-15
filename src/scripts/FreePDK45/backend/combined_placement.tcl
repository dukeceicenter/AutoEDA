#------------------------------------------------------------------------------
# 1_setup.tcl
#------------------------------------------------------------------------------
#------------------------------------------------------------------------------
# Save the parameters trasferred from the server
#------------------------------------------------------------------------------
set FLOW_EFFORT {{flowEffort}}
set GLOBAL_POWER_EFFORT {{globalPowerEffort}}
set NETLIST_DIR {{syn_res_dir}}

#-------------------------------------------------------------------------------
# Setting Design name and effort level for various stages
#-------------------------------------------------------------------------------
set VERILOG_FILE "${NETLIST_DIR}/${TOP_NAME}.mapped.v"
set SDC_FILE     "${NETLIST_DIR}/${TOP_NAME}.mapped.sdc"


set top_module    ${TOP_NAME}   ;# Top design name

# set DATE [clock format [clock seconds] -format "%b%d-%T"] 

set start_time [clock seconds]

#-------------------------------------------------------------------------------
# Creating the directory for logs, reports and outputs 
#-------------------------------------------------------------------------------
# if {![file exists pnr_logs]} {
#     file delete -force pnr_logs
# }
# if {![file exists pnr_out]} {
#     file delete -force pnr_out
# }
# if {![file exists pnr_reports]} {
#     file delete -force pnr_reports
# }

# puts "Creating directories: pnr_logs, pnr_out, pnr_reports, pnr_save"
# file mkdir pnr_logs
# file mkdir pnr_out
# file mkdir pnr_reports
# file mkdir pnr_save

setMultiCpuUsage -localCpu 8
setLibraryUnit -cap 1pf -time 1ns

#-------------------------------------------------------------------------------
# Import the design
#-------------------------------------------------------------------------------

proc prefix_lib {lib_list prefix} {
    set new_list {}
    foreach lib $lib_list {
        lappend new_list "${prefix}/${lib}"
    }
    return $new_list
}

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

set init_lef_file $lef_files
set init_verilog ${VERILOG_FILE}
set init_design_set_top 0

set init_pwr_net {VDD}
set init_gnd_net {VSS}

init_design -setup worst -hold best
setDesignMode -flowEffort $FLOW_EFFORT -powerEffort $GLOBAL_POWER_EFFORT -process 45

report_analysis_views > pnr_reports/analysis_views.rpt

#-------------------------------------------------------------------------------
# Logging functions
#-------------------------------------------------------------------------------

proc getCellInfo { fd } {
    puts $fd "NumOfCells: [sizeof_collection [get_cells  * -hierarchical]]\n"
    
    foreach_in_collection cell [get_cells -hierarchical] {
        puts $fd "cell name : [get_object_name $cell]"
        #puts $fd "area : [get_property $cell area]"
        #puts $fd "modelType: [get_property $cell instance_model]"
        puts $fd "position : [get_property $cell x_coordinate_min] [get_property $cell y_coordinate_min] [get_property $cell x_coordinate_max] [get_property $cell y_coordinate_max]"
        puts $fd "type: [get_property $cell ref_lib_cell_name]"
        
        set pins [all_fanin -to [get_property $cell ref_lib_cell_name]]
        set libCell [get_lib_cells -of_objects $cell]

        puts -nonewline $fd "fanin pins: "
        #puts -nonewline "fanin pins: "
        foreach_in_collection libPin [get_lib_pins -of_objects $libCell] {
            if {[get_property $libPin direction] == "in"} {
                puts -nonewline $fd "[get_property $libPin name] "
                #puts -nonewline "[get_property $libPin name] "
            }
        }
        puts $fd ""
        #puts ""
        puts -nonewline $fd "fanout pins: "
        #puts -nonewline "fanout pins: "
        foreach_in_collection libPin [get_lib_pins -of_objects $libCell] {
            if {[get_property $libPin direction] == "out"} {
                puts -nonewline $fd "[get_property $libPin name] "
                #puts -nonewline "[get_property $libPin name] "
            }
        }
        puts $fd ""
        #set libPins [get_lib_pins -of_objects $libCell]
        #puts "libCell: [get_property $libCell object_type]"
        
        #puts $fd "    Pins:"
        if { [expr [sizeof_collection [get_pins -of_objects cell] ] == 0] } {
            
        }
        foreach_in_collection pin [get_pins -of_objects cell] {
            #puts $fd "    name: [get_object_name $pin], load: [get_property $pin fanout_load],  [get_property $pin x_coordinate] [get_property $pin y_coordinate]"
        }
        puts $fd ""
    }
}

proc getNetInfo { fd } {
    foreach_in_collection net  [get_nets  * -hierarchical]  {
        puts $fd "net name : [get_object_name $net]"
        set cells [get_cells -of_objects $net]
        #puts $fd "cells : [get_object_name $cells]"
        set pins [get_pins -of_objects $net]

        set pins_load [get_property $net load_pins]
        set pins_driver [get_property $net driver_pins]

        puts $fd "cell/pin : [get_object_name $pins_driver] [get_object_name $pins_load]"
        set allPins [add_to_collection $pins_driver $pins_load]
        puts -nonewline $fd "in/out:"
        for {set i 0} \
            {$i < [sizeof_collection $allPins]} \
            {incr i} {
                #puts $i
                if {$i < [sizeof_collection $pins_driver]} {
                    puts -nonewline $fd " in"
                } else {
                    puts -nonewline $fd " out"
                }
                
        }
        puts $fd ""

        #puts $fd "pins_driver : [get_object_name $pins_driver]"
        #puts $fd "cell/pin : [get_object_name $pins]"

        puts -nonewline $fd "X:"
        foreach_in_collection pin $allPins {
            set port [get_ports -quiet [get_object_name $pin]]
            if {[expr [sizeof_collection $port] > 0]} {
                puts -nonewline $fd " [get_property $port x_coordinate]"
            } else {
                puts -nonewline $fd " [get_property $pin x_coordinate]"
            }
        }
        puts $fd ""
        puts -nonewline $fd "Y:"
        foreach_in_collection pin $allPins {
            set port [get_ports -quiet [get_object_name $pin]]
            if {[expr [sizeof_collection $port] > 0]} {
                puts -nonewline $fd " [get_property $port y_coordinate]"
            } else {
                puts -nonewline $fd " [get_property $pin y_coordinate]"
            }
        }
        puts $fd ""
        #puts $fd "X: [get_property $pins x_coordinate]"
        #puts $fd "Y: [get_property $pins y_coordinate]"
        puts $fd "load: [get_property $pins fanout_load]"
        puts $fd ""
    }
}

proc getCellRelation2 { fd } {
    foreach_in_collection net  [get_nets  * -hierarchical]  {
        puts $fd "net name : [get_object_name $net]"
        set cells [get_cells -of_objects $net]
        foreach_in_collection cell [get_cells -of_objects $net] {
            puts $fd "cell : [get_object_name $cell], [get_property $cell x_coordinate_min] [get_property $cell y_coordinate_min] [get_property $cell x_coordinate_max] [get_property $cell y_coordinate_max]"    
        }
        puts $fd "\n"
    }
}

proc netSize { net } {
    return [sizeof_collection [get_cells -of_objects $net -hierarchical]]
}

proc checkNets { fd } {
    foreach_in_collection net  [get_nets  * -hierarchical]  {
        if {[netSize $net] > 15} {
            puts $fd "LargeFan"
        }
        if {[netSize $net] > 50} {
            puts $fd "VeryLargeFan"
        }
        puts $fd "fanout: [expr [netSize $net] - 1]"
        puts $fd "net name: [get_object_name $net]"

        #set dri [get_cells -of_objects [get_property $net driver_pins]]
        set dri [get_pins -quiet [get_property $net driver_pins]]
        set port [get_ports -quiet -of_objects $net]

        #set sinks [remove_from_collection [get_cells -of_objects $net -hierarchical -leaf] $dri]
        set sinks [remove_from_collection [get_pins -quiet -of_objects $net -hierarchical -leaf] $dri]

        if {[expr [sizeof_collection $dri] == 0]} {
            puts $fd "PortsIn!!!!"

            if {[expr [sizeof_collection $port] > 0] && [expr {[get_property $port direction] == "in"}]} {
                puts $fd "driver: [get_object_name $port] NangateOpenCellLibrary/inPort [get_property $port x_coordinate] [get_property $port y_coordinate]"
            } else {
                puts $fd "driver: NotFound NotFound NotFound NotFound"
            }
        } else  {
            puts $fd "driver: [get_object_name $dri] \
                              [get_object_name [get_lib_cells -of_objects [get_cells -of_objects $dri] ]] \
                              [get_property $dri x_coordinate] [get_property $dri y_coordinate]"
        }

        if {[expr [sizeof_collection $sinks] == 0] && [expr [sizeof_collection $port] > 0] && [expr {[get_property $port direction] == "out"}]} {
            puts $fd "PortsOut!!!!"
            puts $fd "sinks: [get_object_name $port]"
            puts $fd "sink libs: NangateOpenCellLibrary/inPort"
            puts $fd "X: [get_property $port x_coordinate]"
            puts $fd "Y: [get_property $port y_coordinate]"
        } elseif {[expr [sizeof_collection $sinks] > 0]} {
            puts $fd "sinks: [get_object_name $sinks ]"
            puts $fd "sink libs: [get_object_name [get_lib_cells -of_objects [get_cells -of_objects $sinks] ]]"
            puts $fd "X: [get_property $sinks x_coordinate ]"
            puts $fd "Y: [get_property $sinks y_coordinate ]"
        } else {
            puts $fd "sinks: NotFound"
            puts $fd "sink libs: NotFound"
            puts $fd "X: NotFound"
            puts $fd "Y: NotFound"
        }
        puts $fd "" 
    }
    puts $fd "\n End \n" 
}

proc check_text {log_file checked_text} {
    set file [open $log_file r]
    set found 0

    while {[gets $file line] >= 0} {
        if {[regexp $checked_text $line]} {
            set found 1
            break
        }
    }

    close $file
    return $found
}

proc do_power_analysis {report_folder} {
    set_default_switching_activity -input_activity 0.2 -seq_activity 0.1
    propagate_activity
    set_power_output_dir pnr_reports/$report_folder
    report_power -cap -pg_net -format=detailed -outfile design.rpt.gz
    report_power -clock_network all -outfile clock.rpt.gz
    # write_tcf pnr_reports/$report_folder/activity.tcf
}

#------------------------------------------------------------------------------
# 2_floorplan.tcl
#------------------------------------------------------------------------------
#------------------------------------------------------------------------------
# Save the parameters trasferred from the server
#------------------------------------------------------------------------------
set ROW_DENSITY {{rowDensity}}
set ASPECT_RATIO {{aspectRatio}}

#------------------------------------------------------------------------------
# Floorplan parameters
# set ASPECT_RATIO 1

setDrawView fplan
floorPlan -site FreePDK45_38x28_10R_NP_162NW_34O -r ${ASPECT_RATIO} ${ROW_DENSITY}


#pinAlignment -newLayer M6 \
#             -pinNames [get_attribute [get_ports -filter "is_clock_used_as_clock==false"] full_name] \
#             -ptnInst ${top_module} \
#             -refObj {} \
#             -legalizePin

#pinAlignment -newLayer M6 \
#             -pinNames [get_attribute [get_ports -filter "is_clock_used_as_clock==true"]  full_name] \
#             -ptnInst ${top_module} \
#             -refObj {} \
#   	     -legalizePin

setPinAssignMode -pinEditInBatch true

# Input pins are located on the left side of the die
editPin -fixOverlap 1 -spreadDirection clockwise -layer M2 -spreadType side -side LEFT \
        -pin [get_attribute [get_ports -filter "is_clock_used_as_clock==false && direction==in"] full_name]

# Output pins are located on the right side of the die
editPin -fixOverlap 1 -spreadDirection clockwise -layer M2 -spreadType side -side RIGHT \
        -pin [get_attribute [get_ports -filter "is_clock_used_as_clock==false && direction==out"] full_name]

# Clock pins are located on top of the die
editPin -fixOverlap 1 -spreadDirection clockwise -layer M3 -spreadType CENTER -side TOP \
        -pin [get_attribute [get_ports -filter "is_clock_used_as_clock==true"] full_name] \
        -use CLOCK

setPinAssignMode -pinEditInBatch false

###########

planDesign

checkFPlan > pnr_reports/init_check.rpt
defOut pnr_out/init.def
saveDesign pnr_save/floorplan.enc
summaryReport -outfile pnr_reports/floorplan_summary.rpt
exec gzip pnr_reports/floorplan_summary.rpt &

#------------------------------------------------------------------------------
# 3_powerplan.tcl
#------------------------------------------------------------------------------
globalNetConnect VSS -type pgpin -pin VSS -inst * 
globalNetConnect VDD -type pgpin -pin VDD -inst * 
globalNetConnect VSS -type tielo -inst * 
globalNetConnect VDD -type tiehi -inst * 


setAddStripeMode -use_exact_spacing 1 -extend_to_closest_target area_boundary -extend_to_first_ring 1


addStripe -nets VDD -layer M4 -direction vertical -width 1.8 -spacing 1.8 -set_to_set_distance 100 -start_from left -start_offset 2 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit M6 -padcore_ring_bottom_layer_limit M1 -block_ring_top_layer_limit M6 -block_ring_bottom_layer_limit M1 -use_wire_group 0 -snap_wire_center_to_grid None -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }

addStripe -nets VSS -layer M4 -direction vertical -width 1.8 -spacing 1.8 -set_to_set_distance 100 -start_from right -start_offset 2 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit M6 -padcore_ring_bottom_layer_limit M1 -block_ring_top_layer_limit M6 -block_ring_bottom_layer_limit M1 -use_wire_group 0 -snap_wire_center_to_grid None -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }


sroute -connect { corePin } -layerChangeRange { M1 M4 } -blockPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -allowJogging 1 -crossoverViaLayerRange { M1 M4 } -nets { VDD VSS} -allowLayerChange 1 -targetViaLayerRange { M1 M4 }

saveDesign pnr_save/powerplan.enc

#------------------------------------------------------------------------------
# 4_place.tcl
#------------------------------------------------------------------------------
#------------------------------------------------------------------------------
# Save the parameters trasferred from the server
#------------------------------------------------------------------------------
set PLACE_GLOBAL_TIMING_EFFORT {{place_global_timing_effort}}
set PLACE_GLOBAL_CONG_EFFORT {{place_global_cong_effort}}
set PLACE_DETAIL_WIRE_LENGTH_OPT_EFFORT {{place_detail_wire_length_opt_effort}}
set PLACE_GLOBAL_MAX_DENSITY {{place_global_max_density}}
set PLACE_GLOBAL_ACTIVITY_POWER_DRIVEN {{place_global_activity_power_driven}}
set MAX_DENSITY {{maxDensity}}
set POWER_EFFORT {{powerEffort}}
set RECLAIM_AREA {{reclaimArea}}
set FIX_FANOUT_LOAD {{fixFanoutLoad}}


#-------------------------------------------------------------------------------
# Placement
#-------------------------------------------------------------------------------

proc do_power_analysis {report_folder} {
    set_default_switching_activity -input_activity 0.2 -seq_activity 0.1
    propagate_activity
    set_power_output_dir pnr_reports/$report_folder
    report_power -cap -pg_net -format=detailed -outfile design.rpt.gz
    report_power -clock_network all -outfile clock.rpt.gz
    # write_tcf pnr_reports/$report_folder/activity.tcf
}

# TODO: verify there's no tapcell
# deleteFiller -cell $TAPCELL
# addEndCap -preCap $TAPCELL -postCap $TAPCELL -prefix ENDCAP

#addWellTap -cell $TAPCELL -cellInterval 100

set check_place_out pnr_reports/check_place.out

setPlaceMode -place_global_timing_effort $PLACE_GLOBAL_TIMING_EFFORT \
    -place_global_cong_effort $PLACE_GLOBAL_CONG_EFFORT \
    -place_detail_wire_length_opt_effort $PLACE_DETAIL_WIRE_LENGTH_OPT_EFFORT \
    -place_global_max_density $PLACE_GLOBAL_MAX_DENSITY \
    -place_global_activity_power_driven $PLACE_GLOBAL_ACTIVITY_POWER_DRIVEN
placeDesign
refinePlace
#place_opt_design -incremental

#setAnalysisMode -analysisType onChipVariation
timeDesign -preCTS -outDir pnr_reports/place_time
report_timing -max_paths 100 > pnr_reports/place_timing.rpt.gz

checkPlace $check_place_out



#-------------------------------------------------------------------------------
# Pre-CTS timing optimization
#-------------------------------------------------------------------------------

setOptMode -maxDensity $MAX_DENSITY \
    -powerEffort $POWER_EFFORT \
    -reclaimArea $RECLAIM_AREA \
    -fixFanoutLoad $FIX_FANOUT_LOAD
optDesign -preCTS -outDir pnr_reports/place_opt
# set _REPORTS_PATH $REPORTS_PATH
report_timing -max_paths 100 > pnr_reports/place_opt_timing.rpt.gz


#-------------------------------------------------------------------------------
# Log info & save design
#-------------------------------------------------------------------------------

do_power_analysis place_opt_power

defOut pnr_out/place.def
summaryReport -outfile pnr_reports/placement_summary.rpt


# exec gzip $cellFile $netFile &


saveNetlist pnr_out/${TOP_NAME}_place.v

# setExtractRCMode -engine preRoute -effortLevel low -coupled true -total_c_th 0.0
setExtractRCMode -engine preRoute -effortLevel low
extractRC
rcOut -spef pnr_out/RC_place.spef.gz
streamOut pnr_out/${top_module}_place.gds.gz
saveDesign pnr_save/placement.enc

exec touch _Finished_
exit