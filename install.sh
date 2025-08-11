#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

clear
echo -e "\nNoah's Linux Config\n"

DOTFILES_INSTALL=~/.local/share/dotfiles/install

# Install prerequisites
source $DOTFILES_INSTALL/preflight/aur.sh