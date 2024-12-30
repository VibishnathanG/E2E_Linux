#!/bin/bash
#Author: VibishnatahnG
#Date Created: 30/12/2024
#Last Modified: 30/12/2024
#Description: Folder Script
#Usage: Used to organize folder




read -p "Enter the directory to organize: " dir


if [[ ! -d "$dir" ]]; then
    echo "Error: Directory '$dir' does not exist."
    exit 1
fi


while IFS= read -r file; do

    [[ ! -f "$dir/$file" ]] && continue
    case "$file" in
        *.jpg|*.jpeg|*.png)
            subfolder="images"
            ;;
        *.doc|*.docx|*.txt|*.pdf)
            subfolder="documents"
            ;;
        *.xls|*.xlsx|*.csv)
            subfolder="spreadsheets"
            ;;
        *.sh)
            subfolder="scripts"
            ;;
        *.zip|*.tar|*.tar.gz|*.tar.bz2)
            subfolder="archives"
            ;;
        *.ppt|*.pptx)
            subfolder="presentations"
            ;;
        *.mp3)
            subfolder="audio"
            ;;
        *.mp4)
            subfolder="video"
            ;;
        *)
            subfolder="other" 
            ;;
    esac
    if [[ "$subfolder" != "other" ]]; then
        mkdir -p "$dir/$subfolder"
        mv "$dir/$file" "$dir/$subfolder/"
        echo "Moved $file to $subfolder/"
    else
        echo "Leaving $file in current folder."
    fi
done < <(ls "$dir")

echo "File organization complete."

