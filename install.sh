#!/bin/bash

# Necessary variables
WORKDIR=~

[ ! -d $WORKDIR ] && WORKDIR=$(pwd)

HOME_FOLDER=$WORKDIR/.dotfiles
MODULES_FOLDER=$HOME_FOLDER/modules
CONFIGS_FOLDER=$HOME_FOLDER/configs
FONTS_FOLDER=$HOME_FOLDER/fonts
MISC_FOLDER=$HOME_FOLDER/misc
DISTRO_FOLDER=$HOME_FOLDER/distros

ln -s $CONFIGS_FOLDER/.gitconfig $WORKDIR/.gitconfig

DISTRO_INSTALLER=$DISTRO_FOLDER/$1.sh

[ ! -f $DISTRO_INSTALLER ] && DISTRO_INSTALLER=$DISTRO_FOLDER/any.sh

. $DISTRO_INSTALLER

sudo cp $FONTS_FOLDER/figlet/* /usr/share/figlet

. $HOME_FOLDER/screen.sh "install"
