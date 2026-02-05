#!/bin/bash

#writing on script with another script calling it with source command.
COUNTRY=INDIA

echo "I am in: $COUNTRY"
echo "PID of SCRIPT-1: $$"

#sh 22-script2.sh 
# this will create a new subshell and PID will be different.
source ./22-script2.sh