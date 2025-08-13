#!/bin/bash

echo -e "\nInstalling desktop packages with pacman..."
sudo pacman -Sy --noconfirm --needed \
    vlc \
    ncspot