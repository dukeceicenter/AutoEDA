###################################################################

# Created by write_sdc on Tue Jun 17 00:34:42 2025

###################################################################
set sdc_version 2.1

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current mA
set_max_capacitance 5 [current_design]
set_max_transition 0.5 [current_design]
set_max_fanout 10 [current_design]
create_clock [get_ports clk]  -period 1  -waveform {0 0.5}
