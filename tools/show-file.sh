#!/bin/bash

echo "enter a directory path to go to!"

read -r path

if cd "$path"; then

    echo "you are at $path"
    echo "what file would you like to see?"

    read -r file_to_see

    if [ -f "$file_to_see" ]; then 
        cat "$file_to_see"
        echo
        echo "------------"
        echo "file exists!"

    else
        echo "file doesnt exist, sorry"
        exit 1
    fi

    
else
    echo "directory doesnt exist"
    exit 1
fi