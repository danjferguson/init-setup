#!/bin/bash

echo "Installing baseline software packages"
sudo apt install software-properties-common python-minimal openssh-server tmux vim bash-completion file make krb5-user samba sssd chrony python-pip -y

echo "Adding Ansible repository and installing"
sudo apt-add-repository ppa:ansible/ansible -s -y
sudo apt install ansible -y
