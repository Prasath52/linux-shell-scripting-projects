#!/bin/bash
mkdir -p reports

LOG_FILE="/var/log/syslog"

DATE=$(date +%Y-%m-%d_%H-%M-%S)

OUTPUT_FILE="reports/error_report_$DATE.log"

grep -Ei "error|failed|critical" "$LOG_FILE" > "$OUTPUT_FILE"

echo "Report generated: $OUTPUT_FILE"
ERROR_COUNT=$(grep -Ei "error|failed|critical" $LOG_FILE | wc -l)

echo "Total Errors Found: $ERROR_COUNT"
