#!/bin/bash

# Check if Homebrew is installed
if ! command -v brew &> /dev/null; then
  echo "Error: Homebrew is not installed. Please install Homebrew before running this script."
  exit 1
fi

# Tap the Homebrew cask-fonts repository
echo "Tapping Homebrew cask-fonts repository..."
if ! brew tap homebrew/cask-fonts; then
  echo "Error: Failed to tap the Homebrew cask-fonts repository."
  exit 1
fi
echo "Homebrew cask-fonts repository tapped successfully."

# Install the specified Nerd Font package
if [ -z "$1" ]; then
  echo "Error: Please provide the name of the Nerd Font package to install as an argument."
  exit 1
fi

font_package="$1"
echo "Installing $font_package Nerd Font package..."
if ! brew install --cask "$font_package"; then
  echo "Error: Failed to install $font_package."
  exit 1
fi
echo "$font_package Nerd Font package installed successfully."
