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

echo "Sym linking i3 config files to git repo"
if [ -e "$HOME/.config/i3/config" ]
then
	echo "config already linked"
else
	ln -s `pwd`/config $HOME/.config/i3/config
fi
echo "Finished linking i3 files"
