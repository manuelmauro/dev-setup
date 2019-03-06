#!/bin/bash
# Simple configuration for Ubuntu

# Essentials
sudo apt-get install -y build-essential clang git pkg-config stow

# Install Haskell
sudo apt-get install -y haskell-platform

# Install Rust
sudo apt-get install -y curl
curl https://sh.rustup.rs -sSf | sh

# Install vim and vundle
sudo apt-get install -y vim
mkdir -p ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# Stow dotfiles
mv ~/.bash_aliases ~/.bash_aliases_old
mv ~/.bash_profile ~/.bash_profile_old
mv ~/.bashrc ~/.bashrc_old
mv ~/.bashrc_custom ~/.bashrc_custom_old
mv ~/.gitconfig ~/.gitconfig_old
mv ~/.gitmessage ~/.gitmessage_old
mv ~/.profile ~/.profile_old
mv ~/.vimrc ~/.vimrc_old
stow -t ~ dotfiles/
