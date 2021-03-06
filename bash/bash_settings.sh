#!/bin/bash
#Minor customizations to bash. I try to keep as stock
#as possible :)

#Add in bin to the path
if [[ ! ":$PATH:" == *":$HOME/bin:"* ]]; then
    PATH=$HOME/bin:$PATH
fi

#custom exports
export TERM="xterm-256color"

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
alias e='emacsclient -c -n --alternate-editor=""'

#When running mintty and cygwin/x The Display var is not
#set by default. So we need to set the display. NOTE:
#sometimes X11 running on windows has stale lock files
#located in /tmp/.X0-lock where X0
if [ $(uname) = "Cygwin" ]
then
    export DISPLAY=:0.0
fi

#Set some overrides for some of OSX's ancient defaults
if [ $(uname) = "Darwin" ]
then
	#link in current version of emacs for command line usage.
	if [ ! -e $HOME/bin/emacs ]
	then
		ln -s /Applications/Emacs.app/Contents/MacOS/Emacs $HOME/bin/emacs
	fi
	#add emacs utils to path
	if [[ ! ":$PATH:" == *":/Applications/Emacs.app/Contents/MacOS/bin:"* ]]; then
	    PATH=/Applications/Emacs.app/Contents/MacOS/bin:$PATH
	fi
fi
