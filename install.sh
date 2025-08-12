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

DOTFILES_INSTALL=$HOME/.local/share/dotfiles/install

# Prerequisites
source $DOTFILES_INSTALL/preflight/aur.sh

# System configuration
source $DOTFILES_INSTALL/system_config/timezones.sh

# Desktop
source $DOTFILES_INSTALL/desktop/desktop.sh
source $DOTFILES_INSTALL/desktop/fonts.sh

# Application Configuration Files
source $DOTFILES_INSTALL/app_config/config.sh