PACKAGES="$HOME/Library/Application Support/Sublime Text 3/Packages"
USER_PACKAGE="$PACKAGES/User"
USER_SETTINGS="$USER_PACKAGE/Preferences.sublime-settings"

mkdir -p "$USER_PACKAGE"
cd "$PACKAGES"

# link subl command line tool to the app by using:
#ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" subl

# If sublime/or user has already created the user settings stub back it up
if [[ -f "$USER_SETTINGS" && ! -L "${USER_SETTINGS}" ]] ; then
  mv "$USER_SETTINGS" "$USER_SETTINGS.bak"
fi

if [[ ! -L "$USER_SETTINGS" ]] ; then
  ln -s "$HOME/.dotfiles/sublime/Preferences.sublime-settings" "$USER_SETTINGS"
fi

# Using https to avoid problems with proxies
if [[ ! -d "Cucumber" ]]; then
  echo "Installing Cucumber Submlime package"
  #git clone https://github.com/npverni/cucumber-sublime2-bundle.git Cucumber
  git clone git://github.com/drewda/cucumber-sublime2-bundle.git Cucumber
fi

if [[ ! -d "ActionScript3" ]]; then
  echo "Installing ActionScript 3 Submlime package"
  git clone https://github.com/lucasdupin/SublimeAS3.git ActionScript3
fi

if [[ ! -d "Git" ]]; then
  echo "Installing Git Submlime package"
  git clone https://github.com/kemayo/sublime-text-2-git.git Git
fi

if [[ ! -d "CoffeeScript" ]]; then
  echo "Installing CoffeeScript Submlime package"
  git clone https://github.com/Xavura/CoffeeScript-Sublime-Plugin.git
fi
