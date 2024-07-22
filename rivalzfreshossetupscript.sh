#!/bin/bash

# Installs the necessary dependencies for nomachine
sudo apt install wget apt-transport-https gnupg2 software-properties-common -y
sudo apt install -y htop -y

# Download nomachine
wget https://download.nomachine.com/download/8.12/Linux/nomachine_8.12.12_4_amd64.deb

# Install nomachine
sudo apt install -f ./nomachine_8.12.12_4_amd64.deb

# Installs the necessary dependencies for Rivalz.ai rClient
sudo apt install -y wget

# Downloads the Rivalz.ai rClient AppImage
wget https://api.rivalz.ai/fragmentz/clients/rClient-latest.AppImage -O rClient-latest.AppImage

# Makes the AppImage executable
chmod +x rClient-latest.AppImage

# Creates the Documents directory if it doesn't exist
sudo -u $USER mkdir -p /home/$USER/Documents

# Moves the AppImage to the user's Documents directory
sudo mv rClient-latest.AppImage /home/$USER/Documents/rClient-latest.AppImage

# Changes the owner of the rClient to the specified user
sudo chown $USER:$USER /home/$USER/Documents/rClient-latest.AppImage

echo "Installation complete.Nomachine Rivalz.ai rClient have been installed. You can now connect via Nomachine SSH."
