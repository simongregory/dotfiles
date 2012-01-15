#make tm happy with svn
export LC_CTYPE=en_US.UTF-8

PATH="/usr/local/bin:/usr/local/sbin:$PATH"

export EDITOR="$HOME/bin/mate -w"
export GIT_EDITOR="mate --name 'Git Commit Message' -w -l 1"

export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6.0/Home
export HUDSON_HOME=~/code/hudson
export FLEX_HOME="$HOME/Library/Sprouts/1.1/cache/flex4/4.5.1.21328"
export SPROUT_GENERATORS="$HOME/code/sprout/sprout-templates/bbc"

# Larger bash history (allow 32³ entries; default is 500)
export HISTSIZE=32768
export HISTFILESIZE=$HISTSIZE
export HISTCONTROL=ignoredups
# Make some commands not show up in history
export HISTIGNORE="ls:ls *:cd:cd -:pwd;exit:date:* --help"

# For HTTP_PROXY, HTTPS_PROXY and NO_PROXY etc see functions.sh

#rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # Load RVM into a shell session *as a function*
