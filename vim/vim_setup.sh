VIM_DOT="$HOME/.dotfiles/vim/vim.symlink"

git clone https://github.com/gmarik/Vundle.vim.git "$VIM_DOT/bundle/Vundle.vim"

cd ~/

vim +PluginInstall +qall

# command-t requires building, after installing via vundle, this is bumpy as it requires you to use the version
# of Ruby vi is using. On 10.9 this is 1.8.7, so
#
# cd vim.symlink/bundle/command-t/ruby/command-t
# /System/Library/Frameworks/Ruby.framework/Versions/1.8/usr/bin/ruby extconf.rb
# make
#
# make clean before make again

# For fancy airline support we need the right fonts, these are here:

cd ~/Documents/fonts/
git clone https://github.com/powerline/fonts powerline-fonts
cd powerline-fonts

echo "Now have a look in and run ./install.sh to install the powerline fonts"

