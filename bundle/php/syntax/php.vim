"
" Change PHP highlighting
"
highlight phpFunctions ctermfg=8
highlight phpConditional ctermfg=DarkYellow
highlight phpRepeat ctermfg=DarkYellow
highlight Structure ctermfg=DarkYellow
highlight Define ctermfg=DarkYellow
highlight Statement ctermfg=DarkYellow
if exists("g:btm_rainbow_color") && g:btm_rainbow_color
   call rainbow_parenthsis#LoadSquare ()
   call rainbow_parenthsis#LoadBrace ()
   call rainbow_parenthsis#LoadRound ()
   call rainbow_parenthsis#Activate ()
endif

