#!/bin/bash

set -e # this will check errors,if errors it will exit.

trap 'echo "There is an error in $LINENO, Command: $BASH_COMMAND"' ERR

echo "Hello World"
echo "I am learning Shell"
echoo "printing error here"
echo "No error in this"