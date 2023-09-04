#/bin/bash

username=$(id -u -n 1000)
builddir=$(pwd)

# Install Vimix cursors
# Note: Need to set cursors manually in Gnome Tweaks
echo "Installing Vimix cursors."
cd "/home/$username/Source" || exit
git clone https://github.com/vinceliuice/Vimix-cursors.git
cd Vimix-cursors || exit
./install.sh
cd "$builddir" || exit
