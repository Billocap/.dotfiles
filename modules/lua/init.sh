#!/bin/bash

# Installs C related deps
. $MODULE_FOLDER/$SELECTED_DISTRO/install.sh

wget https://luarocks.org/releases/luarocks-3.11.1.tar.gz

tar zxpf luarocks-3.11.1.tar.gz

cd luarocks-3.11.1

./configure && make && sudo make install
