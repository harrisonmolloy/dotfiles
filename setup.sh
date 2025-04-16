!/usr/bin/env zsh

### install command line tools
xcode-select --install

### install Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# install homebrew packages
brew bundle install

### Setup Fonts
alias fontbook="open -b com.apple.FontBook"
fontbook .config/fonts/SF-Mono-Nerd-Font-master/*.otf

### Setup Iterm 2
## Specify the preferences directory
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/.config/iterm2"
## Tell iTerm2 to use the custom preferences in the directory
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true
