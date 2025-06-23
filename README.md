# Confguration changes for CachyOS Daily Driving
Using [GNU stow](https://www.gnu.org/software/stow/manual/stow.html) for organization and easy install.
Just run the command below to distribute the dotfiles. (Assuming this repo is in a folder under your home directory. Otherwise, additional modifications will need to be made)

```
stow --dotfiles .
```
## Major Changes
- Using [Hyprpanel](https://hyprpanel.com/), removed waybar and mako
- Added TLP and removed power-profiles-daemon
