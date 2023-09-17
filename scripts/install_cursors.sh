#/bin/bash

# Clone Vimix cursors repository and run install script.

wd=$(pwd)
github_dir="/home/$USER/github"

echo "Cloning Vimix cursors repository to $github_dir."
cd "$github_dir"
git clone https://github.com/vinceliuice/Vimix-cursors.git

echo "Running Vimix cursors install script."
cd Vimix-cursors
./install.sh

cd "$wd"
