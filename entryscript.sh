#!/bin/bash

./steamcmd.sh \
    +login anonymous \
    +app_update 740 validate \
    +quit

./srcds_run -game csgo $*
