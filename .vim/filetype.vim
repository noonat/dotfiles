" markdown filetype file
if exists("did\_load\_filetypes")
    finish
endif
augroup markdown
    au! BufRead,BufNewFile *.(md|mkd|markdown) setfiletype mkd
augroup END

