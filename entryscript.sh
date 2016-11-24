#!/bin/bash

./steamcmd.sh \
    +login anonymous \
    +app_update 740 validate \
    +quit

csgo/srcds_run -game csgo $*
