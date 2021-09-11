#!/usr/local/bin/zsh

# Third to load

# Load Antigen
source ~/antigen.zsh

# Load Antigen configurations
antigen init ~/.antigenrc

autoload -Uz compinit && compinit
autoload -U promptinit; promptinit

unsetopt RM_STAR_SILENT

setopt AUTO_CD
setopt CORRECT
setopt CORRECT_ALL
setopt RM_STAR_WAIT

# TODO: turn on git stash status
zstyle :prompt:pure:git:stash show yes

prompt pure # https://github.com/sindresorhus/pure

unalias duf
