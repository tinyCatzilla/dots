export ZSH="$HOME/.oh-my-zsh"

#Theme
ZSH_THEME=""

#Plugins
source $ZSH/oh-my-zsh.sh

#Star Ship
eval "$(starship init zsh)"
source $ZSH/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH/plugins/z/z.plugin.zsh
export PATH=$PATH:/Users/kary/.spicetify

alias ls='exa --icons -F -H --group-directories-first --git -1'
alias ll='ls -alF'source /Users/kary/desktop/github/battleship/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export EDITOR="nvim"
export VISUAL="nvim"
alias vim nvim
