#!/bin/bash

# Prepares NEO VIM editor

# Necessary deps
. $MODULE_FOLDER/$SELECTED_DISTRO/install.sh

# Builds Vifm
tar -xvjf $MISC_FOLDER/vifm-0.13.tar.bz2

sudo chmod -R ugo+rwx $WORKDIR/vifm-0.13

cd $WORKDIR/vifm-0.13

sudo . configure && sudo make && sudo make install

cd $WORKDIR

# Creates the configuration folder for vifm
vifm -c q

sudo cp -r $CONFIGS_FOLDER/vifm/* $WORKDIR/.config/vifm

sudo chmod -R ugo+rw $WORKDIR/.config/vifm
