" Make nerdtree look nice
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeWinSize = 40
let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=1
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeHighlightCursorline=1
let NERDTreeKeepTreeInNewTab=1

"Mappings
" Ctrl-Shift-E (explore)for nerd tree
nnoremap <leader>e :NERDTreeToggle<CR>
" Open the project tree and expose current file in the nerdtree with Ctrl-\
"nnoremap <silent> <C-\> :NERDTreeFind<CR>:vertical res 30<CR>
