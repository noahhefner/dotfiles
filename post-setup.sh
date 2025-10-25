#!/usr/bin/env bash

# enable greetd service
sudo systemctl enable greetd
sudo systemctl start greetd

# enable avahi service
sudo systemctl enable avahi-daemon
sudo systemctl start avahi-daemon

# install custom scripts
sudo mv ./scripts/* /usr/local/bin/