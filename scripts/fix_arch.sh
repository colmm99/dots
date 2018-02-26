#!/bin/bash
#
# Fix Arch fresh install when it can't update
#
# Link: https://forum.manjaro.org/t/xorg-mesa-with-libglvnd-support/19366/188
#

sudo pacman -Rns steam-manjaro
sudo pacman -Syu mhwd --force
sudo pacman -Rns lib32-glu
sudo pacman -Rns lib32-glu lib32-glew
sudo pacman -Rns lib32-glu lib32-glew lib32-mesa-demos
sudo pacman -Syu
sudo pacman -Syu --force
sudo pacman -Syyu
