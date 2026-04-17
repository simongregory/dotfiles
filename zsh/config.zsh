export LSCOLORS="exfxcxdxbxegedabagacad"
export CLICOLOR=true

fpath=($ZSH/zsh/functions $fpath)

autoload -U $ZSH/zsh/functions/*(:t)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt NO_BG_NICE # run background jobs at normal priority
setopt NO_HUP # don't send SIGHUP to jobs when the shell exits
setopt NO_LIST_BEEP # don't beep when completion shows a list of matches
setopt LOCAL_OPTIONS # keep option changes local to functions
setopt LOCAL_TRAPS # keep trap changes local to functions

setopt PROMPT_SUBST # allow expansion inside prompt strings
setopt CORRECT # offer spelling correction for commands
setopt COMPLETE_IN_WORD # complete at the cursor, not just at the end of the word
setopt IGNORE_EOF # don't let Ctrl-D immediately exit the shell

setopt HIST_VERIFY # show history expansions in the buffer before executing them
setopt EXTENDED_HISTORY # store timestamps with history entries
setopt SHARE_HISTORY # import and share history across running shells
setopt HIST_IGNORE_ALL_DUPS # keep only the newest copy of duplicate history entries
setopt HIST_REDUCE_BLANKS # trim superfluous blanks before saving history

setopt COMPLETE_ALIASES # complete alias names before expanding them
