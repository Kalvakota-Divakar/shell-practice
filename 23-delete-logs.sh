#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
# defining logs directory and file.
LOGS_DIR=/home/ec2-user/app-logs
LOGS_FILE="$LOGS_DIR/$0.log"
# checking for logs directory.
if [ ! -d $LOGS_DIR ]; then
    echo -e "$LOGS_DIR does not exist"
    exit 1
fi
# finding and deleting log files older than 14 days.
FILES_TO_DELETE=$(find $LOGS_DIR -name "*.log" -mtime +14)
# echo "$FILES_TO_DELETE"
# deleting the files.
while IFS= read -r filepath; do
  # Process each line here
  echo "Deleting file: $filepath"
  rm -f $filepath
  echo "Deleted file: $filepath"
done <<< $FILES_TO_DELETE