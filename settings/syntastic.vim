"mark syntax errors with :signs
let g:syntastic_enable_signs=1
let g:syntastic_enable_baloons=1
"automatically jump to the error when saving the file
let g:syntastic_auto_jump=0
"show the error list automatically
let g:syntastic_auto_loc_list=1
"don't care about warnings
let g:syntastic_quiet_warnings=0

let g:syntastic_error_symbol = '⚡'
let g:syntastic_warning_symbol = '●'
let g:syntastic_style_error_symbol = '➜'
let g:syntastic_style_warning_symbol = '›'

"language specific
let g:syntastic_javascript_jslint_conf = '--browser --sloppy --white'

"don't load phpcs
let g:loaded_syntastic_php_phpcs_checker = 0

