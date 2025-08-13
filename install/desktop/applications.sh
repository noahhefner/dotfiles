#!/bin/bash

echo -e "\nInstalling applications..."
sudo pacman -Sy --noconfirm --needed \
    vlc \
    ncspot

 echo -e "\nInstalling applications from AUR..."
 yay -S --noconfirm --needed \
    grimshot \
    vscodium-bin \
    librewolf-bin \
    localsend-bin