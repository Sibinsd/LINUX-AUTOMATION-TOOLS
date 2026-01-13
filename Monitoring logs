#!/bin/bash

LOGDIR="$HOME/automationscript/logs"
LOGFILE="$LOGDIR/alert.log"
THRESHOLD=10

mkdir -p "$LOGDIR"

DISK=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')

if [ "$DISK" -gt "$THRESHOLD" ]; then
  echo "ALERT: Disk usage exceeded $THRESHOLD% on $(date)" >> "$LOGFILE"
fi
