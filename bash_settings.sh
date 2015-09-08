#!/bin/bash

#set emacs the default editor
export ALTERNATE_EDITOR="" >> $HOME/.bashrc
export EDITOR=emacsclient >> $HOME/.bashrc

#setup emacs startup 
alias e='emacsclient -c -n'
alias ec='emacsclient -t'

#Set the bash prompt.
PS1="[\u@\h:\w ]$ "

