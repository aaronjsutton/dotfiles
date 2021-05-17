# .zshrc - version 1.0
# Aaron Sutton 
# A light and fine-tuned zsh shell.

# -- Prompt --

# Ever-so-slightly modified version of pure - I wanted the loop.
fpath+=~/.zsh/typewritten
autoload -U promptinit; promptinit
TYPEWRITTEN_CURSOR="terminal"
prompt typewritten

# -- Builtin Settings --
bindkey -v # vi mode - of course.

# -- Plugins --
source ~/.zsh/plugins/z/z.sh # z - jump around.
source ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh # syntax highlighting in the shell.
source ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh # elegant autocompletions.

# -- Custom Aliases --

alias celar=clear # Because I don't know how to type.
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME' # Config repo - https://www.atlassian.com/git/tutorials/dotfiles

# -- OS-Specific Configuration --
os=`uname`
source ~/.zshrc-${(L)os}

# -- Miscellaneous --
export GPG_TTY=$(tty) # GPG hack...?

