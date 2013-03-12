ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh
export PATH=/Users/anthonyvallerga/.rvm/gems/ruby-1.9.3-p194@studentstock/bin:/Users/anthonyvallerga/.rvm/gems/ruby-1.9.3-p194@global/bin:/Users/anthonyvallerga/.rvm/rubies/ruby-1.9.3-p194/bin:/Users/anthonyvallerga/.rvm/bin:/usr/bin/local:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/git/bin:/opt/PalmPDK/bin:/opt/PalmSDK/0.1/bin/

#PROMPT="%#|%n@%m: %B% %~ %b"
#autoload -U promptinit
#promptinit

#prompt suse 

[ -n "$TMUX" ] && export TERM=screen-256color
##############################
#
#Random Environment Settings
#
##############################

#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# export LANG=en_US.UTF-8

# MISC Aliases
  # laptop wireless
  alias upwifi='sudo wifi-menu wlp0s26f7u1'

alias wd="pwd"
alias less='less -NR'
# alias satllite5='ssh syrup@208.68.39.36'
alias ssmaster="git clone git@github.com:studentstock/studentstock.git"
 
# Simulate OSX's pbcopy/pbpaste
if [ ! $(uname -s) = "Darwin" ]; then
  alias pbcopy='xsel --clipboard --input'
  alias pbpaste='xsel --clipboard --output'
fi


# Pacman alias
alias pacupg='sudo pacman -Syu'        # Synchronize with repositories before upgrading packages that are out of date on the local system.
alias pacin='sudo pacman -S'           # Install specific package(s) from the repositories
alias pacins='sudo pacman -U'          # Install specific package not from the repositories but from a file 
alias pacre='sudo pacman -R'           # Remove the specified package(s), retaining its configuration(s) and required dependencies
alias pacrem='sudo pacman -Rns'        # Remove the specified package(s), its configuration(s) and unneeded dependencies
alias pacrep='pacman -Si'              # Display information about a given package in the repositories
alias pacreps='pacman -Ss'             # Search for package(s) in the repositories
alias pacloc='pacman -Qi'              # Display information about a given package in the local database
alias paclocs='pacman -Qs'             # Search for package(s) in the local database

# Additional pacman alias
alias pacupd='sudo pacman -Sy && sudo abs'     # Update and refresh the local package and ABS databases against repositories
alias pacinsd='sudo pacman -S --asdeps'        # Install given package(s) as dependencies of another package
alias pacmir='sudo pacman -Syy'                # Force refresh of all package lists after updating /etc/pacman.d/mirrorlist

# git aliases
alias gpull='git pull'
alias gpush='git push'
alias gbranch='git branch -v'
alias gremote='git remote -v'
alias gstat='git status'
alias gdiff='git diff'
alias gadd='git add'
alias commit='git commit -m'

# rails/rake aliases
alias dbnuke='bundle exec rake db:drop;bundle exec rake db:create;bundle exec rake db:migrate;bundle exec rake db:test:prepare'
