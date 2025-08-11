#!/bin/bash

clear
echo -e "\nNoah's Linux Config\n"

# Ensure git is installed
sudo pacman -Sy --noconfirm --needed git

# Clone the repository
echo -e "\nCloning dotfiles from: https://github.com/noahhefner/dotfiles.git"
rm -rf ~/.local/share/dotfiles
git clone "https://github.com/noahhefner/dotfiles.git" ~/.local/share/dotfiles >/dev/null

# Run installer
echo "\nInstallation starting..."
source ~/.local/share/dotfiles/install.sh