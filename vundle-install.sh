#!/bin/bash

mkdir -p ~/.vim/bundle
# Clone Vundle repository
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Create a backup of existing .vimrc file
if [ -f ~/.vimrc ]; then
    mv ~/.vimrc ~/.vimrc.backup
fi

# Create a new .vimrc file with Vundle configuration
cat > ~/.vimrc <<EOF
set nocompatible              " be iMproved, required
filetype off                  " required

" Vundle settings
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Add your plugins here
Plugin 'VundleVim/Vundle.vim'

call vundle#end()
filetype plugin indent on    " required
EOF

echo "Vundle has been successfully installed"
rm ~/.vimrc
echo "Removed Vundle default vimrc"
ln -s ~/dotfiles/vimrc ~/.vimrc
echo "Replaced with repo vimrc"
vim +PluginInstall +qall
echo "Installed plugin list in vim"
#for ycm
python3 ~/.vim/bundle/youcompleteme/install.py --all
