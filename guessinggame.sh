#!/usr/bin/env bash
# File: guessinggame.sh


nmfilesguess() {
    num_files=$(ls -A|wc -l)
    while true;
    do
        echo -e "Hello!\n Please guess the number of files present in the current working directory!\n (guess must be a postive integer)"
        read  num_guessed
        if [[ $num_guessed ]] && [ $num_guessed -eq $num_guessed 2>/dev/null ]
            then
                if [ $num_guessed -lt $num_files ]
                then
                    echo -e "Try Again!\n Your guess is less than the number of files present in directory"
                continue;
                elif [ $num_guessed -gt $num_files ]
                then
                    echo -e "Sorry! Try Again!\n Your guess is greater than the number of files present in directory"
                continue;
                else
                    echo -e " Congratulations!\n You guessed correct number!"
                break;
                fi
            else
                echo -e  "Wrong input! Please write integer input only"
        fi
    done
}
nmfilesguess
