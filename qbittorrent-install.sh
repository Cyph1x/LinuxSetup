#!/bin/bash

set -e

# sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable -y
# sudo apt update -y

# sudo apt --fix-broken install -y
# sudo apt install qbittorrent -y

# Flatpak install
./flatpak-install.sh

flatpak install flathub org.qbittorrent.qBittorrent -y