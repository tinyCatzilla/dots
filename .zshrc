export ZSH="$HOME/.oh-my-zsh"
export ZDOTDIR="$HOME/.cache"
export MAIN="$HOME/work"

#Theme
ZSH_THEME=""
plugins=(tmux)
ZSH_TMUX_AUTOSTART=true
#Plugins
source $ZSH/oh-my-zsh.sh

#Star Ship
eval "$(starship init zsh)"
source $ZSH/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH/plugins/z/z.plugin.zsh
export SPICETIFY_CONFIG_DIR=/Users/kary/.config/spicetify
export PATH=$PATH:/Users/kary/.config/spicetify/.spicetify

alias ls='exa --icons -F -H --group-directories-first --git -1'
export EDITOR="nvim"
export VISUAL="nvim"
export XDG_DATA_HOME=~/.local/
export XDG_CONFIG_HOME=$HOME/.config/
export PATH=$PATH:$HOME/.local/bin/
export PATH=$PATH:$HOME/.config/emacs/bin
export PATH=$PATH:$(go env GOBIN)

source /Users/kary/.config/broot/launcher/bash/br

LFCD="/Users/kary/.config/lf/lfcd.zsh"
  if [ -f "$LFCD" ]; then
      source "$LFCD"
  fi

ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=purple
ZSH_HIGHLIGHT_STYLES[suffix-alias]=fg=green
ZSH_HIGHLIGHT_STYLES[precommand]=fg=green
ZSH_HIGHLIGHT_STYLES[arg0]=fg=green
(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none
