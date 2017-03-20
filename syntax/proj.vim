" File:         .vim/syntax/proj.vim
" Description:  Manage projects with text files
" Author:       Iuri Gavronski - iuri at proxima dot adm dot bee-arr
" License:      MIT
" Website:      
"
" This script draws A LOT from http://github.com/freitass/todo.txt-vim
"

if exists("b:current_syntax")
    finish
endif

syntax match ImportantTask '^\s*\*\s.\+$'
syntax match CompleteTask '^\s*x\s.\+$'

highlight default link ImportantTask Constant
highlight default link CompleteTask Comment

" shamelessly copied from Freitass/todo-txt.vim:
" highlights tasks/projects with due dates as of today or before.
"
if has('python')
    let b:curdir = expand('<sfile>:p:h')
    let s:script_dir = b:curdir . "/python/"
    execute "pyfile " . s:script_dir. "proj.py"
elseif has('python3')
    let b:curdir = expand('<sfile>:p:h')
    let s:script_dir = b:curdir . "/python/"
    execute "py3file " . s:script_dir. "proj.py"
else
    echom "Your version of vim has no python support. Overdue dates won't be highlighted"
endif

let b:current_syntax = "proj"

