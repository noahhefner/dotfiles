# Arch with Gnome Setup

Arch Linux with Gnome desktop environment.

## Installing Arch

Use `archinstall` to install Arch linux.

- Install the `gnome` desktop
- Use NetworkManager for networking
- Use Pipewire for audio
- Install appropriate graphics drivers

## Prerequisites

- Generate an SSH key and add it to GitHub

## Configuration

1. Update the system, install `git`, and clone this repo via SSH.

```bash
#!/usr/bin/env bash

# Update
sudo pacman -Syu

# Install git
sudo pacman -S git

# Clone this repo
git clone "git@github.com:noahhefner/dotfiles.git" $HOME/dotfiles >/dev/null
```

2. Install `paru`.

```bash
#!/usr/bin/env bash

# Install paru dependencies
sudo pacman -S --needed base-devel

# Build yay from source
rm -rf $HOME/.local/share/paru
git clone "https://aur.archlinux.org/paru.git" $HOME/.local/share/paru >/dev/null
cd $HOME/.local/share/paru
makepkg -si
```

3. Install Arch and AUR packages:

```bash
#!/usr/bin/env bash

# Install Nerd Fonts
sudo pacman -S $(pacman -Sgq nerd-fonts)

# Install Arch packages
mapfile -t packages < <(grep -v '^#' "$HOME/dotfiles/arch/gnome/packages.arch.txt" | grep -v '^$')
sudo pacman -S --noconfirm --needed "${packages[@]}"

# Install AUR packages
mapfile -t packages < <(grep -v '^#' "$HOME/dotfiles/arch/gnome/packages.aur.txt" | grep -v '^$')
paru -S "${packages[@]}"
```

4. Install configs.

```bash
#!/usr/bin/env bash

# AstroNvim
git clone --depth 1 https://github.com/AstroNvim/template $HOME/.config/nvim
rm -rf $HOME/.config/nvim/.git

# oh-my-bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)" --unattended

# oh-my-tmux
curl -fsSL "https://github.com/gpakosz/.tmux/raw/refs/heads/master/install.sh#$(date +%s)" | bash

# VSCodium (instructions also in config/VSCodium/README.md)
xargs -a $HOME/dotfiles/config/VSCodium/codium-extensions.txt -I {} codium --install-extension {}
cp $HOME/dotfiles/config/VSCodium/settings.json $HOME/.config/VSCodium/User/settings.json
```

5. Final touches.

```bash
#!/usr/bin/env bash

# Change oh-my-bash theme to powerline
sed -i "s/^OSH_THEME=\".*\"/OSH_THEME=\"powerline\"/" "$HOME/.bashrc"

# Set (UnGoogled) Chromium as default browser
xdg-settings set default-web-browser chromium.desktop

# Enable docker service
sudo systemctl enable docker

# Enable cups service (printing)
sudo systemctl enable cups.service

# Add user to docker group
sudo usermod -aG docker $USER
```

6. Reboot the system.

7. Install flatpaks.

```bash
#!/usr/bin/env bash

# Install flatpaks
mapfile -t packages < <(grep -v '^#' "$HOME/dotfiles/arch/gnome/packages.flatpak.txt" | grep -v '^$')
flatpak install flathub --noninteractive "${packages[@]}"
```

## Manual Setup Required

For Steam setup instructions, see the [Arch Wiki](https://wiki.archlinux.org/title/Steam).