#!/bin/bash

# Install yay dependencies
sudo pacman -Sy --needed --noconfirm git base-devel

# Build yay from source
git clone "https://aur.archlinux.org/yay.git" $HOME/.local/share/yay >/dev/null
cd $HOME/.local/share/yay
makepkg -si --no-comfirm