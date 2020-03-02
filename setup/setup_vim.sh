# update
sudo apt update
sudo apt install curl

# remove current vim
sudo apt-cache -i depends vim
sudo apt remove --purge vim vim-runtime vim-common
sudo rm -rf /usr/local/share/vim
sudo rm /usr/local/bin/vim

# install new vim and plugin dependency
sudo apt-get install -y git build-essential ncurses-dev lua5.2 lua5.2-dev luajit python-dev python3-dev ruby-dev
cd /opt/ && sudo git clone https://github.com/vim/vim
cd vim/

# build file
sudo ./configure --with-features=huge --enable-multibyte --enable-luainterp=dynamic --enable-gpm --enable-cscope --enable-fontset --enable-fail-if-missing --prefix=/usr/local --enable-pythoninterp=dynamic --enable-python3interp=dynamic --enable-rubyinterp=dynamic 
sudo make && sudo make install
vim --version

# install dein and plugins
cp ../dot_files/vimrc.txt ~/.vimrc
cd ~ && mkdir -p ~/.vim/plugin
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.vim/plugin
cp ../dot_files/vimrc.txt ~/.vimrc
rm installer.sh && vim .vimrc
