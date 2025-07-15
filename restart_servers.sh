#!/usr/bin/env bash
## restart_servers.sh
## kill any existing MCP server processes, then (re)launch each one on *its own*
## high-range port to avoid conflicts across users / machines.

PORT_SETUP=13333
PORT_COMPILE=13334
PORT_FLOORPLAN=13335
PORT_POWERPLAN=13336
PORT_PLACEMENT=13337
PORT_CTS=13338
PORT_ROUTE=13339
PORT_SAVE=13440      

PYTHON=${PYTHON:-python3}      

_kill()   { pkill -f "$1" 2>/dev/null || true; }
_launch() { nohup "$PYTHON" "$1" --port "$2" >/dev/null 2>&1 & }

_kill floorplan_server.py
_kill powerplan_server.py
_kill placement_server.py
_kill cts_server.py
_kill route_server.py
_kill save_server.py
_kill synth_setup_server.py
_kill synth_compile_server.py

_launch server/synth_setup_server.py    "$PORT_SETUP"
_launch server/synth_compile_server.py  "$PORT_COMPILE"
_launch server/floorplan_server.py      "$PORT_FLOORPLAN"
_launch server/powerplan_server.py      "$PORT_POWERPLAN"
_launch server/placement_server.py      "$PORT_PLACEMENT"
_launch server/cts_server.py            "$PORT_CTS"
_launch server/route_server.py          "$PORT_ROUTE"
_launch server/save_server.py           "$PORT_SAVE"

echo "MCP servers restarted on ports:"
printf "   setup=%s  compile=%s  floor=%s  power=%s\n" \
       "$PORT_SETUP" "$PORT_COMPILE" "$PORT_FLOORPLAN" "$PORT_POWERPLAN"
printf "   place=%s  cts=%s  route=%s  save=%s\n" \
       "$PORT_PLACEMENT" "$PORT_CTS" "$PORT_ROUTE" "$PORT_SAVE"