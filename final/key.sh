#!/bin/bash

WORK_FILE=/home/vagrant/scripts/final/

if [ $# -ne 1 ]; then
  echo "Must pass atlease one file, correct usage: $0 <config file>"
  exit 1
fi

CONFIG_FILE="$1"

if [ ! -f "$WORK_FILE/$CONFIG_FILE" ]; then
  echo "Error: File '$CONFIG_FILE' does not exist."
    exit 1
fi

while IFS='=' read -r key value; do
  echo "The value is $value"
done < "$WORK_FILE/$CONFIG_FILE"
