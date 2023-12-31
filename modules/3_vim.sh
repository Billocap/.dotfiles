#!/bin/bash

# Prepares VIM editor

# Install vim
sudo apt install vim -y

# Install vim plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Applyes the configs
ln -s $CONFIGS_FOLDER/.vimrc ~/.vimrc

# Install the plugins
# vim +PlugInstall +qall
