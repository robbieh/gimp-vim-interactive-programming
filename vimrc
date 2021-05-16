
function GimpSend()
    "execute system("send-gimp.sh " . shellescape(getline(".")) )<CR> 
    let reg_save = getreg('"')
    let regtype_save = getregtype('"')
    let cb_save = &clipboard
    set clipboard&

    silent normal! ""y%
    let selection = getreg('"')

    call setreg('"', reg_save, regtype_save)
    let &clipboard = cb_save
    echom system("send-gimp.sh " . shellescape(selection))
endfunction

autocmd FileType scheme nmap <leader>g :call GimpSend()<CR>

