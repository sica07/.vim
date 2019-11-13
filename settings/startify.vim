let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_sort = 1
let g:startify_use_env = 1
let g:ascii = [
          \ '        __',
          \ '.--.--.|__|.--------.',
          \ '|  |  ||  ||        |',
          \ ' \___/ |__||__|__|__|',
          \ ''
          \]
let g:startify_custom_header =
      \ 'map(g:ascii + startify#fortune#boxed(), "\"   \".v:val")'
let g:startify_bookmarks = [{'fsp':'~/Templates/FSPlaza.laravel'},{'api':'~/Templates/api'}]

function! s:list_commits()
    let git = 'git -C ' .getcwd()
    let commits = systemlist(git .' log --oneline | head -n10')
    let git = 'G'. git[1:]
    return map(commits, '{"line": matchstr(v:val, "\\s\\zs.*"), "cmd": "'. git .' show ". matchstr(v:val, "^\\x\\+") }')
  endfunction

let g:startify_lists = [
          \ { 'type': 'sessions'                 , 'header': ['   Sessions']       } ,
          \ { 'type': 'bookmarks'                , 'header': ['   Bookmarks']      } ,
          \ { 'type': 'dir'                      , 'header': ['   '. getcwd()] } ,
          \ { 'type': 'files'                    , 'header': ['   Files']            } ,
          \ { 'type': function('s:list_commits') , 'header': ['   Commits']        } ,
          \ { 'type': 'commands'                 , 'header': ['   Commands']       } ,
          \ ]

