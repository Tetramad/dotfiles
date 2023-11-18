setlocal colorcolumn=80

command! -buffer Lint !pycodestyle %
command! -buffer Run split|terminal python %
command! -buffer TestThis split|terminal python -m unittest discover -v -p '%'
command! -buffer TestAll split|terminal python -m unittest discover -v -p '*_test.py'

nnoremap <buffer> <Leader>r :Run<Cr>
nnoremap <buffer> <Leader>l :Lint<Cr>
nnoremap <buffer> <Leader>t :TestThis<Cr>
nnoremap <buffer> <Leader>T :TestAll<Cr>

nnoremap <buffer> <Leader>h :call CocAction('doHover', 'float')<Cr>
