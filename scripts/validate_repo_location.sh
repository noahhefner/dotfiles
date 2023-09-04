#!/bin/bash

# This script simply validates that the .dotfiles repository was cloned in the
# correct location, the users home.

username=$(id -u -n 1000)
wd=$(pwd)
expected_location="/home/$username/.dotfiles/scripts"

if [ "$wd" != "$expected_location" ]
then
  echo "1"
fi

echo "0"
