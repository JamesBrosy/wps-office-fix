#!/usr/bin/bash

echo -e "\e[31m[WARNING] Make sure that you have installed WPS Office before installation!!!\e[0m\n"

if [[ ! "$UID" == 0 ]]; then
  echo -e "\e[33mAdministrator permissions are required\e[0m"
  sudo su
fi

DIR=$(dirname "$(readlink -f "$0")")
FONTS_DIR="/usr/share/fonts/wps-office"

if [ ! -d "$FONTS_DIR" ]; then
  echo -e "\e[31m[WARNING] Please install WPS Office First!!!\e[0m\n"
  exit 1
fi

echo "Installing fonts..."
cd "${DIR}/fonts" || exit 1
install -Dm644 ./*.tt* -t "$FONTS_DIR"
for dir in *; do
  if [ -d "${dir}" ]; then
    install -Dm644 "${dir}"/* -t "/usr/share/fonts/${dir}"
  fi
done

echo -e "\e[33mInstall Fonts Successfully!!!\e[0m"
