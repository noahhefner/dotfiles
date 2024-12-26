# Arch

The `packages.txt` and `packages-aur.txt` files contain a list of packages for use with Arch. The latter list should be installed with `yay` from the AUR.

# Linux Surface Kernel

Installation instructions for the `linux-surface` kernel can be found [here](https://github.com/linux-surface/linux-surface/wiki/Installation-and-Setup#arch). This is a special kernel for Microsoft Surface devices.

`systemd-boot` configuration also needs to be modified to add the kernel to the boot menu. Instructions for that can be found [here](https://linuxiac.com/arch-linux-switching-between-multiple-kernels/).

# Ungoogled Chromium

Ungoogled Chromium does not have Wayland support enabled by default. After installing the package from the AUR, launch chromium with:

```sh
chromium --enable-features=UseOzonePlatform --ozone-platform=wayland
```

Navigate to `chrome://flags/` and set "Preferred Ozone platform" to "Wayland". This enabled Wayland support.

# Ly display manager

Ly display manager service needs to be enabled after installing the `ly` package:

```sh
sudo systemctl enable ly
```

# Surface Book 2 Notes

Use the archinstall script to setup the installation. After the install, it will prompt you to chroot into the system to do any post-install setup steps. Hit `Y`. Install the `linux-firmware-marvell` package. This is needed for WiFi to work as the SB2 has a Marvell chip.