#!/bin/bash

# Remove bad docker.list if exists
sudo rm -f /etc/apt/sources.list.d/docker.list

# Setup Docker APT repo correctly
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg lsb-release -y

sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

UBUNTU_CODENAME=$(lsb_release -cs)
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $UBUNTU_CODENAME stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

echo "Verify installation with docker info. You should see relevant information about your docker engine."
