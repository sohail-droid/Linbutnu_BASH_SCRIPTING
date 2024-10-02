#!/bin/bash

echo "Command used: ip addr show --> to display all network interface" >> /home/vagrant/assignment/backup/network_info.txt
echo "Command used: ip addr show | grep eth1 --> to display the ip address attached network interface eth1" >> /home/vagrant/assignment/backup/network_info.txt

echo "##############################################"  >> /home/vagrant/assignment/backup/network_info.txt
echo "##############################################"  >> /home/vagrant/assignment/backup/network_info.txt

ip addr show >> /home/vagrant/assignment/backup/network_info.txt

echo "##############################################"  >> /home/vagrant/assignment/backup/network_info.txt
echo "##############################################"  >> /home/vagrant/assignment/backup/network_info.txt

ip addr show | grep eth1 >> /home/vagrant/assignment/backup/network_info.txt

echo "##############################################"  >> /home/vagrant/assignment/backup/network_info.txt
echo "##############################################"  >> /home/vagrant/assignment/backup/network_info.txt
