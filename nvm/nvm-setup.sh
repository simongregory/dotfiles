#!/usr/bin/env bash

# see https://github.com/nvm-sh/nvm#install--update-script for the latest version
# curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

function link() {
  # back up an existing file
  if [[ -f "$2" && ! -L "${2}" ]] ; then
    mv "$2" "$2.bak"
  fi

  if [[ ! -L "$2" ]] ; then
    ln -s "$1" "$2"
  fi
}

link /Users/$USER/.dotfiles/nvm/default-packages /Users/$USER/.nvm/default-packages
