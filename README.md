# .files [![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active) [![It works on my machine](https://img.shields.io/badge/It%20works%20on%20my%20machine-%C2%AF%5C__(%E3%83%84)__%2F%C2%AF-brightgreen)](https://git.io/jasperv)

These are my dotfiles. Some things are automated, some things are not. Still a bit messy, but I will cleanup up as I go along.

This branch is for macOS systems. Other branches are used on other systems, someday.

#### TODO: step by step instructions + reasoning for this setup

## Install

Make sure you are signed in to the App Store.

```zsh
echo | /bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/JasperV/dotfiles/macos/install)"
```

If there are macOS updates, it will reboot. Run the script again to continue.

When done, run [Monolingual](https://ingmarstein.github.io/Monolingual/) to reclaim some disk space.

Enable iTerm shell integration

## Features

- Idempotent install (and update) script
- Branch based for different OS'es
- Sets OS and User level configuration
- [Anka](https://veertu.com/anka-develop/) to test on macOs virtual machines
- [Mackup](https://github.com/lra/mackup) to sync configuration files (with sensitive/private data)
- [Alfred](https://www.alfredapp.com/) as a replacement for Spotlight and general swiss army knife
- [AppCleaner](https://freemacsoft.net/appcleaner/) for properly uninstalling apps

### Inspired by

https://www.atlassian.com/git/tutorials/dotfiles

https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789

### Build based on

https://github.com/kalkayan/dotfiles

https://github.com/MikeMcQuaid/strap

https://github.com/mathiasbynens/dotfiles


