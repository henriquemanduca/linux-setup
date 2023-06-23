#!/bin/bash

# Script to create an SSH key
echo "Creating new key SSH ED25519..."
read -p "Enter your GitHub mail: " email

ssh-keygen -t ed25519 -C $email

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

echo "Configuration completed"

# echo "Your public key is:"
# cat ~/.ssh/id_ed25519.pub

# Script to add the key to a GitHub account
ssh_key_path="~/.ssh/id_ed25519.pub"

# Read the GitHub username
read -sp "Enter your GitHub username: " github_username

# Read the GitHub personal access token
read -sp "Enter your GitHub personal access token: " github_token

# Add the SSH key to GitHub
echo "Adding SSH key to GitHub..."
curl -u "$github_username:$github_token" -X POST -d "{\"title\":\"$(hostname)\",\"key\":\"$(cat $ssh_key_path)\"}" "https://api.github.com/user/keys"
echo "SSH key added successfully!"