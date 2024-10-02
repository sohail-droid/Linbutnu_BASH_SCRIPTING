#!/bin/bash


### CHECK IF USER HAS GIVEN ATLEAST ONE INPUT IF NO INPUT WAS GIVEN PROMPT THE USER ###

BACKUPFOLDER="/home/vagrant/assignment/backup"
SCRIPTFOLDER="/home/vagrant/assignment/scripts"
BACKUPFILE="/home/vagrant/assignment/backup/backup.log"

if [ $# -eq 0 ]; then
  echo "No input was provided, script exiting. Please provide a name for the file to create" >>  "$BACKUPFILE"
  echo "No input was provided, script exiting. Please provide one or more filenames to create" 
else

#FOR ALL THE USERINPUTS LOOPING 
  
  for USERINPUT in "$@"; do

### USING INTERNAL FIELD SEPERATOR TO SPLIT THE USER INPUT ###

  IFS='.' read -r WORD1 WORD2 <<< "$USERINPUT"
  #echo "$WORD1"
  #echo "$WORD2"

### TAKE USER INPUT AS AN ARGUMENT TO CREATE A FILE IN BACKUP DIRECTORY IF A FILE NAME BASED ON USER INPUT ALREADY EXISTS###

  CURRENT_DATE=$(date '+%Y%m%d')
  CURRENT_TIME=$(date '+%H-%M-%S')
  FILENAME="${WORD1}.${WORD2}"

### CHECKING IF THE FILE EXISTS ###
  if [ -f $SCRIPTFOLDER/$FILENAME ]; then
    NEW_FILENAME="${1}"
    echo "file $FILENAME exists"
    echo " "
    echo "copying  $FILENAME data and appending the current date to the filename into backup directory"
    sudo cp /home/vagrant/assignment/scripts/$FILENAME  /home/vagrant/assignment/backup/${WORD1}_${CURRENT_DATE}.${WORD2}
    echo " "
    echo "$CURRENT_TIME Creating a file named ${WORD1}_${CURRENT_DATE}.${WORD2} in backup directory" >>  /home/vagrant/assignment/backup/backup.log

  else
### NO FILE EXISTS JUST LOGGING ###
    
    echo "File ${WORD1}.${WORD2} does not exist"
    echo " "
    echo "$CURRENT_TIME unable to create file ${WORD1}.${WORD2} in backup directory as file name does not exists already" >> /home/vagrant/assignment/backup/backup.log
  fi
done
fi