#!/bin/bash

# Extract the pull request number from the URL
PR_URL="$1"
PR_NUMBER=$(basename "$PR_URL")

# Check if the 'gh' command is installed
if ! command -v gh &> /dev/null; then
    echo "Error: 'gh' command not found. Please install the GitHub CLI tool: https://cli.github.com/"
    exit 1
fi

# Check out the pull request
gh pr checkout "$PR_NUMBER"
