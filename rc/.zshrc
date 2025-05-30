export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  fast-syntax-highlighting
  zsh-autocomplete
  )

zstyle ':completion:*' format '%d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' remove-all-dups yes

source $ZSH/oh-my-zsh.sh


export PATH=$PATH:$HOME/.local/bin

alias ls="eza --no-filesize --long --color=always --icons=always --no-user" 

export PATH="$PATH:/usr/bin"
