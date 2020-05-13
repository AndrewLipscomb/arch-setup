#!/bin/bash

#set -e

cd "$(dirname $0)"

ln -s $(realpath .fehbg) ~/.fehbg
ln -s $(realpath .nanorc) ~/.nanorc
ln -s $(realpath .pam_environment) ~/.pam_environment
ln -s $(realpath .xinitrc) ~/.xinitrc
ln -s $(realpath bin) ~/bin

ln -s $(realpath .config/i3) ~/.config/i3
ln -s $(realpath .config/picom) ~/.config/picom
ln -s $(realpath .config/systemd) ~/.config/systemd
ln -s $(realpath .config/termite) ~/.config/termite

ln -s $(realpath backgrounds) ~/backgrounds
