#!/bin/bash
# TODO: All packages, and maybe I should do some setup as well?

echo "installing packages"
echo "installing 'compjeuterpc' packages"

echo "updating before installing packages"
sudo pacman --sync --refresh --sysupgrade

echo "installing repos & AUR helper"
# TODO: clone its repo and install like that
# sudo pacman --sync yay

yay --sync \
  linux \
  linux-firmware \
  amd-ucode \
  base-devel \
  cosmic \
  networkmanager \
  bluez \
  bluez-utils \
  sudo \
  gst-libav \
  gst-plugins-bad \
  gst-plugins-ugly \
  man-db \
  man-pages \
  chezmoi \
  git \
  docker \
  docker-compose \
  nodejs \
  npm \
  zed \
  vim \
  localwp \
  pandoc-cli \
  texlive \
  helium-browser-bin \
  inkscape \
  discord \
  spotify-launcher \
  lutris \
  steam \
  gamemode \
  lib32-gamemode \
  gamescope \
  obs-studio \
