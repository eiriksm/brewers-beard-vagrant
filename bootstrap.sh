#!/usr/bin/env bash

apt-get update

# Make it possible to add repository.
apt-get install python-software-properties -y

# Add couchdb repo.
add-apt-repository ppa:couchdb/stable -y

# Refresh stuff.
apt-get update

# Install some stuff.
apt-get install build-essential g++ vim git curl couchdb -y

## Install nvm.
curl https://raw.githubusercontent.com/creationix/nvm/v0.7.0/install.sh | HOME=/home/vagrant sh

# Load nvm.
. "/home/vagrant/.nvm/nvm.sh"

# Install .11
nvm install 0.11

# Just override node alias and add nvm preference.
mv /home/vagrant/.profile /home/vagrant/.bash_profile
echo "alias node='node --harmony'" >> /home/vagrant/.bash_profile
echo "nvm use 0.11" >> /home/vagrant/.bash_profile

# Fix some permissions.
chown vagrant:vagrant /home/vagrant/.bash_profile
chown vagrant:vagrant /home/vagrant/.nvm
