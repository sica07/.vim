let $PATH=$PATH . ':' . expand('~/.composer/vendor/bin')
let g:padawan#composer_command = "composer"
command! PadawanStartServer call deoplete#sources#padawan#StartServer()
command! PadawanStopServer call deoplete#sources#padawan#StopServer()
command! PadawanRestartServer call deoplete#sources#padawan#RestartServer()
command! PadawanGenerateIndex call deoplete#sources#padawan#GenerateIndex()
