#!/bin/bash

# Node related modules
sudo pacman -Sy nodejs

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash

# Install Bun
curl -fsSL https://bun.sh/install | bash 
