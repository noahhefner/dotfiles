#!/bin/bash


DOTFILES=$HOME/.local/share/dotfiles

# Copy greetd configuration files
echo -e "\nCopying greetd configuration files..."
sudo cp $DOTFILES/config/greetd/config.toml /etc/greetd/config.toml
sudo cp $DOTFILES/config/greetd/sway-config /etc/greetd/sway-config
sudo cp $DOTFILES/wallpapers/arch.png /usr/share/backgrounds/arch.png

# Enable greetd service
echo -e "\nEnabling greetd service..."
systemctl enable greetd.service

# Change boot target to GUI mode
echo -e "\nSetting default target to graphical..."
sudo systemctl set-default graphical.target

# Enable Network Manager
echo -e "\nEnabling Network Manager..."
sudo systemctl enable NetworkManager
