#!/bin/bash

global_fruit1="Apple" # global variable

display_fruits() {
    local local_fruit2="Banana" # local variable
    global_fruit3="Cherry" # global variable
    echo "Inside function:"
    echo "The name of the first fruit is $global_fruit1"
    echo "The name of the second fruit is $local_fruit2"
    echo "The name of the third fruit is $global_fruit3"
}

display_fruits # calling function

echo "Outside function:"
echo "The name of the first fruit is $global_fruit1"
# trying to access local variable
echo "The name of the second fruit is $local_fruit2" # This will not print local_fruit2 because it's local to the function
echo "The name of the third fruit is $global_fruit3"
