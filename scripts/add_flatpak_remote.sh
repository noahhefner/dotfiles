#/bin/bash

username=$(id -u -n 1000)
builddir=$(pwd)

# Add Flatpak remote repository
echo "Adding Flatpak remote repository."
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
