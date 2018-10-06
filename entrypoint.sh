#!/bin/bash

OPTION=${NJMON_OPTION:-"-s 5 -c 2000 -f"}
echo "Running NMON with the following option - njmon $OPTION"
njmon $OPTION
sleep infinity
