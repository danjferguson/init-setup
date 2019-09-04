#!/bin/bash

echo "Adding third party repos and keys"
cd /tmp
# Adding prerequsites software
sudo apt install apt-transport-https ca-certificates software-properties-common curl
# Adding ansible repository
sudo apt-add-repository ppa:ansible/ansible -s -y

echo "Installing baseline software packages"
sudo apt install ansible net-tools git tmux vim hnmap bash-completion git-completion file make ruby python-minimal python-pip -y

echo "Installing Tmuxinator via Ruby"
sudo gem install tmuxinator