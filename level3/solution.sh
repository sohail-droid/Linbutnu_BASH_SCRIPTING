#!/bin/bash
ls Arena
if [ -f /home/vagrant/scripts/Arena/hero.txt ];
then
  echo "Hero found"
else
  echo "Hero missing"
fi
