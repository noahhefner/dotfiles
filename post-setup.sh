#!/usr/bin/env bash

# install custom scripts
sudo mv ./scripts/* /usr/local/bin/

# change oh-my-bash theme to powerline
sed -i "s/^OSH_THEME=\".*\"/OSH_THEME=\"powerline\"/" "$HOME/.bashrc"

# enable avahi service
sudo systemctl enable avahi-daemon
sudo systemctl start avahi-daemon

# enable greetd service
sudo systemctl enable greetd
sudo systemctl start greetd