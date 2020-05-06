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
set nolist
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
set path+=/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/11.0.0/include
set path+=/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include
set path+=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include
set path+=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/System/Library/Frameworks 
if isdirectory("./include")
	set path+=./include
endif
if isdirectory("./libft")
	set path+=./libft
endif
if isdirectory($HOME."/.brew/Cellar/criterion/2.3.3/include")
	set path+=$HOME/.brew/Cellar/criterion/2.3.3/include
endif

" 42 header settings
let g:hdr42user="sejang"
let g:hdr42mail="sejang@student.42seoul.kr"

" guacamole settings
nnoremap <F3> :!norminette "%"<CR>
nnoremap <F2> <C-W>
inoremap <F2> <C-W>
