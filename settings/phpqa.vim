"Set the PHP mess detector  ruleset XML file
"let g:phpqa_messdetector_ruleset = "/var/www/html/phpmd.xml"
" Set the codesniffer args
"let g:phpqa_codesniffer_args = "--standard=Zend""
" PHP executable (default = "php")
 let g:phpqa_php_cmd='/usr/bin/php'
"
" " PHP Code Sniffer binary (default = "phpcs")
" let g:phpqa_codesniffer_cmd='/path/to/phpcs'
"
" " PHP Mess Detector binary (default = "phpmd")
" let g:phpqa_messdetector_cmd='/path/to/phpmd'"

" Don't run messdetector on save (default = 1)
" let g:phpqa_messdetector_autorun = 0
"
" " Don't run codesniffer on save (default = 1)
" let g:phpqa_codesniffer_autorun = 0
"
" " Show code coverage on load (default = 0)
" let g:phpqa_codecoverage_autorun = 1"
" Clover code coverage XML file
let g:phpqa_codecoverage_file = "/tmp/report/clover.xml"
" " Show markers for lines that ARE covered by tests (default = 1)
let g:phpqa_codecoverage_showcovered = 0
