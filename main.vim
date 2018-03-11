execute pathogen#infect()
filetype plugin indent on
syntax on
colorscheme jellybeans

set clipboard =unnamedplus
set tabstop =2
set shiftwidth =2
set foldlevel =99
set statusline +=%#warningmsg#
set statusline +=%*
set path =$PWD/**
set grepprg =grep\ -r\ -n\ -i\ -I\ $*\ --exclude-dir={log,tmp,.git,node_modules}\ --exclude=*.swp
set backspace =indent,eol,start

set expandtab
set autoindent
set number
set hlsearch
set ignorecase
set smartcase
set incsearch

setlocal foldmethod =indent
hi clear SpellBad
hi SpellBad cterm =underline,bold

let g:netrw_sizestyle = 'h'
let g:netrw_preview = 1
let g:netrw_liststyle = 1

autocmd Filetype c,h,php setlocal ts =4 sw =4 expandtab
autocmd Filetype go setlocal ts =8 sw =8 noexpandtab
autocmd FileType css set omnifunc =csscomplete#CompleteCSS
autocmd FileType gitcommit setlocal spell
autocmd BufWritePre * :%s/\s\+$//e
autocmd BufNewFile,BufRead *.jbuilder set ft =ruby
