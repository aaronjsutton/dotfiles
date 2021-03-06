# Dotfiles

> About as close as I can get to directly interfacing with the machines.

This is my shell configuration, use it at your own peril.

## Configuration Files

Power tools I keep handy:
- [Zsh](http://zsh.sourceforge.net), a great shell and the macOS default now.
- [Vim](https://www.vim.org), an editor worth learning, only after weeks of pure misery.
- [tmux](https://github.com/tmux/tmux/wiki), best terminal multiplexer.

## Usage

There's no fancy setup script. This approach was taken from this [article from Atlassian](https://www.atlassian.com/git/tutorials/dotfiles).
To install, follow the steps at the end of the article. **Make sure to backup any existing dotfiles**, unless you're really
brave. 

Once you're there, run `config submodule init; config submodule update` to pull down plugins that this configuration uses.
