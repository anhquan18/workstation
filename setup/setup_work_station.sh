#!/bin/bash

# Update system
sudo apt update
sudo apt upgrade -y

# Change Caplock to escape
# dconf write /org/gnome/desktop/input-sources/xkb-options "['caps:escape']"

# Install necessary library and tools

sudo apt install -y tmux python3 python3-pip curl build-essential libgtk-3-dev easystroke htop tree

# Ubuntu22.04 -> python3-catkin
sudo apt install -y python3-catkin-tools

# Install python3 package
sudo python3 -m pip install pandas scipy matplotlib numpy tk opencv-python tqdm osrf-pycommon neovim pynvim graphviz tqdm

# setup shell
cp ../dot_files/bashrc.txt ~/.bashrc
cp ../dot_files/bash_aliases.txt ~/.bash_aliases
source ~/.bashrc
mkdir -p ~/git/my_file/

# Install vim
sh ./setup_vim.sh
sh ./setup_nodejs_yarn_for_vim_md_preview.sh
