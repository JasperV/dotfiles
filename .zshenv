#!/usr/local/bin/zsh

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
export NVM_LAZY_LOAD_EXTRA_COMMANDS=(git)



# # Path settings
# #pathprepend ~/bin PATH
# #pathprepend ~/lib LD_LIBRARY_PATH
# #pathprepend ~/include CPATH
# pathprepend /usr/local/bin PATH
# pathappend ~/bin PATH
# pathappend "/Applications/Visual Studio Code.app/Contents/Resources/app/bin" PATH

# # The current directory should never be in $PATH
# pathremove . PATH
# pathremove "" PATH

# # For compatibility reasons, remove if this causes issues for you
# TERM=xterm-256color

# # Enable persistent REPL history for `node`.
# export NODE_REPL_HISTORY=~/.node_history

# # Allow 32³ entries; the default is 1000.
# export NODE_REPL_HISTORY_SIZE='32768'

# # Use sloppy mode by default, matching web browsers.
# export NODE_REPL_MODE='sloppy'

# # Make Python use UTF-8 encoding for output to stdin, stdout, and stderr.
# export PYTHONIOENCODING='UTF-8'

# # Highlight section titles in manual pages.
# export LESS_TERMCAP_md="${yellow}";

# # Don’t clear the screen after quitting a manual page
# export MANPAGER='less -X';

# # Define nvm dir
# export NVM_DIR="$HOME/.nvm"

# # Safeguard rm some more
# # https://github.com/sindresorhus/guides/blob/master/how-not-to-rm-yourself.md#safeguard-rm
# unsetopt RM_STAR_SILENT
# setopt RM_STAR_WAIT

# # set Node.js heap size
# export NODE_OPTIONS=--max-old-space-size=8192
