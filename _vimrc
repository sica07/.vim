"This settings are based on the .vimrc files found at: "https://github.com/skwp/dotfiles/blob/master/vimrc
"https://github.com/spf13/spf13-vim/blob/3.0/.vimrc
"and
"https://github.com/spf13/spf13-vim/blob/3.0/.vimrc
" A big THANK YOU goes to them :)



" Use vim settings, rather then vi settings (much better!)
set nocompatible


" ================ General Config ====================
set number                      " Line numbers 
set backspace=indent,eol,start  " Allow backspace in insert mode
set history=50                  " Store 50 lines of command history 
set showcmd                     " Show incomplete cmds down the bottom
set showmode                    " Show current mode down the bottom
set showmatch		                " Cursor shows matching elements ), } 
set cursorline                  " Highlight current line
set gcr=a:blinkon0              " Disable cursor blink
set visualbell                  " No sounds
set autoread                    " Reload files changed outside vim
set autowriteall                " Automatically write the file when switching buffers.
set ruler                       " Show cursor position all the time
set hidden                      " Allow buffer switching without saving 
set clipboard=unnamed           " Yank to the default register (*) by default
syntax on                       " Syntax highligt on
let mapleader=","               " Change the leader to be a comma vs slash
set viewoptions=folds,options,cursor,unix,slash " Better Unix / Windows compatibility

" ================ Vundle settings ==================
filetype on
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#begin()

if filereadable(expand("~/.vim/vundles.vim"))
    source ~/.vim/vundles.vim
endif

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb


" ================ Indentation and Formatting =======

set nowrap                      " Do not wrap long lines
set autoindent                  " Indent at the same level as the previous one
set shiftwidth=4                " Indentation of 2 spaces
set softtabstop=4
set tabstop=4                   " Width of a TAB character
set expandtab                   " Replace <TAB> with spacesP
set linespace=10                 " No extra spaces between rows
set ffs=unix,dos,mac            " Try recognizing dos, unix, and mac line endings.

" Remove trailing whitespaces and ^M chars
autocmd FileType c,cpp,java,go,php,javascript,python,twig,xml,yml autocmd BufWritePre <buffer> call StripTrailingWhitespace()

filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
set list
set listchars=tab:▸\ ,trail:•,extends:#,nbsp:· " Highlight problematic whitespace 

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" For programming languages using a semi colon at the end of statement.
autocmd FileType c,cpp,css,java,javascript,perl,php,jade inoremap <silent> ;; :call appendSemiColon()<CR>
autocmd FileType c,cpp,css,java,javascript,perl,php,jade inoremap <silent> ;; <ESC>:call <SID>appendSemiColon()<CR>



" ================ Folds ============================

set foldmethod=marker
set foldmarker={,}
set foldnestmax=3       " Deepest fold is 3 levels
set foldlevelstart=0
" Which commands trigger auto-unfold
set foldopen=block,hor,insert,jump,mark,percent,quickfix,search,tag,undo

" ================ Search and Completion  ===========
set incsearch                   " Find as you type search
set hlsearch                    " Highlight search terms
set winminheight=0              " Windows can be 0 line high
set ignorecase                  " Case insensitive search
set smartcase                   " Case sensitive when uc present
set wildmenu                    " Show list instead of just completing
set wildmode=list:longest,full  " Command <Tab> completion, list matches, then longest common part, then all.
set whichwrap=b,s,h,l,<,>,[,]   " Backspace and cursor keys wrap too
set wildignore=*.o,*.obj,*~     " files to ignore when tab completing
set wildignore+=*.git*
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/**
set wildignore+=vendor/**
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

" ================ Windows ==========================
set splitright                  " Puts new vsplit windows to the right of the current
set splitbelow                  " Puts new split windows to the bottom of the current"
set scrolljump=5                " Lines to scroll when cursor leaves screen
set scrolloff=3                 " Minimum lines to keep above and below cursor
set sidescrolloff=15
set sidescroll=1

"Get rid of ugly split borders.
hi vertsplit guifg=bg guibg=bg

" Show tab number (useful for <leader>1, <leader>2.. mapping)
autocmd VimEnter * set guitablabel=%N:\ %t\ %M

" Always switch to the current file directory
" (commented because CtrlP will search just in the current folder if active)
 autocmd BufEnter * if bufname("") !~ "^\[A-Za-z0-9\]*://" | lcd %:p:h | endif

" ================ Statusbar =========================
" I'm using airline plugin, but just in case...
if has('cmdline_info')
    set ruler                     " Show the ruler
    set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " A ruler on steroids
    set showcmd                   " Show partial commands in status line and
    " Selected characters/lines in visual mode
endif

if has('statusline')
    set laststatus=2

    " Broken down into easily includeable segments
    set statusline=%<%f\                     " Filename
    set statusline+=%w%h%m%r                 " Options
    set statusline+=%{fugitive#statusline()} " Git Hotness
    set statusline+=\ [%{&ff}/%Y]            " Filetype
    set statusline+=\ [%{getcwd()}]          " Current dir
    set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
endif

"Git commit line should not be longer than  72 chars"
autocmd Filetype gitcommit setlocal spell textwidth=72

" ================ GUI =========================

colorscheme onedark
if has("gui_running")	" GUI color and font settings
    set guioptions-=m           " Remove the menubar
    set guioptions-=T           " Remove the toolbar
    set guioptions-=L           " Remove the left scroll 
    set guioptions-=r           " Remove the right scroll
    set guioptions-=e           " Remove tabs as we will use airline's tabs

    "set guifont=Fira\ Mono\ for\ Powerline\ 14
    set guifont=FuraCode\ Nerd\ Font\ 12
    "set guifont=Fira\ Mono\ for\ Powerline\ 14, Menlo\ for\ Powerline\ 13,DejaVu\ Sans\ Mono\ for\ Powerline\ Book\ 10,Menlo\ Regular\ 12,Consolas\ Regular\ 13,Courier\ New\ Regular\ 14
elseif has("termguicolors")
    set termguicolors
else
    set t_Co=256                " 256 color mode
    let g:onedark_termcolors=256
    colorscheme onedark
    "colors xoria256
endif

" ================ Encodings done right ========================
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,gb2312,latin1

fun! ViewUTF8()
    set encoding=utf-8
    set termencoding=big5
endfun

fun! UTF8()
    set encoding=utf-8
    set termencoding=big5
    set fileencoding=utf-8
    set fileencodings=ucs-bom,big5,utf-8,latin1
endfun

fun! Big5()
    set encoding=big5
    set fileencoding=big5
endfun


" ================ Custom Settings ========================
so ~/.vim/settings.vim
"no matter what colorscheme I use I want folded and commented lines to be italic
hi Folded gui=italic
hi Comment gui=italic
" ================ Custom functions  =================
" Restore cursor to file position in previous editing session
function! ResCur()
    if line("'\"") <= line("$")
        normal! g`"
        return 1
    endif
endfunction

augroup resCur
    autocmd!
    autocmd BufWinEnter * call ResCur()
augroup END

" Remove trailing whitespaces and ^M chars
function! StripTrailingWhitespace()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " do the business:
    %s/\s\+$//e
    " clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

" If there isn't one, append a semi colon to the end of the current line.
function! s:appendSemiColon()
    if getline('.') !~ ';$'
        let original_cursor_position = getpos('.')
        exec("s/$/;/")
        call setpos('.', original_cursor_position)
    endif
endfunction

" Use Q to intelligently close a window 
" (if there are multiple windows into the same buffer)
" or kill the buffer entirely if it's the last window looking into that buffer
function! CloseWindowOrKillBuffer()
    let number_of_windows_to_this_buffer = len(filter(range(1, winnr('$')), "winbufnr(v:val) == bufnr('%')"))

    " We should never bdelete a nerd tree
    if matchstr(expand("%"), 'NERD') == 'NERD'
        wincmd c
        return
    endif

    if number_of_windows_to_this_buffer > 1
        wincmd c
    else
        bdelete
    endif
endfunction


" Keep search matches in the middle of the window and pulse the line when moving
" to them.
function! PulseCursorLine()
    let current_window = winnr()

    windo set nocursorline
    execute current_window . 'wincmd w'

    setlocal cursorline

    redir => old_hi
    silent execute 'hi CursorLine'
    redir END
    let old_hi = split(old_hi, '\n')[0]
    let old_hi = substitute(old_hi, 'xxx', '', '')

    hi CursorLine guibg=#3a3a3a
    redraw
    sleep 20m

    hi CursorLine guibg=#4a4a4a
    redraw
    sleep 30m

    hi CursorLine guibg=#3a3a3a
    redraw
    sleep 30m

    hi CursorLine guibg=#2a2a2a
    redraw
    sleep 20m

    execute 'hi ' . old_hi

    windo set cursorline
    execute current_window . 'wincmd w'
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" OpenChangedFiles COMMAND
" Open a split for each dirty file in git
"
" Shamelessly stolen from Gary Bernhardt: https://github.com/garybernhardt/dotfiles
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! OpenChangedFiles()
    only " Close all windows, unless they're modified
    let status = system('git status -s | grep "^ \?\(M\|A\)" | cut -d " " -f 3')
    let filenames = split(status, "\n")
    if len(filenames) > 0
        exec "edit " . filenames[0]
        for filename in filenames[1:]
            exec "sp " . filename
        endfor
    end
endfunction
command! OpenChangedFiles :call OpenChangedFiles()

"-------------Auto-Commands--------------"
"Automatically source the Vimrc file on save.

augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END




