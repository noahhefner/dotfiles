#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

DOTFILES_INSTALL=$HOME/.local/share/dotfiles/install

# Prerequisites
source $DOTFILES_INSTALL/preflight/aur.sh

# System configuration
source $DOTFILES_INSTALL/system_config/timezones.sh

# Desktop
source $DOTFILES_INSTALL/desktop/desktop.sh
source $DOTFILES_INSTALL/desktop/fonts.sh
source $DOTFILES_INSTALL/desktop/applications.sh

# Application Configuration Files
source $DOTFILES_INSTALL/app_config/config.sh