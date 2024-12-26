#!/bin/bash

# Installs NASM
sudo apt update && sudo apt install nasm -y

# Installs Elixir
sudo apt install erlang-dev elixir -y

# Installs Python 3
sudo apt install python3 pipx -y

sudo pipx install black
