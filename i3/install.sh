#!/bin/bash

echo "Sym linking xinit files to git repo"
if [ -e "$HOME/.xinitrc" ] 
then
	echo "xinitrc already linked"
else
	ln -s `pwd` $HOME/.xinitrc
fi
echo "Finished linking .i3 files"
