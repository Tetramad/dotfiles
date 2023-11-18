setlocal colorcolumn=100

nnoremap <buffer> <Leader>f :RustFmt<Cr>
nnoremap <buffer> <Leader>r :Crun<Cr>
nnoremap <buffer> <Leader>c :Ccheck<Cr>
nnoremap <buffer> <Leader>b :Cbuild<Cr>
nnoremap <buffer> <Leader>t :Ctest<Cr>

nnoremap <buffer> <Leader>h :call CocAction('doHover', 'float')<Cr>
