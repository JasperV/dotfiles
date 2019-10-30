# .files

These are my dotfiles.

They target macOS systems.

Still a bit messy, but I will cleanup up as I go along.

## Install
```bash
curl -Ls get.jasperv.nl | sh
```

## Features
- Named features will go here

## TODO
use anka to test it all on clean mac image\
mac cli dev tools work well with own installed git\
rename to dotfiles.jasperv.nl\
install\
uninstall\
update\
settings\
configs\
mac security settings separate repo\
mac config separate repo to allow for fork from mths\
vscode setting config + plugins - seperate repo to use in other variants (online) as well\
apps config backup via mackup as far as possible\
verify commands and/or app invokations before they are used, to prevent errors\
behave proper on multiple reruns (install) - e.g. don't error, show info and update - upstall! use paulirish code!\
defaults for editorconfig and other settings so that these not need to be put in all repo's (only when other people start working on it)

### programs/drivers/libs to install
anka\
java?\
whatsapp\
logitech harmony\
https://github.com/antonmedv/fx\
https://github.com/antonmedv/eat\
https://github.com/antonmedv/fx-completion\
https://github.com/sindresorhus/pure\
alfred plugins - speedtest, spotify, maps, colors, convert, kill, play song, lastpass, encode decode, git?, packal, timezones, units - separate file\
solarized theme for everything\
tiptoi\
https://github.com/nvbn/thefuck\
vscode plugins - by means of default project?\
little snitch\
https://github.com/jessfraz/gmailfilters\
rocket?\
consider pnpm\
https://github.com/jingweno/ccat\
https://github.com/nicolargo/glances\
https://httpie.org/\
https://getharmony.xyz/\
brew cask install macpaw gemini # TODO: specific version -> license\
add alfred to mackup\
https://github.com/Mortennn/Dozer\
disable siri - https://apple.stackexchange.com/questions/258816/how-to-completely-disable-siri-on-sierra/258981#258981\
zsh completions - git, files and folders etc...\
https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md\
https://github.com/dominictarr/low-battery-warning\
https://github.com/whomwah/qlstephen\
https://www.quicklookplugins.com/\
https://www.maketecheasier.com/extend-mac-quick-look-with-plugins/\
https://github.com/sindresorhus/quick-look-plugins
on opening of new session, unlock bw vault and set session var
remove all references to email and usernames - templatize it in
bitwarden git credential helper rewrite from ground up - make work in all cases

#### dotfiles examples/inspiration
https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/
https://kalis.me/dotfiles-automating-macos-system-configuration/
https://github.com/rkalis/dotfiles
https://github.com/jessfraz/dotfiles
https://github.com/MikeMcQuaid/dotfiles
https://github.com/MikeMcQuaid/strap
https://github.com/ruimarinho/authy-client
https://github.com/wesbos/dotfiles
https://github.com/webpro/dotfiles
https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789
https://github.com/paulirish/dotfiles
https://github.com/rkalis/dotfiles
https://github.com/sapegin/dotfiles
https://github.com/hql287/dotfiles
https://github.com/sapegin/dotfiles/blob/dd063f9c30de7d2234e8accdb5272a5cc0a3388b/includes/bash_prompt.bash
https://github.com/sapegin/dotfiles/wiki/OS-X-Apps
https://github.com/hql287/dotfiles
https://github.com/Murderlon/dotfiles
https://marcelkornblum.com/dotfiles-and-configuration-bf60510cdb93
https://github.com/marcelkornblum/dotfiles
https://github.com/sitaktif/dotfiles/tree/master
https://github.com/camjackson/dotfiles
https://github.com/rambleraptor/dotfiles
https://github.com/atomantic/dotfiles

#### other
https://github.com/lukechilds/zsh-nvm
https://github.com/lukechilds/zsh-better-npm-completion
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
https://wesbos.com/uses/
https://github.com/wesbos/dotfiles
https://github.com/nicolashery/mac-dev-setup
https://github.com/jlevy/the-art-of-command-line
https://sourabhbajaj.com/mac-setup/iTerm/zsh.html
https://github.com/denisidoro/navi
https://github.com/IngmarStein/Monolingual
https://denysdovhan.com/spaceship-prompt/
https://httptoolkit.tech/mock/
https://github.com/antonmedv/fx
http://http-prompt.com/
https://httpie.org/
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
https://github.com/denysdovhan/spaceship-prompt
https://github.com/sharkdp/fd
https://github.com/wtfutil/wtf
https://github.com/jesseduffield/lazygit
https://github.com/k4m4/terminals-are-sexy
https://github.com/guarinogabriel/Mac-CLI
https://github.com/nicolargo/glances
https://github.com/paulirish/git-recent
https://github.com/rgcr/m-cli
https://github.com/ptb/mac-setup
https://remysharp.com/2018/08/23/cli-improved/
https://github.com/sharkdp/bat
https://github.com/therealklanni/purity
https://github.com/intelfx/pure
https://github.com/jakubroztocil/httpie
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
full keyboard support for delete and home keys etc...\
proper keyboard keymapping for ctrl alt etc...\
full keyboard support on terminal\
keyboard support on media players\
properly configure keyboard for mac with colemak and functions keys support instead of touchbar\
https://opensource.com/article/18/9/tips-productivity-zsh\
https://github.com/sindresorhus/terminal-snazzy
https://github.com/Neilpang/acme.sh/wiki/Synology-RT1900ac-and-RT2600ac-install-guide
https://forum.synology.com/enu/viewtopic.php?f=265&t=123003

### Inspired by
https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/
https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789
