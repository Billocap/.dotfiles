#!/bin/bash

# Prepares NEO VIM editor

# Necessary deps
. $MODULE_FOLDER/$SELECTED_DISTRO/install.sh

NVIM_BUILD_DIR=$WORKDIR/neovim

git clone https://github.com/neovim/neovim

cd $NVIM_BUILD_DIR

git checkout stable && sudo make install

cd ..

sudo rm -rf $WORKDIR/.local/share/nvim

git clone https://github.com/Billocap/nvchad-config $WORKDIR/.config/nvim

sudo rm -rf $NVIM_BUILD_DIR

