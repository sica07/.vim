nmap ,u :GundoToggle<CR>

" open on the right so as not to compete with the nerdtree
let g:gundo_right = 1 

" a little wider for wider screens
let g:gundo_width = 60
if has('python3')
    let g:gundo_prefer_python3 = 1          " anything else breaks on Ubuntu 16.04+
endif

