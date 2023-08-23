#!/bin/bash

#
# THIS FILE SHOULD BE SOURCED
#

# Check if script is run with sudo priviligies
if [ $(sudo -n uptime 2>&1|grep "load"|wc -l) -eq 0 ]
  then printf "Please run with sudo\n"
  exit
fi

# Source core functions
. $(dirname "$BASH_SOURCE")/core.sh

# Apt install functions

function apt_install {
  if already_exists $1; then
    echo "Already installed: ${1}"
  else
    echo "Installing: ${1}..."
    sudo apt install -y $1
  fi
}

function apt_remove {
  if already_exists $1; then
    echo "Removing: ${1}..."
    sudo apt remove -y $1
  else
    echo "Already removed: ${1}"
  fi
}
