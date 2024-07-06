#!/bin/bash

read -p "Enter the day of the week " day

case $day in
	0)
		echo "Sunday"
		;;
	1)
		echo "Monday"
		;;
	2)
		echo "Tuesday"
		;;
	3)
		echo "Wednesday"
		;;
	4)
		echo "Thursday"
		;;
	5)
		echo "Friday"
		;;
	6)
		echo "Saturday"
		;;	

	*)
		echo "You have entered incorrect day of the week."
		;;
esac
