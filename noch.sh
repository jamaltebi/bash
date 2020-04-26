#!/bin/bash



if [[ ! $1 ]]; then
	echo " need one argument" >&2
	exit 1
fi



while read -r; do
	if [[ $REPLY =~ $1 ]]; then
		echo "$REPLY"
		continue	
	fi
done

exit 0
