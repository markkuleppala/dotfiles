#!/bin/bash

echo "Saving VSCode extensions..."
code --list-extensions > "$HOME"/bin/code-extensions
