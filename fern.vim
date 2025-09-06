" Disable netrw
let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1
let g:loaded_netrwSettings = 1
let g:loaded_netrwFileHandlers = 1

noremap <silent> = :Fern . -drawer -reveal=% -toggle -width=35<CR><C-w>=
noremap <Leader>r <Plug>(fern-action-redraw)

