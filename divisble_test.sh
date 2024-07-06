#!/bin/bash

# To check if two numbers are divisible by each other

echo "Please enter the first number:"
read num1
echo "Please enter the second number:"
read num2

if [ $((num1%num2)) -eq 0 ]; then
	echo "The numbers are divisible by each other"
else
	echo "The number are NOT divisible by each other"
fi
