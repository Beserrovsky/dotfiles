#!/bin/bash

# Source util functions
. $(dirname "$0")/lib/utils.sh

# Check if script has su priviligies
check_sudo # from core.sh

#
# Install Programs
#

printf "Installing coding programs...\n"

# apt_install jq # JSON parser
apt_install rpi-imager # Raspberry Pi OS image writer
appimg_install etcher https://github.com/balena-io/etcher/releases/download/v1.18.11/balenaEtcher-1.18.11-x64.AppImage # Image writer
# apt_install python3-pip # Python package manage'