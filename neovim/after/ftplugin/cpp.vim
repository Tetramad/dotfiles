setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2
setlocal expandtab
setlocal foldmethod=manual

function! ClangFormat()
	let l:lines = "all"
	py3file /usr/share/clang/clang-format.py
endfunction
autocmd BufWritePre *.hh,*.cc call ClangFormat()
