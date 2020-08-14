#!/bin/bash


#change file name extensions


if  [[ $# -ne 2  ]]; then   # number of args
	
	echo " you enter $1 args, need 2 args  "

fi

for f in *"$1"; do      # $1 first args
	base=$(basename "$f" "$1") # delete extension=$1 von file $f 
	mv "$f" "${base}$2"   # add extension args2:$2 to $f
done
