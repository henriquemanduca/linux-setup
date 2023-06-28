#!/bin/bash

# Install necessary packages
sudo apt-get install curl

# download the latest version of lazydocker
curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash
