#!/bin/bash

# wallpapers
sudo cp -R ./wallpapers/* /usr/share/backgrounds/

# greetd + regreet configs
sudo cp ./config/greetd/config.toml /etc/greetd/config.toml
sudo cp ./config/greetd/hyprland-config /etc/greetd/hyprland-config
sudo cp ./config/greetd/regreet.toml /etc/greetd/regreet.toml

# bash
cp ./config/bash/.bashrc $HOME/
cp ./config/bash/.bash_aliases $HOME/

# fuzzel
cp ./config/fuzzel/fuzzel.ini $HOME/.config/fuzzel/