#!/bin/bash

# update
sudo apt update
sudo apt install wget

# remove current vim
sudo apt-cache -i depends vim
sudo apt remove --purge vim vim-runtime vim-common
sudo rm -rf /usr/local/share/vim
sudo rm /usr/local/bin/vim

# install new vim from source sudo apt install git
cd
git clone https://github.com/vim/vim.git
cd vim
./configure --enable-pythoninterp --prefix=/usr
sudo apt install ncurses-dev
make -j6
sudo make install

# install plugin dependency
sudo apt-get install -y git build-essential ncurses-dev lua5.2 lua5.2-dev luajit python3-dev ruby-dev


# install dein and plugins
cd
wget https://raw.githubusercontent.com/Shougo/dein-installer.vim/master/installer.sh

sh ./installer.sh ~/.vim/bundles
cd ~/git/my_file/workstation/setup && cp ../dot_files/vimrc.txt ~/.vimrc
cd && rm installer.sh && vim .vimrc
