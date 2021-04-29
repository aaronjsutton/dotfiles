# .zshrc
# Aaron Sutton 
# Version 1.0
# A fine-tuned shell for power users.

# -- Prompt --

# Ever-so-slightly modified version of pure - I wanted the loop.
fpath+=~/.zsh/pure
autoload -U promptinit; promptinit
PURE_PROMPT_SYMBOL="╰─"
PURE_PROMPT_VICMD_SYMBOL="╰┤"
zstyle :prompt:pure:path color cyan
prompt pure

# -- Builtin Settings --
bindkey -v

# -- Plugins --
source ~/.zsh/plugins/z/z.sh # z - jump around.
source ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh # syntax highlighting in the shell.
source ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh # elegant autocompletions.

# -- Custom Aliases --

alias celar=clear # Because I don't know how to type.
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME' # Config repo - https://www.atlassian.com/git/tutorials/dotfiles

# -- OS-Specific Sources --
export PATH=/opt/apache-maven-3.6.3/bin:$PATH # maven 
export PATH=/Library/PostgreSQL/13/bin:$PATH # postgres
export PATH=~/.npm-global/bin:$PATH # npm

# -- Other Configuration --
export GPG_TTY=$(tty) # GPG hack...?
