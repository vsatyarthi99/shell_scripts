#!/bin/bash

# Function to search for a pattern in files
search_pattern() {
    read -p "Enter the pattern to search for: " pattern
    read -p "Enter the file to search in: " file
    grep "$pattern" "$file"
}

# Function to process text with awk
process_text_awk() {
    read -p "Enter the file to process: " file
    awk '{ print NR, $0 }' "$file"
}

# Function to edit stream with sed
edit_stream_sed() {
    read -p "Enter the file to edit: " file
    read -p "Enter the pattern to replace: " pattern
    read -p "Enter the replacement text: " replacement
    sed -i "s/$pattern/$replacement/g" "$file"
    echo "Pattern replaced."
}

# Function to find files
find_files() {
    read -p "Enter the directory to search in: " dir
    read -p "Enter the name pattern to search for: " name
    find "$dir" -name "$name"
}

# Function to make a web request with curl
web_request() {
    read -p "Enter the URL: " url
    curl -O "$url"
}

# Function to archive and compress files
archive_files() {
    read -p "Enter the directory to archive: " dir
    read -p "Enter the name for the archive file: " archive_name
    tar -czvf "$archive_name.tar.gz" "$dir"
    echo "Files archived and compressed."
}

# Function to display the menu
show_menu() {
    echo "Please select an option:"
    echo "1. Search for a pattern in files"
    echo "2. Process text with awk"
    echo "3. Edit stream with sed"
    echo "4. Find files"
    echo "5. Make a web request with curl"
    echo "6. Archive and compress files"
    echo "7. Exit"
}

# Function to read user input
read_choice() {
    read -p "Enter your choice [1-7]: " choice
}

# Main loop to keep the script running until the user chooses to exit
while true; do
    show_menu
    read_choice
    case $choice in
        1)
            search_pattern
            ;;
        2)
            process_text_awk
            ;;
        3)
            edit_stream_sed
            ;;
        4)
            find_files
            ;;
        5)
            web_request
            ;;
        6)
            archive_files
            ;;
        7)
            echo "Exiting the program."
            break
            ;;
        *)
            echo "Invalid option. Please select a number between 1 and 7."
            ;;
     esac
done
