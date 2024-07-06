#!/bin/bash

# Print the real name

echo "Please enter your nickname:"
read name

if [ $name = Ashu ]; then
	echo "Hello Ashish, Welcome!"
else 
	echo "Hello $name, my apologies, I do not recognize you!"
fi
