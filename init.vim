" Plugins
call plug#begin('~/.vim/plugged')
    Plug 'tpope/vim-sensible'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'preservim/nerdtree'
    Plug 'junegunn/fzf'
    Plug 'junegunn/fzf.vim'
    Plug 'tpope/vim-fugitive'
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
let NERDTreeShowHidden=1

" Performance
set lazyredraw
set ttyfast

" Load additional settings
source ~/.vim/coc.vim
source ~/.vim/nerdtree.vim
source ~/.vim/fzf.vim
source ~/.vim/media.vim
