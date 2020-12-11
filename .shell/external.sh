# locale
export LC_ALL=en_US.UTF-8

# editor
export EDITOR="nvim"

# direnv
eval "$(direnv hook zsh)"

# nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# pyvenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"

# pipenv
export PATH="$PATH:$HOME/Library/Python/3.7/bin"
