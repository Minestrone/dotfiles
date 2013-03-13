ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(archlinux debian rails3 git)
source $ZSH/oh-my-zsh.sh


# Simulate OSX's pbcopy/pbpaste
if [ ! $(uname -s) = "Darwin" ]; then
  export PATH=$HOME/.rvm/gems/ruby-1.9.3-p194@studentstock/bin:$HOME/.rvm/gems/ruby-1.9.3-p194@global/bin:$HOME/.rvm/rubies/ruby-1.9.3-p194/bin:$HOME/.rvm/bin:/usr/bin/local:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/git/bin:/opt/PalmPDK/bin:/opt/PalmSDK/0.1/bin/

  alias pbcopy='xsel --clipboard --input'
  alias pbpaste='xsel --clipboard --output'
fi

#export PATH=/Users/anthonyvallerga/.rvm/gems/ruby-1.9.3-p194@studentstock/bin:/Users/anthonyvallerga/.rvm/gems/ruby-1.9.3-p194@global/bin:/Users/anthonyvallerga/.rvm/rubies/ruby-1.9.3-p194/bin:/Users/anthonyvallerga/.rvm/bin:/usr/bin/local:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/git/bin:/opt/PalmPDK/bin:/opt/PalmSDK/0.1/bin/

#PROMPT="%#|%n@%m: %B% %~ %b"
#autoload -U promptinit
#promptinit

#prompt suse 

[ -n "$TMUX" ] && export TERM=screen-256color
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# export LANG=en_US.UTF-8

# MISC Aliases
  # laptop wireless
  alias upwifi='sudo wifi-menu wlp0s26f7u1'

alias wd="pwd"
alias less='less -NR'
# alias satllite5='ssh syrup@208.68.39.36'
alias ssmaster="git clone git@github.com:studentstock/studentstock.git"
 

#tmux shit
switch() { tmux switch -t $1 }

# Additional pacman alias
alias pacupd='sudo pacman -Sy && sudo abs'     # Update and refresh the local package and ABS databases against repositories
alias pacinsd='sudo pacman -S --asdeps'        # Install given package(s) as dependencies of another package
alias pacmir='sudo pacman -Syy'                # Force refresh of all package lists after updating /etc/pacman.d/mirrorlist

# git aliases
alias gpull='git pull'
alias gpush='git push'
alias gstat='git status'
alias gdiff='git diff'
alias gadd='git add'
alias commit='git commit -m'

# rails/rake aliases
alias dbnuke='bundle exec rake db:drop;bundle exec rake db:create;bundle exec rake db:migrate;bundle exec rake db:test:prepare'
