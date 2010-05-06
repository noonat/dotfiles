filetype plugin indent on
set smarttab
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

syntax on
set bg=dark
colorscheme molokai
if has("mac")
    set foldcolumn=1
    set fuoptions+=maxhorz,maxvert,background:normal
    set guioptions-=L,R
endif

set nostartofline
set suffixes+=.pyc,.pyo
set wildmenu
set wildmode=longest:full,list

autocmd FileType fuf inoremap <buffer> <Tab> <CR>
map <D-j> :FufFile<CR>
map <D-k> :FufBuffer<CR>

autocmd BufRead *.html set filetype=htmlm4
augroup mkd
    autocmd BufRead *.(md|mkd|markdown) set ai formatoptions=tcroqn3 comments=n:>
augroup END

