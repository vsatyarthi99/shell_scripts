#!/bin/bash

# Function to display a message
display_message() {
    echo "Hello, World!"
}

# Function to show current date and time
show_date_time() {
    echo "Current date and time: $(date)"
}

# Function to list files in the current directory
list_files() {
    echo "Files in the current directory:"
    ls -l
}

# Function to display the menu
show_menu() {
    echo "Please select an option:"
    echo "1. Display a message"
    echo "2. Show current date and time"
    echo "3. List files in the current directory"
    echo "4. Exit"
}

# Function to read user input
read_choice() {
    read -p "Enter your choice [1-4]: " choice
}

# Main loop to keep the script running until the user chooses to exit
while true; do
    show_menu
    read_choice
    case $choice in
        1)
            display_message
            ;;
        2)
            show_date_time
            ;;
        3)
            list_files
            ;;
        4)
            echo "Exiting the program. Goodbye!"
            break
            ;;
        *)
            echo "Invalid choice. Please select a valid option."
            ;;
    esac
    echo # Blank line for better readability
done
