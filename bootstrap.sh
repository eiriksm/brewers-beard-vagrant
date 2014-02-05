#!/usr/bin/env bash

apt-get update

# Make it possible to add repository.
apt-get install python-software-properties -y

# Install cutting edge node.js
add-apt-repository ppa:chris-lea/node.js-devel

# Refresh stuff.
apt-get update

# Install some stuff.
apt-get install build-essential g++ vim git curl nodejs -y

# Just override node alias.
echo "alias node='node --harmony'" >> /home/ubuntu/.bash_profile
