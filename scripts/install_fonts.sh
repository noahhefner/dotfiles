#/bin/bash


builddir=$(pwd)
ROOT_UID=0
DEST_DIR=

# Destination directory
if [ "$UID" -eq "$ROOT_UID" ]; then

    DEST_DIR="/usr/share/fonts"
    
    cd "/tmp"
    
    # Download the font
    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.1/JetBrainsMono.zip
    
    # Extract the font
    unzip JetBrainsMono.zip -d $DEST_DIR
    
    # Cleanup
    rm JetBrainsMono.zip

else
    
    DEST_DIR="$HOME/.local/share/fonts"
    
    # Make user font directory if it does not exist
    mkdir -p "$HOME/.local/share/fonts"

    # Create temp directory in users home directory
    mkdir "$HOME/tmp"

    # Go to the temp directory
    cd "$HOME/tmp" || exit
    
    # Download the font
    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.1/JetBrainsMono.zip

    # Extract the font
    unzip JetBrainsMono.zip -d {$DEST_DIR}
    
    # Cleanup
    rm JetBrainsMono.zip
fi

# Go back to wherever we started
cd "$builddir" || exit
