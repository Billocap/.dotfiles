#!/bin/bash

. $MODULE_FOLDER/$SELECTED_DISTRO/install.sh

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash

source $WORKDIR/.nvm/nvm.sh

nvm install 20 && nvm use 20

# Install Bun
curl -fsSL https://bun.sh/install | bash
