#XDG Paths
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}

#Fixing Paths
export ZDOTDIR=$HOME/.config/zsh
export HISTFILE="$XDG_STATE_HOME"/zsh/history

export LESSHISTFILE=-
