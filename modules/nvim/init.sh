#!/bin/bash

# Prepares NEO VIM editor

# Necessary deps
. $MODULE_FOLDER/$SELECTED_DISTRO/install.sh

git clone https://github.com/neovim/neovim

cd neovim

git checkout stable && sudo make install

cd ..

rm -rf .local/share/nvim

git clone https://github.com/Billocap/nvchad-config $WORKDIR/.config/nvim
