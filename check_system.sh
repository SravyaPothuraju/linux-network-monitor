#!/bin/bash
# Check CPU, memory, disk usage
echo "===== SYSTEM CHECK ====="
echo "Date: $(date)"
echo

# CPU load
echo "CPU Load (1,5,15 min):"
uptime

# Memory usage
echo
echo "Memory Usage:"
free -h

# Disk usage
echo
echo "Disk Usage:"
df -h /

# Top 5 processes by CPU
echo
echo "Top 5 CPU Processes:"
ps -eo pid,comm,pcpu --sort=-pcpu | head -n 6
