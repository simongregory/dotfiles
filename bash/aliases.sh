#tool micro-cuts
#alias rk="bundle exec rake"
alias cuke="bundle exec cucumber"
alias puke="bundle exec cucumber --format progress"

#always use color output for `ls` via @gf3
if [[ "$OSTYPE" =~ ^darwin ]]; then
  alias ls="command ls -G"
fi

#List all files colorized in long format, without groups,
#with dot files, appending / for dirs, and displaying
#file sizes in bytes,kb,mb and gb
alias la="ls -Gahop"

#file size via @gf3
alias fs="stat -f \"%z bytes\""

#going up
alias ..="cd .."
alias ...="cd ../.."

#in-here
#alias h="cd ~/"
alias ipd="cd $PROJECTS/ipd/"
alias imp="cd $PROJECTS/imp/"
alias core="cd $PROJECTS/core/"
alias gel="cd $PROJECTS/gel-pure/"
alias dot="cd ~/.dotfiles"
alias desktop="cd ~/Desktop"
alias downloads="cd ~/Downloads"

#out-there
alias iplayer="open http://www.bbc.co.uk/iplayer/"
alias hudson="open https://ci-pal.test.bbc.co.uk/hudson/job/imp/"

#random
alias jenkins="java -jar /usr/local/Cellar/jenkins/1.439/lib/jenkins.war"
alias reloadbundles="osascript -e 'tell app \"TextMate\" to reload bundles'"
alias pyserve="python -m SimpleHTTPServer"
