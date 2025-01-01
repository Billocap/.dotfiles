#!/bin/bash

sudo apt install figlet jq -y

install() {
  sudo apt install ssh wget man ffmpeg unzip -y
  
  # Install all deps
  MANIFEST_JSON=$MODULES_FOLDER/manifest.json
  MODULES=$(jq ".[\"$SELECTED_DISTRO\"][]" $MANIFEST_JSON)
  
  for RAW_MODULE in $MODULES; do
    MODULE=${RAW_MODULE//\"/""}
    MODULE_FOLDER=$MODULES_FOLDER/$MODULE
    . $MODULE_FOLDER/init.sh
  done
}
