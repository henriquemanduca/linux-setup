#!/bin/bash

sudo apt-get update
sudo apt-get install -y zsh

sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# p10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

THEME="powerlevel10k/powerlevel10k"

if grep -q "ZSH_THEME" ~/.zshrc; then
  sed -i "s/ZSH_THEME=.*/ZSH_THEME=\"$THEME\"/" ~/.zshrc
else
  echo "ZSH_THEME=\"$THEME\"" >> ~/.zshrc
fi

echo "ZSH installed with $THEME theme"
