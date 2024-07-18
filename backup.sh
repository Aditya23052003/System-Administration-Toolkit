#!/bin/bash

# Backup script for Linux

SOURCE="/path/to/source"
DESTINATION="/path/to/destination"
DATE=$(date +%Y-%m-%d)
BACKUP_NAME="backup-$DATE.tar.gz"

tar -czf $DESTINATION/$BACKUP_NAME $SOURCE
echo "Backup completed: $DESTINATION/$BACKUP_NAME"
