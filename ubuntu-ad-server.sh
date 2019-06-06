!/bin/bash

echo "Installing baseline software for Ubuntu member server in Windows domain"
sudo apt install software-properties-common net-tools git tmux vim xclip nmap bash-completion git-completion file make lynis autofs krb5-user samba sssd chrony -y

echo "Adding Ansible repository and installing"
sudo apt-add-repository ppa:ansible/ansible
sudo apt install ansible
