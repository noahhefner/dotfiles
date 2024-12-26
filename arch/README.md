# Arch

The `packages.txt` file contains a list of packages I use with Arch. The `packages-aur.txt` file contains a list of AUR packages. The `install_packages.sh` script installs all the packages from both files, as well as `yay`.

# Surface Book 2 Notes

Use the archinstall script to setup the installation. After the install, it will prompt you to chroot into the system to do any post-install setup steps. Hit `Y`. Install the `linux-firmware-marvell` package. This is needed for WiFi to work as the SB2 has a Marvell chip.
