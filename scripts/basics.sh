#!/bin/bash

# Source util functions
. $(dirname "$0")/lib/utils.sh

# Check if script has su priviligies
check_sudo # from core.sh

#
# Install Programs
#

printf "Installing basic programs...\n"

# Essential libraries & tools
apt_install build-essential # Build tools
apt_install libfuse2 # FUSE

# GNOME
apt_install gnome-shell-extensions # GNOME extensions

# Text editors & File management
snapc_install code # GUI editor
apt_install vim # TUI editor
snap_install logseq # Note taking
apt_add syncthing "https://apt.syncthing.net/ syncthing stable" https://syncthing.net/release-key.gpg
apt_install syncthing # File sync
apt_install libreoffice # Office suite
apt_install file # File type detection
snap_install mdless # Markdown viewer
apt_install tree # File tree
apt_install curl # File transfer

# Media
apt_install vlc # Video player
snap_install spotify # Music player

# Communication
snap_install discord # Chat

# Movies
apt_repo qbittorrent ppa:qbittorrent-team/qbittorrent-stable
apt_install qbittorrent # Torrent client

# Basic coding
apt_install git # Version control
apt_install gh # GitHub CLI
apt_install python3 # Python

# Hardware management
apt_install neofetch # System info
apt_install gparted # Partition manager
apt_install htop # Process manager
apt_install lm-sensors # Hardware sensors
apt_install smartmontools # HDD/SSD health
apt_install openvpn # VPN
apt_install nmap # Network scanner
apt_install speedtest-cli # Network speed test
# apt_install tlp # Battery management
