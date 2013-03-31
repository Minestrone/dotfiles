# ZSH Global Configs
#
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(archlinux debian rails3 git)
source $ZSH/oh-my-zsh.sh

# ENV Settings
#
export EDITOR="vim"
bindkey -v

# TMUX Configs
#
[ -n "$TMUX" ] && export TERM=screen-256color

tn() { tmux new -s $1 }
ts() { tmux switch -t $1 }

# Simulate OSX's pbcopy/pbpaste
#
if [ ! $(uname -s) = "Darwin" ]; then
  export PATH=$HOME/.rvm/gems/ruby-1.9.3-p194@studentstock/bin:$HOME/.rvm/gems/ruby-1.9.3-p194@global/bin:$HOME/.rvm/rubies/ruby-1.9.3-p194/bin:$HOME/.rvm/bin:/usr/bin/local:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/git/bin:/opt/PalmPDK/bin:/opt/PalmSDK/0.1/bin/

  alias pbcopy='xsel --clipboard --input'
  alias pbpaste='xsel --clipboard --output'
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# MISC Aliases
#
alias upwifi='sudo wifi-menu wlp0s26f7u1' # For Archlinux System

alias wd="pwd"
alias less='less -NR'
alias ssmaster="git clone git@github.com:studentstock/studentstock.git"

# rails/rake aliases
#
alias dbnuke='bundle exec rake db:drop;bundle exec rake db:create;bundle exec rake db:migrate;bundle exec rake db:test:prepare'
alias rserver="rails s -p3001"
