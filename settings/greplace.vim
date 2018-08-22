set grepprg=rg
"set grepprg=git\ grep
"let g:grep_cmd_opts = '--line-numbers --noheading'
let g:grep_cmd_opts = ' --line-number'

nmap <c-s-r> :Gsearch <cr>
"Don't forget to run the command :Greplace to apply all replaces
