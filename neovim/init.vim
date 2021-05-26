call plug#begin(stdpath('data') . '/plugged')
Plug 'tpope/vim-surround'
Plug 'arcticicestudio/nord-vim'
Plug 'itchyny/lightline.vim'
call plug#end()

filetype plugin indent on

syntax on

colorscheme nord

set background=dark
set backspace=indent,eol,start
set belloff=all
set completeopt=menuone,preview
set hidden
set history=50
set nohlsearch
set incsearch
set listchars=tab:»\ ,trail:·,eol:$
set number
set relativenumber
set splitbelow
set splitright
set wildmenu
set laststatus=2
set encoding=utf-8
set nowrap
set path=.,**
set clipboard=unnamedplus

let $RC = stdpath('config') . "/init.vim"

let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1
let g:loaded_python_provider = 0

let g:lightline = {
			\ 'colorscheme': 'nord',
			\ }

nnoremap <Space> <Nop>
let mapleader=" "

augroup project
	autocmd!
	autocmd BufRead,BufNewFile *.c,*.h set filetype=c
augroup END

autocmd TermOpen * setlocal nonumber norelativenumber
