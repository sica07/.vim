#Mappings
##Moving
* move between windows `<C-J>` `<C-K>` `<C-H>` `<C-L>`
* move between tabs `<S-H>` `<S-L>`
* zoom in and out of current window `,gz`
* go to tab nr.1 `,1`
* split window `vv` `ss`
* new split window `,v` `,s`
* adjust viewports `,=`
* close current window `,q`
* open quickfixwindow `,qo`
* close quickfixwindow `,qc`
* open a quickfix window for the last search `,q/`

##Editing
* get out of insert mode `jj`
* jump to matching parents easy (replace %) `<Tab>`
* yank from cursor to the end of the line `Y`
* open a split window for each dirty file in git `,ocf`
* edit the any file from current directory in a new window `,ew`  (press tab for autocomplete)
* edit the any file from current directory in a split window `,es` (press tab for autocomplete)
* edit the any file from current directory in a vertical window `,ev` (press tab for autocomplete)
* edit the any file from current directory in a new tab `,et`
* clear curent search highlight `//`
* code folding levels `,f1`

## Neocomplache
* complete everything `<TAB>`

#NerdTree
* toggle nerdtree `<C-E>`
* Open the project tree and expose current file in the nerdtree with `<C-\>`

##CtrlP
* search for files `,,`
* search for buffers `,.`
* search most recent used `,/`
* search for functions `,f`

## Multiple cursors
* while on a visual selected word, press `<C-N>`
* to go to previous occurance and unselect the current onw `<C-P>`
* to go to next occurance but unselect the current onw `<C-X>`

##Easy Motion
*leader key* `,w`
* go to character `,wf`
* go till `,wt`
* go at beginning of word `,ww`
* go to line down/up `,wj` / `,wk`

##Fugitive

*leader key* `,g`
* status `,gs` 
* diff `,gd` 
* commit `,gc` 
* blame `,gb` 
* log `,gl` 
* push `,gp` 
* read `,gr` 
* write `,gw` 
* edit `,ge` 
* gutter toggle  `,gg` 
##Gitv 
* open the repository log `,gv`

##Gundo
* mapping `,u`

##PHPUnitTesting 
* launch the unit test command for file name `,T %`

##Vim Sessions
* save session `,ss`
* list sessions `,sl`
* open session `,so`

##Tabularize
*map leader* ,a
* tabularize after = `,a=`
* tabularize after : `,a:`
* so on

##Tagbar
* toggle tagbar `,tt`

##Yankring
* yankring toggle `,y`

#Vim debug (XDEBUG)
 * `<F5>`: start/run (to next breakpoint/end of script)
 * `<F2>`: step over
 * `<F3>`: step into
 * `<F4>`: step out
 * `<F6>`: stop debugging
 * `<F7>`: detach script from debugger
 * `<F9>`: run to cursor
 * `<F10>`: set line breakpoint
 * `<F11>`: show context variables (e.g. after "eval")
 * `<F12>`: evaluate variable under cursor
 * `:Breakpoint <type> <args>`: set a breakpoint of any type (see :help
    VdebugBreakpoints)
 * `:VdebugEval <code>`: evaluate some code and display the result
 * `<Leader>e`: evaluate the expression under visual highlight and display the result

##PIV (PHP specific keys)
* PHP manual for the word under the cursor  `k` 
* php documentor `,pd`

##NERD Commenter

* comment out the current line or text selected in visual mode. `,cc`
*Toggles the comment state of the selected line(s). `,c<space>`
* Comments the given lines using only one set of multipart delimiters. `,cm`
* Adds comment delimiters to the end of line and goes into insert mode between `,cA`
*Comments the current line from the cursor to the end of line.  `,c$`


