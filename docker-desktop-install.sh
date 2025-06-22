#!/bin/bash

./docker-install.sh

sudo apt-get update -y

sudo apt install wget -y

mkdir /tmp/docker-desktop-install

wget https://desktop.docker.com/linux/main/amd64/docker-desktop-amd64.deb -O /tmp/docker-desktop-install/install.deb

sudo apt --fix-broken install -y
sudo apt-get install /tmp/docker-desktop-install/install.deb -y

rm -rf /tmp/docker-desktop-install