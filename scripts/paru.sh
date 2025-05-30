#!/usr/bin/env bash

pacman -S --noconfirm --needed git base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si --noconfirm
cd ..
rm -rf paru