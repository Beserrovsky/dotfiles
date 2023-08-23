#!/bin/bash

#
# THIS FILE SHOULD BE SOURCED
#

# Check if script is run with sudo priviligies
if [ $(sudo -n uptime 2>&1|grep "load"|wc -l) -eq 0 ]
  then printf "Please run with sudo\n"
  exit
fi

# Support for: apt, snap, snap_classic, pip, npm_global, AppImage

. $(dirname "$BASH_SOURCE")/apt.sh
# sorce ./snap.sh
# sorce ./snap_classic.sh
# sorce ./pip.sh
# sorce ./npm_global.sh
# sorce ./AppImage.sh
