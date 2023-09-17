#/bin/bash

# Clone the repository for GRUB themes.

wd=$(pwd)
github_dir="/home/$USER/github"

echo "Cloning repo for Grub Customizer to $github_dir."
cd "github_dir"
git clone https://github.com/AdisonCavani/distro-grub-themes.git

cd "$wd"


