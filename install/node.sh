#!/bin/sh

# Install NVM

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | PROFILE=false bash

# Install latest node version

nvm install latest
nvm alias default latest

# Install global packages

packages=(
  trash
)

npm install -g "${packages[@]}"

# Install yarn

curl -o- -L https://yarnpkg.com/install.sh | bash
