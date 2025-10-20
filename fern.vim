" Disable netrw
let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1
let g:loaded_netrwSettings = 1
let g:loaded_netrwFileHandlers = 1

function! FernSmartToggle() abort
  let fern_win = bufwinnr('fern://')
  let cur_buf = bufname('%')

  if fern_win == -1
    " If Fern is not open, open it
    execute 'Fern . -drawer -reveal=% -width=35'
    wincmd =
  else
    if cur_buf =~# '^fern://'
      " If Fern is open and cursor is on Fern, close it
      execute 'Fern . -drawer -reveal=% -toggle'
    else
      " If Fern is open and cursor is not on Fern, switch to Fern
      execute fern_win . 'wincmd w'
    endif
  endif
endfunction

nnoremap <silent> = :call FernSmartToggle()<CR>
noremap <Leader>r <Plug>(fern-action-redraw)

