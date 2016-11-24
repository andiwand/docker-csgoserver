#!/bin/bash

"${STEAM_HOME}/steamcmd.sh" \
    +login anonymous \
    +force_install_dir "${CSGO_HOME}" \
    +app_update 740 validate \
    +quit

"${CSGO_HOME}/srcds_run" -game csgo $*
