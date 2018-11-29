# Brainless setup for Ubuntu development environment
This repository contains a very simple script and some dotfiles for a few applications.

## setup.sh
Installs the following:

* build-essentials
* clang
* git
* haskell
* rust
* stow
* vim
* vundle

The script uses [GNU Stow](https://www.gnu.org/software/stow/) as described
in this
[article](http://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html)
in order to manage dotfiles' symlinks.

## dotfiles
Furthermore  this repo contains dotfiles for:

* bash
* git
* vim

## Credits
This simple repo is based on the work of
[Balaji S. Srinivasan (balajis@stanford.edu)](https://github.com/startup-class/setup)
for the Coursera mooc in startup engineering and on
[Sensible Bash](https://github.com/mrzool/bash-sensible).
