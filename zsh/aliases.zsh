# tool micro-cuts
alias g='git'
alias rk='bundle exec rake'
alias gr="grunt"

alias n='npm'
alias nr='npm run'
alias ns='npm run start'
alias nb='npm run build'
alias b='npm run build'
alias ncb='npm run clean && npm run build'
alias cover='npm run coverage'
alias lint='npm run lint'
alias clean='npm run clean'

alias mvc='mvn compile -o'

alias m="mate ."
alias s="subl ."
alias e="atom ."

alias reup='. ~/.zshrc'

#alias sprout-home="cd $HOME/Library/Sprouts/1.1/cache"
#alias cuke="bundle exec cucumber"
#alias puke="bundle exec cucumber --format progress"

alias cop="rubocop"
alias gip="get_iplayer"

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
alias tip="cd $PROJECTS/tip/"
alias core="cd $PROJECTS/core/"
alias gel="cd $PROJECTS/gel/"
alias dot="cd ~/.dotfiles"
alias desktop="cd ~/Desktop"
alias downloads="cd ~/Downloads"
alias www="cd ~/www"
alias downloader="open -a BBC\ iPlayer\ Downloads.app --args $@"
#alias mpx="open -a MPlayerX $@"
#alias vlc="open -a VLC $@"
alias chrome="open -a Google\ Chrome $@"
#alias ij="open -a IntelliJ\ IDEA\ 14 $@"
alias vol=volume
alias spotify="open -a Spotify"
alias gh="github"
alias drob="cd \"$HOME/Dropbox (BBC)\""
alias drop="cd \"$HOME/Dropbox (Personal)\""

# out-there
alias iplayer="open http://www.bbc.co.uk/iplayer/"

# random
alias jenkins="java -jar /usr/local/Cellar/jenkins/1.439/lib/jenkins.war"
alias reloadbundles="osascript -e 'tell app \"TextMate\" to reload bundles'"
alias pyserve="python -m SimpleHTTPServer"
alias nserve="npx http-server -c-1" #-c-1 switches off cache
alias prettyjson="python -m json.tool"

# for the ears
alias r6="open -a 'Google Chrome' 'http://www.bbc.co.uk/radio/player/bbc_6music'"
alias r4="open -a 'Google Chrome' 'http://www.bbc.co.uk/radio/player/bbc_radio_fourfm'"

# be helpful
alias rvm="echo 'remember switching to rbenv dumbass?'"
