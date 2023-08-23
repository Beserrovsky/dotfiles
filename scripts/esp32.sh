#!/bin/bash
SCRIPT=$(readlink -f "$0")
SCRIPTPATH=$(dirname "$SCRIPT")

# Check if script is run with sudo priviligies
if [ $(sudo -n uptime 2>&1|grep "load"|wc -l) -eq 0 ]
  then printf "Please run with sudo\n"
  exit
fi

# Source util functions
. $SCRIPTPATH/lib/utils.sh

#
# Install Programs
#

echo "Installing Esp32 stuff...\n"

# Code upload tools
apt_install esptool # Flashing tool
apt_install picocom # Serial monitor
pip3_install adafruit-ampy # File transfer tool
