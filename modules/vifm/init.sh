#!/bin/bash

# Prepares NEO VIM editor

# Necessary deps
. $MODULE_FOLDER/$SELECTED_DISTRO/install.sh

# Creates the configuration folder for vifm
vifm -c q

FM_FOLDER=$WORKDIR/.config/vifm

if [ -d $FM_FOLDER ]; then
  VIFM_CONFIGS=$CONFIGS_FOLDER/vifm
  
  for FILE in $(ls -a $VIFM_CONFIGS); do
    sudo cp $VIFM_CONFIGS/$FILE $FM_FOLDER/$FILE
  done
fi
