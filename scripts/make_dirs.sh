#/bin/bash

username=$(id -u -n 1000)
builddir=$(pwd)

# Create directories
echo "Creating directories."
mkdir -p "/home/$username/.fonts"
mkdir -p "/home/$username/Code"
mkdir -p "/home/$username/AppImages"
mkdir -p "/home/$username/.local/share/wallpapers"
mkdir -p "/home/$username/AppImages/System76KeyboardConfigurator"
