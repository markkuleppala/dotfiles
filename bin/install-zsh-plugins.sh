#!/bin/zsh

source .zshrc

git clone --depth=1 https://github.com/agkozak/zsh-z $ZSH_CUSTOM/plugins/zsh-z
git clone --depth=1 https://github.com/DarrinTisdale/zsh-aliases-exa $ZSH_CUSTOM/plugins/zsh-aliases-exa
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
git clone --depth=1 https://github.com/wbingli/zsh-wakatime.git $ZSH_CUSTOM/plugins/zsh-wakatime
