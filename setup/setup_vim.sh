#!/bin/bash

# update
sudo apt update
sudo apt install curl

# remove current vim
sudo apt-cache -i depends vim
sudo apt remove --purge vim vim-runtime vim-common
sudo rm -rf /usr/local/share/vim
sudo rm /usr/local/bin/vim

# install new vim and plugin dependency
sudo apt-get install -y git build-essential ncurses-dev lua5.2 lua5.2-dev luajit python-dev python3-dev ruby-dev vim

vim --version

# install dein and plugins
cd && mkdir -p ~/.vim/bundles
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.vim/bundles
cd ~/git/my_file/workstation/setup && cp ../dot_files/vimrc.txt ~/.vimrc
cd && rm installer.sh && vim .vimrc
