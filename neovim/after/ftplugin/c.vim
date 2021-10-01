function c#FoldLevelOf(lnum)
	let l:line = getline(a:lnum)
	if count(line, '{') > count(line, '}')
		return 'a1'
	elseif count(line, '{') < count(line, '}')
		return 's1'
	else
		return '='
	endif
endfunction

set wildignore+=*.o

setlocal autoindent
setlocal cindent
setlocal colorcolumn=+0
setlocal comments=sO:/*,mb:**,ex:*/,://
setlocal complete=.,w,b,i,d,t
setlocal define=^\s*#\s*define
setlocal endofline
setlocal noexpandtab
setlocal fixendofline
setlocal foldexpr=c#FoldLevelOf(v:lnum)
setlocal foldlevelstart=99
setlocal foldmethod=expr
setlocal include=^\s*#\s*include
setlocal shiftwidth=4
setlocal smartindent
setlocal softtabstop=4
setlocal noswapfile
setlocal tabstop=4
setlocal textwidth=80
setlocal nowrap

if !empty(glob("Makefile")) 
	nnoremap <Leader><Space> :silent make\|redraw!\|clist<CR>
	setlocal errorformat=%D%.%#:\ Entering\ directory\ '%f',%X%.%#:\ Leaving\ directory\ '%f',%f:%l:%c:%.%#error:\ %m
endif
