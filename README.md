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

This branch is for macOS systems. Other branches are used on other systems, someday.

This is a different take on dotfiles. After browsing dozens and dozens of other people's dotfiles. And looking at tools like Boxen, Strap, etc... This one works a little different. Most of the stuff is synced using Mackup via Google Drive. This means I can have keys and other private data in there. It means I do not have commit things when I change a little thing every now and then. Also it keeps most of the stuff that is not relevant for others out of this repo. So it is easier to adopt for yourself. Since most other dotfiles repo's are either very specific unique snowflakes, which make them difficult to adapt, since you have to switch completely to someone else's way of working, or they are way to generic, which in term makes them hard to tailor to your own needs as well.

## Install

- (re)Install macOS (via HDD wipe or in case of Anka usage).
- Go through initial setup; Do login to iCloud; Use iCloud as recovery for FileVault.
- Update macOS.
- Install dotfiles via Terminal command;

```zsh
export REPO="jasperv/dotfiles" && echo | /bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/$REPO/macos/install)"
```
// TODO: verify -fsSL params + shorter url somehow???

- Login to Bitwarden.
- Login to Insync, but only add personal account and only sync [Mackup](https://github.com/lra/mackup) directory.
- Run `mackup restore`.
- Run and configure [Alfred](https://www.alfredapp.com/). Disable Spotlight default shortcut key.
- Run and configure Teamviewer. Connect account.
- Reboot!

When all done, there are still some things left to check [postinstall.md](./POSTINSTALL.md)

### Inspired by

https://www.atlassian.com/git/tutorials/dotfiles

https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789

### Build based on

https://github.com/kalkayan/dotfiles

https://github.com/MikeMcQuaid/strap

https://github.com/mathiasbynens/dotfiles
