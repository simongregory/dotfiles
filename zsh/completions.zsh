# Load completions for Ruby, Git, etc.
# When making changes to completions clear the completions cache
# using rm ~/.zcompdump
autoload -U compinit
compinit

# Good zsh completion background reading
# man zshcompsys
# http://zsh.sourceforge.net/Guide/zshguide06.html
# http://www.linux-mag.com/id/1106/

# List completions in rows, left to right
setopt LIST_ROWS_FIRST

# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

# cache completions to speed things up
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

# Be vocal where there are no completion matches
zstyle ':completion:*:warnings' format 'No matches for: %d'

# Allow menu style completion selection (ctrl-g to exit)
zstyle ':completion:*' menu select=1
