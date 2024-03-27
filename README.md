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
  
## To get started/installation
- (re)Install Ubuntu on WSL.
- Install dotfiles via Terminal command;

```zsh
export REPO="jasperv/dotfiles" && echo | /bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/$REPO/wsl-ubuntu/install)"
```

- Reboot!
- Login to Bitwarden CLI.
- Open VSCode with with alias `dotcodes`.
- Checkout first repo `gsrc <REPO_URL>`.

### Inspired by
https://www.atlassian.com/git/tutorials/dotfiles

https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789

### Build based on
https://github.com/kalkayan/dotfiles

https://github.com/MikeMcQuaid/strap

https://github.com/mathiasbynens/dotfiles

## TODO:
- verify -fsSL params + shorter url somehow???
- stuff from obisidian file
- automate as much as possible
- dev mode uninstall script  
