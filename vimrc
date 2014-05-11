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
Plugin 'tpope/vim-fugitive' " a Git wrapper

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
colorscheme torte

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
