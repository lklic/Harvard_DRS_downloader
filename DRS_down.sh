#!/bin/sh
## usage: 
## ./ss_down.sh filename.csv &
## the ampersand "&" at the end is to run in the background
## existing columns should be: fileURL,newFileName


csv_file=$1
while IFS=, read -r url name status; do

if [[ ! -e "images/$name.jpg" ]]
    then
  wget -q -O "images/$name.jpg" "$url"
    case $? in
    0) status='File downloaded';;
    8) status='File not found or server error';;
    *) status='Download failed';;
    esac
  printf '%s,%s,%s\n' "$name" "$url" "$status"
    fi
done <"$1" > results.csv
