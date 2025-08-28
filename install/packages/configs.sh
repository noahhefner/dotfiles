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

echo -e "\nCopying bash VSCodium configuration files..."
cp $DOTFILES_CONFIGS/VSCodium/settings.json $HOME/.config/VSCodium/User/settings.json

echo -e "\nCopying bash configuration files..."
cp $DOTFILES_CONFIGS/bash/.bashrc $HOME/
cp $DOTFILES_CONFIGS/bash/.bash_aliases $HOME/

echo -e "\nDownloading AstroNvim config for Neovim..."
git clone --depth 1 https://github.com/AstroNvim/template ~/.config/nvim
rm -rf ~/.config/nvim/.git
