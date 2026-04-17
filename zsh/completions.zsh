# Load completions
#
# Add completions for tools installed by homebrew to fpath.
if [[ $TERM_PROGRAM != "WarpTerminal" ]]; then
    # this needs to be called after brew shellenv
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
fi

# Generate with pnpm completion zsh > completion-for-pnpm.zsh
PNPM_COMPLETIONS_FILE="$HOME/.dotfiles/node/completion-for-pnpm.zsh"
if [[ $TERM_PROGRAM != "WarpTerminal" && -e "$PNPM_COMPLETIONS_FILE" ]]; then
    source "$PNPM_COMPLETIONS_FILE"
fi

# zsh-autocomplete owns compinit, so don't call it manually here.
# If compinit tuning is needed, pass arguments via:
#   zstyle '*:compinit' arguments -D -i -u -C -w

# Good zsh completion background reading
# man zshcompsys
# http://zsh.sourceforge.net/Guide/zshguide06.html

# List completions in rows, left to right
setopt LIST_ROWS_FIRST
# Keep the prompt anchored for long lists
setopt ALWAYS_LAST_PROMPT

# matches case insensitive for lowercase
#zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' matcher-list 'r:|?=** m:{a-z\-}={A-Z\_}'

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

# cache completions to speed things up
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

# Be vocal where there are no completion matches
zstyle ':completion:*:warnings' format 'No matches for: %d'

# Show a pager prompt for long completion lists and a prompt while scrolling them.
zstyle ':completion:*' list-prompt '%S%M matches%s'
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'

# Allow menu style completion selection (ctrl-g to exit)
zstyle ':completion:*' menu select=1

### Autocomplete Settings

# https://github.com/marlonrichert/zsh-autocomplete
# Usually set to 0.05 before fetching completions
zstyle ':autocomplete:*' delay 0.1  # seconds (float)

# all Tab widgets
zstyle ':autocomplete:*complete*:*' insert-unambiguous yes

# all history widgets
zstyle ':autocomplete:*history*:*' insert-unambiguous yes

# ^S
zstyle ':autocomplete:menu-search:*' insert-unambiguous yes

# Restrict autocomplete so its not so jarring
#zstyle ':autocomplete:*:*' list-lines long

# ------------------------

# Visually tone the menu down with by using dim settings
zstyle ':completion:*:default' list-colors \
 'no=2:fi=2:di=2;34:ln=2;36:ex=2;32:ma=7'
