#!/bin/sh
set -e

SCRIPT=`basename "$0"`

# NOTE: git is required, but it should already be preinstalled on Ubuntu 16.0
#echo "[INFO] [${SCRIPT}] Setup git"
#sudo apt install -y git

# Using Docker CE directly provided by Docker
echo "[INFO] [${SCRIPT}] Setup docker"
cd /tmp/
curl -fsSL https://get.docker.com | CHANNEL=stable sudo sh -
sudo usermod -a -G docker ubuntu
