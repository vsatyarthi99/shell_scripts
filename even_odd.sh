#!/bin/bash

# To check if the number is even or odd

echo "Please enter the number:"
read num

if [ $((num%2)) -eq 0 ]; then
echo "The number is even!"
else 
echo "The number is odd!"
fi
