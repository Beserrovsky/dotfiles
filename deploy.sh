#!/bin/bash
SCRIPT=$(readlink -f "$0")
SCRIPTPATH=$(dirname "$SCRIPT")

# Source util functions
. $SCRIPTPATH/scripts/lib/utils.sh

# Check if script has su priviligies
check_sudo # from core.sh

# Copy dotfiles configs to home folder
cp -r $SCRIPTPATH/user_config/.* ~/

# Configure POP_OS Shell, requires reboot
# Configure Terminal look
# Configure GPG git key
# sensors-detect
