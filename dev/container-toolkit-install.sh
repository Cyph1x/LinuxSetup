#!/bin/bash

set -e

bash ./dev/docker-install.sh

sudo apt-get update -y
sudo apt install curl -y

curl -fsSL https://nvidia.github.io/libnvidia-container/gpgkey | sudo gpg --dearmor -o /usr/share/keyrings/nvidia-container-toolkit-keyring.gpg \
  && curl -s -L https://nvidia.github.io/libnvidia-container/stable/deb/nvidia-container-toolkit.list | \
    sed 's#deb https://#deb [signed-by=/usr/share/keyrings/nvidia-container-toolkit-keyring.gpg] https://#g' | \
    sudo tee /etc/apt/sources.list.d/nvidia-container-toolkit.list

sudo apt update -y
sudo apt install nvidia-container-toolkit nvidia-container-toolkit-base libnvidia-container-tools libnvidia-container1 -y

sudo nvidia-ctk runtime configure --runtime=docker

sudo systemctl restart docker
