execute pathogen#infect()
filetype plugin indent on
syntax off

setglobal complete-=i
setlocal foldmethod =indent

set autoindent
set backspace =indent,eol,start
set clipboard =unnamedplus
set expandtab
set foldlevel =99
set grepprg =grep\ -r\ -n\ -i\ -I\ $*\ --exclude-dir={log,tmp,.git,node_modules,deps,_build,.bundle,.cargo,target}\ --exclude=*.swp
set hlsearch
set ignorecase
set incsearch
set number
set path =$PWD/**
set shiftwidth =2
set smartcase
set statusline +=%#warningmsg#
set statusline +=%*
set tabstop =2
set updatetime=250
set iminsert=0
set imsearch=0

highlight Normal ctermfg=LightGrey
highlight lCursor guifg=NONE guibg=Cyan
highlight LineNr ctermfg=green
highlight Search ctermbg=red
highlight MatchParen ctermbg=red
highlight Visual ctermbg=red

hi clear SpellBad
hi SpellBad cterm =underline,bold

let g:netrw_sizestyle = 'h'
let g:netrw_preview = 1
let g:netrw_liststyle = 1

autocmd Filetype c,h,php setlocal ts =4 sw =4 expandtab
autocmd Filetype go setlocal ts =8 sw =8 noexpandtab
autocmd FileType gitcommit setlocal spell
autocmd BufWritePre * :%s/\s\+$//e
autocmd BufNewFile,BufRead *.jbuilder set ft =ruby
autocmd BufNewFile,BufRead *.dart set ft =javascript
autocmd BufNewFile,BufRead *.ts set ft =javascript

" Change cursor shape in different modes
" For the Gnome-Terminal (version ≥3.16)
if has("autocmd")
  au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!
  au InsertEnter,InsertChange *
    \ if v:insertmode == 'i' |
    \   silent execute '!echo -ne "\e[6 q"' | redraw! |
    \ elseif v:insertmode == 'r' |
    \   silent execute '!echo -ne "\e[4 q"' | redraw! |
    \ endif
  au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
endif

let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
