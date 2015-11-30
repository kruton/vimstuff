autocmd BufNewFile,BufRead *.java call s:check_for_android_syntastic_config()

function! s:check_for_android_syntastic_config()
    let idx = stridx(getcwd(), resolve(expand(($TOP))))
    if idx !=# -1
        let syntastic_config_file = fnameescape($TOP) . "/.syntastic_javac_config"
        if filereadable(syntastic_config_file)
            let g:syntastic_java_javac_config_file = syntastic_config_file
        endif
    endif
endfunction
