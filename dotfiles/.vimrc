set nocompatible              " be iMproved, required
filetype off                  " required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Alternatively, pass a path where Vundle should install plugins
" let path = '~/some/path/here'
" call vundle#rc(path)

" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Git wrapper so awesome, it should be illegal
Plugin 'tpope/vim-fugitive'
" A tree explorer plugin for navigating the filesystem
Plugin 'scrooloose/nerdtree'
" Syntax checking hacks for vim
Plugin 'scrooloose/syntastic'
" Provides Rust file detection, syntax highlighting, formatting...
Plugin 'rust-lang/rust.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"NERDTree bugfix
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" Show hidden files in NERDTree
let NERDTreeShowHidden = 1

" Autostart NERDTree
autocmd vimenter * NERDTree

" Close vim if NERDTree is the only open window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Configuration settings
" Turn on line numbering. Turn it off with "set nonu"
set nu

" Html and XML indentation
let g:html_indent_inctags = "html,body,head,tbody"
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType xml setlocal shiftwidth=2 tabstop=2

" Git commit guidelines
autocmd Filetype gitcommit setlocal spell textwidth=72

" Window navigation remap
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Set syntax on
syntax on

if $COLORTERM == 'gnome-terminal'
      set t_Co=256
endif

" Indent automatically depending on filetype
set autoindent

" Case insensitive search
set ignorecase
set smartcase

" Incremental search
set incsearch
" Highlight search
set hls

set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=80

" Always uses spaces instead of tabs
set expandtab

" Indent instead of tab at start of line
set smarttab

" Round spaces to nearest shiftwidth multiple
set shiftround

" Don't convert spaces to tabs
set nojoinspaces

colors morning
