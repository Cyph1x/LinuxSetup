#!/bin/bash

set -e

curl -L -o "/tmp/cuda-repository-pin-600" "https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2404/x86_64/cuda-ubuntu2404.pin"
sudo mv "tmp/cuda-repository-pin-600" "/etc/apt/preferences.d/cuda-repository-pin-600"

./helpers/install-deb-from-url.sh "https://developer.download.nvidia.com/compute/cuda/12.8.0/local_installers/cuda-repo-ubuntu2404-12-8-local_12.8.0-570.86.10-1_amd64.deb"

sudo cp /var/cuda-repo-ubuntu2404-12-8-local/cuda-*-keyring.gpg /usr/share/keyrings/

sudo apt update -y
sudo apt -y install cuda-toolkit-12-8

