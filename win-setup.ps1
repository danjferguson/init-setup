# Baseline Windows configuration for Windows 10
# Need to script the Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process

Write-host -BackgroundColor Black -ForegroundColor Yello "If you haven't already done so, run Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process so that this will work!"

Write-host -BackgroundColor Black -ForegroundColor Green "Installing Chocolately"
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
# chocolatey command that is installed to reload the PowerShell environment
refreshenv
# baseline software installs with chocolatey
choco install poshgit -y
choco install vscode -y
choco install firefoxesr -y
choco install googlechrome -y
choco install 7zip.install -y
choco install adobereader -y
choco install adblockplus-firefox -y
choco install office365business -y
choco install teamviewer -y
choco install sysinternals -y
choco install rsat -y
choco install putty.install -y
choco install treesizefree -y
choco install sql-server-management-studio -y
Write-Host -BackgroundColor Black -ForegroundColor Green "Baseline applications installed"
Write-Host -BackgroundColor Black -ForegroundColor Green "Creating folder structure"
New-Item -Path ~/src/github/danjferguson/priv -ItemType Directory 
New-Item -Path ~/src/github/danjferguson/pub -ItemType Directory
Write-Host -BackgroundColor Black -ForegroundColor Green "Public and private repo folders created"
Write-Host -BackgroundColor Black -ForegroundColor Green "Performing initial git clone -- enter https credentials when prompted"
Read-Host = $email.config "Enter the email you want to register in your global git config"
Read-Host = $user.name "Enter your name for your global git config"
cd ~/src/github/danjferguson/priv/
git clone https://github.com/danjferguson/provision.git