# Baseline Server 2016 configuration
# Make sure you have Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process

Write-Host -BackgroundColor Black -ForegroundColor Green "Installing Chocolatey"
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

refreshenv

choco install dotnet3.5 -y
choco install dotnet4.7.2 -y
choco install 7zip.install -y
choco install iiscrypto -y
