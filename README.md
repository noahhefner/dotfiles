# dot-common

My dotfiles for various apps.

# Keybindings

## Kitty

| Action                        | Keybinding          |
|-------------------------------|---------------------|
| New Tab                       | `ctrl+shift+t`      |
| Close Tab                     | `ctrl+shift+q`      |
| Move to tab to the right      | `ctrl+shift+right`  |
| Move to tab to the left       | `ctrl+shift+left`   |
| New Kitty Window Horizontal   | `ctrl+shift+enter`  |
| Close Kitty Window            | `ctrl+shift+w`      |
| Move To Next Kitty Window     | `ctrl+shift+]`      |
| Move To Previous Kitty Window | `ctrl+shift+[`      |
| Open Ranger in new tab        | `ctrl+r`            |

## Neovim

**These keybindings should be executed in normal mode.**

### File Control

| Action | Keybinding |
|--------|------------|
| Save | `zz` |

### Window Management

| Action                          | Keybinding   |
|---------------------------------|--------------|
| Move to left window             | `ctrl+h`     |
| Move to right window            | `ctrl+l`     |
| Move to lower window            | `ctrl+j`     |
| Move to upper window            | `ctrl+k`     |
| Expand horizontal window size   | `ctrl+left`  |
| Reduce horizontal window size   | `ctrl+right` |
| Expand vertical window size     | `ctrl+down`  |
| Reduce vertical window size     | `ctrl+up`    |

### Neo-Tree

| Action        | Keybinding |
|---------------|------------|
| Show Neo-Tree | `fo` |
| Hide Neo-Tree | `fc` |

### Bufferline

| Action          | Keybinding |
|-----------------|------------|
| Next Buffer     | `alt+.` |
| Previous Buffer | `alt+,` |

# Scripts

| Name | Action |
|-|-|
| `add_flathub_remote.sh` | adds flathub remote for flatpak
| `dl_grub_theme.sh` | downloads GRUB theme
| `install_cursors.sh` | downloads custom cursor pack
| `install_fonts.sh` | downloads Nerd Font
| `install_icons.sh` | downloads icon pack
| `install_system76_keyboard_configurator.sh` | installs Keyboard configurator for System76 Launch keyboard
| `make_dirs.sh` | create directories needed for configs
| `validate_repo_location.sh` | ensures this repository has been cloned to the correct location (user  shome)

# Other

### Backup and Restore Flatpaks

backup: `flatpak list --columns=application --app > flatpaks.txt`
restore: `xargs flatpak install -y < flatpaks.txt`
