"
" List of my favourite color schemas.
" colorscheme CandyPaper
" colorscheme bvemu
" colorscheme badwolf

execute pathogen#infect()
filetype plugin indent on
syntax on

colorscheme bvemu

set clipboard =unnamedplus
set tabstop =2
set shiftwidth =2
set foldlevel =99
set statusline +=%#warningmsg#
set statusline +=%{SyntasticStatuslineFlag()}
set statusline +=%*
set path =$PWD/**
set grepprg =grep\ -n\ $*
set expandtab
set autoindent
set number
set hlsearch
set ignorecase
set smartcase
set incsearch

setlocal foldmethod =indent
hi SpellBad cterm =underline,bold

let g:netrw_sizestyle = 'h'
let g:netrw_preview = 1
let g:netrw_liststyle = 1

autocmd Filetype php setlocal ts =4 sw =4 expandtab
autocmd BufWritePre * :%s/\s\+$//e
autocmd FileType css set omnifunc =csscomplete#CompleteCSS
autocmd BufNewFile,BufRead *.jbuilder set ft =ruby
autocmd FileType gitcommit setlocal spell