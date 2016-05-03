# tool micro-cuts
# alias git to g and let completions know
alias g='git'
compdef g=git

# alias rake to rk and let completions know
alias rk='bundle exec rake'
compdef rk=rake

alias gr="grunt"
compdef gr=grunt

alias mvc='mvn compile -o'

alias m="mate ."
alias s="subl ."
alias e="atom ."

alias reup='. ~/.zshrc'
alias sprout-home="cd $HOME/Library/Sprouts/1.1/cache"

alias cuke="bundle exec cucumber"
alias puke="bundle exec cucumber --format progress"

alias cop="rubocop"
alias gip="get_iplayer"

# List all files colorized in long format, without groups,
# with dot files, appending / for dirs, and displaying
# file sizes in bytes,kb,mb and gb
alias la="ls -Gahop"
alias ll="ls -Glhop"

# file size via @gf3
alias fs="stat -f \"%z bytes\""

# going up
alias ..="cd .."
alias ...="cd ../.."

# in-here
alias ipd="cd $PROJECTS/ipd/"
alias hq="cd $PROJECTS/ipd-hq/"
alias imp="cd $PROJECTS/imp/"
alias tip="cd $PROJECTS/tip/"
alias nip="cd $PROJECTS/nip/"
alias core="cd $PROJECTS/core/"
alias gel="cd $PROJECTS/gel/"
alias dot="cd ~/.dotfiles"
alias desktop="cd ~/Desktop"
alias downloads="cd ~/Downloads"
alias www="cd ~/www"
alias downloader="open -a BBC\ iPlayer\ Downloads.app --args $@"
alias mpx="open -a MPlayerX $@"
alias vlc="open -a VLC $@"
alias chrome="open -a Google\ Chrome $@"
alias ij="open -a IntelliJ\ IDEA\ 14 $@"
alias vol=volume
alias spotify="open -a Spotify"
alias gh="github"

# out-there
alias iplayer="open http://www.bbc.co.uk/iplayer/"

# random
alias jenkins="java -jar /usr/local/Cellar/jenkins/1.439/lib/jenkins.war"
alias reloadbundles="osascript -e 'tell app \"TextMate\" to reload bundles'"
alias pyserve="python -m SimpleHTTPServer"

# for the ears
alias r6="open -a 'Google Chrome' 'http://www.bbc.co.uk/radio/player/bbc_6music'"
alias r4="open -a 'Google Chrome' 'http://www.bbc.co.uk/radio/player/bbc_radio_fourfm'"

# be helpful
alias rvm="echo 'remember switching to rbenv dumbass?'"
