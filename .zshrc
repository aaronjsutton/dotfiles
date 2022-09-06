# .zshrc
# Aaron Sutton 
# A light and fine-tuned zsh shell.

# -- Prompt --

fpath+=~/.zsh/typewritten
autoload -U promptinit; promptinit
TYPEWRITTEN_CURSOR="terminal"
prompt typewritten

# -- Builtin Settings --
bindkey -v # vi mode - of course.

# -- ZSH Plugins --
source ~/.zsh/plugins/z/z.sh # z - jump around.
source ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh # syntax highlighting in the shell.
source ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh # elegant autocompletions.

# -- Custom Aliases --

alias ls=ls -G
alias celar=clear # Because I don't know how to type.
alias ls="ls -G"
# Alias config to the home directory Git repo.
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias vz='vim $(fzf)'

# -- Custom Functions --
fpath+=~/.zsh/functions/
autoload -Uz gpg-start

# -- FZF --
export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse'

# -- OS-Specific Configuration --
os=`uname`
source ~/.zshrc-${(L)os}

# -- GPG / SSH Configuration --
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent
export GPG_TTY=$TTY
