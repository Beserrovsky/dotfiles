#!/bin/bash

# Source util functions
. $(dirname "$0")/lib/utils.sh

# Check if script has su priviligies
check_sudo # from core.sh

#
# Install Programs
#

printf "Installing drone programs...\n"

if ! already_exists QGroundControl; then
  printf "Installing QGroundControl...\n"
  sudo usermod -a -G dialout $SUDO_USER
  sudo apt remove modemmanager -y
  sudo apt install gstreamer1.0-plugins-bad gstreamer1.0-libav gstreamer1.0-gl -y
  sudo apt install libqt5gui5 -y
  sudo apt install libfuse2 -y
fi

appimg_install QGroundControl https://d176tv9ibo4jno.cloudfront.net/latest/QGroundControl.AppImage

printf "REMEMBER TO LOGOUT AND LOGIN AGAIN FOR USERMOD TO TAKE EFFECT\n"
