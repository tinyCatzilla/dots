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
export EDITOR="nvim"
export VISUAL="nvim"
export XDG_DATA_HOME=~/.local/
export PATH=$PATH:$HOME/.local/bin/
export PATH=$PATH:$HOME/.config/emacs/bin
export PATH=$PATH:$(go env GOBIN)

source /Users/kary/.config/broot/launcher/bash/br
