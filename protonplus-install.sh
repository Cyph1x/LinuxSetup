#!/bin/bash

set -e

# this install requires flatpak
./flatpak-install.sh

flatpak install flathub com.vysp3r.ProtonPlus -y
