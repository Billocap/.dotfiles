#!/bin/bash

sudo apt install figlet -y

install() {
  sudo apt install ssh wget man ffmpeg unzip -y
  
  # Install all deps
  MODULES=$(cat $MODULES_FOLDER/manifest)
  
  for MODULE in $MODULES; do
    MODULE_FOLDER=$MODULES_FOLDER/$MODULE
    . $MODULE_FOLDER/init.sh
  done
}
