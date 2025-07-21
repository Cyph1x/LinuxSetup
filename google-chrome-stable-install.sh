#!/bin/bash

set -e

sudo apt install wget -y

mkdir /tmp/chrome-stable-install

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O /tmp/chrome-stable-install/install.deb

sudo apt --fix-broken install -y
sudo dpkg -i /tmp/chrome-stable-install/install.deb

rm -rf /tmp/chrome-stable-install
