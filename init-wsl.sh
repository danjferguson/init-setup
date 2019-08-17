#!/bin/bash
echo "Adding third party repos and keys"
cd /tmp
# Adding prerequsites software
sudo apt install apt-transport-https ca-certificates software-properties-common curl
# Adding ansible repository
sudo apt-add-repository ppa:ansible/ansible -s -y
# Refresh list of products
sudo apt update
echo "Installing baseline software packages"
sudo apt install openssh-server tmux vim bash-completion file make python-minimal python-pip ruby ansible -y
echo "Installing Tmuxinator via Ruby"
sudo gem install tmuxinator