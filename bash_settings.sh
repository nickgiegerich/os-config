#!/bin/bash

#Add in bin to the path
if [[ ! ":$PATH:" == *":$HOME/bin:"* ]]; then
    PATH=$PATH:$HOME/bin
fi


#shortcuts
alias ls="ls --color"
alias ll="ls -l"
alias tree="tree -C"


#set emacs the default editor
export ALTERNATE_EDITOR="" 
export EDITOR=emacsclient 

#setup emacs startup 
alias e='emacsclient -c -n'
alias ec='emacsclient -t'

#setup the terminal 
export TERM="xterm-color"
PS1="\[\033[01;32m\]\u@\h\[\033[01;34m\] \W \$\[\033[00m\] "

#When running mintty and cygwin/x The Display var is not
#set by default. So we need to set the display. NOTE:
#sometimes X11 running on windows has stale lock files
#located in /tmp/.X0-lock where X0 
if [ $(uname -o) = "Cygwin" ]
then
    export DISPLAY=:0.0
fi

