#!/bin/bash

SOURCE_DIR=/home/vagrant/scripts/Archive
DEST_DIR=/home/vagrant/scripts/final/backup

mkdir -p $DEST_DIR
TIMESTAMP=$(date +%Y:%m:%d_%H:%M:%S)
#LETS BACKUP THE ARCHIVE DIRECTORY AND PUT IT IN DEST.

tar -cvzf  $DEST_DIR/backup_${TIMESTAMP}.tar.gz $SOURCE_DIR/* 

cd "$DEST_DIR" || exit #exits if directory does not exist
pwd 
ls 

COUNT=$(ls -t | grep "backup_" | wc -l)
echo "$COUNT"

if [ $COUNT -gt 3 ]; then
  ls -t | grep "backup_" | tail -n +4 | xargs rm -f
  echo "Removed older backups, keeping only last 3"
fi

echo "SCRIPT EXECUTION IS COMPLETED"

