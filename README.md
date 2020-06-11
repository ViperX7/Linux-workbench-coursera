# The Unix Workbench
> Utkarsh Yadav | Jun 11 2020
---

## Description:  
> make a program called *guessinggame.sh*. This program should continuously ask the user to guess the number of files in the current directory, until they guess the correct number. The user is informed if their guess is too high or too low. Once the user guesses the correct number of files in the current directory they should be congratulated.

**Number of lines in guessinggame.sh:** 
22

**Build date:** Thu 11 Jun 2020 07:28:25 PM IST

```bash
#!/bin/env bash

f_count=$(ls |wc -l)

echo Guess the number of files and folders in current directory
echo -n "[ > ] "
read user_inp

while [[ $user_inp -ne $f_count ]]
do
    if [[ $user_inp -lt $f_count ]]
    then
        echo "Guess too low try a larger Number: "
    else
        echo "Guess too High try a lower Number: "
    fi

    echo -n "[ > ] "
    read user_inp
done

echo Your Guess is correct
```