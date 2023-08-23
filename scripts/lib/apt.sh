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

# Not the best way to do it, but probably the easiest
function apt_repo {
  if already_exists $1; then
    echo "${2} repo already added"
  else
    echo "Adding Repo: ${2}..."
    sudo add-apt-repository -y $2
    sudo apt update
  fi
}

# apt_add <command> <repo_string> <key_url>
function apt_add {
  if already_exists $1; then
    echo "${2} repo already added"
  else
    echo "Adding Repo: ${2}..."
    sudo curl -o "/usr/share/keyrings/${1}-keyring.gpg" $3
    echo "deb [signed-by=/usr/share/keyrings/${1}-keyring.gpg] ${2}" | sudo tee /etc/apt/sources.list.d/${1}.list
    sudo apt update
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
