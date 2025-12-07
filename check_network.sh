#!/bin/bash

echo "===== NETWORK & APP CHECK ====="
echo "Date: $(date)"
echo

# PING (Windows Git Bash)
echo "Pinging..."
ping -n 3 8.8.8.8

# Gateway check
echo
echo "Default Gateway:"
route print | grep "0.0.0.0"

# Port checks – use PowerShell instead of nc
for PORT in 22 5001 5002; do
    echo
    echo "Checking port $PORT..."
    powershell.exe -Command "Test-NetConnection -ComputerName 127.0.0.1 -Port $PORT"
done

# URL checks
for URL in "http://127.0.0.1:5001" "http://127.0.0.1:5002/status"; do
    echo
    echo "Checking URL $URL..."
    curl -s -o /dev/null -w "%{http_code}\n" $URL
done
