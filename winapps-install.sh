#!/bin/bash

set -e

# Docker is the selected backend so docker must be installed
#./docker-install.sh

sudo apt --fix-broken install -y
sudo apt install curl dialog freerdp3-x11 git iproute2 libnotify-bin netcat-openbsd -y

mkdir -p ~/.config/winapps
cp winapps/compose.yaml ~/.config/winapps/compose.yaml 
cp winapps/winapps.conf ~/.config/winapps/winapps.conf

# who knows maybe the it was running from a previous install
sudo docker compose --file ~/.config/winapps/compose.yaml down

sudo docker compose --file ~/.config/winapps/compose.yaml up -d

# begin installer
bash <(curl https://raw.githubusercontent.com/winapps-org/winapps/main/setup.sh)
