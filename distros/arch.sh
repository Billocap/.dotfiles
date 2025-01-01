#!/bin/bash

sudo pacman -Sy figlet

install() {
  sudo pacman -Sy ssh wget man ffmpeg unzip
  
  # Install all deps
  MODULES=$(cat $MODULES_FOLDER/manifest)
  
  for MODULE in $MODULES; do
    MODULE_FOLDER=$MODULES_FOLDER/$MODULE
    . $MODULE_FOLDER/init.sh
  done
}
