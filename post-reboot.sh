#!/usr/bin/env bash

# Install flatpaks
mapfile -t packages < <(grep -v '^#' "./packages.flatpak.txt" | grep -v '^$')
flatpak install flathub --noninteractive "${packages[@]}"
