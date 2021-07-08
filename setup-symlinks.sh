#!/bin/bash

# Create directories if do not exist yet
[ -d ~/Library/Application\ Support/Code/User/ ] || mkdir ~/Library/Application\ Support/Code/User
[ -d ~/Library/Application\ Support/Capture\ One/ ] || mkdir ~/Library/Application\ Support/Capture\ One

# Visual Studio Code
ln -sf ~/VSCode/* ~/Library/Application\ Support/Code/User

# Keyboard layout
sudo ln -sf ~/Finnish\ \(Programming\).keylayout /Library/Keyboard\ Layouts/Finnish\ \(Programming\).keylayout
