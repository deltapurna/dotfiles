" General
set nocompatible    		" choose no compatibility with legacy vi

filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Utilities
Plugin 'kien/ctrlp.vim' " Fuzzy file finder
Plugin 'tpope/vim-surround' " surround everything
Plugin 'tComment' " comments
Plugin 'bling/vim-airline' " for statusline
Plugin 'tpope/vim-fugitive' " for git status
Plugin 'altercation/vim-colors-solarized' " for solarized theme
Plugin 'summerfruit256.vim' " for light theme
Plugin 'matchit.zip', {'name': 'matchit'}

" Language Specifics
Plugin 'tpope/vim-rails' " Rails
Plugin 'derekwyatt/vim-scala' " Scala

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on	" load filetype plugins + indentation

syntax enable
set encoding=utf-8
set showcmd			" display incomplete commands

" Whitespaces
set nowrap 			" don't wrap lines
set tabstop=2 softtabstop=2 shiftwidth=2	" a tab is two spaces
set expandtab			" use spaces, not tabs (optional)
set backspace=indent,eol,start	" backspace through everything in insert mode

" Searching
set hlsearch			" highlight matches
set incsearch			" incremental searching
set ignorecase			" searches are case sensitive...
set smartcase			" ...unless they contain at least one capital letter

" Tags
set tags=./tags,./gems.tags;
let g:ctrlp_extensions = ['tag']

" Appearances
set t_Co=256 " force vim to use 256 color
let g:solarized_termcolors=256      " use solarized 256 fallback
set background=dark " use dark as default
colorscheme solarized
set laststatus=2
set noshowmode
set number
let g:airline_powerline_fonts = 1

" Autocommands
if has('autocmd')
  autocmd bufwritepost .vimrc source $MYVIMRC " source .vimrc file after saving it
endif

" gvim setup
if has('gui_running')
  set guifont=Inconsolata\ Medium\ 12 " set default font to Inconsolate 12
  set guioptions-=T  " remove toolbar
  set guioptions-=r  " remove right-hand scroll bar
  set guioptions-=L  " remove right-hand scroll bar
  set guioptions-=m  " remove menu
endif

" change the mapleader from \ to ,
let mapleader=","
