#!/bin/sh

# Install and Update script

# Ask for the administrator password upfront
sudo -v

# Check for macOS updates
# sudo softwareupdate -i -a # --restart

# Install git by means of xcode command line tools
# xcode-select --install

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null

# Install zsh and zsh-completions
brew install zsh #zsh-completions

sudo chmod go-w '/usr/local/share'

# Install oh my zsh
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"



# Install dotfiles

# Clone bare into .files folder
git clone --bare https://github.com/JasperV/dotfiles.git $HOME/.files

# Define dotfiles command
function dotfiles {
  /usr/bin/git --git-dir=$HOME/.files/ --work-tree=$HOME $@
}

# Remove default .zshrc install
# rm ~/.zshrc

# Checkout the actual content from repo to $HOME
dotfiles checkout

# Set flag to ignore untracked files
dotfiles config --local status.showUntrackedFiles no

# Source all that is required
source $HOME/.zshrc

# Homebrew mac fix
# sudo launchctl config user path "/usr/local/bin:$PATH"
