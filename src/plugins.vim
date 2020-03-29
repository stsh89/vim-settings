"
" CtrlP
"

let g:ctrlp_match_window = 'results:100'
let g:ctrlp_regexp = 1
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = 'deps\|_build\|log\|tmp\|node_modules\|target\|.bundle'


"
" Emmet
"

let g:emmet_html5 = 1

"
" Searchsavvy
"

let g:searchsavvy_smartgrep_auto_enable = 0

"
" Macros
"

runtime macros/matchit.vim

"
" Language Server
"

set completeopt-=preview
let g:lsc_enable_autocomplete = v:false
let g:lsc_server_commands = {
  \'scss': 'css-languageserver --stdio'
\}
