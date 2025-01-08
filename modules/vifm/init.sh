#!/bin/bash

# Necessary deps
. $MODULE_FOLDER/$SELECTED_DISTRO/install.sh

# Necessary variables
VIFM_TAR_FILE=$MISC_FOLDER/vifm-0.13.tar.bz2
VIFM_TAR_TARGET=$WORKDIR/vifm-0.13
VIFM_CONFIG_DIR=$WORKDIR/.config/vifm

# Builds Vifm
tar -xvjf $VIFM_TAR_FILE -C $VIFM_TAR_TARGET --strip-components=1

sudo chmod -R ugo+rwx $VIFM_TAR_TARGET

cd $VIFM_TAR_TARGET

sudo ./configure && sudo make && sudo make install

cd $WORKDIR

# Creates the configuration folder for vifm
vifm -c q

# Copies the configuration files for vifm
sudo cp -r $CONFIGS_FOLDER/vifm/* $VIFM_CONFIG_DIR

# Allows user to edit the configuration files
sudo chmod -R ugo+rw $VIFM_CONFIG_DIR

sudo rm -rf $VIFM_TAR_TARGET

