#!/bin/bash

# Set the installation directory
INSTALL_DIR="$HOME/miniconda3"

# Set the Miniconda3 download URL
CONDA_URL="https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh"

# Download Miniconda3 installer
echo "Downloading Miniconda3 installer..."
wget -q $CONDA_URL -O miniconda.sh

# Install Miniconda3
echo "Installing Miniconda3..."
bash miniconda.sh -b -p $INSTALL_DIR

# Add Miniconda3 to the system PATH
echo "Adding Miniconda3 to the system PATH..."
echo "export PATH=\"$INSTALL_DIR/bin:\$PATH\"" >> ~/.bashrc

echo "Miniconda3 installation completed. Run source ~/.bashrc && conda update --all -y"
