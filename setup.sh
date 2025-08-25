#!/bin/bash

set -e

sudo apt update -y
sudo apt upgrade -y

# nvidia drivers
bash ./misc/nvidia-drivers-install.sh

# google chrome (stable)
bash ./apps/google-chrome-stable-install.sh

# bitwarden
bash ./apps/bitwarden-install.sh

# git config
bash ./dev/git-config.sh

# discord
bash ./apps/discord-install.sh

# flatpak
bash ./apps/flatpak-install.sh

# steam
# bash ./apps/steam-install.sh

# vscode
bash ./apps/vscode-install.sh

# protonplus
# bash ./apps/protonplus-install.sh

# kvm
bash ./misc/kvm-install.sh

# docker
bash ./dev/docker-install.sh

# docker desktop
bash ./apps/docker-desktop-install.sh

# tlp
# bash ./misc/tlp-install.sh

# solaar
bash ./apps/solaar-install.sh

# Gnome Extensions Manager
bash ./apps/extension-manager-install.sh

# qbittorrent
bash ./apps/qbittorrent-install.sh

# linux tools
bash ./dev/linux-tools-install.sh

# Gnome config
bash ./misc/gnome-config.sh

# touchpad bs
bash ./misc/touchpad-setup.sh