#!/bin/bash

# To check whether the number is even or odd

echo "Please enter the number: "
read num

if [ $((num%2)) -eq 0 ]; then 
	echo "The number you have entered is even."
else	
	echo "The number you have entered is odd."
fi
