#!/bin/bash

set -e

sudo apt update -y
sudo apt upgrade -y

# nvidia drivers
./nvidia-drivers-install.sh

# google chrome (stable)
./google-chrome-stable-install.sh

# bitwarden
./bitwarden-install.sh

# discord
./discord-install.sh

# flatpak
./flatpak-install.sh

# steam
# ./steam-install.sh

# vscode
./vscode-install.sh

# protonplus
# ./protonplus-install.sh

# kvm
./kvm-install.sh

# docker
./docker-install.sh

# docker desktop
./docker-desktop-install.sh

# tlp
# ./tlp-install.sh

# solaar
# ./solaar-install.sh

# qbittorrent
./qbittorrent-install.sh

# touchpad bs
./touchpad-setup.sh