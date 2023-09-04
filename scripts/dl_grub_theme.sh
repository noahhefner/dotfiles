#/bin/bash

username=$(id -u -n 1000)
builddir=$(pwd)

# Clone theme repo for Grub Customizer
# Note: The theme needs to be set manually in grub customizer
echo "Cloning repo for Grub Customizer. Location is /home/$username/Code/distro-grub-themes."
cd "/home/$username/Code" || exit
git clone https://github.com/AdisonCavani/distro-grub-themes.git
cd "$builddir" || exit


