#!/bin/bash

# Main repository
# https://github.com/ryanoasis/nerd-fonts/

# Install necessary packages
sudo apt-get install -y curl unzip #font-manager

mkdir nerd-fonts

echo "Get Meslo? (y/n)"
read response
if [[ "$response" == "y" || "$response" == "Y" ]]; then
  curl -SL -O "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Meslo.zip"
  unzip -C Meslo.zip -d nerd-fonts/
  rm Meslo.zip
fi

# FiraMono
echo "Get FiraMono? (y/n)"
read response
if [[ "$response" == "y" || "$response" == "Y" ]]; then
  curl -SL -O "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/FiraMono.zip"
  unzip FiraMono.zip -d nerd-fonts/
  rm FiraMono.zip
fi

# FiraCode
echo "Get FiraCode? (y/n)"
read response
if [[ "$response" == "y" || "$response" == "Y" ]]; then
  curl -SL -O "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/FiraCode.zip"
  unzip FiraCode.zip -d nerd-fonts/
  rm FiraCode.zip
fi

echo "Unpacking completed"
