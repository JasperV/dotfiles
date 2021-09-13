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

# autocorrect command and parameter spelling
setopt CORRECT
setopt CORRECT_ALL

setopt RM_STAR_WAIT

# Don't show duplicate history entires
setopt hist_find_no_dups

# Remove unnecessary blanks from history
setopt hist_reduce_blanks

# Share history between instances
setopt share_history

# Don't hang up background jobs
setopt no_hup

zstyle :prompt:pure:git:stash show yes

prompt pure # https://github.com/sindresorhus/pure

unalias duf
