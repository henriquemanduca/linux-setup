#!/bin/bash

# Main repository
# https://github.com/ryanoasis/nerd-fonts/

# Install necessary packages
sudo apt-get install -y curl unzip #font-manager

sudo mkdir /usr/share/fonts/truetype/meslo /usr/share/fonts/truetype/firamono /usr/share/fonts/truetype/firacode

echo "Get Meslo? (y/n)"
read response
if [[ "$response" == "y" || "$response" == "Y" ]]; then
  curl -SL -O "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Meslo.zip"
  mkdir -p nerd-fonts/meslo
  unzip -C Meslo.zip -d nerd-fonts/meslo
  rm Meslo.zip
  sudo cp ./nerd-fonts/meslo/*.ttf /usr/share/fonts/truetype/meslo/
fi

# FiraMono
echo "Get FiraMono? (y/n)"
read response
if [[ "$response" == "y" || "$response" == "Y" ]]; then
  curl -SL -O "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/FiraMono.zip"
  mkdir -p nerd-fonts/firamono
  unzip FiraMono.zip -d nerd-fonts/firamono
  rm FiraMono.zip
  sudo cp ./nerd-fonts/firamono/*.otf /usr/share/fonts/truetype/firamono
fi

# FiraCode
echo "Get FiraCode? (y/n)"
read response
if [[ "$response" == "y" || "$response" == "Y" ]]; then
  curl -SL -O "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/FiraCode.zip"
  mkdir -p nerd-fonts/firacode
  unzip FiraCode.zip -d nerd-fonts/firacode
  rm FiraCode.zip
  sudo cp ./nerd-fonts/firacode/*.ttf /usr/share/fonts/truetype/firacode
fi

fc-cache -fv

echo "Unpacking completed"
