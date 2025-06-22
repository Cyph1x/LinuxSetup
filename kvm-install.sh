#!/bin/bash

sudo apt --fix-broken install -y
sudo apt-get install bridge-utils cpu-checker libvirt-clients libvirt-daemon-system -y

./qemu-install.sh

sudo usermod -aG kvm $USER
