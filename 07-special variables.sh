#!/bin/bash
# special variables in bash scripting
# special variables are used in double quotes to get the values of those variables.


echo "All args passed to script: $@" # used to get all the arguments passed to the script.
echo "Number of vars passed to script: $#" #number of arguments passed
echo "Script name: $0" #name of the script.
echo "Present directory: $PWD"
echo "Who is running: $USER"
echo "Home directory of current user: $HOME"
echo "PID of this script: $$" # process instance id (PID)of this script.
sleep 100 & #sleep for 100 sec in background, "&" is used to run command in background.
echo "PID of recently executed background process: $!"
echo "All args passed to script: $*"