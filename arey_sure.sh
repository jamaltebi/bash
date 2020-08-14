#!/bin/bash

echo -n " are you sure (Y/N) ?"

# answred: where ye store the answer($answer) of the user

answred=

while [[ ! $answred  ]]; do
	read -r -n 1 -s answer

	if [[ $answer = [Yy] ]]; then 
		answred="yes"

	elif [[ $answer = [Nn] ]]; then
		answred="no"

	fi

done

printf "\n %s \n" $answred

