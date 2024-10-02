#!/bin/bash

#WORKING_DIRECTORY=/home/vagrant/system_info

#mkdir -p $WORKING_DIRECTORY

check_disk_space()
{
  echo "Checking disk space..."
  df -h
}

show_system_uptime()
{
  echo "Showing system uptime..."
  uptime
}

backup_file() 
{
  echo "Backup the Arena directory and keep the last 3 backups"
  /home/vagrant/scripts/final/backup.sh
}

key_value()
{
  filename="$1"
  echo " Parse a configuration file settings.conf and display the values" 
  /home/vagrant/scripts/final/key.sh "$filename"
}


echo "====================="
echo "System Tasks Menu"
echo "====================="
echo "1. Check Disk Space"
echo "2. Show System Uptime"
echo "3. Backup the Arena directory and keep the last 3 backups"
echo "4. Parse a configuration file settings.conf and display the values"
echo "5. Exit"
echo "====================="

read -p "Select a number [1-4]: " choice
#EXECUTE THE CHOSEN OPTION 

if [ "$choice" -eq 1 ]; then
  check_disk_space
elif [ "$choice" -eq 2 ]; then
  show_system_uptime   
elif [ "$choice" -eq 3 ]; then
  backup_file
elif [ "$choice" -eq 4 ]; then
  read -p "Enter the configuration filename to be parsed and display only the values: " filename
  key_value "$filename"
elif [ "$choice" -eq 5 ]; then
  echo "Exiting the script."
else 
  echo "Didnt select any of the provided options. Script exiting"
fi

echo "SCRIPT EXECUTION IS COMPLETED"

