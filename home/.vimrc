" LEADER {{{
" space  will be the leader, it's not as far away
let mapleader=","
" }}}

" TAB  OPTIONS {{{ 
" this ensures that no spaces are actually used in our files
" pressing <tab> will insert spaces, delete will remove them 
let tabsize = 4
execute "set tabstop=".tabsize
execute "set softtabstop=".tabsize
set expandtab
set autoindent
set smartindent
filetype indent on
" }}}

" UI OPTIONS {{{
set number
set showcmd
set cursorline
" visual autocomplete for the command menu
set wildmenu
set showmatch
set incsearch
set hlsearch
set clipboard=unnamed
" }}}

" COLOR {{{
syntax enable
" }}}

" FOLDING {{{

set foldenable
"level at which folds are closed on opening a new buffer
set foldlevelstart=10
"you should never need more than 10 folds
set foldnestmax=10
"fold based on indentation
set foldmethod=indent  
nnoremap <leader>a za
"}}}

" VIM FOLDING {{{
"this tells .vimrc that the commented line below will
"be read and will apply to this file only
set nocompatible
filetype plugin on
set modeline
set modelines=1
"}}}
" vim: foldmethod=marker:foldlevel=0:
