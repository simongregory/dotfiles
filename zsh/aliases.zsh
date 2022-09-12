# tool micro-cuts
alias g='git'
alias rk='bundle exec rake'
alias o='open'

alias n='npm'
alias nr='npm run'
alias ns='npm run start'
alias nb='npm run build'
alias b='npm run build'
alias ncb='npm run clean && npm run build'
alias cover='npm run coverage'
alias lint='npm run lint'
alias clean='npm run clean'

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
alias ipd="cd $PROJECTS/ipd/"
alias hq="cd $PROJECTS/ipd-hq/"
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
alias pyserve="python -m SimpleHTTPServer"
alias nserve="npx http-server -c-1" #-c-1 switches off cache
alias prettyjson="python3 -m json.tool"

# be helpful
alias rvm="echo 'remember switching to rbenv dumbass?'"
alias nvm=fnm
