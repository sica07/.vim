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
"'c' - the directory of the current file.
"'a' - the directory of the current file, unless it is a subdirectory of the cwd
"'r' - the nearest ancestor of the current file that contains one of these directories or files: .git .hg .svn .bzr _darcs
"'w' - modifier to "r": start search from the cwd instead of the current file's directory 
"0 or '' (empty string) - disable this feature.
let g:ctrlp_working_path_mode = 'r'
"Mappings
"search files
nnoremap <silent> <c-p> :CtrlP<CR>
"search buffers
nnoremap <silent> <c-n> :CtrlPBufTag<cr>
"search most recent used
nnoremap <silent> <c-e> :CtrlPMRUFiles<CR>
