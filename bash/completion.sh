# Use git's autocompletion for inner commands. Assumes an install of git's
# bash `git-completion` script at $completion below (this is where Homebrew
# tosses it, at least).
# git_completion=/usr/local/etc/bash_completion.d/git-completion.bash

# or go with the @ryanb/dotfiles remix
git_completion=~/.dotfiles/lib/git_completion

if test -f $git_completion
then
  source $git_completion
fi

# Brew up with a little help
brew_completion=`brew --prefix`/Library/Contributions/brew_bash_completion.sh

if test -f $brew_completion
then
  source $brew_completion
fi

complete -C "$HOME/.dotfiles/lib/rake_completion.rb" -o default rake
complete -C "$HOME/.dotfiles/lib/rake_completion.rb" -o default rk
complete -C "$HOME/.dotfiles/lib/project_completion.rb" -o default c
complete -C "$HOME/.dotfiles/lib/tm_bundle_completion.rb" -o default tm
complete -C "$HOME/.dotfiles/lib/bbc_project_completion.rb" -o default bbc
