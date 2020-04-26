#!/bin/bash

#count the line in cmd(file)

declare -i count=0

cmd_count () {
	while read -r  ; do
		((++count))
	done
	echo $count
}

$1 |cmd_count

#cmd_count

#echo "$count"
