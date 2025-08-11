#!/bin/bash
# Source: https://github.com/basecamp/omarchy/blob/master/install/config/timezones.sh

# Install tzupdate and allow the wheel group to execute tz commands
if ! command -v tzupdate &>/dev/null; then
  yay -S --noconfirm --needed tzupdate
  sudo tee /etc/sudoers.d/omarchy-tzupdate >/dev/null <<EOF
%wheel ALL=(root) NOPASSWD: /usr/bin/tzupdate, /usr/bin/timedatectl
EOF
  sudo chmod 0440 /etc/sudoers.d/omarchy-tzupdate
fi