#!/usr/bin/env bash

# setup templater
cd templater
uv sync
cd ..

# oh-my-bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)" --unattended

# AstroNvim
git clone --depth 1 https://github.com/AstroNvim/template $HOME/.config/nvim
rm -rf $HOME/.config/nvim/.git

# uwsm
mkdir -p $HOME/.config/uwsm
cp ./config/uwsm/env $HOME/.config/uwsm

# fuzzel
mkdir -p $HOME/.config/fuzzel/
./templater/.venv/bin/python ./templater/templater.py -t ./config/fuzzel/fuzzel.jinja.ini -e .env -o $HOME/.config/fuzzel/fuzzel.ini

# greetd + regreet configs
sudo cp ./config/greetd/config.toml /etc/greetd/config.toml
sudo cp ./config/greetd/hyprland-config /etc/greetd/hyprland-config
sudo ./templater/.venv/bin/python ./templater/templater.py -t ./config/greetd/regreet.jinja.toml -e .env -o /etc/greetd/regreet.toml

# hyprland
mkdir -p $HOME/.config/hypr/
./templater/.venv/bin/python ./templater/templater.py -t ./config/hypr/hyprland.jinja.conf -e .env -o $HOME/.config/hypr/hyprland.conf

# waybar
mkdir -p $HOME/.config/waybar/
cp ./config/waybar/config.jsonc $HOME/.config/waybar/
./templater/.venv/bin/python ./templater/templater.py -t ./config/waybar/style.jinja.css -e .env -o $HOME/.config/waybar/style.css

# waypaper
mkdir -p $HOME/.config/waypaper/
cp ./config/waypaper/config.ini $HOME/.config/waypaper/

# wallpapers
sudo mkdir -p /usr/share/backgrounds/
sudo cp -R ./wallpapers/* /usr/share/backgrounds/
