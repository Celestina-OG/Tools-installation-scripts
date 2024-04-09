#!/bin/bash

# Add PostgreSQL repository to package sources
sudo sh -c 'echo "deb https://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'

# Download and add PostgreSQL GPG key
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

# Update package index
sudo apt-get update

# Install PostgreSQL and its dependencies
sudo apt-get -y install postgresql postgresql-contrib

# Start and enable PostgreSQL service
sudo systemctl start postgresql
sudo systemctl enable postgresql

# Optionally, secure the PostgreSQL installation by setting a password for the default 'postgres' user
sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD 'password';"

echo "PostgreSQL has been installed and started successfully."

