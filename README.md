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

Restart.

## Applications

For a full list of installed packages, see `packages.arch.txt` and `packages.aur.txt`.

| Name | Description |
|------|-------------|
| LibreWolf | Hardened Firefox |
| Ungoogled Chromium | Chromium without Google spyware |

## Keybindings

### Hyprland

**`mod` = super**

| Action | Keybinding |
|--------|------------|
| Start Terminal | `mod+enter` |
| Start Launcher | `mod+d` |
| Kill Focused Window | `mod+q` |
| Change Focused Window | `mod+Up\|Down\|Left\|Right` |
| Move Focused Window | `mod+Shift+Up\|Down\|Left\|Right` |

### Ghostty

| Action                        | Keybinding          |
|-------------------------------|---------------------|
| New Tab                       | `ctrl+shift+t`      |

### Neovim

See [AstroNvim mappings](https://docs.astronvim.com/mappings).

## Installation Notes

### Graphics Drivers

Graphics drivers are not included in the package list. See the following pages for graphics drivers:

- [Nvidia](https://wiki.archlinux.org/title/NVIDIA)
- [AMD](https://wiki.archlinux.org/title/AMDGPU)

### Surface Book 2

During the Arch installation process, be sure to install the [linux-firmware-marvell](https://archlinux.org/packages/core/any/linux-firmware-marvell/) package before first boot. This package is needed for the wifi card in the Surface Book 2 to work.
