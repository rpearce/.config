#!/bin/sh

# Create the directory
mkdir -p ~/.local/bin

# Install the stack tool:
# https://docs.haskellstack.org/en/stable/README/
curl -sSL https://get.haskellstack.org/ | sh

# Upgrade in case its already installed
stack upgrade

# Add missing binaries if applicable (ghc, e.g.)
stack setup

# Install ghc-mod for editor support:
# https://github.com/DanielG/ghc-mod/wiki/Installing#using-the-stack-tool
stack install ghc-mod

# Install stylish-haskell for format-on-save:
# https://github.com/jaspervdj/stylish-haskell
stack install stylish-haskell

# Install hlint for file linting:
# https://github.com/ndmitchell/hlint
stack install hlint
