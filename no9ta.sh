#!/bin/bash

echo " give your note"

read  -r nota

if [[  $nota -gt 16 ]]; then
	echo " tres bien"
elif [[ $nota -gt 14 ]]; then
	echo " bien"
else
	echo " not in programm counted "
fi




