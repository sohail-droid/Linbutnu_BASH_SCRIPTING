#!/bin/bash

echo "script that sorts all .txt files in scripts directory by their size, from smallest to largest, and displays the sorted list"
ls -l  --sort=s /home/vagrant/scripts
# -r option reverses the output so that small to large is sorted
ls -l  --sort=s -r /home/vagrant/scripts
echo "done"
