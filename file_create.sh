#!/bin/bash
echo "Enter File Name "
read filename

touch $filename

read -p "This is an empty file. Would you like to write to it? Enter a or b:  " input

if [ "$input" = "a" ]; then
	read -p "enter vi to use vi   " editor

	if [ "$editor" = "vi" ]; then
		vi $filename
		echo "$filename saved successfully"
	else
		echo "Wrong input. Your file has been created"
	fi

elif [ "$input" = "n" ]; then
	echo "$filename saved successfully!"

else
	echo "Wrong input"

fi

chmod 777 $filename

