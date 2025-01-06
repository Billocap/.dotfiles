#!/bin/bash

# Necessary global variables
WORKDIR=~

[ ! -d $WORKDIR ] && WORKDIR=$(pwd)

HOME_FOLDER=$WORKDIR/.dotfiles
MODULES_FOLDER=$HOME_FOLDER/modules
CONFIGS_FOLDER=$HOME_FOLDER/configs
FONTS_FOLDER=$HOME_FOLDER/fonts
MISC_FOLDER=$HOME_FOLDER/misc
DISTRO_FOLDER=$HOME_FOLDER/bootstrap
TOOLS_FOLDER=$HOME_FOLDER/tools

# Copies git configs
ln -s $CONFIGS_FOLDER/.gitconfig $WORKDIR/.gitconfig

# Gets the selected distro to install
SELECTED_DISTRO=$1

[ -z $SELECTED_DISTRO ] && SELECTED_DISTRO="any"

# Gets the bootstrap installer for the selected distro
DISTRO_INSTALLER=$DISTRO_FOLDER/$SELECTED_DISTRO.sh

[ ! -f $DISTRO_INSTALLER ] && DISTRO_INSTALLER=$DISTRO_FOLDER/any.sh

. $DISTRO_INSTALLER

# Copies all figlet fonts
sudo cp $FONTS_FOLDER/figlet/* /usr/share/figlet

install() {
  # Install all deps
  MANIFEST_JSON=$MODULES_FOLDER/manifest.json
  MODULES=$(jq ".[\"$SELECTED_DISTRO\"][]" $MANIFEST_JSON)
  
  for RAW_MODULE in $MODULES; do
    MODULE=${RAW_MODULE//\"/""}
    MODULE_FOLDER=$MODULES_FOLDER/$MODULE
    . $MODULE_FOLDER/init.sh
  done
}

case $SELECTED_DISTRO in
  "arch") install;;
  *) . $TOOLS_FOLDER/screen.sh "install";;
esac
