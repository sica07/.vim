"mark syntax errors with :signs
let g:syntastic_enable_signs=1
let g:syntastic_enable_baloons=1
"automatically jump to the error when saving the file
let g:syntastic_auto_jump=0
"show the error list automatically
let g:syntastic_auto_loc_list=1
let g:syntastic_loc_list_height = 3
"don't care about warnings
let g:syntastic_quiet_messages= {}

let g:syntastic_error_symbol = '⚡'
let g:syntastic_warning_symbol = '⚑'
let g:syntastic_style_warning_symbol = '›'
let g:syntastic_style_error_symbol = '●'
"enable handlebars
let g:loaded_syntastic_handlebars_checker = 1
"let g:syntastic_handlebars_checkers = ['handlebars']
"let g:syntastic_handlebars_exec = '/usr/bin/handlebars'
"enable jslint
let g:syntastic_javascript_checkers = ['jshint']
"enable scss-lint "
let g:syntastic_scss_checkers = ['scss-lint']
"don't load php checkers because we use phpqa
"let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
let g:syntastic_php_checkers = ['php']
"let g:loaded_syntastic_php_php_checker = 1
"let g:loaded_syntastic_php_phpcs_checker = 0
"let g:loaded_syntastic_php_phpmd_checker = 0
