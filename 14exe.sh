#!/bin/bash

TO_BACKUP_DIR=/home/vagrant/scripts
DEST_DIR=/home/vagrant/backup

mkdir -p $DEST_DIR

TIMESTAMP=$(date +%Y-%m-%d__%H:%M:%S)
BACKUPNAME="backup_$TIMESTAMP.tar.gz"

tar -cvzf "$DEST_DIR/$BACKUPNAME" "$TO_BACKUP_DIR"

#CHECK IF THE PREVIOUS COMMAND WAS SUCCESSFUL

if [ $? -eq 0 ]; then
  echo "Backup of $TO_BACKUP_DIR is success"
else
  echo "Did not backup $TO_BACKUP_DIR, try manually to spot the error"
  exit 1
fi

#REMOVE OLDER BACKUPS IF THERE ARE MORE THAN 3 BACKUPS
cd "$DEST_DIR" || exit #exits if directory is not present
pwd 
BACKUP_COUNT=$(ls -l | grep "backup_" | wc -l)
echo "$BACKUP_COUNT"
#if backup count is greated than 3 then it means we have more backups than 3 to delete the older ones
#ls -t command sorts the result by newest first and only taing the files starting with backup_
#tail -n +4 says from the bottom that has older files, +4 says list all files other than newest/top 3 
#xargs rm -f command will remove all the arguments returned from tail command so all the files will be deleted
if [ $BACKUP_COUNT -gt 3 ]; then
  ls -t backup_* | tail -n +4 | xargs rm -f
  echo "Removed older backups, keeping only last 3"
fi

echo "SCRIPT EXECUTION IS COMPLETED"

