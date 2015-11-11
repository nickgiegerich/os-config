#!/bin/bash

#shortcuts
alias ls="ls -G"
alias ll="ls -l"
alias tree="tree -C"

#set emacs the default editor
export ALTERNATE_EDITOR="" >> $HOME/.bashrc
export EDITOR=emacsclient >> $HOME/.bashrc

#setup emacs startup 
alias e='emacsclient -c -n'
alias ec='emacsclient -t'

#setup the terminal 
export TERM="xterm-color"
PS1="\[\033[01;32m\]\u@\h\[\033[01;34m\] \W \$\[\033[00m\] "

#Set our fancy shell setting when working with git
. /Users/shane/github/os-config/git_prompt.sh
