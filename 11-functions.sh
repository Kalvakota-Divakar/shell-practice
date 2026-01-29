#!/bin/bash
USERID=$(id -u) # get current user id. # -u is used to get user id.
if [ $USERID -ne 0 ]; then
    echo "Please run this script with root user access"
    exit 1
fi

VALIDATE(){
    if [ $1 -ne 0 ]; then # -ne is used to check not equal condition.
        echo "$2 ... FAILURE"
        exit 1 #exit from script with failure status.
    else
        echo "$2 ... SUCCESS"
    fi
}

dnf install nginx -y
VALIDATE $? "Installing Nginx" 

dnf install mysql -y
VALIDATE $? "Installing Mysql"

dnf install nodejs -y
VALIDATE $? "Installing nodejs"