augroup readmestart
  autocmd VimEnter * :call Readmestart_open_readme()
augroup END

function! Readmestart_open_readme()
  if !empty(glob("README"))
    execute "view README"
  endif
  if !empty(glob("README.*"))
    execute join(["view", glob("README.*")])
  endif
endfunction
