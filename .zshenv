#!/home/linuxbrew/.linuxbrew/bin/zsh

# First to load

# Add Home to the $PATH
export PATH="$HOME:$PATH"

# Language
export LANG="en_US.UTF-8"
# export LC_ALL=$LANG

# Preferred programs
# export PAGER=less
export EDITOR=code
export VISUAL=$EDITOR

export HOMEBREW_BUNDLE_NO_LOCK=1
export HOMEBREW_CLEANUP_MAX_AGE_DAYS=0
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_ENV_HINTS=1

export ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
export ZSH_THEME=""

# export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# # For compatibility reasons, remove if this causes issues for you
# TERM=xterm-256color

# # Make Python use UTF-8 encoding for output to stdin, stdout, and stderr.
# export PYTHONIOENCODING='UTF-8'

# # Highlight section titles in manual pages.
# export LESS_TERMCAP_md="${yellow}";

# # Don’t clear the screen after quitting a manual page
# export MANPAGER='less -X';

# # Safeguard rm some more
# # https://github.com/sindresorhus/guides/blob/master/how-not-to-rm-yourself.md#safeguard-rm
# unsetopt RM_STAR_SILENT
# setopt RM_STAR_WAIT

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
