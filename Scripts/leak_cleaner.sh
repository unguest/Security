#!/bin/bash

if [[ "$1" == "" ]]
then
echo "Please specify a file to clean."
else

while read file; do

IFS=';' read -ra my_array <<< "$file"

for line in "${my_array[@]}"
do
    IFS=' ' read -ra word <<< "$line"
   
    for word2 in "${word[@]}"
    do
    
	if [[ "$word2" == *":"*]]
	then
	touch $1".cleaned"
	echo "$word2" >> $1."cleaned"
	fi
    
    done
done


done < $1

fi
