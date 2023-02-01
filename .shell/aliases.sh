# use colors in coreutils utilities output
alias tree='tree -a -C -l -q -I ".git"'

# move to trash instead of rm
alias rm=trash

# use bat instead of cat
alias cat='bat'

# quick clear
alias c=clear

# quick open
alias o=open

# quick kubectl
alias k=kubectl

# brew update && upgrade
alias brewup='brew update && brew upgrade'

# dotfiles management
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
