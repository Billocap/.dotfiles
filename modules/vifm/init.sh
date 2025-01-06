#!/bin/bash

# Prepares NEO VIM editor

# Necessary deps
. $MODULE_FOLDER/$SELECTED_DISTRO/install.sh

FM_FOLDER=$WORKDIR/.config/vifm

if [ -d $FM_FOLDER ]; then
  sudo cp -r $CONFIGS_FOLDER/vifm $FM_FOLDER
fi
