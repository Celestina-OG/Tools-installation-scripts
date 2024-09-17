#!/bin/bash

# Update package list
echo "Updating package list..."
sudo apt update

# Install software-properties-common if not already installed
echo "Installing software-properties-common..."
sudo apt install -y software-properties-common

# Add Ansible PPA (Personal Package Archive)
echo "Adding Ansible PPA..."
sudo add-apt-repository --yes --update ppa:ansible/ansible

# Install Ansible
echo "Installing Ansible..."
sudo apt install -y ansible

# Check Ansible version
echo "Checking Ansible version..."
ansible --version
