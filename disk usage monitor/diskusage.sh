#!/bin/bash
usage=$(df -h / | awk 'NR==2 {print $5}' | tr -d '%')
if [ "$usage" -gt 80 ]
then
    echo "WARNING: Disk usage is $usage%"
else
    echo "OK: Disk usage is $usage%"
fi