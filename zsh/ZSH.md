# ZSH Notes

## Loading order

TL;DR: If in doubt use `zshrc`

On macOS terminal opens a **login shell** by default. Zsh loads files in this order:

1. **`~/.zshenv`** — loaded for _every_ shell (login, interactive, scripts). Keep it minimal: only `$ZDOTDIR` or env vars that must always be set.
2. **`~/.zprofile`** — loaded for login shells, before `.zshrc`. Good for login-time setup that doesn't need to be interactive (e.g. Homebrew's `shellenv`).
3. **`~/.zshrc`** — loaded for interactive shells. This is the main config file: prompt, aliases, PATH additions, shell options.
4. **`~/.zlogin`** — loaded for login shells, _after_ `.zshrc`. Rarely used; intended for commands that should run after the shell is fully configured.
5. **`~/.zlogout`** — loaded when a login shell exits.

## Slow startup

This can be tracked by starting a timer and measuring elapsed time during load. This looks like:

```sh
# To time/debug slow startup then in zshrc.symlink add: 
zmodload zsh/zprof  # On line 1

# content...

# re-run/output timer with:
time zsh -i -c exit

# more content...

# And on the last line
zprof
```
