#!/bin/bash


# write character in line

if [[ ! $1 ]]; then
	echo " need argument"
	exit 1
fi

length=$1

char=+

if [[ $2 ]]; then
	char=$2

fi

line=

for ((i=0; i<length; i++)); do

	line="${line}${char}"  # compteur
done

printf " %s \n " $line
exit 0
