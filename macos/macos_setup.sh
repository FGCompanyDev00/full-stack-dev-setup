#!/bin/bash

echo "💻 Starting FG Full Stack Developer Mac Setup..."

# Xcode CLI
xcode-select --install

# Homebrew
echo "🍺 Installing Homebrew if not already..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "🔄 Updating Homebrew..."
brew update && brew upgrade

echo "🧰 Installing essential CLI tools..."
brew install git curl wget htop zsh bash-completion openssl gnupg jq httpie nmap tree

# ------------------------------
# ZSH Enhancements & Starship
# ------------------------------
brew install starship fzf bat exa zsh-autosuggestions zsh-syntax-highlighting
echo 'eval "$(starship init zsh)"' >> ~/.zshrc
echo 'source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh' >> ~/.zshrc
echo 'source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh' >> ~/.zshrc

# ------------------------------
# PHP / Laravel Stack
# ------------------------------
brew install php composer
composer global require laravel/installer laravel/sail beyondcode/laravel-dump-server
echo 'export PATH="$HOME/.composer/vendor/bin:$PATH"' >> ~/.zshrc

# ------------------------------
# Node.js / JS / Frontend
# ------------------------------
brew install node
npm install -g yarn pnpm eslint prettier vite create-next-app typescript

# ------------------------------
# Python & Tools
# ------------------------------
brew install python pipx
pip3 install --upgrade pip
pipx ensurepath
pipx install pipenv
pipx install black
pipx install flake8
pipx install virtualenv

# ------------------------------
# Java
# ------------------------------
brew install openjdk
echo 'export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"' >> ~/.zshrc

# ------------------------------
# Flutter / Android
# ------------------------------
brew install --cask flutter android-studio android-platform-tools
echo 'export PATH="$PATH:$HOME/flutter/bin"' >> ~/.zshrc

# ------------------------------
# Docker / DevOps Tools
# ------------------------------
brew install --cask docker
brew install kubectl awscli terraform ngrok

# ------------------------------
# Databases
# ------------------------------
brew install postgresql mysql sqlite redis

# ------------------------------
# Database GUIs
# ------------------------------
brew install --cask tableplus dbeaver-community

# ------------------------------
# IDEs & Dev GUIs
# ------------------------------
brew install --cask visual-studio-code
brew install --cask intellij-idea
brew install --cask postman
brew install --cask insomnia
brew install --cask figma
brew install --cask warp

# ------------------------------
# Git Config (optional)
# ------------------------------
git config --global user.name "Your Name"
git config --global user.email "you@example.com"
git config --global init.defaultBranch main

# ------------------------------
# Clean up
# ------------------------------
brew cleanup

echo "✅ Full Stack Dev Setup Complete!"
echo "👉 Restart your terminal to apply all changes."
