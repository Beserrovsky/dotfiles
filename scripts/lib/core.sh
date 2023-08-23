#!/bin/bash

#
# THIS FILE SHOULD BE SOURCED
#

# Core functions

# Check if script is run with sudo priviligies 
function check_sudo {
  if [ "$EUID" -ne 0 ]
    then printf "Please run with sudo\n"
    exit
  fi
}

# Check if command already exists
function already_exists {

  if [ -e "/opt/$1.AppImage" ]; then
    return 0;
  fi

  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    return 1;
  else
    return 0;
  fi
}
