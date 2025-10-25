#!/bin/bash

# load environment variables from .env
set -a
source .env
set +a

# wallpapers
sudo cp -R ./wallpapers/* /usr/share/backgrounds/

# bash
cp ./config/bash/.bashrc $HOME/
cp ./config/bash/.bash_aliases $HOME/

# fuzzel
mkdir -p $HOME/.config/fuzzel/
envsubst < ./config/fuzzel/fuzzel.ini > $HOME/.config/fuzzel/fuzzel.ini

# greetd + regreet configs
sudo cp ./config/greetd/config.toml /etc/greetd/config.toml
sudo cp ./config/greetd/hyprland-config /etc/greetd/hyprland-config
sudo cp ./config/greetd/regreet.toml /etc/greetd/regreet.toml

# waybar
mkdir -p $HOME/.config/waybar/
cp ./config/waybar/config.jsonc $HOME/.config/waybar/
envsubst < ./config/waybar/style.css > $HOME/.config/waybar/style.css

# hyprland
mkdir -p $HOME/.config/hypr/
envsubst < ./config/hypr/hyprland.conf > $HOME/.config/hypr/hyprland.conf

# waypaper
mkdir -p $HOME/.config/waypaper/
cp ./config/waypaper/config.ini $HOME/.config/waypaper/