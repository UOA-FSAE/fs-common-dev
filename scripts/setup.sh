#!/bin/bash

# Function to setup github username and email
setup_git() {
    # Check if git username is already set
    git_username=$(git config --get user.name)

    if [ -z "$git_username" ]
    then
        echo "Git username is not set."
        echo "Please enter your git username:"
        read git_username
        git config --global user.name "$git_username"
        echo "Git username is now set to $git_username."
    else
        echo "Git username is already set to $git_username."
    fi

    # Check if git email is already set
    git_email=$(git config --get user.email)

    if [ -z "$git_email" ]
    then
        echo "Git email is not set."
        echo "Please enter your git email:"
        read git_email
        git config --global user.email "$git_email"
        echo "Git email is now set to $git_email."
    else
        echo "Git email is already set to $git_email."
    fi
}

install_required_packages() {
    sudo apt-get update -y && sudo apt-get upgrade -y
    sudo apt-get install -y git
    sudo apt-add-repository ppa:ansible/ansible
    sudo apt update && sudo apt install ansible
}

echo "Running FS setup script..."

echo "Setting up git..."
setup_git
echo "Installing required packages..."
install_required_packages