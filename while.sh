#!/bin/bash

# simple guessing game

#get a random number <100

target=$(($RANDOM % 100))

#Initialize the user's guess

guess=

while [[ $guess -eq $target ]]; do

	read -p "take a guess:" guess

	if [[ $guess -lt $target ]]; then
		echo " higher"
	elif [[ $guess -gt $target ]]; then
		echo "lower!"

	else
		echo " you found it"

	fi

echo "end of while "

done

echo "reached end of script"

exit 0

