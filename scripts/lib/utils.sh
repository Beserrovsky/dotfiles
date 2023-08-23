#!/bin/bash

#
# THIS FILE SHOULD BE SOURCED
#

# Support for: apt, snap, snap_c (classic), AppImage, pip3

. $(dirname "$BASH_SOURCE")/apt.sh
. $(dirname "$BASH_SOURCE")/snap.sh
. $(dirname "$BASH_SOURCE")/snapc.sh
. $(dirname "$BASH_SOURCE")/appimg.sh
. $(dirname "$BASH_SOURCE")/pip3.sh
