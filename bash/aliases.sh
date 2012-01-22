#tool micro-cuts
alias g=git
alias m="mate ."
alias rk="bundle exec rake"
alias cuke="bundle exec cucumber"

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
alias ipd="cd ~/ipd/v5/"
alias gel="cd ~/ipd/gel/"
alias dot="cd ~/.dotfiles"
alias desktop="cd ~/Desktop"
alias downloads="cd ~/Downloads"

#out-there
alias iplayer="open http://www.bbc.co.uk/iplayer/"
alias amazon="open http://www.amazon.co.uk/"
alias google="open http://www.google.co.uk/"

#random
alias jenkins="java -jar /usr/local/Cellar/jenkins/1.439/lib/jenkins.war"
alias reloadbundles="osascript -e 'tell app \"TextMate\" to reload bundles'"
