# VSCodium Config

Note that some configuration options, such as hiding UI elements in the sidebar and status bar, cannot be configured in `settings.json`. These changes must be made manually for each install.

## Settings

To backup `settings.json`:

```sh
cp $HOME/.config/VSCodium/User/settings.json $HOME/dotfiles/config/VSCodium/settings.json
```

To restore `settings.json`:

```sh
cp $HOME/dotfiles/config/VSCodium/settings.json $HOME/.config/VSCodium/User/settings.json
```


## Extensions

To backup extensions:

```sh
codium --list-extensions > $HOME/dotfiles/config/VSCodium/codium-extensions.txt
```

To install extensions from list:

```sh
xargs -a $HOME/dotfiles/config/VSCodium/codium-extensions.txt -I {} codium --install-extension {}
```