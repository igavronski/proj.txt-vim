" Manage projects with text files
" Author: Iuri Gavronski - iuri at proxima dot adm dot bee-arr
"

if exists("b:current_syntax")
    finish
endif

syntax match ImportantTask '^\s*\*\s.\+$'
syntax match CompleteTask '^\s*x\s.\+$'

highlight default link ImportantTask Constant
highlight default link CompleteTask Comment

let b:current_syntax = "proj"

