#!/usr/bin/env bash

# install custom scripts
sudo mv ./scripts/* /usr/local/bin/

# change oh-my-bash theme to powerline
sed -i "s/^OSH_THEME=\".*\"/OSH_THEME=\"powerline\"/" "$HOME/.bashrc"

# enable avahi service
sudo systemctl enable avahi-daemon

# enable greetd service
sudo systemctl enable greetd

# enable docker service
sudo systemctl enable docker

# add user to docker group
sudo usermod -aG docker $USER
