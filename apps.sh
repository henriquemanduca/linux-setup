!/bin/bash

# Install necessary packages
sudo apt-get update

# Apps
# 1- Preload optimizes application startup by preloading frequently used libraries into memory
# 2- Timeshift creates and restores system snapshots, allowing users to revert their system to a previous state if a issue occur
sudo apt-get install preload timeshift