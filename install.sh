#!/bin/bash
git submodule init
git submodule update

#install bash settings
pushd .
cd bash
source ./install.sh
popd

pushd .
cd vim
source ./install.sh
popd

pushd .
cd tmux
source ./install.sh
popd

pushd .
cd i3 
source ./install.sh
popd

echo "Restart bash to get all changes"
