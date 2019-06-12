#!/bin/bash

echo "Creating directory structure"
mkdir -p $HOME/src/github/danjferguson/{priv,pub}
mkdir -p $HOME/var/{bak,bin,etc,opt,scratch}
mkdir -p $HOME/.vim/colors
echo "Installing tmuxinator"
sudo gem install tmuxinator
mkdir $HOME/.bin
curl https://raw.githubusercontent.com/tmuxinator/tmuxinator/master/completion/tmuxinator.bash -so $HOME/.bin/tmuxinator.bash
echo 'export EDITOR='vim'' >> $HOME/.bashrc
echo 'export source $HOME/.bin/tmuxinator.bash' >> $HOME/.bashrc