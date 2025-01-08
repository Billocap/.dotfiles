#!/bin/bash

# Installs lua
. $MODULE_FOLDER/$SELECTED_DISTRO/install.sh

# Installs luarocks
wget https://luarocks.org/releases/luarocks-3.11.1.tar.gz

tar zxpf $WORKDIR/luarocks-3.11.1.tar.gz

cd $WORKDIR/luarocks-3.11.1

bash ./configure && make && sudo make install

cd $WORKDIR

