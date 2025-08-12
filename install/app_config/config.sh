#!/bin/bash

DOTFILES_CONFIGS=$HOME/.local/share/dotfiles/config

echo -e "\nCopying sway configuration files..."
cp -R $DOTFILES_CONFIGS/sway $HOME/.config/

echo -e "\nCopying waybar configuration files..."
cp -R $DOTFILES_CONFIGS/waybar $HOME/.config/

echo -e "\nCopying fuzzel configuration files..."
cp -R $DOTFILES_CONFIGS/fuzzel $HOME/.config/

echo -e "\nCopying kitty configuration files..."
cp -R $DOTFILES_CONFIGS/kitty $HOME/.config/