"
" .vimrc based on archlinux.vim
"
set nocompatible
set backspace=indent,eol,start
set history=50
set incsearch
set nobackup
autocmd FileType text setlocal textwidth=78

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

" key mapping
map Q gq

" file type plugins
filetype plugin indent on
