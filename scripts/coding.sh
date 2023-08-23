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
# install balena etcher # Image writer
# apt_install python3-pip # Python package manager
