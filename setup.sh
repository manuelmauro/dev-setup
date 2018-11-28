#!/bin/bash
# Simple configuration for Ubuntu

# Essentials
sudo apt-get install -y build-essential clang git pkg-config

# Install vim and vundle
sudo apt-get install -y vim
mkdir -p ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
