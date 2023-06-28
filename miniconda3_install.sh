#!/bin/bash

# Install necessary packages
sudo apt-get install -y curl

# Set the installation directory
INSTALL_DIR="$HOME/miniconda3"
CONDA_URL="https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh"

# Download Miniconda3 installer
echo "Downloading Miniconda3 installer..."
curl -SL $CONDA_URL -o miniconda.sh

# Install Miniconda3
echo "Installing Miniconda3..."
bash miniconda.sh -b -p $INSTALL_DIR

# Add Miniconda3 to the system PATH
echo "Adding Miniconda3 to the system PATH..."
echo "export PATH=\"$INSTALL_DIR/bin:\$PATH\"" >> ~/.bashrc

echo "Miniconda3 installation completed" 
echo "Run source ~/.bashrc && conda update --all -y"
