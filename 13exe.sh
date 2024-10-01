#!/bin/bash

WORKING_FILE_DIR=/home/vagrant/scripts

#$# is a speciat variable that finds the number of positional arguments. for example ./script.sh arg1 arg2 will return 2
#we are saying if no. of positional arguments is not equal to 1 meaning if we have more than 2 or less than 1 arguments the script doesnt run 

if [ $# -ne 1 ]; then
  echo "This script $0 takes exactly one argument, correct usage: $0 <config file>"
  exit 1
fi

CONFIG_FILE="$1"
WORKING_FILE="$WORKING_FILE_DIR/$CONFIG_FILE"
echo "$WORKING_FILE"

#IF THE FILE DOES NOT EXIST PRINT A MESSAGE AND EXIT
if [ ! -f "$WORKING_FILE" ]; then 
  echo "Error: File $CONFIG_FILE does not exist under $WORKING_FILE_DIR directory"
  exit 1
fi

#READ THE CONFIG.TXT FILE TO IDENTIFY KEY AND VALUE PAIRS, SO WE USE "=" AS DELIMITER

while IFS='=' read -r key value; do
  #PRINT THE KEY-VALUE PAIR
  echo "The key and value pair will be $key = $value"
done < $WORKING_FILE
echo "Script execution completed."
