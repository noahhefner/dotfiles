#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

clear
echo -e "\nNoah's Linux Config\n"

DOTFILES_INSTALL=$HOME/.local/share/dotfiles/install

# Install prerequisites
source $DOTFILES_INSTALL/preflight/aur.sh

# System configuration
source $DOTFILES_INSTALL/system_config/power.sh
source $DOTFILES_INSTALL/timezones.sh
source $DOTFILES_INSTALL/fonts.sh