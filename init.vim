" Install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.vim/plugged')
    Plug 'tpope/vim-sensible'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-commentary'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'lambdalisue/vim-fern'
    Plug 'junegunn/fzf'
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-gitgutter'
    Plug 'github/copilot.vim'
    Plug 'lervag/vimtex'
call plug#end()

" Basic Settings
set encoding=utf-8
set fileencoding=utf-8

" Appearance
set number
colorscheme nord

" Tabs and Indentation
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smartindent

" Interface / Editing
set wrap
set linebreak
set ignorecase
set scrolloff=8
set sidescrolloff=8
set clipboard=unnamedplus
set mouse=a
vnoremap <silent> y "+y

" Status Line
set laststatus=2
set statusline=
set statusline+=%#StatusLine#        " Use active highlight
set statusline+=\ %f                 " File name (relative)
set statusline+=\ %m                 " Modified flag [+]
set statusline+=\ %r                 " Readonly flag [RO]
set statusline+=\ %y                 " Filetype
set statusline+=%=
set statusline+=%#StatusLine#        " Switch to right-aligned section
set statusline+=%{&fileencoding?&fileencoding:&encoding}  " Encoding
set statusline+=\ [%{&fileformat}]   " File format (unix/dos)
set statusline+=\ %p%%               " File progress %
set statusline+=\ %l:%c              " Line and column

" Navigation
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
augroup fern_ctrl_hjkl
  autocmd!
  autocmd FileType fern nnoremap <buffer> <c-h> <c-w>h
  autocmd FileType fern nnoremap <buffer> <c-j> <c-w>j
  autocmd FileType fern nnoremap <buffer> <c-k> <c-w>k
  autocmd FileType fern nnoremap <buffer> <c-l> <c-w>l
augroup END

" Performance
set lazyredraw
set ttyfast

" Load additional settings
source ~/.vim/coc.vim
source ~/.vim/fern.vim
source ~/.vim/fzf.vim
source ~/.vim/media.vim
