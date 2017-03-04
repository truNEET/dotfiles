
execute pathogen#infect()

syntax on
filetype on

set shiftwidth=4
set tabstop=4
set autoindent
set hidden
"set smartindent
"set mouse=a

"set number
"colorscheme base

vnoremap <C-c> "+y
vnoremap <C-v> "+p

set mouse=a

:command WQ wq
:command Wq wq
:command W w
:command Q q

vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

augroup Mkdir
  autocmd!
  autocmd BufWritePre *
    \ if !isdirectory(expand("<afile>:p:h")) |
        \ call mkdir(expand("<afile>:p:h"), "p") |
    \ endif
augroup END

autocmd BufNewFile,BufRead *.volt.phtml set syntax=volt

au BufNewFile,BufRead *.brs set filetype=basic
