!/bin/bash

echo "Installing baseline software packages"
sudo apt install openssh-server net-tools git tmux vim xclip nmap bash-completion git-completion curl file make lynis autofs -y

echo "Installing LinuxBrew"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"

echo "Creating directory strucgture"
mkdir -p $HOME/src/github/danjferguson/{priv,pub}
mkdir -p $HOME/var/{bak,bin,etc,opt,scratch}
mkdir -p $HOME/.vim/colors
