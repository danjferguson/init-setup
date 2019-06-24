#!/bin/bash

cd /tmp
# Downloading secure key and adding repo for TeamViewer
wget https://download.teamviewer.com/download/linux/signature/TeamViewer2017.asc
apt-key add TeamViewer2017.asc
sudo sh -c 'echo "deb http://linux.teamviewer.com/deb stable main" >> /etc/apt/sources.list.d/teamviewer.list'
# Adding repository for remmina, RDP client
sudo apt-add-repository ppa:remmina-ppa-team/remmina-next
# Downloading latest verison of VMWare Workstation
wget -O vmware.bin https://www.vmware.com/go/getWorkstation-linux
# Download the Microsoft repository GPG keys
wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb
# Register the Microsoft repository GPG keys
sudo dpkg -i packages-microsoft-prod.deb
# VS Code Installer
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
# Update the list of products
sudo apt update
# Enable the "universe" repositories
sudo add-apt-repository universe
echo "Installing Windows administrator software tools"
if ! [ -f "$HOME/.config/powershell" ]; then
  mkdir $HOME/.config/powershell
fi
sudo apt install apt-transport-https
sudo apt update
sudo apt install teamviewer powershell code -y
echo "Installing newest version of VMWare Workstation"
sudo bash vmware.bin

echo "Joining a Windows domain? run init-samba.sh"
curl -O https://raw.githubusercontent.com/danjferguson/init-setup/master/init-samba.sh
chmod +x init-samba.sh