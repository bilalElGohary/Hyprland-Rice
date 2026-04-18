#!/bin/bash

# Update before install pkgs:
sudo pacman -Syu
sudo pacman -Su
yay -Syu
yay -Su

# All pkgs i use here: 
sudo pacman -S vim 
sudo pacman -S gcc g++ gdb
sudo pacman -S ...
yay -S cbonasi

# Simple notification:
notify-send -u critical "SetUp Script" "the script finshed installing all pkgs." -i dialog-information

