#!/bin/bash

# Source util functions
. $(dirname "$0")/lib/utils.sh

# Check if script has su priviligies
check_sudo # from core.sh

#
# Install Programs
#

printf "Installing video & image production software...\n"

# Video & Image production
apt_install obs-studio # Screen recorder
apt_install ffmpeg # Video processing
# apt_install handbrake # Video converter
# apt_install blender # 3D modeling
# apt_install gimp # Image editor
# apt_install jpegoptim
# apt_install optipng
# apt_install pngquant
