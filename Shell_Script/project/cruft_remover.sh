#!/bin/bash
#Author: VibishnatahnG
#Date Created: 30/12/2024
#Last Modified: 30/12/2024
#Description: Cruft Script
#Usage: Used to remove files older than 15 days

read -p "Enter Directory for Cruft: " dir
read -p "Enter the Days to Consider Cruft: " days

readarray -t files < <(find $dir -type f -mtime "+$days")
echo total file found is: ${#files[@]}
total_file=0
for file in "${files[@]}"; do
    rm -i "$file"
    if [ !-f $file] 
    then 
        echo "$file is Deleted"
        total_file=$(( total_file + 1 ))
    fi
done

echo "Total File Deleted is $total_file..Please find the List of processed file Below:"
for file in "${files[@]}"; do echo $file; done;