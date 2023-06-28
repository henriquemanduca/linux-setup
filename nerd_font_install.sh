#!/bin/bash

# Install necessary packages
sudo apt-get install -y curl unzip font-manager

URL="https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.0/Meslo.zip"
FILE="Meslo.zip"

curl -O "$URL"

if [ $? -ne 0 ]; then
  echo "Integrity check failed."
  exit 1
fi

mkdir nerd-fonts

unzip "$FILE" -d nerd-fonts/
rm "$FILE"

echo "Unpacking completed"
