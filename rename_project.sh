#!/bin/bash

# Set the locale to handle Unicode text
export LC_CTYPE=C.UTF-8

# Prompt for new project name
read -p "Enter the new project name: " new_name
# Prompt for new author name
read -p "Enter the new author name: " new_author
# Prompt for new date
read -p "Enter the new date (format DD.MM.YYYY): " new_date

# Function to update filenames, folder names, and file contents
update_files() {
    local old_name="UIKitTemplate"
    local old_author="authorName"
    local old_date="creationDate"

    # Find and replace in file contents
    find . -type f -not -path '*/\.*' -exec sed -i '' -e "s/$old_name/$new_name/g" -e "s/$old_author/$new_author/g" -e "s/$old_date/$new_date/g" {} +

    # Rename directories
    find . -type d -name "*$old_name*" -not -path '*/\.*' | sort -r | while read dir; do
        mv "$dir" "${dir//$old_name/$new_name}"
    done

    # Rename files
    find . -type f -name "*$old_name*" -not -path '*/\.*' | while read file; do
        mv "$file" "${file//$old_name/$new_name}"
    done
}

# Execute the update function
update_files

echo "Project renaming complete."
