function! mixfmt#GetConfigVar(name, default)
  if has_key(g:, a:name)
    return get(g:, a:name)
  endif

  return a:default
endfunction

function! mixfmt#PreWrite()
  if !mixfmt#GetConfigVar("mixfmt_autosave", 0)
    return
  endif

  call s:Run()
endfunction

function s:Run()
  execute('silent !mix format %')
  execute('e!')
  execute('redraw!')
endfunction

command Mixfmt execute "call mixfmt#PreWrite()"
autocmd BufWritePre *.ex,*.exs :Mixfmt
