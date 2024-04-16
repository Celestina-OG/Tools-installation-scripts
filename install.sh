#!/bin/bash

sudo apt update -y

# Install packages
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

# Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add Docker repository
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" -y

sudo apt update -y

# Install Docker
sudo apt install -y docker-ce

# Check if Docker is installed successfully
if [ -x "$(command -v docker)" ]; then
    echo "Docker has been successfully installed."
    
    # Add the current user to the docker group
    sudo usermod -aG docker $USER
    echo "The current user has been added to the docker group."
else
    echo "Failed to install Docker. Please check the installation manually."
fi

# Reload the shell configuration to apply changes
source ~/.bashrc
