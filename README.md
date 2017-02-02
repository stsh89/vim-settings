# vim-settings
Just another Vim settings under version control system.

## Installation
Run these commands to get this Vim configuration working on your Linux machine.

    git clone git@github.com:stsh89/vim-settings.git ~/.vim --recursive
    echo "source ~/.vim/.vimrc" > ~/.vimrc

If you are using Mac OS you may want to add this lines to ~/.vimrc file:

    set clipboard =unnamed
    set backspace =indent,eol,start

If you are using Tmux on Linux system you may want to add following line to your ~/.bashrc file:

    export TERM=screen-256color

And here is usefull settings for Tmux on Mac Os:

    $ cat ~/.tmux.conf

    set -g default-terminal "screen-256color"
    set-option -g default-command "reattach-to-user-namespace -l bash"
    set -g history-limit 20000

## List of the installed plugins
  * [Airline themes](https://github.com/vim-airline/vim-airline-themes/tree/5bfa07ae06cbf3e73a137c2953e9877167e5986b)
  * [Airline](https://github.com/vim-airline/vim-airline/tree/53c8aa4fd67d4c0c06ea3f58134fdbc92672f737)
  * [Auto pairs](https://github.com/jiangmiao/auto-pairs/tree/84518168107c34fb540ee4f8cde743ceaf682bae)
  * [CoffeeScript](https://github.com/kchmck/vim-coffee-script/tree/b91dbe92ad794a85a03b089f384fa324ff4e0c3d)
  * [Coloresque](https://github.com/gko/vim-coloresque/tree/0c21b1469993e610600e88e734ffe90b9c10a514)
  * [Colorschemes](https://github.com/flazz/vim-colorschemes/tree/b8dff40f69f1873effbed97c759a8452ecb240ed)
  * [Csv](https://github.com/chrisbra/csv.vim/tree/c2b5a86b0b3105aec0800e146983041d52589595)
  * [CtrlP](https://github.com/ctrlpvim/ctrlp.vim)
  * [Emmet](https://github.com/mattn/emmet-vim/tree/44906fb16eb276622f1b8dbb3ab3062310a5b34c)
  * [Endwise](https://github.com/tpope/vim-endwise/tree/0067ceda37725d01b7bd5bf249d63b1b5d4e2ab4)
  * [Fugitive](https://github.com/tpope/vim-fugitive/tree/b754bc2031f21a532c083dd0d072ba373bbe3a37)
  * [Gitgutter](https://github.com/airblade/vim-gitgutter/tree/1742a8f568df549f4daeda90174b54d0c371501f)
  * [Handlebars](https://github.com/nono/vim-handlebars/tree/1eeeff8ade7b5008e7a213cc7eb9c7e1bed52bef)
  * [Indexed search](https://github.com/henrik/vim-indexed-search/tree/1d93f47eb4635a09f8b16e317ad65c98af2ee2cc)
  * [JavaScript](https://github.com/pangloss/vim-javascript/tree/5e024dc2e5b2d7e2a8b4d6446a0ed14352c2fa06)
  * [Json](https://github.com/elzr/vim-json/tree/f5e3181d0b33a9c51377bb7ea8492feddca8b503)
  * [Jsx](https://github.com/mxw/vim-jsx/tree/eb656ed96435ccf985668ebd7bb6ceb34b736213)
  * [NERDTree tabs](https://github.com/jistr/vim-nerdtree-tabs/tree/5a91230193fea7f9c8d792cb5c635998d868337d)
  * [NERDTree](https://github.com/scrooloose/nerdtree/tree/eee431dbd44111c858c6d33ffd366cae1f17f8b3)
  * [Pug](https://github.com/digitaltoad/vim-pug/tree/cc1bddc890f4856aa0511fdfd7c55d2e66f688b5)
  * [Rails](https://github.com/tpope/vim-rails/tree/09ffc844ef959ffe133d0994641ade192531007e)
  * [Rubocop](https://github.com/ngmy/vim-rubocop/tree/1c57918086d22cc9db829125f6b78226feae86a3)
  * [Ruby](https://github.com/vim-ruby/vim-ruby/tree/e865f7cacf05908668ed07be2db553f4fb4d56fd)
  * [Searchsavvy](https://github.com/idbrii/vim-searchsavvy/tree/706839044e326c0910f05543fabd3530a99ca9e4)
  * [Slim](https://github.com/slim-template/vim-slim/tree/df26386b46b455f0c837c3ba30d1771204f209ca)
  * [Syntastic react](https://github.com/jaxbot/syntastic-react/tree/b5048cacd21cda76bd595447a84d80679f51464b)
  * [Syntastic](https://github.com/vim-syntastic/syntastic/tree/dfb263775bbf1d43350591b84bc53c925dcb7430)
  * [Tcomment](https://github.com/tomtom/tcomment_vim/tree/a30434a3d2c7c74e2708a3bc800c5c14c1e6625e)
  * [TypeScript](https://github.com/leafgarland/typescript-vim/tree/7e25a901af7cd993498cc9ecfc833ca2ac21db7a)

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

Launch vim without any plugin:

    vim -u NONE

Sort visually selected lines:

    :sort /\ze\%V/

Remove dublicate spaces:

    :s/\s\+/ /g

Reformat in vim for a nice column layout:

    :%!column -t

Open quick fix window after grep comand:

    :copen

Close quick fix window:

    :ccl

Copy current file relative path:

    :let @+=expand('%')

Copy current file absolute path:

    :let @+=expand('%:p')

Copy file name:

    :let @+=expand('%:t')
