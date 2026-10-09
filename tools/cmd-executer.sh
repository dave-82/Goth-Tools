#!/bin/bash

echo "you are signed in as: $USER"


if [ "$USER" = "root" ]; then

    echo "WARNING!!! you are using root, if you would not want to use root please run this command regularly without sudo"
else 
    echo "you are running in a regular non sudo account, please use sudo if your command requres superuser privilages"    
fi

while true
do   
    echo "would you like to type in a command to run?"
    read -r answer

    if [ "$answer" = "y" ]; then 

        echo "what command would you like to type?"
        read -r command

        echo "running command!"

        bash -c "$command"

        echo "command ran!"

    elif [ "$answer" = "n" ]; then
        echo "adios!"
        exit


    else
        echo "please enter y or n"
    fi
done

