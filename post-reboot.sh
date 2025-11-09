#!/usr/bin/env bash

# The machine needs to be rebooted after installing the Flatpak package before
# Flatpaks can be installed.

# Install flatpaks
mapfile -t packages < <(grep -v '^#' "./packages.flatpak.txt" | grep -v '^$')
flatpak install flathub --noninteractive "${packages[@]}"

# Flameshot configuration
# These commands must run after installing the Flameshot Flatpak. Otherwise the
# Flameshot .desktop file will be overwritten.
mkdir -p $HOME/.config/flameshot
cp ./config/flameshot/flameshot.ini $HOME/.config/flameshot/
sudo cp ./config/flameshot/org.flameshot.Flameshot.desktop /usr/share/applications/
