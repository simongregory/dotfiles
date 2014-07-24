PACKAGES="$HOME/Library/Application Support/Sublime Text 3/Packages"
SUBLIME_DOT="$HOME/.dotfiles/sublime"
USER_PACKAGE="$PACKAGES/User"
USER_SETTINGS="Preferences.sublime-settings"
USER_KEY_MAP="Default (OSX).sublime-keymap"
MD_SETTINGS="Markdown.sublime-settings"

mkdir -p "$USER_PACKAGE"
cd "$PACKAGES"

# link subl command line tool to the app by using:
#ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" subl

function link() {
  # If sublime/or user has already created the user settings stub back it up
  if [[ -f "$1" && ! -L "${1}" ]] ; then
    mv "$1" "$1.bak"
  fi

  if [[ ! -L "$1" ]] ; then
    ln -s "$2" "$1"
  fi
}

link "$USER_PACKAGE/$USER_SETTINGS" "$SUBLIME_DOT/$USER_SETTINGS"
link "$USER_PACKAGE/$USER_KEY_MAP" "$SUBLIME_DOT/$USER_KEY_MAP"
link "$USER_PACKAGE/$MD_SETTINGS" "$SUBLIME_DOT/$MD_SETTINGS"

# Use https to avoid problems with proxies
if [[ ! -d "Cucumber" ]]; then
  echo "Installing Cucumber Submlime package"
  #git clone https://github.com/npverni/cucumber-sublime2-bundle.git Cucumber
  git clone https://github.com/drewda/cucumber-sublime-bundle.git Cucumber
fi

if [[ ! -d "ActionScript3" ]]; then
  echo "Installing ActionScript 3 Submlime package"
  git clone https://github.com/lucasdupin/SublimeAS3.git ActionScript3
fi

if [[ ! -d "Git" ]]; then
  echo "Installing Git Submlime package"
  git clone https://github.com/kemayo/sublime-text-2-git.git Git
fi

if [[ ! -d "CoffeeScript-Sublime-Plugin" ]]; then
  echo "Installing CoffeeScript Submlime package"
  git clone https://github.com/Xavura/CoffeeScript-Sublime-Plugin.git
fi
