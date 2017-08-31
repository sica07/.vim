function! s:goyo_enter()
  set nonumber
  set norelativenumber
  Limelight
endfunction

function! s:goyo_leave()
  set number
  set relativenumber
  Limelight!
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
