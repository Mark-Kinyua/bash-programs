#!/bin/bash

until [ "$input" = "no" ]
	do
	echo "Here is a list of all files in the current directory"
	ls
	echo "Enter the file name that you would like to alter its permissions"
	read filename
	echo "What permission would you want to give it?"
	echo "777 - enables user to read and write"
	echo "644 - enables only owner to read and write"
	echo "655 - enables owner to read and write but cannot execute"
	read permission
	if [ "$permission" = "777" ] || ["$permission" = "644"] || ["$permission" = "655" ]
	then
		chmod $permission $filename
		echo "$filename permissions have been altered Successfully"
		echo "Would you like to change permission to any other file?(yes or no)"
		read input
	else
	echo "Sorry, we can't do that permission as of now"
	fi
done

	echo "You typed:" $input
