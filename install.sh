#!/bin/bash
echo "Adding in scripts to bashrc"
echo ". `pwd`/bash_settings.sh" >> $HOME/.bashrc
echo ". `pwd`/git_prompt.sh" >> $HOME/.bashrc
echo "###########################################" >> $HOME/.bashrc
echo 'export ALTERNATE_EDITOR=""' >> $HOME/.bashrc
echo "export EDITOR=emacsclient" >> $HOME/.bashrc

echo "Done"
