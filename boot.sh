#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

clear
echo -e "\nNoah's Linux Config\n"

# Install git
echo -e "\nInstalling git..."
sudo pacman -Sy --noconfirm --needed git

# Clone this repository
echo -e "\nCloning dotfiles repo from: https://github.com/noahhefner/dotfiles.git"
rm -rf $HOME/.local/share/dotfiles/
git clone "https://github.com/noahhefner/dotfiles.git" $HOME/.local/share/dotfiles >/dev/null

# Run the install script
source ./install.sh