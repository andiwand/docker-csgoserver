#!/bin/bash

docker build --build-arg UPDATE=1 --pull -t "andiwand/csgoserver" .
