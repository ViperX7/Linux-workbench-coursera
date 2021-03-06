#!/bin/env bash

f_count=$(ls |wc -l)
ask(){
    echo Guess the number of files and folders in current directory
    echo -n "[ > ] "
    read user_inp
}
ask
while [[ $user_inp -ne $f_count ]]
do
    if [[ $user_inp -lt $f_count ]]
    then
        echo "Guess too low try a larger Number: "
    else
        echo "Guess too High try a lower Number: "
    fi
    
    ask
done

echo Your Guess is correct
