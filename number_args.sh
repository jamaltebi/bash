#!/bin/bash


# "$#": number of arguments

if [[ $# -ne 2 ]]; then  # number of arg >2
	echo " need 2 argument, you enter ${#} arguments"
	exit 1
fi


lenght1=${#1}
lenght2=${#2}


if [[ lenght1 -gt lenght2 ]]; then
	echo " $1 is the longest"

elif [[ lenght1 -eq lenght2 ]]; then
	echo  " lenght is equal "

else
        echo "$2 is the longest"	

fi

exit 0
