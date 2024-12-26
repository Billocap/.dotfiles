#!/bin/bash

# Prepares NEO VIM editor

# Build Neo VIM

# Necessary deps
sudo apt install gettext -y

git clone https://github.com/neovim/neovim

cd neovim 

git checkout stable && sudo make install

cd ..

rm -rf .local/share/nvim

git clone https://github.com/Billocap/nvchad-config $WORKDIR/.config/nvim
