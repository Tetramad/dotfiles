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

alias vless="vim -u /usr/share/vim/vim80/macros/less.vim"

# Load Homebrew config script
source $HOME/.brewconfig.zsh
export PATH=$HOME/.brew/bin:$PATH
