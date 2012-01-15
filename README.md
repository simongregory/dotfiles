# Dotfiles

Cooking up the shell on OS X, seasoned for [me][sg].

If you don't get why then have a read of [some more thoroughly formed thinking][holman-blog]. Then dig through a few examples and start cooking up the right solution for you:

  * [cowboy][cowboy]
  * [gf3][gf3]
  * [holman][holman]
  * [mathiasbynens][mathiasbynens]
  * [matijs][matijs]
  * [robbyrussell][robbyrussell]
  * [rtomayko][rtomayko]
  * [ryanb][ryanb]

## Install

- `git clone git://github.com/simongregory/dotfiles ~/.dotfiles`
- `cd ~/.dotfiles`
- `rake install`

The install rake task will symlink the appropriate files in `.dotfiles` to your home directory. Everything is configured and tweaked within `~/.dotfiles`, though.

## License

Released under the MIT License. Please see the accompanying [LICENSE](LICENSE) document for details.

[cowboy]: https://github.com/cowboy/dotfiles/
[gf3]: https://github.com/gf3/dotfiles/
[holman-blog]: http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/
[holman]: https://github.com/holman/dotfiles/
[mathiasbynens]: https://github.com/mathiasbynens/dotfiles/
[matijs]: https://github.com/matijs/homedir/
[robbyrussell]: https://github.com/robbyrussell/oh-my-zsh
[rtomayko]: https://github.com/rtomayko/dotfiles/
[ryanb]: https://github.com/ryanb/dotfiles/
[sg]: http://simongregory.com/
