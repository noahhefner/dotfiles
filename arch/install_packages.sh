# Install Arch packages
sudo pacman -S $(grep -vE "^\s*#" packages.txt  | tr "\n" " ")

# Install yay for AUR packages
mkdir -p ~/git
git clone https://aur.archlinux.org/yay.git ~/git/yay
cd ~/git/yay
makepkg -si

# Install AUR packages with yay
yay -S $(grep -vE "^\s*#" packages-aur.txt  | tr "\n" " ")
