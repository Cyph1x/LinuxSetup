#!/bin/bash

# if nvidia drivers need to build anything the environment needs to be setup
sudo apt --fix-broken install -y
sudo apt install build-essential pkg-config libglvnd-dev -y

sudo ubuntu-drivers list

sudo ubuntu-drivers install

sudo dpkg --add-architecture i386
sudo apt update -y
sudo apt install libnvidia-gl-570:i386 -y

