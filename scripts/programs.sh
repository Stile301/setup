#!/usr/bin/env bash

# Prompt user for input
read -p "Install Visual Studio Code? (y/n) " install_code
read -p "Install GIMP? (y/n) " install_gimp
read -p "Install Discord? (y/n) " install_discord
read -p "Install Telegram? (y/n) " install_telegram
read -p "Install VLC? (y/n) " install_vlc
read -p "Install Bitwarden? (y/n) " install_bitwarden
read -p "Install Steam? (y/n) " install_steam
read -p "Install Godot? (y/n) " install_godot
read -p "Install Spotify? (y/n) " install_spotify
read -p "Install Blender? (y/n) " install_blender
read -p "Install Obsidian? (y/n) " install_obsidian
read -p "Install Brave Browser? (y/n) " install_brave

install_code=${install_code:-y}
install_gimp=${install_gimp:-y}
install_discord=${install_discord:-y}
install_telegram=${install_telegram:-y}
install_vlc=${install_vlc:-y}
install_bitwarden=${install_bitwarden:-y}
install_steam=${install_steam:-y}
install_godot=${install_godot:-y}
install_spotify=${install_spotify:-y}
install_blender=${install_blender:-y}
install_obsidian=${install_obsidian:-y}
install_brave=${install_brave:-y}

# Function to install a package if not already installed
install_package() {
  local package_name=$1
  if ! pacman -Qq | grep -q "^$package_name$"; then
    if [[ "$package_name" == *"-bin" ]]; then
      paru -S --noconfirm --needed "$package_name"  # Use yay for AUR packages
    else
      sudo pacman -S --noconfirm --needed "$package_name"  # Use pacman for official packages
    fi
  fi
}

# Install applications
if [ "${install_code,,}" == "y" ]; then
  install_package "visual-studio-code-bin"  # AUR package for VS Code
fi

if [ "${install_gimp,,}" == "y" ]; then
  install_package "gimp"
fi

if [ "${install_discord,,}" == "y" ]; then
  install_package "discord"
fi

if [ "${install_telegram,,}" == "y" ]; then
  install_package "telegram-desktop"
fi

if [ "${install_vlc,,}" == "y" ]; then
  install_package "vlc"
fi

if [ "${install_bitwarden,,}" == "y" ]; then
  install_package "bitwarden"
fi

if [ "${install_steam,,}" == "y" ]; then
  install_package "steam"
fi

if [ "${install_godot,,}" == "y" ]; then
  install_package "godot"
fi

if [ "${install_spotify,,}" == "y" ]; then
  install_package "spotify-launcher"
fi

if [ "${install_blender,,}" == "y" ]; then
  install_package "blender"
fi

if [ "${install_obsidian,,}" == "y" ]; then
  install_package "obsidian"
fi

if [ "${install_brave,,}" == "y" ]; then
  install_package "brave-bin"  # AUR package for Brave
fi

echo "Installation complete."
