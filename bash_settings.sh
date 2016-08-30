#!/bin/bash

#Add in bin to the path
if [[ ! ":$PATH:" == *":$HOME/bin:"* ]]; then
    PATH=$PATH:$HOME/bin
fi

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
if [ $(uname) = "Cygwin" ]
then
    export DISPLAY=:0.0
fi

#Set some stuff on MAC
if [ $(uname) = "Darwin" ]
then
    alias ls="ls -G"
    alias ll="ls -l"
    #Point emacs to something more recent than 1967 :)
    export PATH=/Applications/Emacs.app/Contents/MacOS/bin:$PATH
    export PATH=/Applications/Emacs.app/Contents/MacOS:$PATH
    alias emacs="Emacs"
fi


#Add in gopath
export GOPATH=$HOME/gocode
export PATH=$PATH:$GOPATH/bin

