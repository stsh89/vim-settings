"
" Syntastic
"
" Maybe useful settings.
" let g:syntastic_mode_map = { 'mode': 'passive' }
"

let g:syntastic_mode_map = { 'mode': 'passive' }
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_ruby_checkers = ['rubocop', 'mri']

"
" Airline
"
" List of my favourite airline themes.
" let g:airline_theme = 'wombat'
" let g:airline_theme = 'badwolf'
" let g:airline_theme = 'lucius'
" let g:airline_theme = 'wombat'
"

let g:airline_theme = 'wombat'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#fnamemod = ':t'

"
" Nerdtree
"

let g:nerdtree_tabs_open_on_console_startup = 1
let g:NERDTreeWinSize = 40
let NERDTreeHijackNetrw = 0
autocmd VimEnter * NERDTree | wincmd p

"
" CtrlP
"

let g:ctrlp_match_window = 'results:100'
let g:ctrlp_regexp = 1

"
" Different
"

let g:searchsavvy_smartgrep_auto_enable = 0
let g:jsx_ext_required = 0
let g:emmet_html5 = 0
let g:jsx_ext_required = 0

runtime macros/matchit.vim
