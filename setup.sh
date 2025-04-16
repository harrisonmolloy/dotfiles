#!/usr/bin/env zsh

### Macos settings
## mouse speed
defaults write NSGlobalDomain com.apple.mouse.scaling -float "3"
## turn off mouse acceleration
defaults write NSGlobalDomain com.apple.mouse.linear -bool "true"
## set fn to show Emoji & Symbols
defaults write com.apple.HIToolbox AppleFnUsageType -int "2"
## Disable automatic rearranging of spaces
defaults write com.apple.dock "mru-spaces" -bool "false" && killall Dock
## When a new disk is connected, do not ask to make it a time machine volume
defaults write com.apple.TimeMachine "DoNotOfferNewDisksForBackup" -bool "true"
## Set dock icon size
defaults write com.apple.dock "tilesize" -int "64" && killall Dock
## autohide the dock
defaults write com.apple.dock "autohide" -bool "true" && killall Dock
## Hide recent items the dock
defaults write com.apple.dock "show-recents" -bool "false" && killall Dock
## Set hide animation to scale
defaults write com.apple.dock "mineffect" -string "scale" && killall Dock
## Scroll up on a Dock icon to show all Space's opened windows for an app, or open stack.
defaults write com.apple.dock "scroll-to-open" -bool "true" && killall Dock
## Show path bar in the bottom of the Finder windows
defaults write com.apple.finder "ShowPathbar" -bool "true" && killall Finder
## Set default finder view to list
defaults write com.apple.finder "FXPreferredViewStyle" -string "Nlsv" && killall Finder
## Keep folders on top in finder
defaults write com.apple.finder "_FXSortFoldersFirst" -bool "true" && killall Finder

scriptdir=${0:a:h}
symlinkdir="${scriptdir}/symlinks"
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
brew bundle install

### Setup Fonts
open -b com.apple.FontBook "${fontdir}"/*.otf

### Setup Iterm 2
## Specify the preferences directory
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "${itermcustomfolder}"
## Tell iTerm2 to use the custom preferences in the directory
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

## Complete :)
echo "Setup Complete"
