#!/usr/bin/bash

echo -e "\e[31m[WARNING] Make sure that you have installed WPS Office before installation!!!\e[0m\n"

if [[ ! "$UID" == 0 ]]; then
  echo -e "\e[33mAdministrator permissions are required\e[0m"
  sudo su
fi

DIR=$(dirname "$(readlink -f "$0")")
FONTS_DIR="/usr/share/fonts/wps-office"

mv -v "$DIR"/fonts/*.ttf "$FONTS_DIR"

echo -e "\e[33mInstall Fonts Successfully!!!\e[0m"
