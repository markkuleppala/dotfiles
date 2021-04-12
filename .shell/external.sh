# locale
export LC_ALL=en_US.UTF-8

# editor
export EDITOR="nvim"

# direnv
eval "$(direnv hook zsh)"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && . "$(brew --prefix)/opt/nvm/nvm.sh" # This loads nvm
[ -s "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" ] && . "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# pyvenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"

# Python packages
export PATH="$PATH:$HOME/Library/Python/3.9/bin"

# nvcode https://github.com/ChristianChiarulli/nvcode
export PATH="$PATH:/Users/$USER/.config/nvim/utils/bin"

# keytimeout for exiting vim mode in tmux
export KEYTIMEOUT=20

