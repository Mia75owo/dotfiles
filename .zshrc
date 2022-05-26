if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH_DISABLE_COMPFIX=false
export ZSH="/home/mia/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

#plugins=(git zsh-vi-mode zsh-autosuggestions zsh-syntax-highlighting)
plugins=(git zsh-vi-mode zsh-autosuggestions fast-syntax-highlighting)

autoload -U compinit; compinit

source $ZSH/oh-my-zsh.sh

alias ":x"="exit"
alias "c"="printf '\033[2J\033[3J\033[1;1H' && clear"
alias "bg"="~/.config/polybar/shapes/scripts/pywal.sh"
alias "btop"="btop --utf-force"
alias "notes"="nvim ~/own/notes"
alias "ls"="exa --icons"
alias "cat"="bat"
alias "tiv"="tiv -a -j --no-dot"
alias "time"="hyperfine --warmup 5"
alias "docker_clean_images"='docker rmi $(docker images -a --filter=dangling=true -q)'
alias "docker_clean_ps"='docker rm $(docker ps --filter=status=exited --filter=status=created -q)'
alias "ncdu"="ncdu --color=dark"
alias "gitf"="onefetch"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export GOROOT=/usr/lib/go/
export GOPATH=/home/mia/go

path+=('/home/mia/.local/bin')
path+=('/home/mia/own/ares/bin')
path+=('/usr/local/i386elfgcc/bin/')
path+=('/home/mia/.local/share/gem/ruby/3.0.0/bin')
path+=('/home/mia/.yarn/bin/')
path+=('/usr/lib/node_modules/')
path+=('/usr/lib/emsdk/upstream/emscripten')
path+=($GOPATH+'/bin')

SPOTIPY_CLIENT_ID='77aa1aa93dc0416397f22a7a9b4a815b'
export SPOTIPY_CLIENT_SECRET='0d79181c57ee412aaa770af257edf07a'
export SPOTIPY_REDIRECT_URI='http://www.purple.com'

unsetopt BEEP
neofetch

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
