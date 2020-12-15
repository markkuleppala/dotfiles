#!/bin/zsh

brew bundle
./bin/install-code-extensions.sh
./bin/install-zsh-plugins.sh
./setup-symlinks.sh
./setup-macos.sh
