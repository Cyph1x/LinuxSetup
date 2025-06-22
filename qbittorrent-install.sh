#!/bin/bash

sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable -y
sudo apt update -y

sudo apt --fix-broken install -y
sudo apt install qbittorrent -y
