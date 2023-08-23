#!/bin/bash

#
# THIS FILE SHOULD BE SOURCED
#

# Source core functions
. $(dirname "$BASH_SOURCE")/core.sh

# Check if script has su priviligies
check_sudo # from core.sh

#
# Apt install functions
#

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
