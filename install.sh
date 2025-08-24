#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

DOTFILES_INSTALL=$HOME/.local/share/dotfiles/install

# Prerequisites
source $DOTFILES_INSTALL/preflight/aur.sh

# System configuration
source $DOTFILES_INSTALL/system_config/timezones.sh

# Desktop
source $DOTFILES_INSTALL/packages/packages.sh
source $DOTFILES_INSTALL/packages/setup.sh
source $DOTFILES_INSTALL/packages/configs.sh