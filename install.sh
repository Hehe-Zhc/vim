wget --no-check-certificate -qO- https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | bash
mv ~/.vimrc ~/.vimrc.bak
ln -s `pwd`"/.vimrc" ~/.vimrc
