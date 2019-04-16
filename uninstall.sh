#!/bin/bash

DIR=~/.conky-lua-rings

if [ -d "$DIR" ]; then
  rm -rf $DIR
  rm ~/.config/autostart/conky.desktop
  echo "Conky-lua-rings is now removed."
  exit
fi

if [ ! -d "$DIR" ]; then
  echo "You have not installed conky-lua-rings."
  echo "You'll need to run install.sh if you want to install."
fi
