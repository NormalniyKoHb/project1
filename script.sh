#!/bin/bash
echo "Author: Robenkov Daniil"
echo "Program: Image Converter"
echo "Description: This script allows you to convert images to the specified format and change their size."
echo
while :
do    
    read -p "Enter the image file name (or 'exit' to exit): " file_name      
    if [ ! -f $file_name ]
    then
        echo "Error: File not found" >&2
        continue  
    fi
    read -p "Enter the format to convert the image to: " new_format
    read -p "Enter the size of the new image (e.g. 800x600): " new_size    
    mogrify -format $new_format -resize $new_size $file_name
    echo "Image successfully converted to $new_format format and resized to $new_size"
    read -p "Do you want to continue? (yes/no): " continue_input
    if [ $continue_input != "yes" ]
    then
        echo "Exiting the program"
        exit 0  
    fi
done
