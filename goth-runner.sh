#!/bin/bash

while true
do
    echo "_________________"
    echo "|   GOTH TOOLS  |"
    echo "|===============|"
    echo "|1. cmd-executer|"
    echo "|2. show-files  |"
    echo "|3. exit        |"
    echo "|===============|"

    read -r choice

    if [ "$choice" = 1 ]; then 

        chmod +x tools/cmd-executer.sh

        ./tools/cmd-executer.sh

    elif [ "$choice" = 2 ]; then

        chmod +x tools/show-file.sh

        ./tools/show-file.sh

    elif [ "$choice" = 3 ]; then

        echo "goodbye"
        exit 0

    else

        echo "please type in a choice between 1-3"

    fi
done