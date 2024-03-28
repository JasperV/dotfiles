#!/home/linuxbrew/.linuxbrew/bin/zsh

# Second to load

# Create dotfiles alias
alias dotfiles='git --git-dir=$HOME/.files/ --work-tree=$HOME'
alias dot=dotfiles

# Get rid of command not found
alias cd..='cd ..'
alias dir='l'

# Replace ls with exa
alias l='exa -lhgaF --icons'
alias ll=l
alias ls=exa

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Make sudo use more nice
alias please=sudo

# App aliases
alias cat=bat
alias json=fx

# Prompt user if overwriting during copy
alias cp='cp -i'

# Get date and time
alias now=date
alias ntime='date +"%T"'
alias ndate='date +"%d-%m-%Y"'
alias week='date +%V'

# Show PATH in human readable format
alias path='echo -e ${PATH//:/\\n}'

# Public ip adres
# TODO: not show % at end - starship issue?
alias myip='curl https://ipecho.net/plain'
alias ip=myip

# Git clone always in ~/src
gsrc() {
  git clone "$@" "/Users/$USER/src/$(basename $@)"
  cd "/Users/$USER/src/$(basename $@)"
}

# Create a new directory and enter it
function mkd() {
    mkdir -p "$@" && cd "$_";
}

# alias ng=./node_modules/.bin/ng

# alias du='ncdu --color dark -rr -x --exclude .git --exclude node_modules'

# Determine size of a file or total size of a directory
function fs() {
    if du -b /dev/null > /dev/null 2>&1; then
        local arg=-sbh;
    else
        local arg=-sh;
    fi
    if [[ -n "$@" ]]; then
        du $arg -- "$@";
    else
        du $arg .[^.]* ./*;
    fi;
}


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

# # Prompt user when deleting a file
# alias rm='rm -I'

# # Do not delete / or prompt if deleting more than 3 files at a time
# alias rm='rm -I --preserve-root'

# # Confirmation
# alias mv='mv -i'
# alias cp='cp -i'
# alias ln='ln -i'

# # Parenting changing perms on /
# # alias chown='chown --preserve-root'
# # alias chmod='chmod --preserve-root'
# # alias chgrp='chgrp --preserve-root'

# # Become root
# alias root='sudo -i'
# alias su='sudo -i'

# # Show active network interfaces
# alias ifactive="ifconfig | pcregrep -M -o '^[^\t:]+:([^\n]|\n\t)*status: active'"

# # Recursively delete `.DS_Store` files
# alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# # Empty the Trash on all mounted volumes and the main HDD.
# # Also, clear Apple’s System Logs to improve shell startup speed.
# # Finally, clear download history from quarantine. https://mths.be/bum
# alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl; sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'"

# # One of @janmoesen’s ProTip™s
# for method in GET HEAD POST PUT DELETE TRACE OPTIONS; do
# 	alias "${method}"="lwp-request -m '${method}'"
# done

# # Create a data URL from a file
# function dataurl() {
#     local mimeType=$(file -b --mime-type "$1");
#     if [[ $mimeType == text/* ]]; then
#         mimeType="${mimeType};charset=utf-8";
#     fi
#     echo "data:${mimeType};base64,$(openssl base64 -in "$1" | tr -d '\n')";
# }


# # Run `dig` and display the most useful info
# function digga() {
#     dig +nocmd "$1" any +multiline +noall +answer;
# }

# # Show all the names (CNs and SANs) listed in the SSL certificate
# # for a given domain
# function getcertnames() {
#     if [ -z "${1}" ]; then
#         echo "ERROR: No domain specified.";
#         return 1;
#     fi;

#     local domain="${1}";
#     echo "Testing ${domain}…";
#     echo ""; # newline

#     local tmp=$(echo -e "GET / HTTP/1.0\nEOT" \
#         | openssl s_client -connect "${domain}:443" -servername "${domain}" 2>&1);

#     if [[ "${tmp}" = *"-----BEGIN CERTIFICATE-----"* ]]; then
#         local certText=$(echo "${tmp}" \
#             | openssl x509 -text -certopt "no_aux, no_header, no_issuer, no_pubkey, \
#             no_serial, no_sigdump, no_signame, no_validity, no_version");
#         echo "Common Name:";
#         echo ""; # newline
#         echo "${certText}" | grep "Subject:" | sed -e "s/^.*CN=//" | sed -e "s/\/emailAddress=.*//";
#         echo ""; # newline
#         echo "Subject Alternative Name(s):";
#         echo ""; # newline
#         echo "${certText}" | grep -A 1 "Subject Alternative Name:" \
#             | sed -e "2s/DNS://g" -e "s/ //g" | tr "," "\n" | tail -n +2;
#         return 0;
#     else
#         echo "ERROR: Certificate not found.";
#         return 1;
#     fi;
# }

# # `tre` is a shorthand for `tree` with hidden files and color enabled, ignoring
# # the `.git` directory, listing directories first. The output gets piped into
# # `less` with options to preserve color and line numbers, unless the output is
# # small enough for one screen.
# function tre() {
#     tree -aC -I '.git|node_modules|bower_components' --dirsfirst "$@" | less -FRNX;
# }
