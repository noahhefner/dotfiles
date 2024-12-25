#!/bin/bash

# Install Flatpaks
echo "Installing Flatpaks."
xargs flatpak install flathub -y < ./flatpaks.txt
