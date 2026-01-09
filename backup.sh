#!/bin/bash
SOURCE_DIR="/home/user/data"
BACKUP_DIR="/home/user/backups"
DATE=$(date +"%Y-%m-%d")
BACKUP_FILE="backup_${DATE}.tar.gz"
LOG_FILE="/var/log/backup.log
mkdir -p "$BACKUP_DIR"
tar -czf "$BACKUP_DIR/$BACKUP_FILE" "$SOURCE_DIR

if [ $? -eq 0 ]; 
then
    echo " Backup completed successfully → $BACKUP_FILE" |  tee -a /var/log/backup.log

else
	echo "Backup unsucessful"

    exit 1
fi


