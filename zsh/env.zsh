export EDITOR="$HOME/bin/mate -w"
export GIT_EDITOR="mate --name 'Git Commit Message' -w -l 1"

# always use color output for ls
export CLICOLOR=1

# colour settings for ls, edit at http://geoff.greer.fm/lscolors/
#export LSCOLORS=Exfxcxdxbxegedabagacad

# tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

# where all the code lives
export PROJECTS=$HOME/Code
export SPROUT_GENERATORS="$PROJECTS/sprout-templates/bbc"
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6.0/Home
export FLEX_HOME=/Users/$USER/Library/Sprouts/1.1/cache/flex4/4.6.0.23201
export SIKULIX_HOME="/usr/local/lib/sikulix/sikuli-java.jar"
