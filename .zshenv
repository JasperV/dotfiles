#!/bin/zsh

# Add ~/bin to the $PATH
export PATH="$HOME/bin:$PATH"

# Language
export LANG="en_US.UTF-8"
export LC_ALL=$LANG

# Preferred programs
export PAGER=less
export EDITOR=code
export VISUAL=$EDITOR

export HOMEBREW_BUNDLE_NO_LOCK=1
export HOMEBREW_CLEANUP_MAX_AGE_DAYS=0
export HOMEBREW_NO_ANALYTICS=1

export ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
export ZSH_THEME=""

export PURE_GIT_UNTRACKED_DIRT=0

export NVM_AUTO_USE=true
export NVM_COMPLETION=true
export NVM_LAZY_LOAD=true

