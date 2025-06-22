#!/bin/bash

# sudo dpkg --add-architecture i386
# sudo apt-get update -y
# sudo apt install steam -y

# easier but potentially has bugs
#sudo snap install steam

# recommened method
sudo apt install wget -y

mkdir /tmp/steam-install

wget https://cdn.fastly.steamstatic.com/client/installer/steam.deb -O /tmp/steam-install/install.deb

sudo apt --fix-broken install -y
sudo dpkg -i /tmp/steam-install/install.deb

rm -rf /tmp/steam-install