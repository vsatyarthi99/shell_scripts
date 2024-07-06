#!/bin/bash

# Global variables
fruit_list=("Apple" "Banana" "Cherry") # Initial list of fruits

# Function to display the fruit list
display_fruits() {
    echo "Current list of fruits:"
    for fruit in "${fruit_list[@]}"; do
        echo "- $fruit"
    done
    echo ""
}

# Function to add a fruit to the list
add_fruit() {
    local new_fruit="$1" # Parameter passed to the function
    fruit_list+=("$new_fruit")
    echo "$new_fruit has been added to the list."
    echo ""
}

# Function to remove a fruit from the list
remove_fruit() {
    local fruit_to_remove="$1" # Parameter passed to the function
    local temp_list=()
    local found=0

    for fruit in "${fruit_list[@]}"; do
        if [ "$fruit" == "$fruit_to_remove" ]; then
            found=1
        else
            temp_list+=("$fruit")
        fi
    done

    if [ $found -eq 1 ]; then
        fruit_list=("${temp_list[@]}")
        echo "$fruit_to_remove has been removed from the list."
    else
        echo "$fruit_to_remove was not found in the list."
    fi
}
# Main menu
while true; do
    echo
    echo "Fruit Management Menu"
    echo "1. Display all fruits"
    echo "2. Add a fruit"
    echo "3. Remove a fruit"
    echo "4. Exit"
    read -p "Choose an option (1-4): " option

    case $option in
        1)
            display_fruits
            ;;
        2)
            read -p "Enter the name of the fruit to add: " fruit_name
            add_fruit "$fruit_name"
            ;;
        3)
            read -p "Enter the name of the fruit to remove: " fruit_name
            remove_fruit "$fruit_name"
            ;;
        4)
            echo "Exiting the program. Goodbye!"
            break
            ;;
        *)
            echo "Invalid option. Please choose a number between 1 and 4."
            ;;
	esac
done
