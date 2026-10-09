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

    if [ "$answer" = "y" ]; 
    then 

        echo "what command would you like to type?"
        read -r command

        echo "running command!"

        bash -c "$command" 
        exit_code=$?
        
        if [ "$exit_code" -eq 0 ];
        then

            echo "command ran!"

        else

            echo "error: command didnt run." 
            echo "exit code $exit_code"
            echo "error code: 00001"
        
        fi

        

    elif [ "$answer" = "n" ]; 
    then
        echo "Thanks for using GOTH tools!"
        exit


    else
        echo "please enter y or n"
    fi
done

