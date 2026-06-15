# Confguration changes for CachyOS Daily Driving
Using [GNU stow](https://www.gnu.org/software/stow/manual/stow.html) for organization and easy install.
Just run the command below to distribute the dotfiles. (Assuming this repo is in a folder under your home directory. Otherwise, additional modifications will need to be made)

TODO: not sure why but the .desktop file in dot-local/share/applications is not propagating

```
stow --dotfiles .
```
## Major Changes
- Added (PaperWM)[https://github.com/paperwm/PaperWM] from gnome extensions

## Commands ran
```
# Removes the emoji keybind for super + period which conflicts with PaperWM keybinds 
gsettings set org.freedesktop.ibus.panel.emoji hotkey "[]"
```
