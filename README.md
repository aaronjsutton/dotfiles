# Dotfiles

> About as close as I can get to directly interfacing with the machines.

This is my shell configuration, use it at your own peril.

## Configuration Files

Power tools I keep handy:
- [Zsh](http://zsh.sourceforge.net), an awesome shell and the macOS default now.
- [Vim](https://www.vim.org), an editor worth learning, only after weeks of pure misery.
- [tmux](https://github.com/tmux/tmux/wiki), best terminal multiplexer I've used. Better than `screen` and vim splits alone.

## Usage

There's no fancy setup script. This approach was taken from this [article from Atlassian](https://www.atlassian.com/git/tutorials/dotfiles).
To install, just follow the steps at the end of this article. **Make sure you backup any existing dotfiles**, unless you're really
brave. 

Once you're there, run `config submodule init; config submodule update` to pull down plugins that this configuration uses.
