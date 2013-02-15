
# ~/.zshrc
#

# zsh environment settings

PROMPT="%#|%n@%m: %B% %~ %b"
autoload -U promptinit
promptinit

prompt suse 

[ -n "$TMUX" ] && export TERM=screen-256color
##############################
#
#Random Environment Settings
#
##############################

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# export LANG=en_US.UTF-8

# MISC Aliases
  # laptop wireless
alias upwifi='sudo wifi-menu wlp0s26f7u1'

alias less='less -NR'

alias lr='ls -R --color'
alias ls='ls -lah --color'
alias ll='la | less --color'

alias jagrafess='ssh jagrafess@208.68.39.36'

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
alias dbnuke='rake db:drop; rake db:create; rake db:migrate; rake db:test:prepare'
