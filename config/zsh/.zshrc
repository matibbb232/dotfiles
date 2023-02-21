setopt interactive_comments

stty stop undef # Disable ctrl + s to freeze terminal
zle_highlight=('paset:none')

# disable beep
unsetopt BEEP

# colors
autoload -Uz colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "


# create aliases

# use neovim instead of vim
[ -x "$(command -v nvim)" ] && alias vim="nvim" vimdiff="nvim -d"


# usefull aliases
alias \
	cp="cp -iv" \
	mkd="mkdir -pv" \
	mv="mv -iv" \
	rm="rm -vI" \
	bc="bc -ql" \
	ffmpeg="ffmpeg -hide_banner"

# add colors 
alias \
	ls="ls -hN --color=auto --group-directories-first" \
	grep="grep --color=auto" \
	diff="diff --color=auto" \
	ccat="highlight --out-format=ansi" \
	ip="ip -color=auto"


source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh 2>/dev/null
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh 2>/dev/null
