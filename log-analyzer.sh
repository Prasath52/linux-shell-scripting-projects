#!/bin/bash

LOGFILE=$1
OUTPUTFILE="analysis.txt"

if [ -z "$LOGFILE" ]; then
  echo "Usage: $0 <logfile>"
  exit 1
fi

# Get current timestamp
TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")

{
  echo "===== Log Analysis at $TIMESTAMP ====="
  echo "Analyzing log file: $LOGFILE"
  for LEVEL in INFO WARN ERROR DEBUG FATAL
  do
    COUNT=$(grep -c "$LEVEL" "$LOGFILE")
    echo "$LEVEL: $COUNT"
  done
  echo ""   # blank line for readability
} >> "$OUTPUTFILE"

echo "Results saved to $OUTPUTFILE"
