#!/bin/bash

sudo emerge --sync


# Options:
# --ask: Ask for permissions
# --noreplace: Only build when no version installed
#
# Sway: Tiling Window Manager: https://packages.gentoo.org/packages/gui-wm/sway
# Wofi: (Application) Launcher: https://packages.gentoo.org/packages/gui-apps/wofi
# Foot: Terminal Emulator: https://packages.gentoo.org/packages/gui-apps/foot
sudo emerge \
    --ask \
    --noreplace \
    sway \
    wofi \
    foot