# ███████╗███████╗██╗  ██╗
# ╚══███╔╝██╔════╝██║  ██║
#   ███╔╝ ███████╗███████║
#  ███╔╝  ╚════██║██╔══██║
# ███████╗███████║██║  ██║
# ╚══════╝╚══════╝╚═╝  ╚═╝

# load the theme
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# add some variables
export ZSH_DISABLE_COMPFIX=false
export ZSH="/home/mia/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Load the plugins
plugins=(git zsh-vi-mode zsh-autosuggestions fast-syntax-highlighting)

autoload -U compinit; compinit

source $ZSH/oh-my-zsh.sh

# aliases
alias ":x"="exit"
alias "c"="printf '\033[2J\033[3J\033[1;1H' && clear"
alias "bg"="~/.config/polybar/shapes/scripts/pywal.sh"
alias "btop"="btop --utf-force"
alias "notes"="nvim ~/own/notes"
alias "ls"="exa --icons"
alias "cat"="bat"
alias "icat"="kitty +icat"
alias "tiv"="tiv -a -j --no-dot"
alias "time"="hyperfine --warmup 5"
alias "docker_clean_images"='docker rmi $(docker images -a --filter=dangling=true -q)'
alias "docker_clean_ps"='docker rm $(docker ps --filter=status=exited --filter=status=created -q)'
alias "ncdu"="ncdu --color=dark"
alias "gitf"="onefetch"
alias "figlethead"="figlet -w999 -d ~/.config/figlet/fonts -f 'ANSI Shadow'"
alias "figletsub"="figlet -w999 -d ~/.config/figlet/fonts -f 'Cyberlarge'"
alias "dotfiles"="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias "clip"="xclip -selection c"

# load plugins
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# go variables
export GOROOT=/usr/lib/go/
export GOPATH=/home/mia/go

# paths
path+=('/home/mia/.local/bin')
path+=('/usr/local/i386elfgcc/bin/')
path+=('/home/mia/.local/share/gem/ruby/3.0.0/bin')
path+=('/home/mia/.yarn/bin/')
path+=('/usr/lib/node_modules/')
path+=('/usr/lib/emsdk/upstream/emscripten')
path+=($GOPATH+'/bin')

# node version manager stuff
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# load variables for spotify-tui
# which includes a secret token so
# i put it in a different file
source ~/own/spt.sh

unsetopt BEEP
neofetch
