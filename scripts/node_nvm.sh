#!/bin/bash

# Source util functions
. $(dirname "$0")/lib/utils.sh

# Check if script has su priviligies
check_sudo # from core.sh

#
# Install Programs
#

apt_install curl # File transfer

printf "Installing nvm...\n"
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash 

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

nvm install node 
nvm install --lts
nvm use --lts
