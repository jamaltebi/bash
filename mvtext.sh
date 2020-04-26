#!/bin/bash



#verify argument

[[ $# -ne 2 ]] && { echo " need two arguments"; exit 1 ;}

for i in *"$1"; do
	mv "$i"  "${i/%$1/$2}";
done	

exit 0
