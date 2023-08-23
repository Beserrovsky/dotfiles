#!/bin/bash

#
# THIS FILE SHOULD BE SOURCED
#

# Source core functions
. $(dirname "$BASH_SOURCE")/core.sh

# Check if script has su priviligies
check_sudo # from core.sh

#
# Snap classic install functions
#

function snapc_install {
  if already_exists $1; then
    echo "Already installed: ${1}"
  else
    echo "Installing: ${1}..."
    sudo snap install $1 --classic
  fi
}

function snapc_remove {
  if already_exists $1; then
    echo "Removing: ${1}..."
    sudo snap remove $1 --classic
  else
    echo "Already removed: ${1}"
  fi
}
