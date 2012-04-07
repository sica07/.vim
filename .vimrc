set nocompatible
filetype off

"++++++++++++++++++++++++"
" VUNDLE PLUGIN SETTINGS "
"++++++++++++++++++++++++"
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"---My Bundles---
"github 
"plug-in manager for Vim
Bundle 'gmarik/vundle' 
"Automated tag file generation and syntax highlighting of tags
Bundle 'vim-scripts/easytags.vim' 
"Perform all your vim insert mode completions with Tab
"Bundle 'ervandew/supertab' 
"quoting/parenthesizing made simple
Bundle 'tpope/vim-surround' 
"easy commenting of code for many filetypes
Bundle 'scrooloose/nerdcommenter' 
"implements some of TextMate's snippets features
Bundle 'msanders/snipmate.vim' 
"Rainbow colors for parentheses
Bundle 'kien/rainbow_parentheses.vim' 
"Improved PHP omnicompletion
Bundle 'shawncplus/phpcomplete.vim' 
"zencoding on steroids
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'} 
"PHP documentor
Bundle 'vim-scripts/pdv-standalone'
"echoing line containing matching bracket in the status line
Bundle 'vim-scripts/matchparenpp'
"visual representation of the location marks
Bundle 'vim-scripts/ShowMarks7'
"insert a closing brace
Bundle 'vim-scripts/AutoClose'
"insert a closing HTML tag
Bundle 'vim-scripts/HTML-AutoCloseTag'
"configure % to match more than just single characters
Bundle 'vim-scripts/matchit.zip'
"set up a list of frequently-accessed files for easy navigation
Bundle 'vim-scripts/project.tar.gz'
"functions/mappings/commands to enable Vim to access several databases
Bundle 'vim-scripts/dbext.vim'
"source code browser
Bundle 'vim-scripts/taglist.vim'
"needed by fuzzy finder
Bundle 'vim-scripts/L9'
"quickly reach the buffer/file/command/bookmark/tag you want
Bundle 'vim-scripts/FuzzyFinder'
"Javascript indenter (HTML indent is included)
Bundle 'vim-scripts/JavaScript-Indent'
"Displays JavaScript Lint warnings in the quickfix error window
"Bundle 'vim-scripts/javaScriptLint.vim' "syntastic does the jslint checking
"Better JavaScrirpt syntax support
Bundle 'jelera/vim-javascript-syntax'
"PHP-Correct-Indenting
Bundle '2072/PHP-Indenting-for-VIm'
"Automatic syntax checking
Bundle 'vim-scripts/Syntastic'
"visualize your Vim undo tree
Bundle 'sjl/gundo.vim'
"SQL code completion
Bundle 'vim-scripts/SQLComplete.vim'
"manipulating files controlled by CVS, SVN, SVK, git, bzr, and hg
Bundle 'git://repo.or.cz/vcscommand'
"solarized colorschme GREAT!!!
Bundle 'altercation/vim-colors-solarized.git'

" END VUNDLE PLUGIN SETTINGS "
"++++++++++++++++++++++++++++"


filetype plugin on
" Set the <Leader> for combo commands
let mapleader = ","

"++++++++++++++++++"
" EDITING SETTINGS "
"++++++++++++++++++"
" Use UTF-8 as the default buffer encoding
set enc=utf-8

"FOLDING AND INDENTING
"Indentation rules
filetype indent on
set autoindent
set smartindent
" Use 4 spaces for <Tab> and :retab
set tabstop=3
" Use 4 spaces for (auto)indent
set shiftwidth=4
set expandtab
" Round indent to multiple of 'shiftwidth' for > and < commands
set shiftround

"[MAPPING] Reformat everything
noremap gq gggqG

"Set linebreak at last character that fits on the screen (for long lines)
set wrapmargin=120
set lbr
" set text wrapping toggles
nmap <silent> ,tw :set invwrap<CR>:set wrap?<CR>

"auto fold
set foldenable
" Space will toggle folds!
nnoremap <space> za
" Commands to open folds
set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo
" folding for php fyles (not sure if it's necesary anymore)
autocmd FileType php let php_folding=1
" Allow backspacing over everything
set backspace=indent,eol,start
"Better support for JavaScript files folding
function! JavaScriptFold()
    setl foldmethod=syntax
    setl foldlevelstart=1
    syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend

    function! FoldText()
        return substitute(getline(v:foldstart), '{.*', '{...}', '')
    endfunction
    setl foldtext=FoldText()
endfunction
au FileType javascript call JavaScriptFold()
au FileType javascript setl fen
au FileType javascript setl nocindent

function! Clean()
    " Clean up a text file
    " delete pesky (MSDOS) control-M 's
    exe ':%s/\r//ge'
    " delete pesky non-asciis
    exe ':%s/[\x00-\x1f\x80-\xff]/ /eg '
    " compress multiple spaces 
    exe ':%s/\s\s\+/ /eg'
    " delete end of line spaces 
    exe ':%s/\s\+$//e'
    " compress multiple blank lines 
    exe ':silent! v/./,/./-j'
endfunction


"SYNTAX AND HIGHLIGHTING
"display tabs and trailing spaces
set list
set listchars=tab:▷⋅,trail:⋅,nbsp:⋅
"set line number
set number
"Turn syntax highlighting on
syntax on
"Set 256 color support
let g:solarized_termcolors=256
"color dual
color solarized
set background=light
"Ignore whitespace in diff
set diffopt+=iwhite
" highlights interpolated variables in sql strings and does sql-syntax highlighting. yay
autocmd FileType php let php_sql_query=1
" does exactly that. highlights html inside of php strings
autocmd FileType php let php_htmlInStrings=1
"smarty syntax
au BufRead,BufNewFile *.tpl set filetype=smarty 
" Hightlight redundent spaces
highlight RedundantSpaces ctermbg=red guibg=red
"load closetag script
:au Filetype html,xml,xsl,phtml source /home/munca/.vim/closetag.vim 
"Enable syntax checking on the fly
nnoremap <F5> :SyntasticCheck<CR>

"NAVIGATING
"Automatically cd into the directory that the file is in
set autochdir
" Jump to matching bracket for 2/10th of a second (works with showmatch)
set matchtime=2
"Show matching brackets when text indicator is over them
set showmatch
" Scroll when cursor gets within 3 characters of top/bottom edge
set scrolloff=3
" When a bracket is inserted, briefly jump to a matching one
set showmatch
"Hilight the cursors line
set cul
"Toggle vertical cursor line
nnoremap <F11> :set cuc!<CR>
"Map jj to Esc in insert mode
imap jj <esc>
"Intuitive up and down movement
nnoremap j gj
nnoremap k gk
" Create Blank Newlines and stay in Normal mode
nnoremap <silent> zj o<Esc>
nnoremap <silent> zk O<Esc>
" --------------------
" ShowMarks
" --------------------
let showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
let g:showmarks_enable = 1
" For marks a-z
highlight ShowMarksHLl gui=bold guibg=LightBlue guifg=Blue
" For marks A-Z
highlight ShowMarksHLu gui=bold guibg=LightRed guifg=DarkRed
" For all other marks
highlight ShowMarksHLo gui=bold guibg=LightYellow guifg=DarkYellow
" For multiple marks on the same line.
highlight ShowMarksHLm gui=bold guibg=LightGreen guifg=DarkGreen
" --------------------
" Project
" --------------------
nmap <silent> <F8> <Plug>ToggleProject
let g:proj_window_width = 30
let g:proj_window_increment = 50
" --------------------
" TagList
" --------------------
" F10: Switch on/off TagList
nmap <silent> <F10> :TlistToggle<CR>
" TagListTagName - Used for tag names
highlight MyTagListTagName gui=bold guifg=Black guibg=Orange
" TagListTagScope - Used for tag scope
highlight MyTagListTagScope gui=NONE guifg=Blue
" TagListTitle - Used for tag titles
highlight MyTagListTitle gui=bold guifg=DarkRed guibg=LightGray
" TagListComment - Used for comments
highlight MyTagListComment guifg=DarkGreen
" TagListFileName - Used for filenames
highlight MyTagListFileName gui=bold guifg=Black guibg=LightBlue
"let Tlist_Ctags_Cmd = $VIM.'/vimfiles/ctags.exe' " location of ctags tool
let Tlist_Show_One_File = 1 " Displaying tags for only one file~
let Tlist_Exist_OnlyWindow = 1 " if you are the last, kill yourself
let Tlist_Use_Right_Window = 1 " split to the right side of the screen
let Tlist_Sort_Type = "name" " sort by order or name
let Tlist_Display_Prototype = 0 " do not show prototypes and not tags in the taglist window.
let Tlist_Compart_Format = 1 " Remove extra information and blank lines from the taglist window.
let Tlist_GainFocus_On_ToggleOpen = 1 " Jump to taglist window on open.
let Tlist_Display_Tag_Scope = 1 " Show tag scope next to the tag name.
let Tlist_Close_On_Select = 1 " Close the taglist window when a file or tag is selected.
let Tlist_Enable_Fold_Column = 0 " Don't Show the fold indicator column in the taglist window.
let Tlist_WinWidth = 30
" let Tlist_Ctags_Cmd = 'ctags --c++-kinds=+p --fields=+iaS --extra=+q --languages=c++'
" very slow, so I disable this
let Tlist_Process_File_Always = 1 " To use the :TlistShowTag and the :TlistShowPrototype commands without the taglist window and the taglist menu, you should set this variable to 1.
":TlistShowPrototype [filename] [linenumber]


"WINDOWS, TABS, BUFFERS
" switch to upper/lower window quickly
map <C-J> <C-W>j
map <C-K> <C-W>k
" switch to left/right window quickly
map <C-h> <C-W>h
map <C-l> <C-W>l
" map ,f to display all lines with keyword under cursor and ask which one to
" jump to
nmap ,f [I:let nr = input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>
" open filename under cursor in a new window (use current file's working directory) 
nmap gf :new %:p:h/<cfile><CR>
"cd to the directory containing the file in the buffer
"nmap <silent> ,cd :lcd %:h<CR>
"Delete all buffers
command Bd :bufdo bdelete
" get rid of the silly characters in window separators
set fillchars=""
" When I close a tab delete the buffer
set nohidden
"Set the buffers hidden
set hidden
" netRW: Open files in a split window
let g:netrw_browse_split = 1
"-----------------------------------------------------------------------------
" FuzzyFinder Settings
"-----------------------------------------------------------------------------
nmap ,fb :FufBuffer<CR>
nmap ,ff :FufFile<CR>
nmap ,ft :FufTag<CR>
nmap ,fh :FufHelp<CR>
nmap ,fd :FufDir<CR>

"+++++++++++++++++++++++"
" GVIM RELATED SETTINGS "
"+++++++++++++++++++++++"
if has("gui_running")
    set guifont=Deja\ Vu\ Sans\ Mono\ 9 
    "No menubar, toolbar,right, left and horizontal scrollbar in gvim
    set guioptions-=m
    set guioptions-=T
    set guioptions-=r
    set guioptions-=R
    set guioptions-=l
    set guioptions-=L
    set guioptions-=b
    "colorscheme zenburn
    "colorscheme twilight
    set background=light
    colorscheme solarized
    "colorscheme xoria256
    "set the guicursor
    set guicursor=n-v-c:block-Cursor-blinkon0,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor,r-cr:hor20-Cursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175

endif

"++++++++++++++++++++++++"
" INFORMATIVE STATUS BAR "
"++++++++++++++++++++++++"
"statusline setup
set statusline=%f       "tail of the filename

"display a warning if fileformat isnt unix
set statusline+=%#warningmsg#
set statusline+=%{&ff!='unix'?'['.&ff.']':''}
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"display a warning if file encoding isnt utf-8
set statusline+=%#warningmsg#
set statusline+=%{(&fenc!='utf-8'&&&fenc!='')?'['.&fenc.']':''}
set statusline+=%*

set statusline+=%h      "help file flag
set statusline+=%y      "filetype
set statusline+=%r      "read only flag
set statusline+=%m      "modified flag


"display a warning if &et is wrong, or we have mixed-indenting
set statusline+=%#error#
set statusline+=%{StatuslineTabWarning()}
set statusline+=%*

set statusline+=%{StatuslineTrailingSpaceWarning()}

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_auto_loc_list=1
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'

"display a warning if &paste is set
set statusline+=%#error#
set statusline+=%{&paste?'[paste]':''}
set statusline+=%*

set statusline+=%=      "left/right separator
set statusline+=%{StatuslineCurrentHighlight()}\ \ "current highlight
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file
set laststatus=2        " Always show status line
"return the syntax highlight group under the cursor ''
function! StatuslineCurrentHighlight()
    let name = synIDattr(synID(line('.'),col('.'),1),'name')
    if name == ''
        return ''
    else
        return '[' . name . ']'
    endif
endfunction

"recalculate the trailing whitespace warning when idle, and after saving
autocmd cursorhold,bufwritepost * unlet! b:statusline_trailing_space_warning

"return '[\s]' if trailing white space is detected
"return '' otherwise
function! StatuslineTrailingSpaceWarning()
    if !exists("b:statusline_trailing_space_warning")
        if search('\s\+$', 'nw') != 0
            let b:statusline_trailing_space_warning = '[\s]'
        else
            let b:statusline_trailing_space_warning = ''
        endif
    endif
    return b:statusline_trailing_space_warning
endfunction

"return '[&et]' if &et is set wrong
"return '[mixed-indenting]' if spaces and tabs are used to indent
"return an empty string if everything is fine
function! StatuslineTabWarning()
    if !exists("b:statusline_tab_warning")
        let tabs = search('^\t', 'nw') != 0
        let spaces = search('^ ', 'nw') != 0

        if tabs && spaces
            let b:statusline_tab_warning =  '[mixed-indenting]'
        elseif (spaces && !&et) || (tabs && &et)
            let b:statusline_tab_warning = '[&et]'
        else
            let b:statusline_tab_warning = ''
        endif
    endif
    return b:statusline_tab_warning
endfunction

"return a warning for "long lines" where "long" is either &textwidth or 120 (if
"no &textwidth is set)

set textwidth=120

"return '' if no long lines
"return '[#x,my,$z] if long lines are found, were x is the number of long
"lines, y is the median length of the long lines and z is the length of the
"longest line
function! StatuslineLongLineWarning()
    if !exists("b:statusline_long_line_warning")
        let long_line_lens = s:LongLines()

        if len(long_line_lens) > 0
            let b:statusline_long_line_warning = "[" .
                        \ '#' . len(long_line_lens) . "," .
                        \ 'm' . s:Median(long_line_lens) . "," .
                        \ '$' . max(long_line_lens) . "]"
        else
            let b:statusline_long_line_warning = ""
        endif
    endif
    return b:statusline_long_line_warning
endfunction
" }}}
" Always show status line, even for one window
set laststatus=2
" Show (partial) commands (or size of selection in Visual mode) in the status line
set showcmd

"++++++++++++++++++++++++++++++"
" CODE COMPLETITION AND SEARCH "
"++++++++++++++++++++++++++++++"
" Insert mode completion options
set completeopt=menu,longest,preview
" Use menu to show command-line completion (in 'full' case)
"   - on first <Tab>, when more than one match, list all matches and complete
"     the longest common  string
"   - on second <Tab>, complete the next full match and show menu
set wildmode=list:longest,full
set wildmenu
"omni completion 
inoremap ,, <c-x><c-o>
"line completion 
inoremap ,= <c-x><c-l>
"keyword completion
inoremap ,. <c-x><c-n>
"file completion
inoremap ,/ <c-x><c-f>


" autocompletd funcs and identifiers for languages
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType sql set omnifunc=sqlcomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
"--------------------
"Supertab
"--------------------
"let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"
"SuperTab options
"let g:SuperTabDefaultCompletionType = "context"

" Enable incremental search
set incsearch
set ignorecase
"Search highlightng
set hlsearch
" Set search to wrap lines
set wrapscan
"Use ack-grep instead of grep
set grepprg=ack-grep\ -i\ $*
"the tag source file
set tags+=/home/munca/.vim/mytags/framework
"tags paths are relative to the tag source file pat
set tagrelative
set tagstack
" Show the whole tag
set showfulltag
" Show the whole tag
set showfulltag
"the g flag on substitutions by default
set gdefault

"++++++++++++++++++++++++++++++"
" HISTORY, BACKUP AND SESSIONS "
"++++++++++++++++++++++++++++++"
" Write contents of the file, if it has been modified, on buffer exit
set autowrite
"Autoread a file that has changed on disk
set autoread
" Remember up to 100 'colon' commmands and search patterns
set history=100
" Write swap file to disk after every 50 characters
set updatecount=50
" Remember things between sessions
"
" '20  - remember marks for 20 previous files
" \"50 - save 50 lines for each register
" :20  - remember 20 items in command-line history 
" %    - remember the buffer list (if vim started without a file arg)
" n    - set name of viminfo file
set viminfo='20,\"50,:20,%,n~/.viminfo
" Go back to the position the cursor was on the last time this file was edited
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")|execute("normal `\"")|endif
"Show all changes
set report=0
"set noswapfile
"store all swap files in specified director
set dir=/home/munca/.vim/swp
"Open Gundo window
nnoremap <F9> :GundoToggle<CR>
"+++++++++++++++++++"
" PHP CODE SETTINGS "
"+++++++++++++++++++"
" Codesniffer function for php files"
function! RunPhpcs()     
    let l:filename=@%     
    let l:phpcs_output=system('phpcs --standard=Zend '.l:filename)     
    let l:phpcs_list=split(l:phpcs_output, "\n")     
    unlet l:phpcs_list[0]     
    cexpr l:phpcs_list     
    cwindow
endfunction 
set errorformat+="%f"\\,%l\\,%c\\,%t%*[a-zA-Z]\\,"%m" 
command! Phpcs execute RunPhpcs()

"PHPDocumentor commands
inoremap <C-D> :call PhpDocSingle()<CR>i
nnoremap <C-D> :call PhpDocSingle()<CR>
vnoremap <C-D> :call PhpDocRange()<CR>hgg/sqlh/sql

" set make command when editing php files
set makeprg=php\ -l\ %
set errorformat=%m\ in\ %f\ on\ line\ %l
:map <F7> :make <CR>
set errorformat+=\"%f\"\\,%l\\,%c\\,%t%*[a-zA-Z]\\,\"%m\"

"+++++++++++++++++++"
" SQL CODE SETTINGS "
"+++++++++++++++++++"
let g:sql_type_default = 'mysql'
let g:omni_sql_default_compl_type = 'a'
let g:dbext_default_profile_mysql_local = 'type=MYSQL:user=root:passwd=matpas:dbname=OpenEPD:extra=-t'

"++++++++++++++++++++"
" HTML CODE SETTINGS "
"++++++++++++++++++++"
"HTML tidy
"command Td :call Tidy()
function! Tidy()
    let filename=expand("%:p") " escapes for bash
    let filename=substitute(filename, " ", "\\\\ ", "g")
    let filename=substitute(filename, "(", "\\\\(", "g")
    let filename=substitute(filename, ")", "\\\\)", "g")
    let filename=substitute(filename, "[", "\\\\[", "g")
    let filename=substitute(filename, "]", "\\\\]", "g")
    let filename=substitute(filename, "&", "\\\\&", "g")
    let filename=substitute(filename, "!", "\\\\!", "g")
    let filename=substitute(filename, ",", "\\\\,", "g")
    let filename=substitute(filename, "'", "?", "g")
    let filename2=substitute(filename, ".*", "&.tidy.htm", "")
    let filename3=substitute(filename, ".*", "&.errors.tidy.txt", "")
    execute "!tidy "."-f ".filename3." ".filename." > ".filename2.""
endfunction
:map <F6> :call Tidy() <CR>

"+++++++++++++++++++++++++++++"
" VERSIONING SYSTEMS SETTINGS "
"+++++++++++++++++++++++++++++"
"Mappings for cvscommand
nmap ,sa :VCSAdd <CR>
nmap ,sn :VCSAnnotate <CR>
nmap ,sc :VCSCommit <CR>
nmap ,sd :VCSDiff <CR>
nmap ,sg :VCSGotoOriginal <CR>
nmap ,sG :VCSGotoOriginal! <CR>
nmap ,sl :VCSLog <CR>
nmap ,sr :VCSReview <CR>
nmap ,sR :VCSRevert <CR>
nmap ,ss :VCSStatus <CR>
nmap ,su :VCSUpdate <CR>
nmap ,sv :VCSVimDiff <CR>
"spell check when writing commit logs
autocmd filetype svn,*commit* set spell


