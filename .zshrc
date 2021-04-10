# Automatically attach to default tmux session
if [ -z "$TMUX" ]; then
    timo
fi

# Enable Powerlevel10k instant prompt.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"

# Enable powerlevel10k
ZSH_THEME="powerlevel10k/powerlevel10k"

# Display dots whilst waiting for completion
COMPLETION_WAITING_DOTS="true"

# Disable zsh directory permission checks
ZSH_DISABLE_COMPFIX=true

# Fiz zsh
unsetopt BG_NICE

# Oh-my-zsh plugins
plugins=(git vi-mode xcode tmux common-aliases brew fancy-ctrl-z zsh-wakatime zsh-z)

# Enable oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Language environment
export LANG=en_US.UTF-8

# Syntax highlighting
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Auto suggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Use the vi navigation keys besides cursor keys is menu completion
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

# Exit insert mode with jk in zsh
bindkey -M viins 'jk' vi-cmd-mode

# Fix slowness of pastes with zsh-syntax-highlighting.zsh
pasteinit() {
  OLD_SELF_INSERT=${${(s.:.)widgets[self-insert]}[2,3]}
  zle -N self-insert url-quote-magic # I wonder if you'd need `.url-quote-magic`?
}

pastefinish() {
  zle -N self-insert $OLD_SELF_INSERT
}
zstyle :bracketed-paste-magic paste-init pasteinit
zstyle :bracketed-paste-magic paste-finish pastefinish

# Exit shell in vi normal mode with ZZ
exit_widget() {
    exit
}
zle -N exit_widget
bindkey -M vicmd ZZ exit_widget

# Change cursor shape for different vi modes.
function zle-keymap-select () {
    case $KEYMAP in
        vicmd) echo -ne '\e[1 q';;      # block
        viins|main) echo -ne '\e[5 q';; # beam
    esac
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# Include hidden files in tab completion
_comp_options+=(globdots)
zstyle ':completion:*' special-dirs false

# Do not complete the mcd function as mkdir
compdef _directories mcd

# Use Shift-Tab to move through the completion menu backwards
bindkey '^[[Z' reverse-menu-complete

# FZF Auto-completion
[[ $- == *i* ]] && source "$(brew --prefix)/opt/fzf/shell/completion.zsh" 2> /dev/null

# FZF Key bindings
source "$(brew --prefix)/opt/fzf/shell/key-bindings.zsh"

# FZF Settings
export FZF_DEFAULT_OPTS="--height 90% --layout=reverse --color 'bg+:-1'"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
