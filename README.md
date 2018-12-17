# .files

These are my dotfiles.

They target macOS systems.

## Install
```bash
curl -Lks https://raw.githubusercontent.com/JasperV/dotfiles/master/upstall.sh | sh
```

## TODO
- [ ] git config; https://github.com/mathiasbynens/dotfiles#add-custom-commands-without-creating-a-new-fork - also use private email address
- [ ] Use lastpass helper vs osx helper; https://github.com/lastpass/lastpass-cli/blob/master/contrib/examples/git-credential-lastpass
- [ ] Make sourcing in current shell scope as well
- [ ] Make short url -> rename install to upstall, put in folder, proper curl command like so: `curl get.darryl.sh | sh`
- [ ] verify commands and/or app invokations before they are used, to prevent errors

### Inspired by
https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/
https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789
https://blog.flowblok.id.au/2013-02/shell-startup-scripts.html
