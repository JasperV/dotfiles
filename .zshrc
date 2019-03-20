#!/usr/bin/env zsh

# Enable zsh-completions
fpath=(/usr/local/share/zsh-completions $fpath)

# Enable zsh-autosuggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Enable zsh-syntax-highlighting
# source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Load nvm
source ~/.nvm/nvm.sh

# Automatically call nvm use
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

# Load Pure prompt
autoload -U promptinit; promptinit

PURE_GIT_UNTRACKED_DIRTY=0

prompt pure
