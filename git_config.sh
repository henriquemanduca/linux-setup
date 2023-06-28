#!/bin/bash

# Install necessary packages
sudo apt-get update 
sudo apt-get install git

echo "Setting up the .gitconfig"

# Please provide your username and email
read -p "Enter your name: " name
read -p "Enter your e-mail: " email

git config --global user.name "$name"
git config --global user.email "$email"

git config --global alias.ci commit
git config --global alias.st status
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.lg 'log --oneline --decorate --graph'
git config --global alias.pu push
git config --global alias.pl pull
git config --global alias.me merge
git config --global alias.sa stash
git config --global alias.cl clone

echo "The .gitconfig has been configured"
