#!/bin/bash

# Prepares NEO VIM editor

# Necessary deps
. $MODULE_FOLDER/$SELECTED_DISTRO/install.sh

# Creates the configuration folder for vifm
vifm -c q

sudo cp -r $CONFIGS_FOLDER/vifm/* $WORKDIR/.config/vifm

