#!/bin/bash

# === CONFIG ===
REPORT_DIR="./reports"
LOG_FILE="./logs/alerts.log"
DATE=$(date '+%Y-%m-%d_%H-%M-%S')
REPORT_FILE="$REPORT_DIR/report_$DATE.txt"

# === CREATE FOLDERS ===
mkdir -p "$REPORT_DIR"
mkdir -p "./logs"

# === SYSTEM INFORMATION ===
hostname=$(hostname)
uptime_info=$(uptime -p)
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
mem_usage=$(free -m | awk 'NR==2{printf "%.2f", $3*100/$2 }')
disk_usage=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')
users_logged_in=$(who | wc -l)
timestamp=$(date '+%Y-%m-%d %H:%M:%S')

# === PRINT REPORT ===
echo "===== System Health Report =====" > "$REPORT_FILE"
echo "Generated at: $timestamp" >> "$REPORT_FILE"
echo "Hostname       : $hostname" >> "$REPORT_FILE"
echo "Uptime         : $uptime_info" >> "$REPORT_FILE"
echo "CPU Usage      : $cpu_usage%" >> "$REPORT_FILE"
echo "Memory Usage   : $mem_usage%" >> "$REPORT_FILE"
echo "Disk Usage     : $disk_usage%" >> "$REPORT_FILE"
echo "Users Logged In: $users_logged_in" >> "$REPORT_FILE"
echo "===============================" >> "$REPORT_FILE"

# === ALERT CONDITIONS ===
if (( $(echo "$cpu_usage > 80.0" | bc -l) )); then
  echo "[ALERT] High CPU Usage: $cpu_usage%" >> "$LOG_FILE"
fi

if (( $(echo "$mem_usage > 80.0" | bc -l) )); then
  echo "[ALERT] High Memory Usage: $mem_usage%" >> "$LOG_FILE"
fi

if (( disk_usage > 90 )); then
  echo "[ALERT] Low Disk Space: $disk_usage%" >> "$LOG_FILE"
fi

echo "Report generated: $REPORT_FILE"

