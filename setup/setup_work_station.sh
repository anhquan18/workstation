#!/bin/bash

# Update system
sudo apt update
sudo apt upgrade -y

# Change Caplock to escape
# dconf write /org/gnome/desktop/input-sources/xkb-options "['caps:escape']"

# Install necessary library and tools
sudo apt install -y tmux python3 python3-pandas python3-scipy python3-matplotlib python3-numpy python3-tk python3-opencv python3-pip git build-essential curl build-essential libgtk-3-dev easystroke python3-pynvim python3-neovim python3-catkin-tools python3-osrf-pycommon python3-pandas python3-tqdm

# setup shell
cp ../dot_files/bashrc.txt ~/.bashrc
cp ../dot_files/bash_aliases.txt ~/.bash_aliases
source ~/.bashrc
mkdir -p ~/git/my_file/

# Install vim
sh ./setup_vim.sh
