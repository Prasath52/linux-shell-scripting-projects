# Log Error Monitor

## Objective
Monitor Linux system logs and extract error-related entries.

## Features
- Searches for ERROR, FAILED, and CRITICAL messages
- Generates timestamped reports
- Counts total errors
- Stores reports in a dedicated folder

## Technologies
- Bash
- grep
- Linux syslog

## Usage
chmod +x log-monitor.sh
./log-monitor.sh
