#!/bin/bash

echo -e "\nInstalling packages with pacman..."
sudo pacman -Sy --noconfirm --needed \
    vlc \
    ncspot \
    sway \
    swaybg \
    swaylock \
    swayidle \
    waybar \
    kitty \
    qt5-wayland \
    qt6-wayland \
    gammastep \
    brightnessctl \
    xdg-utils \
    xorg-xwayland \
    xdg-desktop-portal-gtk \
    greetd \
    greetd-regreet \
    networkmanager \
    wireplumber \
    ttf-cascadia-code-nerd \
    flatpak \
    nano \
    neovim \
    openssh \
    libreoffice-still \
    unzip \
    base-devel \
    man-db \
    tree \
    go \
    docker \
    docker-buildx \
    docker-compose \
    ripgrep \
    tmux \
    nautilus \
    gnome-calculator \
    nodejs \
    npm \
    nwg-displays

echo -e "\nInstalling packages with yay..."
 yay -S --noconfirm --needed \
    vscodium-bin \
    librewolf-bin \
    ungoogled-chromium-bin \
    localsend-bin \
    fuzzel
