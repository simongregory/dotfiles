# tool micro-cuts
alias g='git'
alias rk='bundle exec rake'
alias o='open'

# n will pick pnpm or npm based on context
alias nr='n run'
alias ns='n run start'
alias nb='n run build'
alias p=n

alias reup='. ~/.zshrc'

# file size via @gf3
alias fs="stat -f \"%z bytes\""

# going up
alias ..="cd .."
alias ...="cd ../.."

# in-here
alias dot="cd ~/.dotfiles"
alias desktop="cd ~/Desktop"
alias downloads="cd ~/Downloads"

# serve from here
alias pyserve="python3 -m SimpleHTTPServer"

# be helpful
alias rvm="echo 'remember switching to rbenv?'"
alias rbenv="echo 'remember switching to chruby?'"
alias nvm='fnm'

if (( $+commands[eza] )); then
  # ls with eza
  alias ls='eza --color=always'
  alias ll="eza --long --icons=always --header"
  alias la='eza --all --long --color=always --group-directories-first --icons=always --header'
  alias lg='eza --long --header --icons --git --time-style=relative --no-user'
  alias lt='eza -T --git-ignore --level=2 --group-directories-first'
else
  # List all files colorized in long format, without groups,
  # with dot files, appending / for dirs, and displaying
  # file sizes in bytes,kb,mb and gb
  alias la="ls -Gahop"
  alias ll="ls -Glhop"
  alias le="ls -le"
fi
