execute pathogen#infect()
filetype plugin indent on

syntax on
set background=dark
colorscheme rdark-terminal2

setglobal complete-=i
setlocal foldmethod =indent

set colorcolumn=101

set autoindent
set backspace =indent,eol,start
set clipboard =unnamedplus
set expandtab
set foldlevel =99
set grepprg =grep\ -r\ -n\ -i\ -I\ $*\ --exclude-dir={public,log,tmp,.git,node_modules,deps,_build,.bundle,.cargo,target,static,.elixir_ls}\ --exclude=*.swp
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

hi clear SpellBad
hi SpellBad cterm =bold

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
