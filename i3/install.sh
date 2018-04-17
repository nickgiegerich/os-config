#!/bin/bash

echo "Sym linking xinit files to git repo"
if [ -e "$HOME/.xinitrc" ]
then
	echo "xinitrc already linked"
else
	ln -s `pwd`/xinitrc $HOME/.xinitrc
fi
echo "Finished linking xinit files"

echo "Sym linking Xresources files to git repo"
if [ -e "$HOME/.Xresources" ]
then
	echo "Xresources already linked"
else
	ln -s `pwd`/Xresources $HOME/.Xresources
fi
echo "Finished linking xinit files"
