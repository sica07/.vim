" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
let g:neocomplete#data_directory = '~/.vim/tmp/neocomplete'
    let g:neocomplete#enable_at_startup = 1
    let g:neocomplete#enable_auto_select = 1
    let g:neocomplete#enable_smart_case = 1
    let g:neocomplete#sources#syntax#min_keyword_length = 3
    " increase limit for tag cache files
    let g:neocomplete#sources#tags#cache_limit_size = 16777216 " 16MB

    " fuzzy completion breaks dot-repeat more noticeably
    " https://github.com/Shougo/neocomplete.vim/issues/332
    let g:neocomplete#enable_fuzzy_completion = 0

    " always use completions from all buffers
    if !exists('g:neocomplete#same_filetypes')
      let g:neocomplete#same_filetypes = {}
    endif
    let g:neocomplete#same_filetypes._ = '_'

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
    " enable omni-completion for Ruby and PHP
"    call neocomplete#util#set_default_dictionary(
"          \'g:neocomplete#sources#omni#input_patterns', 'ruby',
"          \'[^. *\t]\.\h\w*\|\h\w*::\w*')
"    call neocomplete#util#set_default_dictionary(
"          \'g:neocomplete#sources#omni#input_patterns',
"          \'php',
"          \'[^. \t]->\h\w*\|\h\w*::\w*')

    " disable for Python
"    call neocomplete#util#set_default_dictionary(
"          \'g:neocomplete#sources#omni#input_patterns',
"          \'python',
"          \'')

    " from neocomplete.txt:
    " ---------------------

    " Plugin key-mappings.
    inoremap <expr> <C-g> neocomplete#undo_completion()
    inoremap <expr> <C-l> neocomplete#complete_common_string()

    " Recommended key-mappings.
    " <CR>: cancel popup and insert newline.
    inoremap <silent> <CR> <C-r>=neocomplete#smart_close_popup()<CR><CR>
    " <TAB>: completion.
    "inoremap <expr> <Tab> pumvisible() ? "\<C-y>" : "\<Tab>"
    "<C-h>, <BS>: close popup and delete backword char.
    inoremap <expr> <C-h> neocomplete#smart_close_popup()."\<C-h>"
    inoremap <expr> <BS>  neocomplete#smart_close_popup()."\<C-h>"
    inoremap <expr> <C-y> neocomplete#close_popup()
    inoremap <expr> <C-e> neocomplete#cancel_popup()
