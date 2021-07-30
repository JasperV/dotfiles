#!/bin/zsh

# Update script

# Ask for the administrator password upfront
sudo -v

# Check for macOS updates
sudo softwareupdate -i -a --restart

# Update Homebrew and formulae
brew update
