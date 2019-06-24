# init-setup

Add vm tools as needed:

`sudo apt install open-vm-tools-desktop -y` or `sudo apt install open-vm-tools -y`

## DevOps Desktop Configuration

Download approrpiate init file for desired system configuration (default full install):

`wget https://raw.githubusercontent.com/danjferguson/init-setup/master/init-linux-full.sh`

Set file the execute:

`chmod +x init-linux-full.sh`

## Alternative Configuration Files

- init-linux-min.sh - basic configuration
- init-samba.sh - adds configuration for Windows AD joined machine
- nix-win-admin.sh - adds Windows administrator software packages
- install-teamviewer.sh - stand alone teamviewer install script
