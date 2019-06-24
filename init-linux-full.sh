#!/bin/bash

echo "Adding third party repos and keys"
cd /tmp
# Adding ansible repository
sudo apt-add-repository ppa:ansible/ansible -s -y
# Refresh list of products
sudo apt update

echo "Installing baseline software packages"
sudo apt install software-properties-common curl openssh-server net-tools git tmux vim xclip nmap bash-completion git-completion file make lynis autofs lastpass-cli ruby python-minimal python-pip weechat chromium-browser gimp gparted ansible -y

echo "Installing Tmuxinator via Ruby"
sudo gem install tmuxinator

echo "Don't forget to install AV from Sophos -- it is free!"
echo "https://www.sophos.com/en-us/products/free-tools/sophos-antivirus-for-linux.aspx"
echo "To complete a Windows administrator box on ubuntu download nix-win-admin.sh"
wget https://raw.githubusercontent.com/danjferguson/init-setup/master/nix-win-admin.sh
chmod +x nix-win-admin.sh
