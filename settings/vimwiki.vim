  let g:vimwiki_list = [{'path': '~/Dropbox/Apps/vimwiki/',
                       \ 'syntax': 'markdown', 'ext': '.md'}]
:nnoremap <leader>w@ "=strftime(" *@created %d-%m-%Y*")<CR>P
:inoremap <leader>w@ <C-R>=strftime(" *@created %d-%m-%Y*")<CR>
:nnoremap <leader>wx "=strftime(" ^@closed %d-%m-%Y^")<CR>P
:inoremap <leader>wx <C-R>=strftime("^@closed %d-%m-%Y^")<CR>
:nnoremap <leader>wa "=strftime("+ [%d/%m/%Y](#%d%m%y)")<CR>P
:inoremap <leader>wa <C-R>=strftime("+ [%d/%m/%Y](#%d%m%y)")<CR>
:nnoremap <leader>wD "=strftime('##### **%d/%m/%Y**')<CR>P
:inoremap <leader>wD <C-R>=strftime('##### **%d/%m/%Y**')<CR>
