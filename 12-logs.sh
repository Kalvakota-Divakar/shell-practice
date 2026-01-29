#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script" # folder to store logs.
LOGS_FILE="/var/log/shell-script/$0.log" # log file name will be same as script name.# $0 is used to get current script name.

if [ $USERID -ne 0 ]; then
    echo "Please run this script with root user access" | tee -a $LOGS_FILE
    exit 1
fi

mkdir -p $LOGS_FOLDER # -p is used to create parent directories if not exists.

VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo "$2 ... FAILURE" | tee -a $LOGS_FILE # append log to log file.
        exit 1
    else
        echo "$2 ... SUCCESS" | tee -a $LOGS_FILE 
    fi
}

dnf install nginx -y &>> $LOGS_FILE  # &>> is used to append both standard output and standard error to log file.
VALIDATE $? "Installing Nginx" 

dnf install mysql -y &>> $LOGS_FILE
VALIDATE $? "Installing Mysql" 

dnf install nodejs -y &>> $LOGS_FILE
VALIDATE $? "Installing nodejs"