#!/bin/bash

# User management script for Linux

# Create a new user
add_user() {
    read -p "Enter username: " username
    sudo adduser $username
    echo "User $username created successfully."
}

# Delete a user
delete_user() {
    read -p "Enter username to delete: " username
    sudo deluser $username
    echo "User $username deleted successfully."
}

# List all users
list_users() {
    cut -d: -f1 /etc/passwd
}

echo "Select an option:"
echo "1. Add User"
echo "2. Delete User"
echo "3. List Users"
read -p "Option: " option

case $option in
    1) add_user ;;
    2) delete_user ;;
    3) list_users ;;
    *) echo "Invalid option" ;;
esac
