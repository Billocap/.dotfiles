#!/bin/bash

sudo apt install figlet -y

install() {
  sudo apt install ssh wget man ffmpeg unzip -y

  # Install all deps
  MODULES=$(cat $MODULES_FOLDER/any/manifest)
  for MODULE in $MODULES; do
    . $MODULES_FOLDER/any/deps/$MODULE.sh
  done
}
