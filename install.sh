#!/bin/bash

sudo apt install figlet -y

# Necessary variables
HOME_FOLDER=~/.dotfiles
MODULES_FOLDER=$HOME_FOLDER/modules
CONFIGS_FOLDER=$HOME_FOLDER/configs
FONTS_FOLDER=$HOME_FOLDER/fonts
MISC_FOLDER=$HOME_FOLDER/misc

ln -s $CONFIGS_FOLDER/.gitconfig ~/.gitconfig

install() {
  sudo apt install ssh wget man ffmpeg unzip -y

  # Install all deps
  MODULES=$(ls -f $MODULES_FOLDER -I . -I ..)
  for MODULE in $MODULES; do
    . $MODULES_FOLDER/$MODULE
  done
 }

sudo cp $FONTS_FOLDER/figlet/* /usr/share/figlet

. $HOME_FOLDER/screen "install"

