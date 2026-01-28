#!/bin/bash

echo  "please enter your username:"
read USER_NAME
echo "user name is $USER_NAME"

echo "please enter your password:"
read -s PASSWORD # -s option is used to hide the input while typing (password)