#!/bin/bash

# User specific aliases, configs and functions

alias du='du -h -s'
alias diff='diff --color --unified=0'
alias copyfile='xclip -selection clipboard'
alias tmux='TERM=xterm-256color tmux'

# PATH

if [ -d "$HOME/bin" ] ; then # pip3
  PATH="$PATH:$HOME/bin"
fi
