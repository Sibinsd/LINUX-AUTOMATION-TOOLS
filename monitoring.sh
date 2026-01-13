#!/bin/bash

LOGFILE="$HOME/linux-automation-toolkit/logs/monitor.log"

CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}')
MEM=$(free | grep Mem | awk '{print $3/$2 * 100.0}')
DISK=$(df / | tail -1 | awk '{print $5}')

echo "$(date) CPU:$CPU% MEM:$MEM% DISK:$DISK" >> "$LOGFILE"
