#!/bin/sh

function link() {
  # If vscode/or user has already created the
  # user settings stub back it up
  if [[ -f "$2" && ! -L "${2}" ]] ; then
    mv "$2" "$2.bak"
  fi

  if [[ ! -L "$2" ]] ; then
    ln -s "$1" "$2"
  fi
}

link /Users/$USER/.dotfiles/vscode/settings.json /Users/$USER/Library/Application\ Support/Code/User/settings.json
link /Users/$USER/.dotfiles/vscode/keybindings.json /Users/$USER/Library/Application\ Support/Code/User/keybindings.json
link /Users/$USER/.dotfiles/vscode/snippets/ /Users/$USER/Library/Application\ Support/Code/User
