PROMPT='%F{green}%2d %F{white}'
PROMPT_EOL_MARK=' -EOL-'

autoload -Uz compinit promptinit

date=$(date +"%d_%m_%Y")
date_file="$HOME/.cache/zsh/compinit"
dump_file="$HOME/.cache/zsh/zcompdump"
uptodate=$(cat $date_file | grep $date)

if [ $uptodate ]
then
  compinit -C -d $dump_file
else
  compinit -d $dump_file
	zcompile $dump_file
	echo $date > $date_file
fi

promptinit

zstyle ':completion:*' menu select
zstyle ':completion:*' rehash true

export HISTSIZE=1000
export SAVEHIST=1000
export HISTFILE=~/.zhistory
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt EXTENDED_HISTORY

bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

alias 'h'='history'
alias 'c'='clear'
alias ':q'='exit'

alias 'g'='| grep -B 2 -A 2'

alias 'ls'='exa -x --color=always --group-directories-first'
alias 'lsl'='exa -l -x --color=always --group-directories-first'
alias 'lsa'='exa -x -a --color=always --group-directories-first'
alias 'lsr'='exa -x -T --color=always -L 3 --group-directories-first'
alias 'lsar'='exa -x -T -a --color=always -L 2 --group-directories-first'

alias 'pmu'='yay -Syu'
alias 'pmg'='yay -S'
alias 'pmr'='sudo pacman -Rns'
alias 'pmc'='sudo pacman -Rns $(pacman -Qtdq)'
alias 'pml'='pacman -Qqe'

alias 'ytdl'='youtube-dl -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best"'

alias 'fm'='vifm'
alias 'v'='vim'

alias 'dotfiles'='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

eval $(keychain --eval --quiet GitHub)

if [ "$TERM" = "linux" ]; then
	printf %b '\e[40m' '\e[8]' # set default background to color 0 'dracula-bg'
	printf %b '\e[37m' '\e[8]' # set default foreground to color 7 'dracula-fg'
	printf %b '\e]P0282a36'    # redefine 'black'          as 'dracula-bg'
	printf %b '\e]P86272a4'    # redefine 'bright-black'   as 'dracula-comment'
	printf %b '\e]P1ff5555'    # redefine 'red'            as 'dracula-red'
	printf %b '\e]P9ff7777'    # redefine 'bright-red'     as '#ff7777'
	printf %b '\e]P250fa7b'    # redefine 'green'          as 'dracula-green'
	printf %b '\e]PA70fa9b'    # redefine 'bright-green'   as '#70fa9b'
	printf %b '\e]P3f1fa8c'    # redefine 'brown'          as 'dracula-yellow'
	printf %b '\e]PBffb86c'    # redefine 'bright-brown'   as 'dracula-orange'
	printf %b '\e]P4bd93f9'    # redefine 'blue'           as 'dracula-purple'
	printf %b '\e]PCcfa9ff'    # redefine 'bright-blue'    as '#cfa9ff'
	printf %b '\e]P5ff79c6'    # redefine 'magenta'        as 'dracula-pink'
	printf %b '\e]PDff88e8'    # redefine 'bright-magenta' as '#ff88e8'
	printf %b '\e]P68be9fd'    # redefine 'cyan'           as 'dracula-cyan'
	printf %b '\e]PE97e2ff'    # redefine 'bright-cyan'    as '#97e2ff'
	printf %b '\e]P7f8f8f2'    # redefine 'white'          as 'dracula-fg'
  printf %b '\e]PFffffff'    # redefine 'bright-white'   as '#ffffff'
	clear
fi
