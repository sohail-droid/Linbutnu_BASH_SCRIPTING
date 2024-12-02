#!/bin/bash
mkdir /home/vagrant/scripts/Battlefield
mkdir /home/vagrant/scripts/Archive
touch /home/vagrant/scripts/Battlefield/knight.txt 
touch /home/vagrant/scripts/Battlefield/sorcerer.txt
touch /home/vagrant/scripts/Battlefield/rogue.txt
if [ -e /home/vagrant/scripts/Battlefield/knight.txt ];
then 
  echo "File knight.txt exists"
  mv /home/vagrant/scripts/Battlefield/knight.txt /home/vagrant/scripts/Archive
  ls /home/vagrant/scripts/Battlefield 
  ls /home/vagrant/scripts/Archive 
else
  echo "File not found in Battlefield directory"
  ls /home/vagrant/scripts/Battlefield 
  ls /home/vagrant/scripts/Archive 
fi
