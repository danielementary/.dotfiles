autoload -Uz compinit
compinit

PROMPT='%F{green}%n@%M %~ %#%f '
setopt IGNORE_EOF

alias :q="exit"
alias c="clear"

alias nv="nvim"
alias fm="vifm"
alias lg="lazygit"
alias ld="lazydocker"

alias cat="bat"

alias ls="eza --oneline --group-directories-first"
alias lsa="eza --oneline --all --group-directories-first"
alias lsl="eza --long --group-directories-first"
alias lsal="eza --all --long --group-directories-first"

alias lgd='GIT_DIR=$HOME/.dotfiles GIT_WORK_TREE=$HOME lazygit'
alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

source ~/.config/zsh/arcium.zsh
