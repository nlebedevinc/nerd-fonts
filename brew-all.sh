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

# Install Nerd Font packages
echo "Installing Nerd Font packages..."
font_packages=$(brew search '/font-.*-nerd-font/' | awk '{ print $1 }')
for package in $font_packages; do
  if ! brew install --cask "$package"; then
    echo "Warning: Failed to install $package. Continuing with the next package."
  else
    echo "Installed $package successfully."
  fi
done
echo "Nerd Font packages installed."
