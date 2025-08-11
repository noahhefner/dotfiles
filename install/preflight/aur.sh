#!/bin/bash

# Install yay dependencies
sudo pacman -S --needed git base-devel

# Build yay from source
git clone "https://aur.archlinux.org/yay.git" ~/.local/share/yay >/dev/null
cd ~/.local/share/yay
makepkg -si