# Arch

The `packages.txt` and `packages-aur.txt` files contain a list of packages for use with Arch. The latter list should be installed with `yay` from the AUR.

# Ungoogled Chromium Notes

Ungoogled Chromium does not have Wayland support enabled by default. After installing the package from the AUR, launch chromium with:

```sh
chromium --enable-features=UseOzonePlatform --ozone-platform=wayland
```

Navigate to `chrome://flags/` and set "Preferred Ozone platform" to "Wayland". This enabled Wayland support.

# Surface Book 2 Notes

Use the archinstall script to setup the installation. After the install, it will prompt you to chroot into the system to do any post-install setup steps. Hit `Y`. Install the `linux-firmware-marvell` package. This is needed for WiFi to work as the SB2 has a Marvell chip.