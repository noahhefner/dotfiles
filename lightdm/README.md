# lightdm

This `lightdm-gtk-greeter.conf` file is uesed to configure the `lightdm-gtk-greeter` for `lightdm`. Copy the `lightdm-gtk-greeter.conf` file to the `/etc/lightdm/` directory to load the config. 

To change the background image of the greeter, move the image file you want to use to `/usr/share/backgrounds` and update `lightdm-gtk-greeter.conf` accordingly. For example:

```conf
[greeter]
background=/usr/share/backgrounds/arch.png
```