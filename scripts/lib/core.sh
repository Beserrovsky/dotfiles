#!/bin/bash

#
# THIS FILE SHOULD BE SOURCED
#

# Check if script is run with sudo priviligies
if [ $(sudo -n uptime 2>&1|grep "load"|wc -l) -eq 0 ]
  then printf "Please run with sudo\n"
  exit
fi

# Core functions

function already_exists {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    return 1;
  else
    return 0;
  fi
}
