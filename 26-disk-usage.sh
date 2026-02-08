#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
MESSAGE=""
IP_ADDRESS=$(curl http://169.254.169.254/latest/meta-data/local-ipv4)
# function to log messages with timestamp
log(){
    echo -e "$(date "+%Y-%m-%d %H:%M:%S") | $1"
}
# check disk usage and send email alert if the usage is above the threshold.
DISK_USAGE=$(df -hT | grep -v Filesystem)
USAGE_THRESHOLD=3
# read the disk usage line by line and check for the usage percentage.
while IFS= read -r line
do
    USAGE=$(echo $line | awk '{print $6}' | cut -d "%" -f1)
    PARTITION=$(echo $line | awk '{print $7}')

    if [ "$USAGE" -ge "$USAGE_THRESHOLD" ]; then
        MESSAGE+="High Disk usage on $PARTITION: $USAGE% <br>"
    fi
done <<< $DISK_USAGE

echo -e "$MESSAGE"
# if there is a msg to send, call the mail script to  send the email alert.
sh mail.sh "kalvakotadivakar@gmail.com" "High Disk Usage Alert on $IP_ADDRESS" "$MESSAGE" "HIGH_DISK_USAGE" "$IP_ADDRESS" "DevOps Team"