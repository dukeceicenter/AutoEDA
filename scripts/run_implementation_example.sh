#!/bin/bash

LD_LIBRARY_PATH=/opt/cadence/innovus221/tools.lnx86/voltus_components/xp_tools/anls/lib:/home/jp502/cadence/installs/INNOVUS211/tools.lnx86/voltus_components/xp_tools/anls/lib.OA:$LD_LIBRARY_PATH \
    python3 -u scripts/_helper/implement_config_row.py -d des -s cpV1_clkP1_drcV1 -t FreePDK45 -g 0 -p 0 -c 0