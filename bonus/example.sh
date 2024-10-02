#!/bin/bash
if [ -z "$1" ]; then
  echo "No input was provided, script exiting. Please provide a name for the file to create" >>  /home/vagrant/assignment/backup/backup.log
  echo "No input was provided, script exiting. Please provide a name for the file to create"
else
  USERINPUT="$1"

### USING INTERNAL FIELD SEPERATOR TO SPLIT THE USER INPUT ###

  SPLIT='.' read -r WORD1 WORD2 <<< "$USERINPUT"
  echo "$WORD1"
  echo "$WORD2"
fi
