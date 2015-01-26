#!/bin/bash

#setup paths and go stuff

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:.
export GOROOT=`go env GOROOT`
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

export ALTERNATE_EDITOR="" >> $HOME/.bashrc
export EDITOR=emacsclient >> $HOME/.bashrc


#setup emacs startup 
alias e='emacsclient -c -n'
alias ec='emacsclient -t'

