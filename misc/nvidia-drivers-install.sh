#!/bin/bash

set -e

sudo apt --fix-broken install -y
sudo apt update -y

# Going to need curl
sudo apt install curl -y

TEMP_DIR="/tmp/nvidia-driver-install"
echo "Temporary directory: $TEMP_DIR"

mkdir -p "$TEMP_DIR"
trap 'rm -rf "$TEMP_DIR"' EXIT

DISTRO=ubuntu2404
ARCH=x86_64
ARCH_EXT=amd64

# Install kernel headers
sudo apt install linux-headers-$(uname -r)

# Network repository installation
curl -L -o "$TEMP_DIR/cuda-keyring.deb" https://developer.download.nvidia.com/compute/cuda/repos/$DISTRO/$ARCH/cuda-keyring_1.1-1_all.deb
sudo apt install -y "$TEMP_DIR/cuda-keyring.deb"
sudo apt update -y

# Install the kernel modules
sudo apt install nvidia-open -y

echo "Installation complete."
