#!/bin/bash

# Define the command version
VERSION="v0.1.0"

# Function to display the manual page
display_manual() {
    echo "NAME"
    echo "    internsctl - custom Linux command for operations"
    echo ""
    echo "SYNOPSIS"
    echo "    internsctl [COMMAND] [OPTIONS] [ARGUMENTS]"
    echo ""
    echo "DESCRIPTION"
    echo "    internsctl is a custom Linux command designed to provide various system information"
    echo "    and perform operations related to user management and file information."
    echo ""
    echo "COMMANDS"
    echo "    cpu getinfo         Display CPU information"
    echo "    memory getinfo      Display memory information"
    echo "    user create         Create a new user"
    echo "    user list           List all regular users"
    echo "    user list --sudo-only   List all users with sudo permissions"
    echo "    file getinfo        Get information about a file"
    echo ""
    echo "OPTIONS"
    echo "    --size, -s          Print size of the specified file"
    echo "    --permissions, -p  Print file permissions"
    echo "    --owner, -o         Print file owner"
    echo "    --last-modified, -m Print last modified time of the specified file"
    echo ""
    echo "VERSION"
    echo "    internsctl $VERSION"
}

# Function to display help
display_help() {
    echo "NAME"
    echo "    internsctl - custom Linux command for operations"
    echo ""
    echo "SYNOPSIS"
    echo "    internsctl [COMMAND] [OPTIONS] [ARGUMENTS]"
    echo ""
    echo "DESCRIPTION"
    echo "    internsctl is a custom Linux command designed to provide various system information"
    echo "    and perform operations related to user management and file information."
    echo ""
    echo "COMMANDS"
    echo "    cpu getinfo         Display CPU information"
    echo "    memory getinfo      Display memory information"
    echo "    user create         Create a new user"
    echo "    user list           List all regular users"
    echo "    user list --sudo-only   List all users with sudo permissions"
    echo "    file getinfo        Get information about a file"
    echo ""
    echo "OPTIONS"
    echo "    --size, -s          Print size of the specified file"
    echo "    --permissions, -p  Print file permissions"
    echo "    --owner, -o         Print file owner"
    echo "    --last-modified, -m Print last modified time of the specified file"
    echo ""
    echo "VERSION"
    echo "    internsctl $VERSION"
}

# Function to display version
display_version() {
    echo "internsctl $VERSION"
}

# Main function to handle commands
main() {
    case $1 in
        "--help" )
            display_help
            ;;
        "--version" )
            display_version
            ;;
        * )
            display_manual
            ;;
    esac
}

main $@

