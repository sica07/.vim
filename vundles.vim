" ================ Plugin Setup ========================
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#begin()

" let Vundle manage Vundle (required)
Plugin 'VundleVim/Vundle.vim'

" ================ Plugins ============================
" General
            "tree explorer
            Plugin 'scrooloose/nerdtree'
            "nerdtree open in all tabs
            Plugin 'jistr/vim-nerdtree-tabs'
            "famous colorscheme
            Plugin 'altercation/vim-colors-solarized'
            "collections of colorschemes
            Plugin 'spf13/vim-colors'
            Plugin 'flazz/vim-colorschemes'
            Plugin 'chriskempson/vim-tomorrow-theme'
            Plugin 'gosukiwi/vim-atom-dark'
            "delete, change and add such surroundings in pairs
            Plugin 'tpope/vim-surround'
            "Inserts matching bracket, paren, brace or quote
            Plugin 'spf13/vim-autoclose'
            "Find in code and edit
            Plugin 'dyng/ctrlsf.vim'
            "Fuzzy file, buffer, mru, tag, etc finder
            "Plugin 'junegunn/fzf'
            "Plugin 'junegunn/fzf.vim'
            Plugin 'ctrlpvim/ctrlp.vim'
            "Fuzzy function find based on ctrlp.vim
            "Plugin 'tacahiroy/ctrlp-funky'
            "search all files
            Plugin 'rking/ag.vim'
            "search and replace everywhere
            Plugin 'skwp/greplace.vim'
            "search results counting
            Plugin 'vim-scripts/IndexedSearch'
            "session manager
            Plugin 'vim-scripts/sessionman.vim'
            "match surroundings 
            Plugin 'jwhitley/vim-matchit'
            "display marks
            Plugin 'vim-scripts/ShowMarks'
            "handy key mappings
            Plugin 'tpope/vim-unimpaired'
            "Multiple cursors as in Texmate
            "Plugin "terryma/vim-multiple-cursors"
            "Yank ring
            "Plugin "skwp/YankRing.vim"
            "statusbar on steroids
             Plugin 'vim-airline/vim-airline'
             Plugin 'vim-airline/vim-airline-themes'
            "motions on speed
            "Plugin 'Lokaltog/vim-easymotion'
            "Make gvim-only colorschemes work transparently in terminal vim
            "Plugin 'godlygeek/csapprox'
            "Relative line numbers
            Plugin 'myusuf3/numbers.vim'
            "display indent levels
            Plugin 'nathanaelkane/vim-indent-guides'
            "undo list
            "Plugin 'sjl/gundo.vim'

    " Git
            "a Git wrapper so awesome, it should be illegal
            Plugin 'tpope/vim-fugitive'
            "git diff in the gutter
            Plugin 'airblade/vim-gitgutter'
            "repository viewer
            Plugin 'gregsexton/gitv'

    " General Programming
            "Syntax checking 
            Plugin 'scrooloose/syntastic'
            "code commenting
            Plugin 'scrooloose/nerdcommenter'
            "best text alignment and filtering
            Plugin 'godlygeek/tabular'
            "sidebar for tags
            if executable('ctags')
                Plugin 'majutsushi/tagbar'
            endif

    " Snippets & AutoComplete
            Plugin 'Shougo/neocomplete.vim'
            Plugin 'honza/vim-snippets'
            Plugin 'SirVer/ultisnips'

    " PHP
            "php ide settings
            Plugin 'spf13/PIV'
            "Plugin 'joonty/vim-phpunitqf.git'
            "Plugin 'klokane/vim-phpunit'
            "php syntax
            Plugin 'StanAngeloff/php.vim'
            Plugin '2072/php-indenting-for-vim'
            Plugin 'arnaud-lb/vim-php-namespace'
            "php documentor
            Plugin 'tobyS/vmustache'
            Plugin 'tobyS/pdv'
            "php code navigator
            Plugin 'mkusher/padawan.vim'
            Plugin 'mkusher/padawan.php-di'
            "Plugin 'mkusher/padawan-symfony'
            "Plugin 'pbogut/deoplete-padawan'
            "phpunit, phpmd, phpcs integration
            "Plugin 'shawncplus/phpcomplete.vim'
            Plugin 'stephpy/vim-php-cs-fixer'
            "Plugin 'joonty/vim-phpqa'
            Plugin 'adoy/vim-php-refactoring-toolbox'
            "phpcomplete-extended"
            "Plugin 'Shougo/vimproc'
            ""Plugin 'Shougo/unite.vim'
            ""Plugin 'm2mdas/phpcomplete-extended'
            "php debug"
            Plugin 'joonty/vdebug.git'


    " Javascript
            Plugin 'carlitux/deoplete-ternjs'
            "highlight json syntax
            Plugin 'elzr/vim-json'
            "highlight less syntax
            "Plugin 'groenewege/vim-less'
            "indetation, highlight for js syntax
            Plugin 'pangloss/vim-javascript'
            "highlight jst/ejs syntax
            Plugin 'briancollins/vim-jst'
            "indetation, highlight for cofee-script syntax
            "Plugin 'kchmck/vim-coffee-script'
            "Plugin 'claco/jasmine.vim'



    " HTML
            "autoclose html tags
            Plugin 'amirh/HTML-AutoCloseTag'
            "support for css3 syntax
            Plugin 'hail2u/vim-css3-syntax'
            "support for haml,sass and scss syntax
            Plugin 'tpope/vim-haml'
            "Emmmet
            Plugin 'mattn/emmet-vim'

    " Misc
            Plugin 'tpope/vim-markdown'
            "preview in browser html, md, rdoc, textile, etc files
            Plugin 'spf13/vim-preview'
call vundle#end()
filetype plugin indent on 
