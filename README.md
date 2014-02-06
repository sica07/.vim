#Mappings
##Moving
* move between windows _<C-J>_ _<C-K>_ _<C-H>_ _<C-L>_
* move between tabs _<S-H>_ _<S-L>_
* zoom in and out of current window _,gz_
* go to tab nr.1 _,1_
* split window _vv_ _ss_
* new split window _,v_ _,s_
* adjust viewports _,=_
* close current window _,q_
* open quickfixwindow _,qo_
* close quickfixwindow _,qc_
* open a quickfix window for the last search _,q/_

##Editing
* get out of insert mode _jj_
* jump to matching parents easy (replace %) _<Tab>_
* yank from cursor to the end of the line _Y_
* open a split window for each dirty file in git _,ocf_
* edit the any file from current directory in a new window _,ew_  (press tab for autocomplete)
* edit the any file from current directory in a split window _,es_ (press tab for autocomplete)
* edit the any file from current directory in a vertical window _,ev_ (press tab for autocomplete)
* edit the any file from current directory in a new tab _,et_
* clear curent search highlight _//_
* code folding levels _,f1_

## Neocomplache
* complete everything _<TAB>_

#NerdTree
* toggle nerdtree _<C-E>_
* Open the project tree and expose current file in the nerdtree with _<C-\>_

##CtrlP
* search for files _,,_
* search for buffers _,._
* search most recent used _,/_

##Easy Motion
*leader key* _,w_
* go to character _,wf_
* go till _,wt_
* go at beginning of word _,ww_
* go to line down/up _,wj_ / _,wk_

##Fugitive

*leader key* _,g_
* status _,gs_ 
* diff _,gd_ 
* commit _,gc_ 
* blame _,gb_ 
* log _,gl_ 
* push _,gp_ 
* read _,gr_ 
* write _,gw_ 
* edit _,ge_ 
* gutter toggle  _,gg_ 
##Gitv 
* open the repository log _,gv_

##Gundo
* mapping _,u_

##PHPUnitTesting 
* launch the unit test command for file name _,T %_

##Vim Sessions
* save session _,ss_
* list sessions _,sl_
* open session _,so_

##Tabularize
*map leader* ,a
* tabularize after = _,a=_
* tabularize after : _,a:_
* so on

##Tagbar
* toggle tagbar _,tt_

##Yankring
* yankring toggle _,y_

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
* PHP manual for the word under the cursor  _k_ 
* php documentor _,pd_

##NERD Commenter

* comment out the current line or text selected in visual mode. _,cc_
*Toggles the comment state of the selected line(s). _,c<space>_
* Comments the given lines using only one set of multipart delimiters. _,cm_
* Adds comment delimiters to the end of line and goes into insert mode between _,cA_
*Comments the current line from the cursor to the end of line.  _,c$_

