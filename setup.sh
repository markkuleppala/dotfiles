#!/bin/bash

brew bundle
bash bin/install_code_extensions.sh
bash setup-symlinks.sh
bash setup-macos.sh
