#!/bin/bash

#
# THIS FILE SHOULD BE SOURCED
#

# Source core functions
. $(dirname "$BASH_SOURCE")/core.sh

# Check if script has su priviligies
check_sudo # from core.sh

#
# AppImage install functions
#

function appimg_install {
  if already_exists $1; then
    echo "Already installed: ${1}"
  else
    echo "Installing: ${1}..."
    sudo wget $2 -O /opt/$1.AppImage
    sudo chmod +x /opt/$1.AppImage
  fi
}

function appimg_remove {
  if already_exists $1; then
    echo "Removing: ${1}..."
    sudo rm /opt/$1.AppImage
  else
    echo "Already removed: ${1}"
  fi
}
