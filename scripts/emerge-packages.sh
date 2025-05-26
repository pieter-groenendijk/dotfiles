#!/bin/bash

sudo emerge --sync


# Options:
# --ask: Ask for permissions
# --noreplace: Only build when no version installed
#
# sway: Tiling Window Manager: https://packages.gentoo.org/packages/gui-wm/sway
    # wofi: (Application) Launcher: https://packages.gentoo.org/packages/gui-apps/wofi
    # foot: Terminal Emulator: https://packages.gentoo.org/packages/gui-apps/foot
# Audio:
    # pipewire
    # wireplumber
# Firmware
    # linux-firmware
# Bluetooth
    # bluez
# Fonts
    # Jetbrains Mono
sudo emerge \
    --ask \
    --noreplace \
    sway \
    wofi \
    foot \
    pipewire \
    wireplumber \
    linux-firmware \
    bluez \
    media-fonts/jetbrains-mono

sudo rc-update add bluetooth default