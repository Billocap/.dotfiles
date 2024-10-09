#!/bin/bash

# Installs Meilisearch

# Add Meilisearch package
echo "deb [trusted=yes] https://apt.fury.io/meilisearch/ /" | sudo tee /etc/apt/sources.list.d/fury.list

# Update APT and install Meilisearch
sudo apt update && sudo apt install meilisearch -y

# Installs NASM
sudo apt install nasm -y

# Installs Elixir
sudo apt install erlang-dev elixir -y
