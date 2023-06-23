#!/bin/bash

# Install Node Version Manager (nvm)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

nvm install 16.13.2
nvm install 16.18

# Set this version of Node.js as default
nvm alias default 16.18

echo "Node Version Manager (nvm) installed"
