#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "Please run this script with root user access"
    exit 1
fi

echo "Installing Nginx" # installing nginx web server using dnf package manager.
dnf install nginx -y # -y is used to auto confirm the installation prompt.

if [ $? -ne 0 ]; then # $? is used to get exit status of last executed command
    echo "Installing Nginx ... FAILURE"
    exit 1 # exit from script with failure status.
else
    echo "Installing Nginx ... SUCCESS"
fi