#!/bin/bash

yay -S --noconfirm --needed \
    sway \
    swaybg \
    swaylock \
    swayidle \
    waybar \
    qt5-wayland \
    qt6-wayland \
    mako \
    gammastep \
    brightnessctl \
    xdg-utils \
    xorg-xwayland \
    xdg-desktop-portal-hyprland \
    greetd \
    cosmic-greeter

DOTFILES_CONFIG=$HOME/.local/share/dotfiles/config

# Copy greetd configuration files
sudo cp $DOTFILES_CONFIG/greetd/config.toml /etc/greetd/config.toml
sudo cp $DOTFILES_CONFIG/greetd/sway-config /etc/greetd/sway-config

# Enable greetd service
systemctl enable greetd.service

# Change boot target to GUI mode
sudo systemctl set-default graphical.target