#!/bin/bash

# append script to ~/.bashrc so it launches when the shell launches.
# only do this if it isn't already in bashrc
if ! grep -q "bash_settings\.sh" ~/.bashrc
then
	echo "Appending bash_settings.sh to ~/.bashrc..."
	echo ". `pwd`/bash_settings.sh" >> $HOME/.bashrc
fi

#################################################################
# if ! grep -q "git_prompt\.sh" ~/.bashrc		        #
# then							        #
# 	echo "Appending git_prompt.sh to ~/.bashrc..."	        #
# 	echo ". `pwd`/git_prompt.sh" >> $HOME/.bashrc	        #
# fi							        #
#################################################################

#Use super fancy prompt :)
cd $HOME
if [ ! -e "$HOME/.bash-git-prompt" ] 
then
	git clone https://github.com/magicmonty/bash-git-prompt.git .bash-git-prompt --depth=1
fi

echo 'GIT_PROMPT_ONLY_IN_REPO=1' >> $HOME/.bashrc
echo 'source "$HOME/.bash-git-prompt/gitprompt.sh"' >> $HOME/.bashrc;

#ln -s `pwd`/Xresources.dark $HOME/.Xresources
#ln -s `pwd`/xinitrc $HOME/.xinitrc

echo "Install complete."
echo "Restart bash to get all changes"
