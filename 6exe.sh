#!/bin/bash

echo "Let us create a file and print the number of lines in that file"
read -p "Enter the name for the file: " file

if [ -n "$file" ]; 
then
  echo "Input provided for filename as $file"
  echo "Hello world" > /home/vagrant/scripts/$file.txt
  echo "filename $file.txt has been created, now let us count the number of lines"
  cat /home/vagrant/scripts/$file.txt | wc -l
else
  echo "No filename provided"
fi
