#!/bin/bash

echo "Sym linking .tmux.conf"
ln -s `pwd`/tmux.conf $HOME/.tmux.conf
