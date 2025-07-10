#!/bin/bash

# sudo snap install --classic code
mkdir /tmp/vscode-install

curl -L -o /tmp/vscode-install/install.deb "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64"

sudo apt --fix-broken install -y
sudo dpkg -i /tmp/vscode-install/install.deb

rm -rf /tmp/vscode-install
