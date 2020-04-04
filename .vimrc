set nocompatible
filetype on
filetype indent on

if has("multi_byte")
	set encoding=utf-8
endif

" vim setting
set autoindent
set belloff=all
set colorcolumn=80
set incsearch
set list
set listchars=eol:$,tab:»\ ,trail:·
set number
set relativenumber
set ruler
set showcmd
set smartindent
set copyindent
set smarttab
set wildmenu
set tildeop
set nowrap
set softtabstop=4
set tabstop=4
set shiftwidth=4

syntax on

set path+=/usr/local/include
set path+=/usr/lib/gcc/x86_64-pc-linux-gnu/9.2.0/include
if isdirectory("./include")
	set path+=./include
endif
if isdirectory("./libft")
	set path+=./libft
endif

" 42 header settings
let g:hdr42user="sejang"
let g:hdr42mail=""
