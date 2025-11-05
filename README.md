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

Restart, then run:

```sh
. post-restart.sh
```

## Packages

For a full list of installed packages, see `packages.arch.txt` and `packages.aur.txt`.

### Applications

- [Blueberry](https://archlinux.org/packages/extra/any/blueberry/): Bluetooth device manager
- [Evince](https://wiki.archlinux.org/title/GNOME/Document_viewer): Gnome document viewer
- Gapless: Music player
- [Ghostty](https://ghostty.org/): Terminal emulator
- [Gnome Boxes](https://archlinux.org/packages/extra/x86_64/gnome-boxes/): Virtual Machines
- [Gnome Calculator](https://archlinux.org/packages/extra/x86_64/gnome-calculator/): Calculator
- [Gnome Disk Utility](https://archlinux.org/packages/extra/x86_64/gnome-disk-utility/): Disk analyzer
- LibreOffice: Office suite
- LibreWolf: Firefox without Mozilla spyware
- Localsend: Airdrop alternative
- mako: Notifications
- Nautilus: File manager
- Neovim: Text Editor
- nwg-displays: Display manager
- Picard: Audio file metadata editor
- pwvucontrol: Audio settings
- Signal: Signal client
- Ungoogled Chromium: Chromium without Google spyware
- VLC: Media player
- VSCodium: VSCode without Miscroft spyware

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
