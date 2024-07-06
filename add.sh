#!/bin/bash
while true;do
	echo "Maths Application"
	read -p "Please enter a number" num
	case $num in
		1)
			echo "Pressed 1"
			;;
		*)
			echo "You did not press 1"
			;;
	esac
done	
