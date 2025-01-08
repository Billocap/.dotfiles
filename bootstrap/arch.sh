#!/bin/bash

# Installs all the packages needed by the installer itself
sudo pacman -Sy figlet jq ssh

pre_install() {
  sudo pacman -Sy wget man ffmpeg unzip
}

