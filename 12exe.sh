#!/bin/bash

WORKING_DIRECTORY=/home/vagrant/scripts/
TRESHOLD=10

OUTPUT=$(df -h "$WORKING_DIRECTORY"/ | awk 'NR==2 {print $5}' | sed 's/%//')

echo "$OUTPUT"

if [ "$OUTPUT" -gt "$TRESHOLD" ]; then
  echo "Alert: Disk space usage of $WORKING_DIRECTORY is at ${OUTPUT}%, which exceeds the treshold of ${TRESHOLD}%. "
else 
  echo "Disk space usage of $WORKING_DIRECTORY is at ${OUTPUT}%, which does not exceed the treshold of ${TRESHOLD}%. "
fi

echo "Script execution completed."
