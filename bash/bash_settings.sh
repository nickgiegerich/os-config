#!/bin/bash
#Minor customizations to bash. I try to keep as stock 
#as possible :) 

#Add in bin to the path
if [[ ! ":$PATH:" == *":$HOME/bin:"* ]]; then
    PATH=$PATH:$HOME/bin
fi

#setup the terminal
export TERM="xterm-color"
#Set the default bash prompt to the following
PS1='[\u@\h:\w]\$'
PROMPT_COMMAND='__git_ps1 "[\u@\h:\W]" "\n\$ "'
GIT_PS1_SHOWCOLORHINTS=true
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_DESCRIBE_STYLE=branch
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true 

#Add in alias
alias ll='ls -l'
alias la='ls -l -a'

#When running mintty and cygwin/x The Display var is not
#set by default. So we need to set the display. NOTE:
#sometimes X11 running on windows has stale lock files
#located in /tmp/.X0-lock where X0
if [ $(uname) = "Cygwin" ]
then
    export DISPLAY=:0.0
fi
