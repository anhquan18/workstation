#!/bin/bash

# setup
sudo apt update
sudo apt -y install curl dirmngr apt-transport-https lsb-release ca-certificates

# add nodejs 14 repo
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -

# add yarn key
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/yarn.gpg

# add yarn repo
echo "deb [signed-by=/etc/apt/trusted.gpg.d/yarn.gpg] https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list


# install nodejas and npm
sudo apt update
sudo apt install -y nodejs
sudo apt install -y yarn

# setup iamco vim markdown preview
cd ~/.vim/bundles/repos/github.com/iamcco/markdown-preview.nvim/
yarn install
yarn build
