#!/bin/bash

set -e

# this install requires flatpak
bash ./apps/flatpak-install.sh

flatpak install flathub com.vysp3r.ProtonPlus -y
