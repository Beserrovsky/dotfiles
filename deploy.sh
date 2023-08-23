#!/bin/bash
SCRIPT=$(readlink -f "$0")
SCRIPTPATH=$(dirname "$SCRIPT")

# Check if script is run with sudo priviligies 
if [ $(sudo -n uptime 2>&1|grep "load"|wc -l) -eq 0 ]
  then printf "Please run with sudo\n"
  exit
fi

# Copy dotfiles configs to home folder
cp -r $(BASEDIR)/user_config/.* ~/

# Configure POP_OS Shell
# Configure Terminal look
# Configure GPG git key
