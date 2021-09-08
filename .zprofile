#!/bin/zsh

# Create dotfiles alias
alias dotfiles='git --git-dir=$HOME/.files/ --work-tree=$HOME'
alias dot=dotfiles

alias install='~/install'
alias update='~/install'

# Get rid of command not found
alias cd..='cd ..'

# Easier navigation: .., ..., ...., ....., and ~
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias .4='cd ../../../../'
alias .5='cd ../../../../..'
alias ~="cd ~"

# Shortcuts
alias g="git"
alias dl="cd ~/Downloads"
alias src="cd ~/src"

# Shortcuts
alias ll="ls -lah"
alias l=ls

# List only directories
alias lsd="ls -lF ${colorflag} | grep --color=never '^d'"

# Clipboard shortcut
alias cb=clipboard

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Prompt user if overwriting during copy
alias cp='cp -i'

# Safely remove files
alias rm=trash
# alias rm='rm -I'

# Get date and time
alias now=date
alias ntime='date +"%T"'
alias ndate='date +"%d-%m-%Y"'
alias week='date +%V'

# Show PATH in human readable format
alias path='echo -e ${PATH//:/\\n}'

# # Enable tab completion for `g` by marking it as an alias for `git`
# if type _git &> /dev/null && [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
# 	complete -o default -o nospace -F _git g;
# fi;

# # highlighting inside manpages and elsewhere
# export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
# export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
# export LESS_TERMCAP_me=$'\E[0m'           # end mode
# export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
# export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
# export LESS_TERMCAP_ue=$'\E[0m'           # end underline
# export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline

# # z beats cd most of the time. `brew install z`
# if which brew > /dev/null; then
#     zpath="$(brew --prefix)/etc/profile.d/z.sh"
#     [ -s $zpath ] && source $zpath
# fi;
