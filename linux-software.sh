#!/bin/bash

echo "Installing baseline software for Ubuntu desktop in a Windows domain"
sudo apt install software-properties-common openssh-server net-tools git tmux vim xclip nmap bash-completion git-completion file make lynis autofs lastpass-cli krb5-user samba sssd chrony ruby -y

echo "Adding Ansible repository and installing"
sudo apt-add-repository ppa:ansible/ansible -s -y
sudo apt install ansible -y

echo "Installing tmuxinator"
sudo gem install tmuxinator
mkdir $HOME/.bin
curl https://raw.githubusercontent.com/tmuxinator/tmuxinator/master/completion/tmuxinator.bash -so $HOME/.bin/tmuxinator.bash
echo 'export EDITOR='vim'' >> $HOME/.bashrc
echo 'export source $HOME/.bin/tmuxinator.bash' >> $HOME/.bashrc
