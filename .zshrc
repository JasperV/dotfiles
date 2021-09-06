#!/bin/zsh

# Load Antigen
source ~/antigen.zsh

# Load Antigen configurations
antigen init ~/.antigenrc

autoload -U compinit && compinit
autoload -U promptinit; promptinit

# TODO: turn on git stash status
# zstyle :prompt:pure:git:stash show yes

prompt pure # https://github.com/sindresorhus/pure
