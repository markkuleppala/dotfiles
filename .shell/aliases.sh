# Attach to default tmux session if exists
# else create it
alias timo='tmux new-session -A -s timo'

# use colors in coreutils utilities output
alias tree='tree -a -C -l -q -I ".git"'

# move to trash instead of rm
alias rm=trash

# ls with colors and icons
alias lsd='exa --color always --icons -a -s type'

# bat theme
alias bat='bat --theme="Nord"'

# use bat instead of cat
alias cat='bat -pp'

# quick clear
alias c=clear

# quick open
alias o=open

# vim
alias vim="nvim"

# dotfiles management
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
