#!/bin/bash

# Install Arch packages
mapfile -t packages < <(grep -v '^#' "$OMARCHY_INSTALL/omarchy-base.packages" | grep -v '^$')
sudo pacman -S --noconfirm --needed "${packages[@]}"

# Install Flatpaks
xargs flatpak install flathub -y < ./flatpaks.txt