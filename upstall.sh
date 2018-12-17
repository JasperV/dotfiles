#!/usr/bin/env bash

# Install and Update script

# Ask for the administrator password upfront
sudo -v

# Check for macOS updates
# sudo softwareupdate -i -a # --restart

# Install git by means of xcode command line tools
# xcode-select --install

# Install Homebrew
# ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null

# Install ZSH and zsh-completions
brew install zsh zsh-completions zsh-syntax-highlighting

# Switch to using brew-installed zsh as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/zsh" /etc/shells; then
  echo "${BREW_PREFIX}/bin/zsh" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/zsh";
fi;

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



# Homebrew mac fix
# sudo launchctl config user path "/usr/local/bin:$PATH"

# Run macOS installation
# sh ~/.macos

# Run brew installation
sh ~/brew.sh

# Install nvm and node.js via nvm
export NVM_DIR="$HOME/.nvm" && (
  git clone https://github.com/creationix/nvm.git "$NVM_DIR"
  cd "$NVM_DIR"
  git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" $(git rev-list --tags --max-count=1)`
) && \. "$NVM_DIR/nvm.sh"

# Finally source all that is required
source $HOME/.zshrc

# Install node.js
nvm install node

# Install Pure prompt
npm i -g pure-prompt
