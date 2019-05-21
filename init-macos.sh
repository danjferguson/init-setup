!/bin/bash

echo "Installing xcode, look for dialog box"
xcode-select --install
read -p "Press [Enter] key after Xcode installation completes"

echo "Installing HomeBrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing brew formulae apps"
brew install r nmap git tmux wget mas lastpass-cli bash-completion vagrant-completion ansible

echo "Installing brew cask apps"
brew cask install keepassx wireshark google-chrome iterm2 vagrant xquartz slack microsoft-teams vmware-fusion

echo "Creating directory strucgture"
mkdir -p $HOME/src/github/danjferguson/{priv,pub}
mkdir -p $HOME/var/{bak,bin,etc,opt,scratch}
mkdir -p $HOME/.vim/colors
