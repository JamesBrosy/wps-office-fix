#!/usr/bin/bash

echo -e "\e[31m[WARNING] Make sure that you have installed WPS Office before installation!!!\e[0m\n"

if [[ ! "$UID" == 0 ]]; then
  echo -e "\e[33mAdministrator permissions are required\e[0m"
  sudo su
fi

DIR=$(dirname "$(readlink -f "$0")")
LIB_DIR="/opt/kingsoft/wps-office/office6"

if [ ! -d "$LIB_DIR" ]; then
  echo -e "\e[31m[WARNING] Please install WPS Office First!!!\e[0m\n"
  exit 1
fi

install -Dm755 "$DIR"/libfreetype/$(uname -m)/libfreetype.so.6.* -t "$LIB_DIR"

echo "Making link libfreetype.so.6.* -> libfreetype.so.6"
cd "$LIB_DIR" && ln -s libfreetype.so.6.* libfreetype.so.6

echo -e "\e[33mInstall Libfreetype Successfully!!!\e[0m"