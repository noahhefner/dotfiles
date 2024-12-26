# dotfiles

Configuration files for Linux programs. Many configurations are distribution-agnostic. Any configurations, scripts, or files that are specific to a distribution are contained in the subdirectory for that distribution.

# Fonts

Lots of configs use the `Hack Nerd Font Mono` font. For Arch, this font is installed via the `ttf-hack-nerd` package. I have not tested how to install this font on Debian derrivitives.

# Keybindings

## Sway

**`mod` = super**

| Action | Keybinding |
|--------|------------|
| Start Terminal | `mod+enter` |
| Start Launcher | `mod+d` |
| Kill Focused Window | `mod+q` |
| Change Focused Window | `mod+Up\|Down\|Left\|Right` |
| Move Focused Window | `mod+Shift+Up\|Down\|Left\|Right`
| Split Horizontally | `mod+h` |
| Split Vertically | `mod+v` |
| Enter Fullscreen for Focused Container | `mod+f` |
| Change Container Layout (stacked/tabbed/toggle split) | `mod+s\|w\|e` |
| Toggle Tiling/Floating | `mod+Shift+Space` |
| Change focus between tiling/floating windows | `mod+space` |
| Focus the Parent Container | `mod+a` |
| Switch to Workspace | `mod+1\|2\|3\|4\|5\|6\|7\|8\|9\|0` |
| Move Focused Container to Workspace | `mod+Shift+1\|2\|3\|4\|5\|6\|7\|8\|9\|0` |
| Reload Sway Configuration File | `mod+Shift+c` |
| Enter Resize Mode | `mod+r` |
| Resize Window (while in resize mode) | `Up\|Down\|Left\|Right` |
| Exit Resize Mode (while in resize mode) | `esc` |

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
| Enter resize mode for current Window | `ctrl+shift+r` |

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
| Paste                                        | `p`        |
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
