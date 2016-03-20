"
" .vimrc based on archlinux.vim
"
set nocompatible
set backspace=indent,eol,start
set history=50
set incsearch
set nobackup

" menu bar related settings
set ruler
set showcmd
set showmode

set incsearch
set autoindent

if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

map Q gq

filetype plugin indent on
