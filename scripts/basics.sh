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

# Install Programs

printf "Installing basic programs...\n"

# Basics
# apt_install awscli
# apt_install chrome-gnome-shell
# apt_install curl
# apt_install file
# apt_install git
# apt_install gh
# apt_install htop
# apt_install jq
# apt_install nmap
# apt_install openvpn
# apt_install tree
# apt_install vim
# apt_install wget
# apt_install neofetch

# Image processing
# apt_install gimp
# apt_install jpegoptim
# apt_install optipng

# Get all upgrades
sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y
