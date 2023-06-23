#!/bin/bash

sudo add-apt-repository ppa:papirus/papirus
sudo apt-get update
sudo apt-get install papirus-icon-theme papirus-folders

papirus-folders -C breeze --theme Papirus-Dark

echo "Papirus Icon theme installed"
