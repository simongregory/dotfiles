#tool micro-cuts
alias g=git
alias m="mate ."
alias rk="bundle exec rake"
alias cuke="bundle exec cucumber"
alias puke="bundle exec cucumber --format progress"

#always use color output for `ls` via @gf3
if [[ "$OSTYPE" =~ ^darwin ]]; then
  alias ls="command ls -G"
fi

# List all files colorized in long format, including dot files
alias la="ls -Gla"

#file size via @gf3
alias fs="stat -f \"%z bytes\""

#in-here
alias h="cd ~/"
alias ip="cd ~/ip/"
alias ipd="cd ~/ip/ipd/"
alias imp="cd ~/ip/imp/"
alias core="cd ~/ip/core/"
alias gel="cd ~/ip/gel/"
alias dot="cd ~/.dotfiles"
alias desktop="cd ~/Desktop"
alias downloads="cd ~/Downloads"
alias ..="cd .."
alias ...="cd ../.."

#out-there
alias iplayer="open http://www.bbc.co.uk/iplayer/"
alias hudson="open https://ci-pal.test.bbc.co.uk/hudson/job/imp/"

#random
alias jenkins="java -jar /usr/local/Cellar/jenkins/1.439/lib/jenkins.war"
alias reloadbundles="osascript -e 'tell app \"TextMate\" to reload bundles'"
alias pyserve="python -m SimpleHTTPServer"
