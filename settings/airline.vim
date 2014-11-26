        " Use the powerline theme and optionally enable powerline symbols.
        " If we see the following symbols , , , , , , and  then.
        " add the following to your .vimrc.before.local file:
        let g:airline_powerline_fonts=1
        " If the previous symbols do not render for you then install a
        " powerline enabled font.
        let g:airline_theme = 'molokai'
        "autmatically displats all buffers when there's only one tab open
        let g:airline#extensions#tabline#enabled = 1

        if !exists('g:airline_powerline_fonts')
            " Use the default set of separators with a few customizations
            let g:airline_left_sep='›'  " Slightly fancier than '>'
            let g:airline_right_sep='‹' " Slightly fancier than '<'
        endif

" show tab numbers 
  let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
" configure separators for the tabline only. >
  let g:airline#extensions#tabline#left_sep = '|'
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline#extensions#tabline#right_sep = ''
  let g:airline#extensions#tabline#right_alt_sep = ''
" enable/disable showing a summary of changed hunks under source control. >
  let g:airline#extensions#hunks#enabled = 0
" enable/disable tagbar integration >
  let g:airline#extensions#tagbar#enabled = 0
" enable/disable syntastic integration >
  let g:airline#extensions#syntastic#enabled = 0
" enable/disable fugitive/lawrencium integration >
  let g:airline#extensions#branch#enabled = 1
