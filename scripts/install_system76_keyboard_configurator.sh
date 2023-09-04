#/bin/bash

username=$(id -u -n 1000)
builddir=$(pwd)
dl_url="https://github.com/pop-os/keyboard-configurator/releases/download/v1.3.3/keyboard-configurator-1.3.2-x86_64.AppImage"
appimage_name="keyboard-configurator-1.3.2-x86_64.AppImage"

# System76 Launch Keyboard configurator
echo "Installing System76 Launch Keyboard Configurator."
cp ../assets/system76KCicon.svg "/home/$username/AppImages/System76KeyboardConfigurator"
cp ../config/.desktop "/home/$username/.local/share/applications"
cd "/home/$username/AppImages/System76KeyboardConfigurator"
wget $dl_url
chmod +x $appimage_name
