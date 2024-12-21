#!/bin/bash

# Installs C related deps
sudo pacman -Sy cmake notcurses gdb

git clone "https://github.com/zoelabbb/conio.h.git"

sudo cp $MISC_FOLDER/conio.h /usr/include/
