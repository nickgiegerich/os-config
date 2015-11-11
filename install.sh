#!/bin/bash

# append script to ~/.bashrc so it launches when the shell launches.
# only do this if it isn't already in bashrc
if ! grep -Fxq ". ~/.bash_settings.sh" ~/.bashrc
then
	echo "Appending bash_settings.sh to ~/.bashrc..."
	echo ". `pwd`/bash_settings.sh" >> $HOME/.bashrc
fi

echo "Install complete."
echo "Restart bash to get all changes"
