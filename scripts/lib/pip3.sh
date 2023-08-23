#!/bin/bash

#
# THIS FILE SHOULD BE SOURCED
#

# Source core functions
. $(dirname "$BASH_SOURCE")/core.sh

# Check if script has su priviligies
check_sudo # from core.sh

#
# Pip install functions
#

function pip3_install {
  sudo -H -u $SUDO_USER bash -c "pip3 install --user '$1'"
}

function pip3_uninstall {
  sudo -H -u $SUDO_USER bash -c "pip3 uninstall '$1'"
}
