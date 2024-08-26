# dotfiles

Configuration files.

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

### Editor

| Action                                       | Keybinding |
|----------------------------------------------|------------|
| Cursor to bottom of file                     | `mb`       |
| Cursor to top of file                        | `mt`       |
| Cursor to beginning of line                  | `H`        |
| Cursor to end of line                        | `L`        |
| Yank current line                            | `yy`       |
| Paste                                        | 'p'        |
| Insert newline at cursor and enter edit mode | `O`        |

### File Control

| Action        | Keybinding |
|---------------|------------|
| Save          | `zz`       |
| Save and Quit | `zq`       |

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

### Bufferline

| Action                | Keybinding |
|-----------------------|------------|
| Next Buffer           | `alt+.`    |
| Previous Buffer       | `alt+,`    |
| Delete Current Buffer | `alt+d`    |

### Telescope

| Action      | Keybinding   |
|-------------|--------------|
| Find File   | `<leader>ff` |
| Live Grep   | `<leader>fg` |
| Find Buffer | `<leader>fb` |
| Help Tags   | `<leader>fh` |

# Other

### Backup and Restore Flatpaks

backup: `flatpak list --columns=application --app > flatpaks.txt`
restore: `xargs flatpak install -y < flatpaks.txt`
