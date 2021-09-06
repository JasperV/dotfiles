#!/bin/zsh

# TODO: move to exports, make sure loaded before antigen
export ZSH_THEME=""
export NVM_COMPLETION=true
export NVM_LAZY_LOAD=true
export NVM_NO_USE=true
export NVM_AUTO_USE=true
export PURE_GIT_UNTRACKED_DIRT=0
export HOMEBREW_BUNDLE_NO_LOCK=1
HOMEBREW_NO_ANALYTICS=1
HOMEBREW_BUNDLE_NO_LOCK=1
HOMEBREW_CLEANUP_MAX_AGE_DAYS=0

# Load Antigen
source ~/antigen.zsh

# Load Antigen configurations
antigen init ~/.antigenrc

autoload -U compinit && compinit
autoload -U promptinit; promptinit
# turn on git stash status
zstyle :prompt:pure:git:stash show yes

prompt pure # https://github.com/sindresorhus/pure
