#!/bin/bash

# Prepares ZSH shell

# Necessary variables
ZSH_FOLDER=$WORKDIR/.oh-my-zsh
THEMES_FOLDER=$ZSH_FOLDER/themes
PLUGINS_FOLDER=$ZSH_FOLDER/custom/plugins

# Installs zsh and sets it as the default shell
sudo pacman -Sy zsh
curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
sudo usermod --shell $(which zsh) $USER

# Installs the theme for zsh
[ -f $THEMES_FOLDER/plain.zsh-theme ] && rm $THEMES_FOLDER/plain.zsh-theme
ln -s $MISC_FOLDER/zsh/plain.zsh-theme $THEMES_FOLDER/plain.zsh-theme

# Installs the necessary plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $PLUGINS_FOLDER/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions $PLUGINS_FOLDER/zsh-autosuggestions
git clone https://github.com/supercrabtree/k $PLUGINS_FOLDER/k

# Applies the changes
[ -f $WORKDIR/.zshrc ] && rm $WORKDIR/.zshrc
ln -s $CONFIGS_FOLDER/.zshrc $WORKDIR/.zshrc
