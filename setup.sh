#!/usr/bin/env zsh

scriptdir=${0:a:h}
symlinkdir="${scriptdir}/symlinks"
Brewfile="${scriptdir}/src/Brewfile"
fontdir="${scriptdir}/src/fonts/SF-Mono-Nerd-Font-master"
itermcustomfolder="${scriptdir}/src/iterm2"

### Link dotfiles to home
cp -rsf ${symlinkdir}/. ~

### got to home folder and source .zshrc to finish install
cd ~
source ~/.zshrc

### install command line tools
xcode-select --install

### install Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install homebrew packages
brew bundle install --file "${Brewfile}"

### Setup Fonts
open -b com.apple.FontBook "${fontdir}"/*.otf

### Setup Iterm 2
## Specify the preferences directory
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "${itermcustomfolder}"
## Tell iTerm2 to use the custom preferences in the directory
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

## Complete :)
echo "Setup Complete"
