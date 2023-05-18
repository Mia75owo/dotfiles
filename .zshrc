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
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Load the plugins
plugins=(git zsh-vi-mode zsh-autosuggestions fast-syntax-highlighting)

autoload -U compinit; compinit

source $ZSH/oh-my-zsh.sh

# aliases
alias "n"="nvim ."
alias ":x"="exit"
alias "c"="printf '\033[2J\033[3J\033[1;1H' && clear"
alias "nf"="neofetch"
alias "bg"="$HOME/.config/polybar/shapes/scripts/pywal.sh"
alias "btop"="btop --utf-force"
alias "ls"="exa --icons"
alias "cat"="bat --theme=ansi"
alias "icat"="kitty +icat"
alias "tiv"="tiv -a -j --no-dot"
alias "todo"="nvim $HOME/own/todo"
alias "notes"="nvim $HOME/own/notes"
alias "old"="nvim $HOME/own/old"
#alias "time"="hyperfine --warmup 5"
alias "docker_clean_images"='docker rmi $(docker images -a --filter=dangling=true -q)'
alias "docker_clean_ps"='docker rm $(docker ps --filter=status=exited --filter=status=created -q)'
alias "ncdu"="ncdu --color=dark"
alias "gitf"="onefetch"
alias "figlethead"="figlet -w999 -d $HOME/.config/figlet/fonts -f 'ANSI Shadow'"
alias "figletsub"="figlet -w999 -d $HOME/.config/figlet/fonts -f 'Cyberlarge'"
alias "dotfiles"="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias "clip"="xclip -selection c"
alias "root"="sudo -E -s zsh"
alias "make"="make -j 8"
alias "fsize"="du -h"

# load plugins
[[ ! -f $HOME/.p10k.zsh ]] || source $HOME/.p10k.zsh

# go variables
export GOROOT=/usr/lib/go/
export GOPATH=$HOME/go

# clang
export CC=/usr/bin/clang

# paths
path+=('/usr/local/i386elfgcc/bin/')
path+=('/usr/lib/node_modules/')
path+=('/usr/lib/emsdk/upstream/emscripten')
path+=("$HOME/.local/bin")
path+=("$HOME/.local/share/gem/ruby/3.0.0/bin")
path+=("$HOME/.yarn/bin/")
path+=("$HOME/.nimble/bin/")
path+=("$HOME/.choosenim/toolchains/nim-1.6.6/bin/")
path+=($GOPATH+'/bin')
path+=("$HOME/.cargo/bin/")

# node version manager stuff
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# load variables for spotify-tui
# which includes a secret token so
# i put it in a different file
if [[ -f "$HOME/own/spt.sh" ]] then;
  source $HOME/own/spt.sh
fi;

# opam configuration
[[ ! -r $HOME/.opam/opam-init/init.zsh ]] || source $HOME/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

# remove the annoying beep sound
unsetopt BEEP

neofetch
#fastfetch
