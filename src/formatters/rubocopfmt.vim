function! rubocopfmt#GetConfigVar(name, default)
  if has_key(g:, a:name)
    return get(g:, a:name)
  endif

  return a:default
endfunction

function! rubocopfmt#PreWrite()
  if !rubocopfmt#GetConfigVar("rubocopfmt_autosave", 0)
    return
  endif

  call s:Run()
endfunction

function s:Run()
  execute('silent !rubocop -x %')
  execute('e!')
  execute('redraw!')
endfunction

command Rubocopfmt execute "call rubocopfmt#PreWrite()"
autocmd BufWritePre *.rb :Rubocopfmt
