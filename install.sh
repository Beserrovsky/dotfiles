#!/bin/bash
SCRIPT=$(readlink -f "$0")
SCRIPTPATH=$(dirname "$SCRIPT")

printf "Welcome to Beserrovsky's dotfiles installer!\nChoose toolkit to install: \n"
printf "\n1. Full Install (hw dev, iot, coding, etc.)\n2. Basic Install (text editors, vlc, etc.)\n"
printf "obs. #1 You can always install each script individually\n"
printf "obs. #2 If you choose full install, move any undesired scripts to archive subfolder\n"
choice=0
while [ $choice -ne 1 ] && [ $choice -ne 2 ]
do
  read -p "Enter your choice: " choice
  if [ $choice -eq 1 ]
  then
    printf "Preparing to install full toolkit...\n"
  elif [ $choice -eq 2 ]
  then
    printf "Preparing to install basic toolkit...\n"
  else
    printf "Invalid choice...\n"
  fi
done

# TODO: Make sure datetime is correct
printf "...Making sure datetime is correct...\n"

# Update software in computer
# printf "...Updating system...\n"
# sudo apt update && sudo apt full-upgrade -y && sudo apt autoremove
# sudo snap refresh

# Install basic toolkit
# sudo bash $SCRIPTPATH/scripts/basics.sh

# Install full toolkit
if [ $choice -eq 1 ]
then
  for script in $SCRIPTPATH/scripts/*.sh; do
    if [ $script != $SCRIPTPATH/scripts/"basics.sh" ]
    then
      sudo bash $script -H; 
    fi
  done
fi
