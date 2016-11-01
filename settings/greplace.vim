set grepprg=ag
let g:grep_cmd_opts = '--line-numbers --noheading'
nmap <c-s-r> :Gsearch <cr>
"Don't forget to run the command :Greplace to apply all replaces
