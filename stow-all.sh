#!/bin/bash
# stow-all.sh

stow --dotfiles --adopt -t ~/ home

# User scripts
chmod +x user-programs/*
stow --dotfiles --adopt -t /usr/local/bin/ user-programs

# system-wide configs
# sudo stow --dotfiles -t / rootdir

# SDDM themes (symlinks will break)
# sudo rsync -a rootdir/usr/share/sddm/themes/sugar-dark/ /usr/share/sddm/themes/sugar-dark/
