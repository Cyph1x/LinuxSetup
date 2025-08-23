#!/bin/bash

set -e

bash ./dev/docker-install.sh

bash ./helpers/install-deb-from-url.sh "https://desktop.docker.com/linux/main/amd64/docker-desktop-amd64.deb"