#eval "$(npm completion 2>/dev/null)"
if [[ $TERM_PROGRAM != "WarpTerminal" ]]; then
  source <(npm completion)
fi

# Although handy this really kills startup time
# for @bbc/cosmos-cli
#eval "$(cosmos completion)"
#source <(cosmos completion)
