#!/bin/bash

echo "Sym linking xinit files to git repo"
if [ -e "$HOME/.xinitrc" ]
then
	echo "xinitrc already linked"
else
	ln -s `pwd`/xinitrc $HOME/.xinitrc
fi
echo "Finished linking xinit files"

echo "Sym linking XResources files to git repo"
if [ -e "$HOME/.XResources" ]
then
	echo "XResources already linked"
else
	ln -s `pwd`/XResources.dark $HOME/.XResources
fi
echo "Finished linking xinit files"
