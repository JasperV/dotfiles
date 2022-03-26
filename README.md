# .files

<!-- prettier-ignore -->
[![It works on my machine](<https://img.shields.io/static/v1?label=It%20works%20on%20my%20machine&message=¯\\_(ツ)_/¯&color=brightgreen&style=for-the-badge>)](https://git.io/jasperv)
[![GitHub Repo](https://img.shields.io/static/v1?label=github&message=jasperv/dotfiles&color=brightgreen&style=for-the-badge&logo=github)](https://github.com/JasperV/dotfiles)
[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://img.shields.io/static/v1?label=repo%20status&message=active&color=brightgreen&style=for-the-badge)](https://www.repostatus.org/#active)

These are my dotfiles. Some things are automated, some things are not. Still a bit messy, but I will cleanup up as I go along.

## Features

- Idempotent install script (with update function)
- Branch based for different OS'es
- Sets OS and User level configuration
- [Anka](https://veertu.com/anka-develop/) to test on macOs virtual machines
- [Mackup](https://github.com/lra/mackup) to sync configuration files (with sensitive/private data)
- [PlistWatch](https://github.com/catilac/plistwatch) for reading app configurations
- [Alfred](https://www.alfredapp.com/) as a replacement for Spotlight and general swiss army knife
- [AppCleaner](https://freemacsoft.net/appcleaner/) for properly uninstalling apps

This branch is for macOS systems. Other branches are used on other systems, someday.

This is a different take on dotfiles. After browsing dozens and dozens of other people's dotfiles. And looking at tools like Boxen, Strap, etc... This one works a little different. Most of the stuff is synced using Mackup via Google Drive. This means I can have keys and other private data in there. It means I do not have commit things when I change a little thing every now and then. Also it keeps most of the stuff that is not relevant for others out of this repo. So it is easier to adopt for yourself. Since most other dotfiles repo's are either very specific unique snowflakes, which make them difficult to adapt, since you have to switch completely to someone else's way of working, or they are way to generic, which in term makes them hard to tailor to your own needs as well.

## Install

Make sure you are signed in to the App Store.

```zsh
export REPO=JasperV && echo | /bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/$REPO/dotfiles/macos/install)"
```

If there are macOS updates, it will reboot automatically. Run the script again to continue.

When all done, there are still some things left that need to be done manually. These are:

disable all icloud syncing except find my mac

set dynamic wallpaper on all desktops/spaces
set screensaver 5 minutes, aerial
set show battery percentage in menu bar

When done, run [Monolingual](https://ingmarstein.github.io/Monolingual/) to reclaim some disk space.

setup insync - j + l + m - gmail

`mackup restore`

setup gmvault: gmvault sync -d ./Files/Google\ Drive/Gmail jas**_@_**.io
and other accounts

login to teamviewer host

login to vscode

Enable iTerm shell integration
load iterm profiles
start fig

Set bitwarden config

add all chrome profiles
set gmail, calendar, drive offline access - all profiles

set eqmac-2 equalizer to "electronic". statusbar, macos, login launch, sliders, auto-check, OTA

add local files (sets) to spotify and set preferences

set login items: iterm alfred insync dozer eqmac utctime

configure dozer

[login whatsapp](https://web.whatsapp.com/)

configure finder sidebar

Go through System Preferences: language, notifications, users -> login items (insync, iterm, alfred), extensions, security, software update, network (add wifi networks), bluetooth (add headphones), display, battery

install printer(s)

[setup keka context menu integration](https://github.com/aonez/Keka/wiki/Context-Menu)
And give access to home folder and external volumes
Run KekaExternalHelper and set as default for unzipping

### Inspired by

https://www.atlassian.com/git/tutorials/dotfiles

https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789

### Build based on

https://github.com/kalkayan/dotfiles

https://github.com/MikeMcQuaid/strap

https://github.com/mathiasbynens/dotfiles
