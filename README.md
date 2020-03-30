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

## My preferred Vim settings on Mac OS:

    set clipboard =unnamed
    set grepprg =ggrep\ -r\ -n\ -i\ -I\ $*\ --exclude-dir={log,tmp,.git}\ --exclude=*.swp

    if has('gui_running')
      set guifont=Menlo:h14
    endif

## Build Vim from sources in Ubuntu 16.04 with clipboard enabled

Install system dependencies:

    sudo apt-get install \
      libncurses5-dev \
      libx11-dev \
      libxtst-dev \
      libxt-dev \
      libsm-dev \
      libxpm-dev

Get Vim sources from Github (https://github.com/vim/vim).
Configure and install sources:

    make distclean
    ./configure \
      --with-features=huge \
      --enable-gui=auto \
      --enable-gtk2-check \
      --with-x
    make
    sudo make install

To uninstall:

    sudo make uninstall

## Using Vim installed via flatpak

    vim () {
      flatpak run --command=vim org.vim.Vim $1
    }

## List of the installed plugins

  * [Auto pairs](https://github.com/jiangmiao/auto-pairs)
  * [CtrlP](https://github.com/ctrlpvim/ctrlp.vim)
  * [Emmet](https://github.com/mattn/emmet-vim)
  * [Endwise](https://github.com/tpope/vim-endwise)
  * [Indexed search](https://github.com/henrik/vim-indexed-search)
  * [Searchsavvy](https://github.com/idbrii/vim-searchsavvy)
  * [Tcomment](https://github.com/tomtom/tcomment_vim)
  * [Vim lsc(https://github.com/natebosch/vim-lsc)

## Vim tips

![vim cheat sheet](vi-vim-cheat-sheet.gif)

Make vim to copy into system clipboard:

    sudo apt-get install vim-gnome
    :set clipboard=unnamedplus

Join two lines with space between them:

    Shift + J

Join two lines without space between them:

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
