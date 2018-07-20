"
" .c file type plugin for linux kernel
"
" https://github.com/vivien/vim-linux-coding-style/blob/master/plugin/linuxsty.vim
"
setlocal tabstop=8
setlocal shiftwidth=8
setlocal softtabstop=8
setlocal textwidth=80
setlocal noexpandtab

" for indentation for switch/case, function declaration statement etc.
" refer to :help cinoptions-values
setlocal cindent
setlocal cinoptions+=:0,l1,t0,g0,(0
