au BufRead,BufNewFile *.moo set filetype=moo
au BufRead,BufNewFile .tfmcp* call s:FTmoo()

fun! s:FTmoo()
	let n = 1
	if getline(1) =~ '=\s*args;$'
		set filetype=moo
		return
	endif
	while n < 10 && n <= line("$")
		if getline(n) !~ '\(^//\|;$\)'
			return
		endif
		let n = n + 1
	endwhile
	set filetype=moo
endfun
