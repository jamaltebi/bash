#!/bin/bash


drawline () {  

	declare char="-"
	declare line=""


	for (( i=0; i<$1; ++i )); do
		 line="${line}${char}"  #  ensembler les tiri - 
	done
	
	printf "%s\n"  $line  # print ------ ensemble

}


[[  $1 ]] || { echo " missing argument"; exit 0; }

declare -i leng="${#1} + 4"  # lenght of the first argument

drawline leng

printf "| %s |\n" "$1"

drawline leng




