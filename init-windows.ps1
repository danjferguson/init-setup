# Baseline Windows configuration for Windows 10
# Make sure you have Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process

Write-host -BackgroundColor Black -ForegroundColor Green "Installing Chocolately"
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# chocolatey command that is installed to reload the PowerShell environment

refreshenv

# baseline software installs with chocolatey

choco install poshgit -y
choco install vscode -y
choco install firefoxesr -y
choco install googlechrome -y
choco install lastpass-chrome -y
choco install 7zip.install -y
choco install adobereader -y
choco install office365business -y
choco install teamviewer -y
choco install sysinternals -y
choco install rsat -y
choco install putty.install -y
choco install treesizefree -y
choco install sql-server-management-studio -y
choco install rufus -y
choco install vmware-powercli-psmodule -y
choco install cmder -y
choco install advanced-ip-scanner -y
choco install path-copy-copy -y
choco install zoom -y
choco install vmwareworkstation -y

$license = Read-Host "Enter SnagIt 18 License Key"

choco install snagit --version 18.1.1 -params '/licenseCode:$license'

Write-Host -BackgroundColor Black -ForegroundColor Green "Baseline applications installed"
Write-Host -BackgroundColor Black -ForegroundColor Green "Creating folder structure"
New-Item -Path ~/src/github/danjferguson/priv -ItemType Directory 
New-Item -Path ~/src/github/danjferguson/pub -ItemType Directory
Write-Host -BackgroundColor Black -ForegroundColor Green "Public and private repo folders created"
