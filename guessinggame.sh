#!/usr/bin/env bash
# File: guessinggame.sh


function guessloop {

while [[ $guess -ne $file_number ]]
do
	if [[ $guess -lt $file_number ]]
	then
	    echo "Your guess is lower. Please enter a number again:"
	    read guess
	     
 	elif [[ $guess -gt $file_number ]]
 	then
 	    echo "Your guess is greater. Please enter a number again:"
 	    read guess
 	fi
done
echo "Congratulations! Your answer is correct!"
}

echo "Plese enter how many files are in the current directory:"
read guess
file_number=$(ls | wc -l)
guessloop guess file_number
