#!/bin/bash

set -e

./docker-install.sh

./helpers/install-deb-from-url.sh "https://desktop.docker.com/linux/main/amd64/docker-desktop-amd64.deb"