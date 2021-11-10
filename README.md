# .files

These are my dotfiles.

Some things are automated, some things are not.

Still a bit messy, but I will cleanup up as I go along.

This branch is for macOS systems. Other branches are used on other systems.

[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)

## Prepare

Before the install script is run, remove all macOS default apps that you do not want. In my case these are:
books, calculator, Calendar, chess, Contacts, dictionary, facetime, home, mail, maps, messages, news, photos, podcasts, reminders, stickies, stocks, textedit, time machine & voice memos. I also completely disable Siri and Spotlight.

### Instructions

Boot into recovery mode (`⌘ Command + R`), then in the terminal, disable System Integrity Protection: `csrutil disable`. Reboot as admin, or login when not admin, then:

```zsh
# Disable Spotlight indexing
sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist
sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.coreduetd.osx.plist

# Disable Siri
sudo plutil -replace Disabled -bool true /System/Library/LaunchAgents/com.apple.Siri.plist
sudo plutil -replace Disabled -bool true /System/Library/LaunchAgents/com.apple.assistantd.plist

# Disable "Ask Siri"
defaults write com.apple.assistant.support "Assistant Enabled" -bool false

# Remove Siri icon from status menu
defaults write com.apple.Siri StatusMenuVisible -bool false

# When not as admin
login <username>

sudo mount -uw / System / Applications

cd /Applications/

sudo rm -rf Mail.app/
sudo rm -rf Stickies.app/
sudo rm -rf Chess.app/
# etc...
```

Reboot into recovery again (`⌘ Command+R`) and re-enable System Integrity Protection: `csrutil enable`. Reboot, disable Siri completely `sudo mdutil -a -i off` + via GUI and then start install as outlined below.

## Install

For now; manually sign in to the App Store...

```zsh
echo | /bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/JasperV/dotfiles/macos/install)"
```

If there are macOS updates, it will reboot. Run the script again to continue.

When done, run the following (Apps) to finalize the setup:

- [Monolingual](https://ingmarstein.github.io/Monolingual/) to reclaim some disk space

## Features

- Idempotent install and update script
- Branch based for different OS'es
- [Anka](https://veertu.com/anka-develop/) to test on macOs virtual machines
- [Mackup](https://github.com/lra/mackup) to sync configuration (with sensitive data)
- [AppCleaner](https://freemacsoft.net/appcleaner/) for properly uninstalling apps
- [Alfred](https://www.alfredapp.com/) as a replacement for Spotlight and general swiss army knife

### Inspired by

https://www.atlassian.com/git/tutorials/dotfiles

https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789

### Build based on

https://github.com/kalkayan/dotfiles

https://github.com/MikeMcQuaid/strap

https://github.com/mathiasbynens/dotfiles

### Notes

##### Read manuals and readme's of all installed apps/libs

- https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git
- https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/common-aliases
- https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/npm
- https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/vscode
- https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/brew
- .zprofile

#### TODO

verify all files in homedir - gitignore + vscode settings
bitwarden git credential helper rewrite - make work in all cases - e.g. sod + calcas both on dev.azure.com
script for booting up and shutting down downloads
.macos idempotent + errors/issues
auto start when rebooted after update - https://stackoverflow.com/questions/6442364/running-script-upon-login-mac

https://github.com/antonmedv/fx - alias as json
https://github.com/antonmedv/eat
https://github.com/nvbn/thefuck
pnpm
https://github.com/muesli/gitty
set vscode as editor for all git functions - https://github.com/sapegin/dotfiles/blob/master/tilde/.gitconfig
https://github.com/sharkdp/bat ipv ccat
https://htop.dev/
https://the.exa.website/
https://sindresorhus.com/utc-time
https://github.com/paulirish/dotfiles
https://getcaption.co/ - brew
https://github.com/pock/pock - no touchbar on new macbooks
https://numi.app/
gmvault?
google photos backup?
create bootvolume on usb from downloaded macos installer script - https://github.com/veertuinc/getting-started#create-vm-templatebash
https://tisgoud.nl/2020/09/keyboard-redefined-part-2/
solarized theme for everything
https://gist.github.com/kevin-smets/8568070 - iterm colors
https://github.com/MikeMcQuaid/dotfiles/blob/master/shrc.sh
https://github.com/rambleraptor/dotfiles/blob/master/zsh/config.zsh
https://github.com/marlonrichert/zsh-autocomplete
https://github.com/zsh-users/zsh-apple-touchbar - no touchbar on new macbooks
https://github.com/zsh-users/zsh-history-substring-search
https://github.com/Murderlon/dotfiles/blob/main/zsh/.aliases
https://github.com/marcelkornblum/dotfiles/blob/master/.utils
https://github.com/marcelkornblum/dotfiles/blob/master/.builtins
battery? https://github.com/sapegin/dotfiles/blob/master/setup/osx.sh
echo "\* Follow the following tutorial if your display sucks"
echo "https://www.mathewinkson.com/2013/03/force-rgb-mode-in-mac-os-x-to-fix-the-picture-quality-of-an-external-monitor"
echo "The script to generate the right calibration is under resources/patch-screen.rb"
https://github.com/wesbos/dotfiles/blob/master/.zshrc
https://github.com/sapegin/dotfiles/blob/master/zsh/aliases.zsh
https://github.com/atomantic/dotfiles/tree/main/configs
https://github.com/webpro/dotfiles - github action testing!
https://github.com/seebi/dircolors-solarized
https://github.com/atomantic/dotfiles
vscode plugins - by means of default project?\ helemaal goed en clean opzetten - handleiding lezen
integrate vscode terminal with same font/theme/colors etc...
support github codespaces
run monolingual regulary is there a cli? or use applescript/automater to automate
https://github.com/joelparkerhenderson/brewfile
https://dev.to/mattstratton/my-brewfile-1pob
please
fuck
https://starship.rs/ ipv pure?
remove control center items from status bar
set color profile to apple rgb
https://github.com/mafredri/zsh-async
https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/colorize
https://dev.to/nickytonline/my-git-aliases-5dea
git log: git log --graph --pretty=\"format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr %Creset'\" --abbrev-commit --date=relative\
find dev alternative for divvy -> hammerspoon?\
checkout a list of specific git repositories? - e.g. all from github/bitbucket to src folder?\
https://kalis.me/increasing-development-productivity-repository-management/
https://dev.to/awwsmm/101-bash-commands-and-tips-for-beginners-to-experts-30je
https://laracasts.com/series/setup-a-mac-dev-machine-from-scratch?utm_source=codropscollective
https://blog.sindresorhus.com/macos-tips-tricks-13046cf377f8#.ywacpzm3v
https://www.blockloop.io/mastering-bash-and-terminal
https://www.wezm.net/technical/2019/10/useful-command-line-tools/
https://github.com/kcrawford/dockutil
https://github.com/junegunn/fzf
https://wesbos.com/uses/
https://github.com/Kevin-De-Koninck/Clean-Me
https://askubuntu.com/questions/59846/bash-history-search-partial-up-arrow
https://github.com/wesbos/dotfiles
https://github.com/nicolashery/mac-dev-setup
https://github.com/jlevy/the-art-of-command-line
https://sourabhbajaj.com/mac-setup/iTerm/zsh.html
https://github.com/denisidoro/navi
https://httptoolkit.tech/mock/
http://http-prompt.com/
https://matthewpalmer.net/blog/2018/04/14/ultimate-pro-guide-best-secret-mac-features/index.html
https://medium.com/@caulfieldOwen/turn-your-keyboard-into-a-text-editing-rocket-1514d8474d2d
https://github.com/jaredculp/iterm2-borderless-padding
https://github.com/nikitavoloboev/my-mac-os
https://gist.github.com/kevin-smets/8568070
https://github.com/junegunn/fzf
https://github.com/dylanaraps/pure-bash-bible
https://github.com/blacs30/wd
https://askubuntu.com/questions/90013/how-do-i-enable-syntax-highlighting-in-nano
https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/
https://mattstauffer.co/blog/setting-up-a-new-os-x-development-machine-part-1-core-files-and-custom-shell/
https://github.com/mischah/ibrew + other from this repo\
https://github.com/fniephaus/alfred-homebrew
https://github.com/drduh/macOS-Security-and-Privacy-Guide
http://newosxbook.com/files/moxii3/AppendixA.pdf
https://github.com/Kevin-De-Koninck/Clean-Me
https://github.com/kristovatlas/osx-config-check
https://github.com/SummitRoute/osxlockdown
https://github.com/brotandgames/bagcli
https://github.com/alichtman/shallow-backup
https://www.iamdeveloper.com/blog/2018-01-12-my-mac-setup/
https://github.com/sb2nov/mac-setup
https://github.com/vitorgalvao/tiny-scripts
https://github.com/yudai/gotty
https://osquery.io/
https://github.com/sharkdp/fd
https://github.com/wtfutil/wtf
https://github.com/jesseduffield/lazygit
https://github.com/k4m4/terminals-are-sexy
https://github.com/guarinogabriel/Mac-CLI
https://github.com/paulirish/git-recent
https://github.com/rgcr/m-cli
https://github.com/ptb/mac-setup
https://remysharp.com/2018/08/23/cli-improved/
https://github.com/sharkdp/bat
https://github.com/therealklanni/purity
https://layautoapp.com/?ref=producthunt
https://github.com/rajivkanaujia/alphaworks/wiki/Handy-Mac-Commands
https://bitbucket.org/rajivkanaujia/alphaworkspub/src/master/scripts/
https://stackoverflow.com/questions/44549733/how-to-use-visual-studio-code-as-default-editor-for-git-mergetool
https://github.com/codebytere/dotify
https://www.imore.com/manage-your-windows-pro-macos
https://github.com/alebcay/awesome-shell
https://github.com/herrbischoff/awesome-macos-command-line
https://github.com/kaunteya/MacCacheCleaner
https://github.com/bhilburn/powerlevel9k
https://github.com/joeyhoer/starter
https://github.com/sebhildebrandt/mmon
https://github.com/NARKOZ/hacker-scripts
https://dev.to/nickytonline/my-visual-studio-code-setup-2ima
https://github.com/monfresh/laptop
https://github.com/anishathalye/lumen
https://github.com/rkalis/dotfiles/tree/master/hammerspoon
https://github.com/Hammerspoon/hammerspoon/wiki/Sample-Configurations
https://blog.theodo.fr/2018/03/making-runtime-funtime-hammerspoon/
https://gist.github.com/max-mykhailenko/6548a102c0e955e3df8b
https://gist.github.com/saetia/1623487
https://github.com/so-fancy/diff-so-fancy
http://ohshitgit.com/
https://bitsofco.de/git-aliases-for-lazy-developers/
https://github.com/rictic/bash_profile
https://objective-see.com/products/lulu.html
https://github.com/cjbassi/gotop
https://github.com/bkuhlmann/mac_os
https://github.com/bkuhlmann/dotfiles
https://github.com/andrewconnell/osx-install
https://hacker-tools.github.io/
https://pirate.github.io/security-growler/
https://github.com/bkuhlmann/mac_os-config
https://github.com/jakehilborn/displayplacer
https://www.bhnywl.com/blog/setting-up-a-macbook-for-front-end-development/
full keyboard support on terminal\
keyboard support on media players\
https://opensource.com/article/18/9/tips-productivity-zsh\
https://github.com/sindresorhus/terminal-snazzy
https://github.com/Neilpang/acme.sh/wiki/Synology-RT1900ac-and-RT2600ac-install-guide
https://forum.synology.com/enu/viewtopic.php?f=265&t=123003
use all with solarized dark color theme(s)!

aflred workflows - packal.org:
alfred plugins - speedtest, spotify, maps, colors, convert, kill, play song, encode decode, git?, packal, timezones, units
npm i -g alfred-emoj
npm i -g alfred-npms
npm i -g alfred-fkill
npm i -g alfred-coolors
npm i -g alfred-vpn
npm i -g alfred-show-network-info
npm i -g alfred-currency-conversion
npm i -g alfred-polyglot
bitwarden v2
convert
encode/decode
hotkeys
spotify mini
timezone

npm packages: - also add update all command somewhere
diff-so-fancy
emoj
lock-cli
fkill-cli
pageres-cli
fast-cli
clipboard-cli
speed-test
cpy-cli
manage-wifi-cli
public-ip-cli
latest-version-cli
term-img-cli
is-online-cli
open-editor-cli
opn-cli
file-type-cli
is-progressive-cli
is-camera-on-cli
current-path-cli
npm-user-cli
pretty-ms-cli
npm-check
fixpack
node-gyp

when all done, comment each and every line of code... And make a nice looking readme/repo githubpages site
