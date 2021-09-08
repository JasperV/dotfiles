#!/usr/local/bin/zsh

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

#!/usr/bin/env zsh

# # Detect which `ls` flavor is in use
# if ls --color > /dev/null 2>&1; then # GNU `ls`
# 	colorflag="--color"
# 	export LS_COLORS='no=00:fi=00:di=01;31:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'
# else # macOS `ls`
# 	colorflag="-G"
# 	export LSCOLORS='BxBxhxDxfxhxhxhxhxcxcx'
# fi

# # Always use color output for `ls`
# alias ls="command ls -lahF ${colorflag}"

# # Always enable colored `grep` output
# # Note: `GREP_OPTIONS="--color=auto"` is deprecated, hence the alias usage.
# alias grep='grep --color=auto'
# alias fgrep='fgrep --color=auto'
# alias egrep='egrep --color=auto'

# # Prompt user when deleting a file
# alias rm='rm -I'

# # Always print in human readable form
# alias df='df -h'
# alias du='du -ch'

# # Make mount command output pretty and human readable format
# alias mount='mount |column -t'

# # Handy short cuts
# alias h='history'
# alias j='jobs -l'

# # Stop after sending count ECHO_REQUEST packets
# alias ping='ping -c 10'

# # Get web server headers
# alias header='curl -I'

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

# # Google Chrome
# alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'

# # Show active network interfaces
# alias ifactive="ifconfig | pcregrep -M -o '^[^\t:]+:([^\n]|\n\t)*status: active'"

# # Flush Directory Service cache
# alias flush="dscacheutil -flushcache && killall -HUP mDNSResponder"

# # Clean up LaunchServices to remove duplicates in the “Open With” menu
# alias lscleanup="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder"

# # Canonical hex dump; some systems have this symlinked
# command -v hd > /dev/null || alias hd="hexdump -C"

# # macOS has no `md5sum`, so use `md5` as a fallback
# command -v md5sum > /dev/null || alias md5sum="md5"

# # macOS has no `sha1sum`, so use `shasum` as a fallback
# command -v sha1sum > /dev/null || alias sha1sum="shasum"

# # JavaScriptCore REPL
# jscbin="/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources/jsc";
# [ -e "${jscbin}" ] && alias jsc="${jscbin}";
# unset jscbin;

# # Trim new lines and copy to clipboard
# alias c="tr -d '\n' | pbcopy"

# # Recursively delete `.DS_Store` files
# alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# # Empty the Trash on all mounted volumes and the main HDD.
# # Also, clear Apple’s System Logs to improve shell startup speed.
# # Finally, clear download history from quarantine. https://mths.be/bum
# alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl; sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'"

# # Merge PDF files
# # Usage: `mergepdf -o output.pdf input{1,2,3}.pdf`
# alias mergepdf='/System/Library/Automator/Combine\ PDF\ Pages.action/Contents/Resources/join.py'

# # PlistBuddy alias, because sometimes `defaults` just doesn’t cut it
# alias plistbuddy="/usr/libexec/PlistBuddy"

# # Intuitive map function
# # For example, to list all directories that contain a certain file:
# # find . -name .gitattributes | map dirname
# alias map="xargs -n1"

# # One of @janmoesen’s ProTip™s
# for method in GET HEAD POST PUT DELETE TRACE OPTIONS; do
# 	alias "${method}"="lwp-request -m '${method}'"
# done

# # Stuff I never really use but cannot delete either because of http://xkcd.com/530/
# alias stfu="osascript -e 'set volume output muted true'"
# alias pumpitup="osascript -e 'set volume output volume 100'"

# # Lock the screen (when going AFK)
# alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# # Reload the shell (i.e. invoke as a login shell)
# alias reload="exec ${SHELL} -l"


# #!/usr/bin/env bash

# # Usage: indirect_expand PATH -> $PATH
# indirect_expand () {
#     env |sed -n "s/^$1=//p"
# }

# # Usage: pathremove /path/to/bin [PATH]
# # Eg, to remove ~/bin from $PATH
# #     pathremove ~/bin PATH
# pathremove () {
#     local IFS=':'
#     local newpath
#     local dir
#     local var=${2:-PATH}
#     # Bash has ${!var}, but this is not portable.
#     for dir in `indirect_expand "$var"`; do
#         IFS=''
#         if [ "$dir" != "$1" ]; then
#             newpath=$newpath:$dir
#         fi
#     done
#     export $var=${newpath#:}
# }

# # Usage: pathprepend /path/to/bin [PATH]
# # Eg, to prepend ~/bin to $PATH
# #     pathprepend ~/bin PATH
# pathprepend () {
#     # if the path is already in the variable,
#     # remove it so we can move it to the front
#     pathremove "$1" "$2"
#     #[ -d "${1}" ] || return
#     local var="${2:-PATH}"
#     local value=`indirect_expand "$var"`
#     export ${var}="${1}${value:+:${value}}"
# }

# # Usage: pathappend /path/to/bin [PATH]
# # Eg, to append ~/bin to $PATH
# #     pathappend ~/bin PATH
# pathappend () {
#     pathremove "${1}" "${2}"
#     #[ -d "${1}" ] || return
#     local var=${2:-PATH}
#     local value=`indirect_expand "$var"`
#     export $var="${value:+${value}:}${1}"
# }

# # Usage: ssource filename
# ssource () {
#     if [ -r "$1" ]; then
#         . "$1"
#     fi
# }

# # Create a new directory and enter it
# function mkd() {
#     mkdir -p "$@" && cd "$_";
# }

# # Change working directory to the top-most Finder window location
# function cdf() { # short for `cdfinder`
#     cd "$(osascript -e 'tell app "Finder" to POSIX path of (insertion location as alias)')";
# }

# # Create a .tar.gz archive, using `zopfli`, `pigz` or `gzip` for compression
# function targz() {
#     local tmpFile="${@%/}.tar";
#     tar -cvf "${tmpFile}" --exclude=".DS_Store" "${@}" || return 1;

#     size=$(
#         stat -f"%z" "${tmpFile}" 2> /dev/null; # macOS `stat`
#         stat -c"%s" "${tmpFile}" 2> /dev/null;  # GNU `stat`
#     );

#     local cmd="";
#     if (( size < 52428800 )) && hash zopfli 2> /dev/null; then
#         # the .tar file is smaller than 50 MB and Zopfli is available; use it
#         cmd="zopfli";
#     else
#         if hash pigz 2> /dev/null; then
#             cmd="pigz";
#         else
#             cmd="gzip";
#         fi;
#     fi;

#     echo "Compressing .tar ($((size / 1000)) kB) using \`${cmd}\`…";
#     "${cmd}" -v "${tmpFile}" || return 1;
#     [ -f "${tmpFile}" ] && rm "${tmpFile}";

#     zippedSize=$(
#         stat -f"%z" "${tmpFile}.gz" 2> /dev/null; # macOS `stat`
#         stat -c"%s" "${tmpFile}.gz" 2> /dev/null; # GNU `stat`
#     );

#     echo "${tmpFile}.gz ($((zippedSize / 1000)) kB) created successfully.";
# }

# # Determine size of a file or total size of a directory
# function fs() {
#     if du -b /dev/null > /dev/null 2>&1; then
#         local arg=-sbh;
#     else
#         local arg=-sh;
#     fi
#     if [[ -n "$@" ]]; then
#         du $arg -- "$@";
#     else
#         du $arg .[^.]* ./*;
#     fi;
# }

# # Use Git’s colored diff when available
# hash git &>/dev/null;
# if [ $? -eq 0 ]; then
#     function diff() {
#         git diff --no-index --color-words "$@";
#     }
# fi;

# # Create a data URL from a file
# function dataurl() {
#     local mimeType=$(file -b --mime-type "$1");
#     if [[ $mimeType == text/* ]]; then
#         mimeType="${mimeType};charset=utf-8";
#     fi
#     echo "data:${mimeType};base64,$(openssl base64 -in "$1" | tr -d '\n')";
# }

# # Compare original and gzipped file size
# function gz() {
#     local origsize=$(wc -c < "$1");
#     local gzipsize=$(gzip -c "$1" | wc -c);
#     local ratio=$(echo "$gzipsize * 100 / $origsize" | bc -l);
#     printf "orig: %d bytes\n" "$origsize";
#     printf "gzip: %d bytes (%2.2f%%)\n" "$gzipsize" "$ratio";
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
