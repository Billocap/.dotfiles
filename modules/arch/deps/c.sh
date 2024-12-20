#!/bin/bash

# Installs C related deps
sudo apt install build-essential libssl-dev cmake libncurses5-dev libncursesw5-dev gdb -y

git clone "https://github.com/zoelabbb/conio.h.git"

sudo cp $MISC_FOLDER/conio.h /usr/include/
