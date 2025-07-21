#!/bin/bash

set -e

sudo apt install wget -y

mkdir /tmp/cuda-toolkit-install

wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2404/x86_64/cuda-ubuntu2404.pin -O /tmp/cuda-toolkit-install/cuda-ubuntu2404.pin
sudo mv /tmp/cuda-toolkit-install/cuda-ubuntu2404.pin /etc/apt/preferences.d/cuda-repository-pin-600

wget wget https://developer.download.nvidia.com/compute/cuda/12.8.0/local_installers/cuda-repo-ubuntu2404-12-8-local_12.8.0-570.86.10-1_amd64.deb -O /tmp/cuda-toolkit-install/install.deb

sudo apt --fix-broken install -y
sudo dpkg -i /tmp/cuda-toolkit-install/install.deb

sudo cp /var/cuda-repo-ubuntu2404-12-8-local/cuda-*-keyring.gpg /usr/share/keyrings/

sudo apt-get update -y
sudo apt-get -y install cuda-toolkit-12-8

rm -rf /tmp/cuda-toolkit-install
