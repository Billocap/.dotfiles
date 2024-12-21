#!/bin/bash

sudo pacman -Sy figlet

install() {
  sudo pacman -Sy ssh wget man ffmpeg unzip

  # Install all deps
  MODULES=$(cat $MODULES_FOLDER/arch/manifest)
  for MODULE in $MODULES; do
    . $MODULES_FOLDER/arch/deps/$MODULE.sh
  done
}
