#!/bin/bash

DIR=~/.conky-lua-rings

if [ -d "$DIR" ]; then
  echo "You already have conky-lua-rings installed."
  echo "You'll need to run uninstall.sh if you want to uninstall."
  exit
fi

if [ ! -d "$DIR" ]; then
  mkdir -p $DIR
  cp -r ./* $DIR
  echo "[Desktop Entry]" > conky.desktop
  echo "Type=Application" >> conky.desktop
  echo "Name=Conky" >> conky.desktop
  echo "Exec=$HOME/.conky-lua-rings/startconky.sh" >> conky.desktop
  echo "StartupNotify=false" >> conky.desktop
  echo "Terminal=false" >> conky.desktop
  echo "Icon=conky" >> conky.desktop
  echo "Categories=System;Monitor;" >> conky.desktop
  mkdir -p ~/.config/autostart/
  cp ./conky.desktop ~/.config/autostart/
  rm conky.desktop
  echo "Conky-lua-rings is now installed."
fi
