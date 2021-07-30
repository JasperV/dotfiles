#!/bin/zsh

# Uninstall script

# Ask for the administrator password upfront
sudo -v

# Uninstall Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)"

# TODO: https://apple.stackexchange.com/questions/198623/uninstall-all-programs-installed-by-homebrew
