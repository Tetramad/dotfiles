setlocal colorcolumn=80

command! -buffer Lint !pycodestyle %
command! -buffer Run split|terminal python %
command! -buffer Test split|terminal python -m unittest discover -v -p '*_test.py'

nnoremap <buffer> <Leader>r :Run<Cr>
nnoremap <buffer> <Leader>l :Lint<Cr>
nnoremap <buffer> <Leader>t :Test<Cr>
