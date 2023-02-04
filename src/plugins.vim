"
" CtrlP
"

let g:ctrlp_match_window = 'results:30'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = '\v[\/](deps|_build|build|log|logs|vendor|tmp|node_modules|target|dist)$'
let g:ctrlp_regexp = 1
let g:ctrlp_working_path_mode = 'a'

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
