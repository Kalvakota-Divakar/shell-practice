#!/bin/bash
START_TIME=$(date +%s)

echo "script executed at: $START_TIME"

sleep 10 # sleep for 10 seconds to simulate some work being done

END_TIME=$(date +%s)
TOTAL_TIME=$(($END_TIME - $START_TIME))
echo  "script executed at: $TOTAL_TIME"