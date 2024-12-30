#!/bin/bash


#!/bin/bash

while getopts "nf:" param
do
  case "$param" in
    f) file="$OPTARG" ;;
    n) set -x ;;
  esac
done

case "$file" in
  *.gz) gzip -d "$file" ;;
  *.zip) unzip "$file" ;;
  *.tar.gz) tar xzf "$file" ;;
  *) echo "Unknown filetype" ;;
esac

if [[ "$$(uname)" == "Linux" ]]
then
  echo "Using Linux"
fi





#!/bin/bash

if ! grep -q backup=true.* "~/.myconfig"
then
  echo 'Backup not enabled in $HOME/.myconfig, exiting'
  exit 1
fi

tar -cf  “$1/my_backup_$(date +%d-%m-%Y_%H-%M-%S).tar” "$HOME"