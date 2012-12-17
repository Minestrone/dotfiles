#
# ~/.zshrc
#

# zsh environment settings

PROMPT="%#|%n@%m: %B% %~ %b"
autoload -U promptinit
promptinit

prompt suse 

##############################
#
#Random Environment Settings
#
##############################

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Import Xresources
xrdb ~/.Xresources

export TERM=rxvt-unicode
export LANG=en_US.UTF-8

# Misc Aliases
alias suspend='sudo pm-suspend'
alias surf='tabbed surf -e'
alias sourced='source ~/.bashrc'
alias luakit='command luakit &'
alias bg='feh --bg-max'
alias subl="/home/onashi/Downloads/SublimeText2/sublime_text"

# Misc SSH Aliases
alias prometheus='root@208.68.36.103'

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

# less aliases
alias less='less -NR'

# ls aliases
alias ls='ls -lh --color'
alias lr='ls -R --color'
alias la='ls -lah --color'
alias ll='la | less --color'
