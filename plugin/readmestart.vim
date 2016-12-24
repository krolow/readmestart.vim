augroup readmestart
  autocmd VimEnter * :call Readmestart_open_readme()
augroup END

function! Readmestart_open_readme()
  if argc() == 0
    if !empty(glob("readme"))
      execute "view readme"
    endif

    if !empty(glob("README"))
      execute "view README"
    endif

    if !empty(glob("readme.*"))
      execute join(["view", glob("readme.*")])
    endif

    if !empty(glob("README.*"))
      execute join(["view", glob("README.*")])
    endif
  endif
endfunction
