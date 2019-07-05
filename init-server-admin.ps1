# Server 2016 jump server configuration
# Make sure you have Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process

Write-Host -BackgroundColor Black -ForegroundColor Green "Installing Chocolatey"
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

refreshenv

choco install rsat -y
choco install poshgit -y
choco install git -y
choco install vscode -y
choco install rdmfree -y
choco install sysinternals -y
choco install vim -y
choco install dotnet3.5 -y
choco install dotnet4.7.2 -y
choco install 7zip.install -y
choco install iiscrypto -y
