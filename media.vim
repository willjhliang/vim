" Detect OS and set the open command
if has('mac')
  let g:open_cmd = 'open'
elseif has('unix')
  let g:open_cmd = 'xdg-open'
elseif has('win32') || has('win64')
  let g:open_cmd = 'start'
else
  let g:open_cmd = 'xdg-open'
endif

function! OpenMedia()
  let l:file = expand('%:p')
  " Run viewer in background so Vim doesn't block
  execute 'silent! !' . g:open_cmd . ' ' . shellescape(l:file) . ' &'
  " Close the current buffer without opening a new one
  " but only if it's a real file buffer (not scratch)
  if bufname('%') != ''
    execute 'b# | bd#'
  endif
endfunction

augroup media_viewers
  autocmd!
  autocmd BufReadPost,FileReadPost *.png,*.jpg,*.jpeg,*.gif,*.bmp,*.svg,*.webp,*.mp4,*.mkv,*.avi,*.mov,*.webm,*.heic,*.pdf
        \ call OpenMedia()
augroup END
