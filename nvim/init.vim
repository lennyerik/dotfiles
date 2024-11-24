if expand('%:t') != 'Makefile'
    set tabstop=4
    set shiftwidth=4
    set expandtab
endif
set autoindent
set smarttab
syntax on


" :Scratch to open a temporary scratch buffer
function Scratch_BF()
    new
    setlocal buftype=nofile
    setlocal noswapfile
endfunction
:command Scratch call Scratch_BF()


" :PScratch to open a temporary python devenv
function PScratch_BF()
    call Scratch_BF()
    setlocal syntax=python
    nmap <buffer> <F2> yyp:.!python<CR>
endfunction
:command PScratch call PScratch_BF()

" This removes trailing spaces from lines on save
" autocmd BufWritePre * :silent! :%s/\s\+$//e

