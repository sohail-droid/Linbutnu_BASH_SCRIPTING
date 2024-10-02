#!/bin/bash
inotifywait -m -r -e create,delete,modify --format '%T %e %w%f' --timefmt '%F %T' /home/vagrant/scripts/Archive | while read line
do
  echo "$line" >>  /home/vagrant/scripts/logfile.txt
done
