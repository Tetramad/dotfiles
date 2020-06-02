# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100
SAVEHIST=1000
unsetopt beep notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/tetramad/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

PROMPT=' %(?.%F{green}.%F{red})%(2L.%#%#.%#)%f '

USER=sejang
MAIL=sejang@student.42seoul.kr
EDITOR=/usr/bin/vim
FCEDIT=vim

alias vless="vim -u NONE -c \"runtime macros/less.vim\""
# Load Homebrew config script
if [[ -a "$HOME/.brewconfig.zsh" ]]
then
	source $HOME/.brewconfig.zsh
fi
if [[ -d "$HOME/.brew/bin" ]]
then
	export PATH=$HOME/.brew/bin:$PATH
fi
