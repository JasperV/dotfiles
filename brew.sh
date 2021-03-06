#!/usr/bin/env zsh

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names

# Install `wget` with IRI support.
brew install wget --with-iri

# Install GnuPG to enable PGP-signing commits.
# brew install gnupg

# Install Java
brew cask install java

# Install more recent versions of some macOS tools.
# TODO: brew install git
brew install grep
brew install openssh
brew install screen
brew install php
brew install gmp
brew install bash

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install other useful binaries.
brew install ack
brew tap bazelbuild/tap
brew tap-pin bazelbuild/tap
brew install bazelbuild/tap/bazel
brew install chromaprint
brew install dockutil
#brew install exiv2
brew install imagemagick --with-webp
brew install jq
brew install lua
brew install lynx
brew install mackup
brew install mas
brew install p7zip
brew install pigz
brew install pv
brew install python2
brew install python3
brew install rename
brew install rlwrap
brew install ssh-copy-id
brew install tree
brew install vbindiff
brew install wifi-password
brew install z
brew install zopfli

# Install applications
brew cask install aerial
brew cask install alfred
brew cask install android-file-transfer
brew cask install balenaetcher
# brew cask install betterzip
brew cask install docker
brew cask install franz
brew cask install garmin-fresh
brew cask install google-backup-and-sync
brew cask install google-chrome
brew cask install handbrake
brew cask install hammerspoon
brew cask install harmony
brew cask install iterm2
brew cask install little-snitch
brew cask install microsoft-office
brew cask install postman
brew cask install private-internet-access
brew cask install provisionql
brew cask install qlcolorcode
brew cask install qlimagesize
brew cask install qlmarkdown
brew cask install qlstephen
brew cask install qlvideo
brew cask install quicklookapk
brew cask install quicklook-json
brew cask install spotify
brew cask install subtitles
brew cask install suspicious-package
brew cask install teamviewer-host
brew cask install tiptoi-manager
brew cask install transmission
brew cask install vanilla
brew cask install vlc
brew cask install visual-studio-code
# brew cask install virtualbox
# brew cask install virtualbox-extension-pack
brew cask install webpquicklook
brew cask install wifi-explorer
brew cask install wireshark

# TODO: add keyboard and mouse drivers

# Install mas applications
# mas install 671736912 # FruitJuice
mas install 414515628 # Space Gremlin # TODO: pro version http://www.spacegremlinapp.com/mac/modes.html
# mas install 1153157709 # Speedtest by Ookla
mas install 1147396723 # WhatsApp Desktop
mas install 803453959 # Slack for Mac
mas install 883878097 # macOS server

# Remove outdated versions from the cellar.
brew cleanup
