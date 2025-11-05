# Linux Desktop

Configuration files, applications, and setup for my Linux desktop.

## Installation

Execute scripts:

```sh
. setup.sh
```

```sh
. install.sh
```

```sh
. configs.sh
```

```sh
. post-setup.sh
```

Reboot the machine, then run:

```sh
. post-reboot.sh
```

## Packages

For a full list of installed packages, see `packages.arch.txt` and `packages.aur.txt`.

### Applications

- [Blueberry](https://archlinux.org/packages/extra/any/blueberry/): Bluetooth device manager
- [Document Viewier (Evince)](https://wiki.archlinux.org/title/GNOME/Document_viewer): Gnome document viewer
- [Flameshot](https://flathub.org/en/apps/org.flameshot.Flameshot): Screenshot utility
- [Gapless](https://flathub.org/en/apps/com.github.neithern.g4music): Music player
- [Ghostty](https://ghostty.org/): Terminal emulator
- [Gnome Boxes](https://archlinux.org/packages/extra/x86_64/gnome-boxes/): Virtual Machines
- [Gnome Calculator](https://archlinux.org/packages/extra/x86_64/gnome-calculator/): Calculator
- [Gnome Disk Utility](https://archlinux.org/packages/extra/x86_64/gnome-disk-utility/): Disk analyzer
- [LibreOffice](https://www.libreoffice.org/): Office suite
- [LibreWolf](https://librewolf.net/): Firefox without Mozilla spyware
- [LocalSend](https://localsend.org/): Airdrop alternative
- [mako](https://github.com/emersion/mako): Notifications
- [Nautilus](https://apps.gnome.org/Nautilus/): File manager
- [Neovim](https://github.com/neovim/neovim): Text Editor
- [nwg-displays](https://github.com/nwg-piotr/nwg-displays): Display settings manager
- [MusicBrainz Picard](https://picard.musicbrainz.org/): Audio file metadata editor
- [pwvucontrol](https://flathub.org/en/apps/com.saivert.pwvucontrol): Audio settings
- [Signal](https://archlinux.org/packages/extra/x86_64/signal-desktop/): Signal client
- [Ungoogled Chromium](https://github.com/ungoogled-software/ungoogled-chromium-archlinux): Chromium without Google spyware
- [VLC](https://www.videolan.org/vlc/): Media player
- [VSCodium](https://vscodium.com/d): VSCode without Miscroft spyware
- [Waypaper](https://github.com/anufrievroman/waypaper): Wallpaper manager

### Developer Tools

- Docker
- Go
- Node
- Python
- uv

## Installation Notes

### Graphics Drivers

Graphics drivers are not included in the package list. See the following pages for graphics drivers:

- [Nvidia](https://wiki.archlinux.org/title/NVIDIA)
- [AMD](https://wiki.archlinux.org/title/AMDGPU)

### Surface Book 2

During the Arch installation process, be sure to install [linux-firmware-marvell](https://archlinux.org/packages/core/any/linux-firmware-marvell/) as an additional package. This package is needed for the Marvell WiFi card.

Additionally, install the [linux-surface](https://github.com/linux-surface/linux-surface) kernel.
