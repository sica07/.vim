function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END

"Insert 'use ClassName' line (needs ctags)
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>pu <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>pu :call PhpInsertUse()<CR>

"Insert 'expand ClassName' (needs ctags)
function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>pe <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>pe :call PhpExpandClass()<CR>

" Yank word into buffer t and use wget and hxselect to get function signature etc
nnoremap <silent> <leader>d ve"ty<esc>:call Get_PHP_def()<cr>
function! Get_PHP_def()
    "let l:selection = s:get_visual_selection()  " Why not work?
    let l:fn_name = substitute(@t, "_", "-", "g")
    let l:page = system('wget -q -O - "php.net/manual/en/function.' . l:fn_name .  '.php" | hxnormalize -l 240 -x')
    let l:synopsis = system('hxselect -c ".methodsynopsis" | sed -e "s/<[^>]*>//g"', l:page)
    let l:title = system('hxselect -c ".dc-title" | sed -e "s/<[^>]*//g"', l:page)
    echo title 
    echo synopsis
endfunction

