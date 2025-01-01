#!/bin/bash

# Installs C related deps
. $MODULE_FOLDER/$SELECTED_DISTRO/install.sh

git clone "https://github.com/zoelabbb/conio.h.git"

sudo cp $MISC_FOLDER/conio.h /usr/include/
