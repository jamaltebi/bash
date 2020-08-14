#!/bin/bash


declare -i start=0
declare -i step=1
declare reverse=""

usage () {
	cat << END

Usage

count [-r] [-b arg] [-s arg] other_args
	-b: number to begin with (defalut 0)
	-s: step(default 1)
	-h: show help
	-r: reverse the count

END

}

isnumber () {

	declare -r num_re='^[0-9]+$' 
	declare -r num_oct='^0(.+)'
	if [[ $1  =~ $num_re  ]]; then
		if [[ $1 =~ $num_oct ]]; then 
			echo " thi is not a number , do you mean ${BASH_REMATCH[1]}"; exit 0 ; 
			return 1
		fi
	else
		echo " this $1 is not a number"
		return 1
	fi

	return 0
}

while getopts ":hb:s:r" option; do
	case $option in 
		r)
			reverse="yes"
			;;

		h)
			usage
			exit 0
			;;


		s)
			isnumber ${OPTARG} || { echo " ${OPTARG} is not a number" >&2 ; exit 1;}
			step="${OPTARG}"
			;;
		b)
			isnumber ${OPTARG}  || { echo " this ${OPTARG} is not a number" >&2 ; exit 1;}
			start="${OPTARG}"
			;;
		:)
                        echo " Option -${OPTARG} is missing argument"
                        exit 1
                        ;;

		\?)
			echo "invalide option"
			exit 1
			;;
	esac
done

echo "compoleted"

shift $(( OPTIND -1 ))  # shift to the other argument(not given in option)


[[ $1 ]] || { echo " missing argument " >&2; usage ;exit 1; }
isnumber $1
declare end_calc="$1"


if [[ ! $reverse ]]; then
	for (( i=start; i <= end_calc ; i+=step )); do
		echo $i
	done
else
	for (( i=end_calc; i >= start ; i-=step )); do
		echo $i
	done
fi

echo " all prog completed"
exit 0




