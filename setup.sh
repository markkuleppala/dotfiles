#!/bin/bash

brew bundle
bash bin/install-code-extensions.sh
bash setup-symlinks.sh
bash setup-macos.sh
