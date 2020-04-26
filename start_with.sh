#!/bin/bash

#sum () {


start_with_a() {
	[[ $1 == [aA]* ]];
}

if start_with_a atest; then
	echo "yes"
else
	echo " no"
fi
	
