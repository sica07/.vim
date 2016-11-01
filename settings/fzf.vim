set rtp+=~/.fzf
" FZF {{{
" <C-p> or <C-t> to search files
nnoremap <silent> <leader>, :FZF -m<cr>

" <M-p> for open buffers
nnoremap <silent> <leader>. :Buffers<cr>

" <M-S-p> for MRU
nnoremap <silent> <leader>/ :History<cr>

" Use fuzzy completion relative filepaths across directory
imap <expr> <c-x><c-f> fzf#vim#complete#path('git ls-files $(git rev-parse --show-toplevel)')
