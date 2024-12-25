# Flatpaks

Create list of installed Flatpaks: `flatpak list --columns=application --app > flatpaks.txt`

Install Flatpaks from file: `xargs flatpak install -y < flatpaks.txt`
