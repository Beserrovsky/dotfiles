#!/bin/bash

# Source util functions
. $(dirname "$0")/lib/utils.sh

# Check if script has su priviligies
check_sudo # from core.sh

#
# Install Programs
#

printf "Installing basic programs...\n"

# GNOME
# apt_install chrome-gnome-shell
# apt_install gnome-tweaks
# apt_install gnome-shell-extensions

# Text editors & File management
# apt_install code # GUI editor
# apt_install vim # TUI editor
# apt_install file # File type detection
# apt_install tree # File tree
# apt_install curl # File transfer

# Media
# apt_install vlc # Video player
# apt_install spotify # Music player

# Productivity
# apt_install libreoffice # Office suite

# Video production
# apt_install obs-studio # Screen recorder
# apt_install ffmpeg # Video processing
# apt_install handbrake # Video converter

# Communication
# apt_install discord # Chat

# Movies
# apt_install qbittorrent # Torrent client

# Basic coding
# apt_install git # Version control
# apt_install gh # GitHub CLI

# Image processing
# apt_install gimp # Image editor
# apt_install jpegoptim
# apt_install optipng
# apt_install pngquant

# Hardware management
# apt_install neofetch # System info
# apt_install gparted # Partition manager
# apt_install htop # Process manager
# apt_install lm-sensors # Hardware sensors
# apt_install tlp # Battery management
# apt_install powertop # Battery management
# apt_install cpufrequtils # CPU frequency management
# apt_install smartmontools # HDD/SSD health
# apt_install openvpn # VPN
# apt_install nmap # Network scanner
# apt_install speedtest-cli # Network speed test

# Get all upgrades
sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y
