#!/bin/bash

cd /tmp
# Installing PowerCLI via PowerShell Gallery
sudo pwsh
Install-Module -Name VMWare.PowerCLI
Set-PowerCLIConfiguration -InvalidCertificateAction Ignore
# Downloading latest verison of VMWare Workstation
wget -O vmware.bin https://www.vmware.com/go/getWorkstation-linux
echo "Installing newest version of VMWare Workstation"
sudo bash vmware.bin
