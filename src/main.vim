filetype plugin indent on

syntax on
colorscheme rdark-terminal2
set background=dark

setglobal complete-=i
setlocal foldmethod =indent

set autoindent
set backspace =indent,eol,start
set clipboard =unnamedplus
set expandtab
set foldlevel =99
set grepprg =grep\ -r\ -n\ -i\ -I\ $*\ --exclude-dir={public,log,tmp,.git,node_modules,deps,_build,dist,.bundle,.cargo,target,static,.elixir_ls}\ --exclude=*.swp
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
set mouse=a

hi clear SpellBad
hi SpellBad cterm =bold
hi Normal ctermbg=black

let g:netrw_sizestyle = 'h'
let g:netrw_preview = 1
let g:netrw_liststyle = 0

augroup main
  autocmd!
  autocmd Filetype c,h,php setlocal ts =4 sw =4 expandtab
  autocmd Filetype go setlocal ts =8 sw =8 noexpandtab
  autocmd FileType gitcommit setlocal spell
  autocmd BufWritePre * :%s/\s\+$//e
  autocmd BufNewFile,BufRead *.jbuilder set ft =ruby
  autocmd BufNewFile,BufRead *.dart set ft =javascript
  autocmd BufNewFile,BufRead *.ts set ft =javascript
augroup end
