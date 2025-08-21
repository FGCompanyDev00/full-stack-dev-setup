# Check if Chocolatey is installed, if not, install it
if (-not (Get-Command choco -ErrorAction SilentlyContinue)) {
    Write-Host "Chocolatey is not installed. Installing now..."
    Set-ExecutionPolicy Bypass -Scope Process -Force; 
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 0x300 
    iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
}

# Ensure Chocolatey is up to date
Write-Host "Updating Chocolatey..."
choco upgrade chocolatey -y

# ---------------------------
# Essential Development Tools
# ---------------------------
Write-Host "Installing essential tools..."
choco install git -y
choco install curl -y
choco install wget -y
choco install htop -y
choco install 7zip -y
choco install vscode -y
choco install visualstudio2019buildtools -y

# ---------------------------
# PHP / Laravel Setup
# ---------------------------
Write-Host "Installing PHP, Composer, and Laravel tools..."
choco install php -y
choco install composer -y
composer global require laravel/installer laravel/sail beyondcode/laravel-dump-server
$env:Path += ";$env:USERPROFILE\AppData\Roaming\Composer\vendor\bin"

# ---------------------------
# Node.js / JavaScript Development
# ---------------------------
Write-Host "Installing Node.js, Yarn, PNPM, and frontend tools..."
choco install nodejs-lts -y
npm install -g yarn pnpm eslint prettier vite create-next-app typescript

# ---------------------------
# Python Setup
# ---------------------------
Write-Host "Installing Python and pip tools..."
choco install python -y
pip3 install --upgrade pip
pip3 install virtualenv pipenv black flake8

# ---------------------------
# Java Setup (OpenJDK)
# ---------------------------
Write-Host "Installing Java (OpenJDK)..."
choco install openjdk11 -y

# ---------------------------
# Flutter & Android Setup
# ---------------------------
Write-Host "Installing Flutter, Android Studio, and SDK..."
choco install flutter -y
choco install androidstudio -y
choco install android-sdk -y

# ---------------------------
# Docker & DevOps Tools
# ---------------------------
Write-Host "Installing Docker, Kubernetes CLI, AWS CLI, and Terraform..."
choco install docker-desktop -y
choco install kubernetes-cli -y
choco install awscli -y
choco install terraform -y
choco install ngrok -y

# ---------------------------
# Databases (MySQL, PostgreSQL, Redis)
# ---------------------------
Write-Host "Installing Databases..."
choco install mysql -y
choco install postgresql -y
choco install redis -y

# ---------------------------
# Database GUIs
# ---------------------------
Write-Host "Installing Database GUI tools..."
choco install tableplus -y
choco install dbeaver -y

# ---------------------------
# IDEs & Development Apps
# ---------------------------
Write-Host "Installing IDEs and Development Tools..."
choco install intellijidea -y
choco install postman -y
choco install insomnia -y
choco install figma -y
choco install warp -y

# ---------------------------
# Set Git Global Configurations
# ---------------------------
Write-Host "Setting up Git global config..."
git config --global user.name "Your Name"
git config --global user.email "you@example.com"
git config --global init.defaultBranch main

# ---------------------------
# Clean up
# ---------------------------
Write-Host "Cleaning up..."
choco clean -y

Write-Host "✅ Windows FG Full Stack Developer Setup Complete!"
Write-Host "Please restart your terminal or system for changes to take effect."
