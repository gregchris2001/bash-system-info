#!/bin/bash

# Create directories
mkdir -p project/logs project/system_info

# Output file
INFO_FILE="project/system_info/system_info.txt"

# Write system information to file
{
  echo "System Information Report"
  echo "-------------------------"
  echo "Date: $(date)"
  echo ""
  echo "Hostname: $(hostname)"
  echo "User: $(whoami)"
  echo ""
  echo "Uptime:"
  uptime
  echo ""
  echo "Operating System:"
  uname -a
  echo ""
  echo "Disk Usage:"
  df -h
  echo ""
  echo "Memory Usage:"
  free -h
} > "$INFO_FILE"

echo "System info written to $INFO_FILE"

