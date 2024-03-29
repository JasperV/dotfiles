# .files

<!-- prettier-ignore -->
[![It works on my machine](<https://img.shields.io/static/v1?label=It%20works%20on%20my%20machine&message=¯\\_(ツ)_/¯&color=brightgreen&style=for-the-badge>)](https://git.io/jasperv)
[![GitHub Repo](https://img.shields.io/static/v1?label=github&message=jasperv/dotfiles&color=brightgreen&style=for-the-badge&logo=github)](https://github.com/JasperV/dotfiles)
[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://img.shields.io/static/v1?label=repo%20status&message=active&color=brightgreen&style=for-the-badge)](https://www.repostatus.org/#active)

These are my dotfiles. Some things are automated, some things are not. Still a bit messy, but I will cleanup up as I go along.

## Should be/should have
- Idempotent [install](./install) script (with update function)
- [Branch](https://github.com/JasperV/dotfiles/branches) based for different OS'es
- Sets [OS and User level configuration](./.macos) a.k.a. as much as possible
- [Mackup](https://github.com/lra/mackup) to sync files
  
## To get started/installation
- (re)Install macOS (or get a new Mac).
- Go through initial macOS setup; Login to iCloud; Use iCloud as recovery for FileVault.
- Update macOS.
- Allow terminal to update or delete other applications; Settings -> Privacy & Security -> App Management
- Install dotfiles via Terminal command;

```zsh
export REPO="jasperv/dotfiles" && echo | /bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/$REPO/macos/install)"
```

- Login to Bitwarden.
- Login to Authy.
- Login to Chrome, only personal account.
- Login to Insync, but only add personal account and only sync `Mackup` folder.
- Run `mackup restore`.
- Disable Spotlight default shortcut key; Settings -> Keyboard -> Keyboard Shortcuts -> Spotlight.
- Run and configure [Alfred](https://www.alfredapp.com/).
- Run and configure Teamviewer -> Connect to personal account.
- Reboot!
- Run Karabiner Elements.
- Configure Insync with remaining accounts and remaining directories to sync.
- Login to Bitwarden CLI. Verify Alfred plugin behaviour.
- Launch and configure Dozer.
- Launch xbar.
- Launch eqMac. Equalizer preset: Electronic.
- Launch, login and configure to Spotify.
- Run Monolingual.
- Go through all System Settings.
- Configure Finder.
- Add Chrome Profiles. And configure offline options for Gmail, Drive and Calendar.
- Login to WhatsApp.
- Login to VSCode.
- Connect Messages to iPhone.
- Add hardware: Mouse, keyboard, earbuds, printer, speaker(s). 
- Reboot to verify start on login behaviour of eqMac, Teamviewer, Alfred, Insync, Karabiner and Dozer.

### Inspired by
https://www.atlassian.com/git/tutorials/dotfiles

https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789

### Build based on
https://github.com/kalkayan/dotfiles

https://github.com/MikeMcQuaid/strap

https://github.com/mathiasbynens/dotfiles

## TODO:
- [Anka](https://veertu.com/anka-develop/) to test on macOs virtual machines
- verify -fsSL params + shorter url somehow???
- stuff from obisidian file
- automate as much as possible
- dev mode uninstall script
  
