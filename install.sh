#!/bin/bash

echo "[*] Installing necessary dependencies ..."
sudo apt-get install curl zsh
echo "[*] Installing and configuring zsh ..."
curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
sudo usermod --shell $(which zsh) $USER

echo "[*] Configuring zsh theme ..."
[ -f ~/.oh-my-zsh/themes/plain.zsh-theme ] && rm ~/.oh-my-zsh/themes/plain.zsh-theme
ln -s ~/.dotfiles/themes/plain.zsh-theme ~/.oh-my-zsh/themes/plain.zsh-theme
echo "[*] Installing zsh plugins ..."
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
echo "[*] Configuring zsh ..."
[ -f ~/.zshrc ] && rm ~/.zshrc
ln -s ~/.dotfiles/.zshrc ~/.zshrc
echo "[*] Install complete."
