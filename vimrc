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
Plugin 'benmills/vimux' " tmux integration
Plugin 'bling/vim-airline' " for statusline
Plugin 'tpope/vim-fugitive' " for git status
Plugin 'altercation/vim-colors-solarized' " for solarized theme
Plugin 'Bogdanp/github.vim' " for github theme
Plugin 'summerfruit256.vim' " for light theme

" Language Specifics
Plugin 'tpope/vim-rails' " Rails
Plugin 'derekwyatt/vim-scala' " Scala


" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on	" load filetype plugins + indentation

syntax enable
set encoding=utf-8
set showcmd			" display incomplete commands

" Whitespace
set nowrap 			" don't wrap lines
set tabstop=2 shiftwidth=2	" a tab is two spaces
set expandtab			" use spaces, not tabs (optional)
set backspace=indent,eol,start	" backspace through everything in insert mode

" Searching
set hlsearch			" highlight matches
set incsearch			" incremental searching
set ignorecase			" searches are case sensitive...
set smartcase			" ...unless they contain at least one capital letter

" Appearance
set t_Co=256 " force vim to use 256 color
let g:solarized_termcolors=256      " use solarized 256 fallback
set background=dark " use dark as default
colorscheme solarized
set laststatus=2
set noshowmode
let g:airline_powerline_fonts = 1

" gvim setup
if has('gui_running')
  set guifont=Inconsolata\ Medium\ 12
  set guioptions-=T  " remove toolbar
  set guioptions-=r  " remove right-hand scroll bar
  set guioptions-=L  " remove right-hand scroll bar
endif

" change the mapleader from \ to ,
let mapleader=","

" Key Binding

" Vimux
" Run the current file with rspec
map <Leader>rs :call VimuxRunCommand("clear; bundle exec rspec")<CR>
map <Leader>rb :call VimuxRunCommand("clear; bundle")<CR>

" Prompt for a command to run
map <Leader>vp :VimuxPromptCommand<CR>

" Run last command executed by VimuxRunCommand
map <Leader>vl :VimuxRunLastCommand<CR>

" Inspect runner pane
map <Leader>vi :VimuxInspectRunner<CR>

" Close vim tmux runner opened by VimuxRunCommand
map <Leader>vq :VimuxCloseRunner<CR>

" Interrupt any command running in the runner pane
map <Leader>vx :VimuxInterruptRunner<CR>

" Zoom the runner pane (use <bind-key> z to restore runner pane)
map <Leader>vz :call VimuxZoomRunner()<CR>
