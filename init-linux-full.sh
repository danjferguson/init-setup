#!/bin/bash

echo "Installing baseline software packages"
sudo apt install software-properties-common python-minimal openssh-server net-tools git tmux vim xclip nmap bash-completion git-completion file make lynis autofs lastpass-cli krb5-user samba sssd chrony ruby python-pip weechat chromium-browser gimp -y

echo "Adding Ansible repository and installing"
sudo apt-add-repository ppa:ansible/ansible -s -y
sudo apt install ansible -y

echo "Installing Tmuxinator via Ruby"
sudo gem install tmuxinator

echo "Downloading latest version of VMWare Workstation"
wget -O ~/vmware.bin https://www.vmware.com/go/getWorkstation-linux
sudo bash ~/vmware.bin

echo "Installing TeamViewer via secure repository"
wget -O - https://download.teamviewer.com/download/linux/signature/TeamViewer2017.asc | apt-key add -
sudo sh -c 'echo "deb http://linux.teambiwere.com/deb stable main" >> /etc/apt/sources.list.d/teamviewer.list'
sudo apt update
sudo apt install teamviewer -y

echo "Installing Remmina repository and installing"
sudo apt-add-repository ppa:remmina-ppa-team/remmina-next
sudo apt install remmina remmina-plugin-rdp remmina-plugin-secret -y

echo "Downloading newest version of VMWare Workstation"
wget -O ~/vmware.bin https://www.vmware.com/go/getWorkstation-linux
sudo bash ~/vmware.bin

echo "Don't forget to install AV from Sophos -- it is free!"
echo "https://www.sophos.com/en-us/products/free-tools/sophos-antivirus-for-linux.aspx"
