#!/usr/bin/env bash
if ! pacman -Qq | grep -q "zsh"; then
  paru -S --noconfirm --needed  "zsh"
fi

# Change the default shell to Zsh
chsh -s $(which zsh)

# Install Oh My Zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
  echo "Oh My Zsh is already installed."
fi

echo "Zsh and Oh My Zsh installation complete."