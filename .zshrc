ath=(~/.zsh/functions $fpath)
fpath+=$HOME/.zsh/pure
source ~/.zsh/pure/pure.zsh

autoload -U promptinit; promptinit
PURE_PROMPT_SYMBOL="╰─"
PURE_PROMPT_VICMD_SYMBOL="╰┤"
prompt pure

# Maven 
export PATH=/opt/apache-maven-3.6.3/bin:$PATH

# Postgres
export PATH=/Library/PostgreSQL/13/bin:$PATH

alias ,.=fg

# Because I don't know how to type.
alias celar=clear

. ~/.zsh/plugins/z.sh

autoload -Uz compinit && compinit

autoload -Uz aaronsutton/fvim
autoload -Uz nv

function cup()
{
  while [[ $PWD != '/' && ${PWD##*/} != $1 ]]; do cd ..; done
} 

zstyle :prompt:pure:path color cyan

bindkey -v

alias config='/usr/bin/git --git-dir=$HOME/.config/ --work-tree=$HOME'

source "$HOME/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"

export GPG_TTY=$(tty)

[ -f "/Users/aaronsutton/.ghcup/env" ] && source "/Users/aaronsutton/.ghcup/env" # ghcup-env
# export DENO_INSTALL="/Users/aaronsutton/.deno"
export PATH=/usr/local/pgsql/bin/:$PATH
export PATH=~/.npm-global/bin:$PATH
# export PATH="$DENO_INSTALL/bin:$PATH"

source ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

. $HOME/.asdf/asdf.sh
