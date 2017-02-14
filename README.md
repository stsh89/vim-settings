# vim-settings

Just another Vim settings under version control system.

## Installation

Run these commands to get this Vim configuration working on your Linux machine.

    git clone git@github.com:stsh89/vim-settings.git ~/.vim --recursive
    echo "source ~/.vim/.vimrc" > ~/.vimrc

## Vim + Tmux

If you are using Tmux on Linux system you may want to add following line to your ~/.bashrc file:

    export TERM=screen-256color

And here is useful settings for Tmux on Mac Os:

    $ cat ~/.tmux.conf

    set -g default-terminal "screen-256color"
    set-option -g default-command "reattach-to-user-namespace -l bash"
    set -g history-limit 20000

## Shortcuts special for this settings

    cf " Copy relative file path
    cF " Copy absolute file path

## My preffered Vim settings on Mac OS:

  set clipboard =unnamed
  set backspace =indent,eol,start
  set grepprg =ggrep\ -r\ -n\ -i\ -I\ $*\ --exclude-dir={log,tmp,.git}\ --exclude=*.swp

  if has('gui_running')
    set guifont=Menlo:h14
    colorscheme CandyPaper
  endif

## List of the installed plugins

  * [Airline themes](https://github.com/vim-airline/vim-airline-themes)
  * [Airline](https://github.com/vim-airline/vim-airline)
  * [Auto pairs](https://github.com/jiangmiao/auto-pairs)
  * [CoffeeScript](https://github.com/kchmck/vim-coffee-script)
  * [Coloresque](https://github.com/gko/vim-coloresque)
  * [Colorschemes](https://github.com/flazz/vim-colorschemes)
  * [Csv](https://github.com/chrisbra/csv.vim)
  * [CtrlP](https://github.com/ctrlpvim/ctrlp.vim)
  * [Emmet](https://github.com/mattn/emmet-vim)
  * [Endwise](https://github.com/tpope/vim-endwise)
  * [Fugitive](https://github.com/tpope/vim-fugitive)
  * [Gitgutter](https://github.com/airblade/vim-gitgutter)
  * [Handlebars](https://github.com/nono/vim-handlebars)
  * [Indexed search](https://github.com/henrik/vim-indexed-search)
  * [JavaScript](https://github.com/pangloss/vim-javascript)
  * [Json](https://github.com/elzr/vim-json)
  * [Jsx](https://github.com/mxw/vim-jsx)
  * [NERDTree tabs](https://github.com/jistr/vim-nerdtree-tabs)
  * [NERDTree](https://github.com/scrooloose/nerdtree)
  * [Pug](https://github.com/digitaltoad/vim-pug)
  * [Rails](https://github.com/tpope/vim-rails)
  * [Rubocop](https://github.com/ngmy/vim-rubocop)
  * [Ruby](https://github.com/vim-ruby/vim-ruby)
  * [Searchsavvy](https://github.com/idbrii/vim-searchsavvy)
  * [Slim](https://github.com/slim-template/vim-slim)
  * [Syntastic react](https://github.com/jaxbot/syntastic-react)
  * [Syntastic](https://github.com/vim-syntastic/syntastic)
  * [Tcomment](https://github.com/tomtom/tcomment_vim)
  * [TypeScript](https://github.com/leafgarland/typescript-vim)

## Vim tips

![vim cheat sheet](vi-vim-cheat-sheet.gif)

Make vim to copy into system clipboard:

    sudo apt-get install vim-gnome
    :set clipboard=unnamedplus

Join two lines with or without space between them:

    Shift + J
    gJ

Spell check:

    :setlocal spell spelllang=en

Spell check manipulations

    ]s   " move to the next mispelled word
    [s   " move to the previous mispelled word
    zg   " add a word to the dictionary
    zug  " undo the addition of a word to the dictionary
    z=   " view spelling suggestions for a mispelled word

Left only current tab open:

    :tabonly

Open URL under cursor in Vim with browser:

    gx

Change working directory to the currently open file:

    :cd %:p:h

Change the directory only for the current window:

    :lcd %:p:h

Append output of an external command:

    :read !date

Open the output of a shell command in a new tab:

    :tabe|read !echo #

Open the output of a shell command in a split pane:

    :new|read !echo #

Highlight comments:

    :highlight comment ctermbg=192

Remote editing:

    vim scp://deploy@172.17.17.99//

Netrw manipulations:

    %  " create new file.
    gh " hide/unhide hidden files

Remove ^M artifacts:

    :%s/\r//

View binary file as hex:

    :%!xxd

Move pane to a new tab:

    Ctrl-W Shift-T

Open file on specific line:

    vim +20 file.txt

Highlight 81 column:

    set colorcolumn=81

Wrap selected text to some fixed width:

    gq

Display current filename:

    :echo @%

Pretty json:

    :%!python -m json.tool

Reload the file:

    :e!

Launch Vim without any plugin:

    vim -u NONE

Sort visually selected lines:

    :sort /\ze\%V/

Remove duplicate spaces:

    :s/\s\+/ /g

Reformat file for a nice column layout:

    :%!column -t

Open quick fix window:

    :copen

Close quick fix window:

    :ccl

Copy current file relative path:

    :let @+=expand('%')

Copy current file absolute path:

    :let @+=expand('%:p')

Copy file name:

    :let @+=expand('%:t')

Search exact word:

    /\<your_exact_word\>
