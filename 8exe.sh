#!/bin/bash

echo " script that searches for a specific word or phrase across all .log files in a directory and outputs the names of the files that contain the word or phrase."

read -p "Enter the word that you want to be searched: " word

if [ -z "$word" ];
then
  echo "word not provided"
else
  echo "word provided is $word"
  sudo grep -n -l "$word" /var/log/*.log 
  sudo cat /var/log/*.log | grep -i "$word"
fi
