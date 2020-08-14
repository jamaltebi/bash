#!/bin/bash

# delete alle line before the first line matching
# the string given as first argument

if [[ ! $1 ]]; then
        echo " need one argument" >&2
        exit 1
fi

# read ap to  the first string

while read -r; do  # read the standar output(file)
        if [[ $REPLY =~ $1 ]]; then  # if the REPLY contains the arg1($1)
                echo " $REPLY"
                break
        fi
done

# print the rest of the file

while read -r; do
        echo "$REPLY"

done

exit 0

