# A reminder more than anything:

brew doctor #make sure all is ok

#brew install git
#brew install zsh
brew install fnm #fast node manager
brew install starship #terminal prompt
#brew install wget

brew install rbenv
brew install ruby-build

brew install p7zip
brew install remotemobprogramming/brew/mob
#brew install ctags
#brew install coreutils #gnu core utilities

#brew tap homebrew/cask

# Quick look plugins
# https://github.com/sindresorhus/quick-look-plugins

brew install --cask qlstephen

# QL Plugins may be embargoed
# list quarantine with: xattr -r ~/Library/QuickLook
# remove quarantine with: xattr -d -r com.apple.quarantine ~/Library/QuickLook

# Fonts to install

# For fonts that work with starship
# FiraCode, Inconsolata - light versions
open https://www.nerdfonts.com/
# The original FiraCode font can be found at
# open https://mozilla.github.io/Fira/
# There's a powerline version of this which looks good 18pt
# but it's not compatible with starship
# open https://fonts.google.com/specimen/Roboto+Mono

# Apps to install

open https://mac.github.com
open https://macromates.com
open https://www.virtualbox.org/wiki/Downloads
open https://code.visualstudio.com/download
open https://www.mozilla.org/en-GB/firefox/new/
open https://www.google.co.uk/chrome/
open https://rectangleapp.com/

brew install --cask \
  docker \
  rectangle

# Chrome Extensions
open -a "Google Chrome" "chrome://extensions"
# Talend API Tester - Free Edition
# JSON Viewer & use dark theme
