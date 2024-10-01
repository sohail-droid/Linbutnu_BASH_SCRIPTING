#!/bin/bash

### grep -v apache2 if output returns a running process related to apache we get apache is running ###
### since grep is a process and ps aux will show us that we use -v flag to ignore grepping the grep process from ps aux so we can only see if output related to apache2 is redirected ###

if  ps aux | grep "apache2" | grep -v grep; then
  echo "APACHE2 IS RUNNING"
else
  echo "APACHE2 IS NOT RUNNING"
fi
