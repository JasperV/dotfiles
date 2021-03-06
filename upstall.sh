#!/usr/bin/env bash

# Install and Update script

# Ask for the administrator password upfront
sudo -v

# Check for macOS updates
sudo softwareupdate -i -a --restart

# Install git by means of xcode command line tools
# xcode-select --install

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null

# Install ZSH and zsh-completions
brew install zsh zsh-completions zsh-syntax-highlighting zsh-autosuggestions

# Switch to using brew-installed zsh as default shell
# if ! fgrep -q "${BREW_PREFIX}/bin/zsh" /etc/shells; then
#   echo "${BREW_PREFIX}/bin/zsh" | sudo tee -a /etc/shells;
#   chsh -s "${BREW_PREFIX}/bin/zsh";
# fi;

sudo dscl . -create /Users/$USER UserShell /usr/local/bin/zsh

sudo chmod go-w '/usr/local/share'

# Install git
brew install git
git config --system --unset credential.helper

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

# Run macOS installation
sh ~/.macos

# Run brew installation
sh ~/brew.sh

# Install nvm and node.js via nvm
export NVM_DIR="$HOME/.nvm" && (
  git clone https://github.com/creationix/nvm.git "$NVM_DIR"
  cd "$NVM_DIR"
  git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" $(git rev-list --tags --max-count=1)`
) && \. "$NVM_DIR/nvm.sh"

# Install node.js
nvm install lts/*

# Upgrade pip
pip install --upgrade pip
pip3 install --upgrade pip

# Install pip apps
pip3 install stronghold
pip install beets
pip install pyacoustid
pip install discogs-client

# TODO: add to own file for re-running on new node verions via nvm?
# Install other npm modules
# TODO: re-install on nvm update to other version... only for "main" update/change
# so some modules need installing when switching to other version in project, some don't
# https://github.com/nvm-sh/nvm#default-global-packages-from-file-while-installing

# Install ZSH Pure prompt
npm i -g pure-prompt

# Install Alfred workflows via npm
npm i -g alfred-emoj
npm i -g alfred-npms
npm i -g alfred-fkill
npm i -g alfred-coolors
npm i -g alfred-vpn
npm i -g alfred-show-network-info
npm i -g alfred-currency-conversion
npm i -g alfred-polyglot
# TODO: bitwarden
# TODO: make note of other alfred plugins

# Install better nanorc config
curl https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh | sh

# For the c alias (syntax highlighted cat)
sudo easy_install Pygments

# Finally source all that is required
source $HOME/.zshrc

# Run stronghold
stronghold -lockdown

# Enable filevault
sudo fdesetup enable
