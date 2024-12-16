#!/bin/bash

create_file(){
read -p "Enter the file name to create: " filename
if [ -e "$filename" ]; then
echo "File already exist."
else
touch "$filename"
echo "File '$filename' create success"
fi
}

write_file(){
read -p "Enter the file name to write to: " filename
if [ -e "$filename" ]; then
read -p "Enter the text to write: " text
echo "$text" >> "$filename"
echo "Text write '$filename' create success"
else
touch "$filename"
echo "File already exist."
fi
}

read_file() {
    read -p "Enter the filename to read: " filename
    if [ -e "$filename" ]; then
        echo "Contents of '$filename':"
        cat "$filename"
    else
        echo "File does not exist."
    fi
}

delete_file() {
    read -p "Enter the filename to delete: " filename
    if [ -e "$filename" ]; then
        rm "$filename"
        echo "File '$filename' deleted successfully."
    else
        echo "File does not exist."
    fi
}

while true; do
 echo "Choose an operation:"
    echo "1. Create a file"
    echo "2. Write to a file"
    echo "3. Read a file"
    echo "4. Delete a file"
    echo "5. Exit"
    read -p "Enter your choice: " choice
   
     case $choice in
        1) create_file ;;
        2) write_file ;;
        3) read_file ;;
        4) delete_file ;;
        5) echo "Exiting..."; exit 0 ;;
        *) echo "Invalid choice. Please try again." ;;
    esac
done
