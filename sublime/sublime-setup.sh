
mkdir -p ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User
ln -s ~/.dotfiles/sublime/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/Preferences.sublime-settings

cd ~/Library/Application\ Support/Sublime\ Text\ 2/Packages

# Using https to avoid problems with proxies
git clone https://github.com/npverni/cucumber-sublime2-bundle.git Cucumber
git clone https://github.com/lucasdupin/SublimeAS3.git ActionScript3
git clone https://github.com/kemayo/sublime-text-2-git.git Git
