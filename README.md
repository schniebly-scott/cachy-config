# Confguration changes for CachyOS Daily Driving
Using [GNU stow](https://www.gnu.org/software/stow/manual/stow.html) for organization and easy install.
Just run the command below to distribute the dotfiles. (Assuming this repo is in a folder under your home directory. Otherwise, additional modifications will need to be made)

```
stow --dotfiles .
```
## Major Changes
- Using [Hyprpanel](https://hyprpanel.com/), removed waybar and mako
- Added TLP and removed power-profiles-daemon
- Added [sugar-dark](https://github.com/MarianArlt/sddm-sugar-dark) theme

## Commands ran
```
xdg-mime default eog.desktop image/jpeg
xdg-mime default eog.desktop image/png
xdg-mime default eog.desktop image/webp
```
