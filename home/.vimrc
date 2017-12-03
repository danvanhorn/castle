if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'altercation/vim-colors-solarized'
call plug#end()

" MAPPING {{{
" space will be the leader its not as far away
let mapleader=","
inoremap jk <esc>
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
let g:solarized_termcolors = 256
let g:solarized_termtrans =  1
let g:solarized_degrade = 1
let g:solarized_bold = 1
let g:solarized_underline = 0
let g:solarized_italic = 0 
let g:solarized_contrast = "normal"
let g:solarized_visibility= "normal"
set background=dark
colorscheme solarized
" }}}

" PLUGINS {{{
" enable vim-airline the vim status bar
set laststatus=2
let g:airline#extenions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

" NerdTree {{{
let g:NERDTreeDirArrows = 1
"let g:NERDTreeDirArrowExpandable = '▸'
"let g:NERDTreeDirArrowCollapsible = '▾':
nmap <F9> :NERDTreeToggle<CR>
" }}}

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
