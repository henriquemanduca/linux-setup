!/bin/bash

# Install necessary packages to use HTTPS repositories
sudo apt-get update
sudo apt-get install -y curl apt-transport-https ca-certificates gnupg-agent software-properties-common

# Add official Docker GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add Docker stable repository
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Install Docker Engine
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

sudo usermod -aG docker ${USER}
su - ${USER}
