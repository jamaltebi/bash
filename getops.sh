#!/bin/bash


while getopts ":ac:d:e" option; do  #":" #est placé en première position dans la liste des options
					#getopts n affichera pas de message d'erreur.

	echo " getops found the option : $option "
	case $option in 
		a)
#			echo " getops found the option $option"
			echo "execution of cmd option: $option"
			echo " index of next option: $OPTIND "
			;;
		c)
#			echo " getops found the option : $option"
			echo " index of the next option : $OPTIND"
			echo " argument found : $OPTARG"
			;;
		d)
			echo " index of the next option: $OPTIND"
			echo "- argument founded :$OPTARG "
			;;
		:)							# when the argument dont exists	
			echo " the option $option require an argument" # Lorsque largument d'une option est absent, la variable option est initialisée avec le caractère ":"
			exit 1
			;;
		\?)
			echo " getops found the option: $option" # For incorrecte option
			echo " ${OPTARG} :option invalide"
			exit 1
			;;


	esac
done

echo " analyse is completed"
echo " before Shift"
echo " list all argument : $*"
echo " index of the next  option : $OPTIND"
echo " after Shift"
shift $(( OPTIND-1 ))
echo "list all argument : $*"
exit 0

