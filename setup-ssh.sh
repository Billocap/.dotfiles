#!/bin/bash

# Prepares the ssh session

# Gets the file name for the key
if [ $1 ]; then
  FILE_NAME=$1
else
  read -p "Enter a file name: " FILE_NAME
fi

if [ $2 ]; then
  EMAIL=$2
else
  read -p "Enter email: " EMAIL
fi

# Sets up the appropriate names
PRIVATE_FILE=~/.ssh/$FILE_NAME
PUBLIC_FILE=$PRIVATE_FILE.pub

# Starts the ssh-agent if not already started
[ ! $(pgrep -x ssh-agent) ] && eval $(ssh-agent -s)

# Creates the files if they don't exist
if [ ! -f $PRIVATE_FILE ]; then
  [ ! -d ~/.ssh ] && mkdir .ssh

  ssh-keygen -t ed25519 -C $EMAIL -f $PRIVATE_FILE -P ""  
fi

# Adds the private file to the ssh-agent
ssh-add $PRIVATE_FILE
