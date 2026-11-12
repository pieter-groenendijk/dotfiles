#!/bin/bash

echo "installing packages"
echo "installing 'comptop' packages"

echo "installing repos"
sudo xbps-install --sync \
  void-repo-multilib \
  void-repo-multilib-nonfree \
  void-repo-nonfree \

if [ $? -ne 0 ]
then
  echo "failed to install packages: failde to install repos"
  exit 1
fi

echo "installing packages"
sudo xbps-install --sync \
  docker \
  docker-compose \
  vim \
  nodejs \
  grub-x86_64-efi \
  acpi \
  intel-gpu-tools \
  intel-ucode \
  intel-video-accel \
  linux-firmware \
  mesa-dri \
  mesa-vulkan-intel \
  blueman \
  bluez \
  libspa-bluetooth \
  NetworkManager \
  pipewire \
  brightnessctl \
  gammastep \
  nautilus \
  vulkan-loader \
  seatd \
  socklog-void \
  sway \
  wofi \
  firefox \
  foot \
  dbus \
  chezmoi \
  curl \
  flatpak
if [ $? -ne 0 ]
then
    echo "failed to install packages"
    exit 1
fi
