# ZSH Global Configs
#
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# ENV Settings
#
export EDITOR="vim"
export TERM="xterm-256color"
bindkey -v

alias wd="pwd"
alias less='less -NR'

# Git Aliases
#
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all'

alias got='git '
alias get='git '
