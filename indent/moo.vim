" Vim indent file
" Language:       MOO
" Maintainer:     Kenny Root <kenny@the-b.org>
" Original Date:  June 29, 2009
" Last Update:    June 29, 2009
" Depends on the GenericIndent function in genindent.vim

" Only load this indent file when no other was loaded.
if exists("b:did_indent")
  finish
endif
let b:did_indent = 1

setlocal autoindent
setlocal sw=2

let b:indent_block_start = '^\s*\(if\|elseif\|else\|for\|while\|fork\|except\)'
let b:indent_block_end = '^\s*\(endif\|elseif\|else\|endfor\|endwhile\|endfork\|except\|endtry\)'

setlocal indentexpr=GenericIndent(v:lnum)
setlocal indentkeys+==endif,=endfor,=endwhile,=endfork,=except,=endtry
