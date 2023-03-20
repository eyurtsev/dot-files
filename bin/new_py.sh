#!/bin/bash
# This script takes two arguments from the user: python version and environment name.
# It uses pyenv to install the given python version if it doesn't exist, creates a pyenv
# environment with the given python version and name, upgrades pip, installs wheel,
# and asks the user whether they'd like to create a new poetry project.
#
# Usage: ./create_pyenv_env.sh <python-version> <env-name>
set -eux

# verify that two arguments are provided
if [ $# -ne 2 ]; then
    echo "Error: Please provide python version and environment name."
    echo "Usage: $0 <python-version> <env-name>"
    exit 1
fi

# Take python version and environment name as arguments
python_version=$1
environment_name=$2

# Check if the given python version is installed using pyenv
if ! pyenv versions | grep $python_version > /dev/null; then
    # If python version is not installed, install it using pyenv
    pyenv install $python_version
fi

# Create a new pyenv environment with the given python version and name
pyenv virtualenv $python_version $environment_name

# Activate the newly created environment
pyenv activate $environment_name

# Upgrade pip and install wheel
pip install --upgrade pip
pip install wheel

# Ask the user whether they want to create a new poetry project
read -p "Do you want to create a new poetry project? (y/n) " choice
case "$choice" in
  y|Y ) 
    # If user chooses 'y', create a new poetry project
    poetry new environment_name
    ;;
  n|N ) 
    # If user chooses 'n', do nothing
    ;;
  * ) echo "Invalid choice. Exiting...";;
esac
