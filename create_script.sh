#!/bin/bash


# is there any argument

if [[ ! $1 ]] ; then
	echo "missing argument"
	exit 1

fi

scriptname="$1"
bindir="${HOME}/bin"
filename="${bindir}/${scriptname}"


if  [[ -e $filename ]] ; then
	echo "file ${filename} already exists"
	exit 1

fi
# type of the scriptname(command)

if type "$scriptname" 2> /dev/null 2>&1; then  # redirect error given by type to dev/null
	echo " there is aleady a command with name ${scriptname}"
	exit 1
fi

# check bin directory

if [[ ! -d $bindir ]]; then
	#if not create bin dicrectory
	if mkdir "$bindir"; then
		echo "created ${bindir}"  # we write this {} inside the string"
	else
		echo " could not create ${bindir}"
		exit 1
	fi
fi

#create s script with a single line
echo "#!/bin/bash" >"$filename"

# add executable permission
chmod u+x "$filename"

#Open with Editor

if [[ $EDITOR ]]; then
	$EDITOR "$filename"
else
	echo "script created; not starting editor because \$EDITOR is not set"

fi


echo " end of script"
exit 0
