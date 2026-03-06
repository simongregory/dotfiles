# tool micro-cuts
alias g='git'
alias rk='bundle exec rake'
alias o='open'

# n picks pnpm or npm based on context
alias nr='n run'
alias ns='n run start'
alias nb='n run build'
alias p=n

alias reup='. ~/.zshrc'

alias master="git checkout master"
alias co="git checkout"

# List all files colorized in long format, without groups,
# with dot files, appending / for dirs, and displaying
# file sizes in bytes,kb,mb and gb
alias la="ls -Gahop"
alias ll="ls -Glhop"
alias le="ls -le"

# file size via @gf3
alias fs="stat -f \"%z bytes\""

# going up
alias ..="cd .."
alias ...="cd ../.."

# in-here
alias dot="cd ~/.dotfiles"
alias cdot="code ~/.dotfiles/dotfiles.code-workspace"
alias desktop="cd ~/Desktop"
alias downloads="cd ~/Downloads"
alias www="cd ~/www"
alias chrome="open -a Google\ Chrome $@"
alias vol=volume

# out-there
alias iplayer="open http://www.bbc.co.uk/iplayer/"

# random
alias pyserve="python3 -m SimpleHTTPServer"
alias nserve="npx http-server -c-1" #-c-1 switches off cache
alias prettyjson="python3 -m json.tool"

# be helpful
alias rvm="echo 'remember switching to rbenv?'"
alias nvm=fnm
