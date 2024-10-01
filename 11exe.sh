#!/bin/bash

WORKING_DIRECTORY=/home/vagrant/scripts/Arena_Boss

#CREATE ARENA BOSS DIRECTORY
mkdir -p $WORKING_DIRECTORY

#CREATE 5 TEXT FILES
for i in {1..5}; do
 
  #GENERATE RANDOM NO. OF LINES BETWEEN 10 TO 20, USING RANDOM BUILT IN FUNCTION TO GENERATE A RANDOM NUMBER BETWEEN 0 TO 11 AND ADD IT TO 10
  RANDOM_LINES=$((RANDOM % 11 + 10))
  echo "$RANDOM_LINES"
  #CREATE THE FILE AND ADD RANDOM LINES
  FILE_NAME="$WORKING_DIRECTORY/file${i}.txt"
  
  #J=0 Initializes at line 0, the loop will continue to write lines until J doesnt execute the NO.OF lines for this file from RANDOM_LINES, j++ will incremet j=+1 from 0 for everytime the loop runs
  for ((j=0; j<RANDOM_LINES; j++)); do

    if (( RANDOM % 9 == 0 )); then
      echo "Adding the word Victory to this file" >> "$FILE_NAME"
    else
      echo "Random line $((j + 1)) in file${i}.txt" >> "$FILE_NAME"
    fi
  done
done

echo "Sorting list of text files by size: "
ls -lS $WORKING_DIRECTORY/*.txt

mkdir -p $WORKING_DIRECTORY/Victory_Archive

VICTORY_DIR=$WORKING_DIRECTORY/Victory_Archive

#CHECKING IN ALL THE 5 FILES IF THE WORD VICTORY EXIST
for FILES in $WORKING_DIRECTORY/*.txt; do
  if grep -iq "Victory" "$FILES"; then
    echo "Moving $FILES to $VICTORY_DIR"
    mv "$FILES" "$VICTORY_DIR"
  fi
done

echo "Script execution completed."
