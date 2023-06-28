#!/bin/bash

# Install necessary packages
sudo apt-get install curl

# download the latest version of KIND
echo "Installing KIND..."
curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.18.0/kind-linux-amd64
chmod +x ./kind
sudo mv ./kind /usr/local/bin/kind

# download the latest version of Skaffold
echo "Installing Skaffold..."
curl -Lo skaffold https://storage.googleapis.com/skaffold/releases/latest/skaffold-linux-amd64
sudo install skaffold /usr/local/bin/
rm skaffold
