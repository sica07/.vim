" Default to filename searches - so that appctrl will find application
" controller
let g:ctrlp_by_filename = 1
let g:ctrlp_custom_ignore = {
            \ 'dir':  '\.git$\|\.hg$\|\.svn$',
            \ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc$' }
"external tool to use for listing files
let g:ctrlp_user_command = {
                \ 'types': {
                    \ 1: ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']
                \ },
                \ 'fallback': 'find %s -type f'
            \ }
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'
let g:ctrlp_working_path_mode = 'wa'
"Mappings
"search files
nnoremap <silent> <c-p> :CtrlP<CR>
"search buffers
nnoremap <silent> <c-n> :CtrlPBufTag<cr>
"search most recent used
nnoremap <silent> <c-e> :CtrlPMRUFiles<CR>
