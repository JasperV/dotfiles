#!/usr/bin/env bash

# Install and Update script

# Ask for the administrator password upfront
sudo -v

# Check for macOS updates
sudo softwareupdate -i -a # --restart

# Install git by means of xcode command line tools
xcode-select --install

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null

# Install zsh and zsh-completions
brew install zsh zsh-completions

rm -f ~/.zcompdump; compinit

sudo chmod go-w '/usr/local/share'



# Install dotfiles

# Clone bare into .files folder
git clone --bare https://github.com/JasperV/dotfiles.git $HOME/.files

# Define dotfiles command
function dotfiles {
  /usr/bin/git --git-dir=$HOME/.files/ --work-tree=$HOME $@
}

# Checkout the actual content from repo to $HOME
dotfiles checkout

# Set flag to ignore untracked files
dotfiles config --local status.showUntrackedFiles no

# Source all that is required
source $HOME/.bashrc

# Homebrew mac fix
# sudo launchctl config user path "/usr/local/bin:$PATH"
