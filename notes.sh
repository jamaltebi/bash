
#!/bin/bash 



#get date
date="$(date)"

#use var in exec the script as parameter
topic=$1

#filename where to save
filename="${HOME}/${topic}notes.txt"

# read note from input3
read -p " your input_data " noteVar

if [[ $noteVar ]]; then
    echo "$date: $noteVar" >>  "$filename"
    echo "your Notes "$noteVar" are saved to $filename"
else 
    echo "the input is empty, no input" >&2

fi
