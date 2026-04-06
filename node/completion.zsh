#eval "$(npm completion 2>/dev/null)"
if [[ $TERM_PROGRAM != "WarpTerminal" ]]; then
  source <(npm completion)
  # pnpm completion zsh
fi
