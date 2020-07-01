set nocompatible
filetype on
filetype indent on
filetype plugin on

syntax on

if has("multi_byte")
	set encoding=utf-8
endif

if filereadable($HOME."/.vim/colors/nord.vim")
	colorscheme nord
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
set softtabstop=4
set tabstop=4
set shiftwidth=4
set splitright
set splitbelow
set hlsearch

function s:Autopath(path)
	if isdirectory(a:path)
		execute "set" "path+=".a:path
	endif
endfunction

call s:Autopath("./include")
call s:Autopath("./libft")
call s:Autopath($HOME."/.local/include")
call s:Autopath($HOME."/.brew/Cellar/criterion/2.3.3/include")
call s:Autopath("/usr/local/include")
call s:Autopath("/usr/lib/gcc/x86_64-linux-gnu/9/include")
call s:Autopath("/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/11.0.0/include")
call s:Autopath("/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include")
call s:Autopath("/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include")
call s:Autopath("/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/System/Library/Frameworks")

" fuzzy finder
set path+=**
set wildmenu

" 42 header settings
let g:hdr42user="sejang"
let g:hdr42mail="sejang@student.42seoul.kr"

" guacamole settings
nnoremap <F3> :!norminette "%"<CR>
nnoremap <F2> <C-W>
inoremap <F2> <C-W>

" clang format settings
noremap <F4> ggVG:py3file /usr/share/clang/clang-format-10/clang-format.py<CR><C-O><C-O>

autocmd filetype cpp set sw=2
autocmd filetype cpp set ts=2
autocmd filetype cpp set sts=2
autocmd filetype c set sw=4
autocmd filetype c set ts=4
autocmd filetype c set sts=4

" coc gopls add missing imports setting
autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')
