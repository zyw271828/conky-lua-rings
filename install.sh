#!/bin/bash

DIR=~/.conky-lua-rings

if [ -d "$DIR" ]; then
  echo "You already have conky-lua-rings installed."
  echo "You'll need to run uninstall.sh if you want to uninstall."
  exit
fi

if [ ! -d "$DIR" ]; then
  command -v git >/dev/null 2>&1 || {
    echo "Error: git is not installed."
    exit 1
  }
  env git clone --depth=1 https://github.com/zyw271828/conky-lua-rings.git "$DIR" || {
    echo "Error: git clone of conky-lua-rings failed."
    exit 1
  }
  echo "[Desktop Entry]" > $DIR/conky.desktop
  echo "Type=Application" >> $DIR/conky.desktop
  echo "Name=Conky" >> $DIR/conky.desktop
  echo "Exec=$DIR/startconky.sh" >> $DIR/conky.desktop
  echo "StartupNotify=false" >> $DIR/conky.desktop
  echo "Terminal=false" >> $DIR/conky.desktop
  echo "Icon=conky" >> $DIR/conky.desktop
  echo "Categories=System;Monitor;" >> $DIR/conky.desktop
  mkdir -p ~/.config/autostart/
  cp $DIR/conky.desktop ~/.config/autostart/
  rm $DIR/conky.desktop
  echo "Conky-lua-rings is now installed."
  echo "Please run $DIR/startconky.sh to start."
fi
