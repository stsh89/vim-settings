# vim-settings

Just another Vim settings under version control system.

## Installation

Run these commands to get this Vim configuration working on your Linux machine.

    git clone git@github.com:stsh89/vim-settings.git ~/.vim --recursive
    echo "source ~/.vim/.vimrc" > ~/.vimrc

## Update plugins

    git submodule update --remote

## List of my long used color schemas

rdark-terminal2

## Vim + Tmux

My Tmux config on Ubuntu looks like this:

    $ cat ~/.tmux.conf

    set -g default-terminal "screen-256color"
    set-option -g history-limit 1000000

## Shortcuts special for this settings

    cf " Copy relative file path
    cF " Copy absolute file path

## Commands special for this settings

    :Grep " grep in a new tab, same as :tabe | grep

## Build Vim from sources in Ubuntu 18.04/20.04 with docker

Clone git sources and run following commands from sources folder (current gcc version for ubuntu 20.04 is 9.3):

    docker run --rm -it -v $PWD:/app -w /app gcc /bin/bash -c 'make distclean && make'
    sudo bash -c 'cp src/vim /usr/local/bin &&
                  rm -rf /usr/local/share/vim &&
                  mkdir /usr/local/share/vim &&
                  cp -r runtime/ /usr/local/share/vim'

Maybe you will need specific gcc image version.

## List of the included plugins

  * [Auto Pairs](https://github.com/jiangmiao/auto-pairs)
  * [CtrlP](https://github.com/ctrlpvim/ctrlp.vim)
  * [Emmet](https://github.com/mattn/emmet-vim)
  * [Endwise](https://github.com/tpope/vim-endwise)
  * [Indexed Search](https://github.com/henrik/vim-indexed-search)
  * [Searchsavvy](https://github.com/idbrii/vim-searchsavvy)
  * [Tcomment](https://github.com/tomtom/tcomment_vim)
  * [Awesome Vim Colorschemes](https://github.com/rafi/awesome-vim-colorschemes)
  * [Vim Polyglot](https://github.com/sheerun/vim-polyglot)

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

    :tabo

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
