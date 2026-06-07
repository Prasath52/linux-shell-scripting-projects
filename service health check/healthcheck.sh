#!/bin/bash

service="cron"
if systemctl is-active --quiet $service
then
echo "$(date) - $service is running"
else
echo "$(date) - $service is down"
fi