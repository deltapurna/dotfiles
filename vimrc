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
Plugin 'taglist.vim' " list tags
Plugin 'tpope/vim-fugitive' " for git status
Plugin 'matchit.zip', {'name': 'matchit'} " go to closing brackets
Plugin 'rking/ag.vim' " ag for faster search
Plugin 'KabbAmine/zeavim.vim' " integrate with zeal
Plugin 'wakatime/vim-wakatime' " integrate with wakatime

" Appearances
Plugin 'bling/vim-airline' " for statusline
Plugin 'drmikehenry/vim-fontsize' " for fontsize in gvim
Plugin 'chriskempson/base16-vim' " base16 theme
Plugin 'junegunn/goyo.vim' " Distraction free
Plugin 'junegunn/limelight.vim' " To accompany goyo

" Language Specifics
Plugin 'tpope/vim-rails' " Rails
Plugin 'derekwyatt/vim-scala' " Scala
Plugin 'vim-ruby/vim-ruby' " Ruby
Plugin 'kchmck/vim-coffee-script' " CoffeeScript
Plugin 'tpope/vim-haml' " Haml
Plugin 'evanmiller/nginx-vim-syntax' " Nginx
Plugin 'briancollins/vim-jst' " for ejs
Plugin 'mxw/vim-jsx' " for jsx (react)

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

" Tags & Navigations
set tags=./tags,./gems.tags;
let g:ctrlp_extensions = ['tag']
let Tlist_Show_One_File = 1 " Taglist to show only 1 file tags
let Tlist_Use_Right_Window = 1 " Taglist to show on the right sidebar
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" Appearances
set t_Co=256 " force vim to use 256 color
let g:solarized_termcolors=256      " use solarized 256 fallback
set background=dark " use dark as default
colorscheme  torte
set laststatus=2
set noshowmode
set number
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
" Use limelight when trigger Goyo
autocmd User GoyoEnter Limelight
autocmd User GoyoLeave Limelight!

" Autocommands
if has('autocmd')
  autocmd bufwritepost .vimrc source $MYVIMRC " source .vimrc file after saving it
  " Open markdown files with Chrome.
  autocmd BufEnter *.md exe 'nnoremap <leader>p :!chromium %:p<CR>'
endif

" gvim setup
if has('gui_running')
  colorscheme  base16-eighties
  set guifont=Source\ Code\ Pro\ 11 " set default font to Source Code Pro 11
  set guioptions-=T  " remove toolbar
  set guioptions-=r  " remove right-hand scroll bar
  set guioptions-=L  " remove left-hand scroll bar
  set guioptions-=m  " remove menu
endif

" Mapping

" change the mapleader from \ to ,
let mapleader=","

" toggle taglist
nnoremap <leader>l :TlistToggle<CR>
