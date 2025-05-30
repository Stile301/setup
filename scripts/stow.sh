#!/usr/bin/bash

if ! command -v stow &> /dev/null; then
  paru -S --noconfirm --needed  stow
fi

rm -rf ~/.zshrc

echo "Creating symlinks..."
stow -R -d setup/rc -t ~ .

