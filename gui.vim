if has('gui_running')
  set lines =40 columns =170
  set guifont=DejaVu\ Sans\ Mono\ 11
  set noerrorbells
  set vb t_vb=
  au GuiEnter * set visualbell t_vb=
  hi SpellBad gui =underline,bold
endif
