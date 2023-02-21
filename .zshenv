# Adds `~/.local/bin` to $PATH
export PATH="$PATH:${$(find ~/.local/bin -type d -printf %p:)%%:}"

export ZDOTDIR="$HOME/.config/zsh"

unsetopt PROMPT_SP

# Default programs:
export EDITOR="nvim"
export TERMINAL="st"
export TERMINAL_PROG="st"
export BROWSER="firefox"
# export CM_LAUNCHER='dmemu'

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

# fix java applications in dwm
export _JAVA_AWT_WM_NONREPARENTING=1
