#!/bin/bash

# Installs all the packages needed by the installer itself
sudo apt install figlet jq ssh -y

pre_install() {
  sudo apt install wget man ffmpeg unzip -y
}

