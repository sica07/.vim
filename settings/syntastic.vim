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
let g:syntastic_warning_symbol = '⚑'
let g:syntastic_style_error_symbol = '●'
let g:syntastic_style_warning_symbol = '›'
"enable scss-lint "
let g:syntastic_scss_checkers = ['scss_lint']
"don't load php checkers because we use phpqa
let g:loaded_syntastic_php_phpcs_checker = 0
let g:loaded_syntastic_php_php_checker = 0
let g:loaded_syntastic_php_phpmd_checker = 0

