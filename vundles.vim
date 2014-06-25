" ================ Bundle Setup ========================
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" let Vundle manage Vundle (required)
Bundle "gmarik/vundle"

" ================ Bundles ============================
" General
            "tree explorer
            Bundle 'scrooloose/nerdtree'
            "nerdtree open in all tabs
            Bundle 'jistr/vim-nerdtree-tabs'
            "famous colorscheme
            Bundle 'altercation/vim-colors-solarized'
            "collections of colorschemes
            Bundle 'spf13/vim-colors'
            Bundle 'flazz/vim-colorschemes'
            Bundle 'chriskempson/vim-tomorrow-theme'
            "delete, change and add such surroundings in pairs
            Bundle 'tpope/vim-surround'
            "Inserts matching bracket, paren, brace or quote
            Bundle 'spf13/vim-autoclose'
            "Fuzzy file, buffer, mru, tag, etc finder
            Bundle 'kien/ctrlp.vim'
            "Fuzzy function find based on ctrlp.vim
            Bundle 'tacahiroy/ctrlp-funky'
            "session manager
            Bundle 'vim-scripts/sessionman.vim'
            "match surroundings 
            Bundle 'jwhitley/vim-matchit'
            "display marks
            Bundle 'vim-scripts/ShowMarks'
            "handy key mappings
            Bundle 'tpope/vim-unimpaired'
            "search results counting
            Bundle 'vim-scripts/IndexedSearch'
            "Multiple cursors as in Texmate
            Bundle "terryma/vim-multiple-cursors"
            "Yank ring
            Bundle "skwp/YankRing.vim"
            "statusbar on steroids
             Bundle 'bling/vim-airline'
            "motions on speed
            "Bundle 'Lokaltog/vim-easymotion'
            "Make gvim-only colorschemes work transparently in terminal vim
            Bundle 'godlygeek/csapprox'
            "better line numbers
            Bundle 'myusuf3/numbers.vim'
            "display indent levels
            Bundle 'nathanaelkane/vim-indent-guides'
            "undo list
            Bundle 'sjl/gundo.vim'

    " Git
            "a Git wrapper so awesome, it should be illegal
            Bundle 'tpope/vim-fugitive'
            "git diff in the gutter
            Bundle 'airblade/vim-gitgutter'
            "repository viewer
            Bundle "gregsexton/gitv"

    " General Programming
            "Syntax checking 
            Bundle 'scrooloose/syntastic'
            "code commenting
            Bundle 'scrooloose/nerdcommenter'
            "best text alignment and filtering
            Bundle 'godlygeek/tabular'
            "sidebar for tags
            if executable('ctags')
                Bundle 'majutsushi/tagbar'
            endif

    " Snippets & AutoComplete
            Bundle 'Shougo/neocomplcache'
            Bundle 'Shougo/neosnippet'
            Bundle 'honza/vim-snippets'

    " PHP
            "php ide settings
            Bundle 'spf13/PIV'
            "Bundle 'joonty/vim-phpunitqf.git'
            "Bundle 'klokane/vim-phpunit'
            Bundle 'joonty/vdebug.git'
            "phpunit, phpmd, phpcs integration
            Bundle 'joonty/vim-phpqa'


    " Javascript
            "highlight json syntax
            Bundle 'elzr/vim-json'
            "highlight less syntax
            "Bundle 'groenewege/vim-less'
            "indetation, highlight for js syntax
            Bundle 'pangloss/vim-javascript'
            "highlight jst/ejs syntax
            Bundle 'briancollins/vim-jst'
            "indetation, highlight for cofee-script syntax
            "Bundle 'kchmck/vim-coffee-script'
            "Bundle 'claco/jasmine.vim'



    " HTML
            "autoclose html tags
            Bundle 'amirh/HTML-AutoCloseTag'
            "support for css3 syntax
            Bundle 'hail2u/vim-css3-syntax'
            "support for haml,sass and scss syntax
            Bundle 'tpope/vim-haml'

    " Misc
            Bundle 'tpope/vim-markdown'
            "preview in browser html, md, rdoc, textile, etc files
            Bundle 'spf13/vim-preview'
            Bundle 'mattn/emmet-vim'

