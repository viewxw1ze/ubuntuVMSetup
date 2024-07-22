#!/bin/bash

# Installs the necessary dependencies for nomachine
sudo apt install wget apt-transport-https gnupg2 wget software-properties-common -y
sudo apt install -y htop -y

# Download nomachine
wget https://download.nomachine.com/download/8.12/Linux/nomachine_8.12.12_4_amd64.deb

# Install nomachine
sudo apt install -f ./nomachine_8.12.12_4_amd64.deb

echo "Installation complete. Nomachine have been installed. You can now connect via Nomachine SSH."
