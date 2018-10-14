"
" Airline
"

let g:airline_theme = 'ayu_mirage'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#fnamemod = ':t'

"
" Colorschemes
"

colorscheme CandyPaper

"
" CtrlP
"

let g:ctrlp_match_window = 'results:100'
let g:ctrlp_regexp = 1
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = 'deps\|_build\|log\|tmp\|node_modules\|target'


"
" Emmet
"

let g:emmet_html5 = 0

"
" Rubocopfmt
"

let g:rubocopfmt_autosave = 1

"
" Rust.vim
"

let g:rustfmt_autosave = 1

"
" Searchsavvy
"

let g:searchsavvy_smartgrep_auto_enable = 0

"
" Macros
"

runtime macros/matchit.vim
