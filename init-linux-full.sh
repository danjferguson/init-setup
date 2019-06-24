#!/bin/bash

echo "Adding third party repos and keys"
cd /tmp
wget https://download.teamviewer.com/download/linux/signature/TeamViewer2017.asc
apt-key add TeamViewer2017.asc
sudo sh -c 'echo "deb http://linux.teamviewer.com/deb stable main" >> /etc/apt/sources.list.d/teamviewer.list'
sudo apt-add-repository ppa:ansible/ansible -s -y
sudo apt-add-repository ppa:remmina-ppa-team/remmina-next
wget -O vmware.bin https://www.vmware.com/go/getWorkstation-linux
sudo apt update

echo "Installing baseline software packages"
sudo apt install software-properties-common python-minimal openssh-server net-tools git tmux vim xclip nmap bash-completion git-completion file make lynis autofs lastpass-cli ruby python-pip weechat chromium-browser gimp gparted ansible teamviewer remmina remmina-plugin-rdp remmina-plugin-secret -y

echo "Installing Tmuxinator via Ruby"
sudo gem install tmuxinator

echo "Installing newest version of VMWare Workstation"
sudo bash vmware.bin

echo "Don't forget to install AV from Sophos -- it is free!"
echo "https://www.sophos.com/en-us/products/free-tools/sophos-antivirus-for-linux.aspx"
echo "Joining a Windows domain? run init-samba.sh"
curl -O https://raw.githubusercontent.com/danjferguson/init-setup/master/init-samba.sh
chmod +x init-samba.sh
echo "To complete a Windows administrator box on ubuntu download nix-win-admin.sh"
curl -O https://raw.githubusercontent.com/danjferguson/init-setup/master/nix-win-admin.sh
chmod +x nix-win-admin.sh
