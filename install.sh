#!/bin/bash

# Install necessary deps
apt-get install curl zsh
# Install oh-my-zsh
curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh; zsh
# Sets zsh as default shell
sudo usermod --shell $(which zsh) $USER

# Setups the plain theme
ln -s ~/.dotfiles/themes/plain.zsh-theme ~/.oh-my-zsh/themes/plain.zsh-theme
# Intall the plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
# Copies the config
rm ~/.zshrc
ln -s ~/.dotfiles/.zshrc ~/.zshrc