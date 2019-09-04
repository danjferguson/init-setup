#!/bin/bash

echo "Adding third party repos and keys"
cd /tmp
# Adding prerequsites software
sudo apt install apt-transport-https ca-certificates software-properties-common curl
# Adding Docker repository
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
# Specify using Docker repository
apt-cache policy docker-ce
# Refresh list of products
sudo apt update

echo "Installing baseline software packages"
sudo apt install docker-ce -y
