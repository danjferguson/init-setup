#!/bin/bash

echo "Installing software needed to join Windows domain"
sudo apt install krb5-user samba sssd chrony -y

echo "Configuring samba"
sudo vi /etc/samba/smb.conf

echo "Creating sssd configuration file"
sudo vi /etc/sssd/sssd.conf
sudo chown root:root /etc/sssd/sssd.conf
sudo chmod 600 /etc/sssd/sssd.conf

echo "Change home folder settings"
sudo vi /etc/pam.d/common-session

echo "Adding FQDN to /etc/hosts"
sudo vi /etc/hosts

echo "Updating services"
sudo systemctl restart chrony.service
sudo systemctl restart smbd.service nmbd.service
sudo systemctl start sssd.service

echo "Get a Kerberos ticket with 'sudo kinit <username>'"
echo "Join the domain with 'sudo net adsa join -k'"
