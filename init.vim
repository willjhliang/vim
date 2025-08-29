" Plugins
call plug#begin('~/.vim/plugged')
    Plug 'tpope/vim-sensible'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'preservim/nerdtree'
    Plug 'junegunn/fzf'
    Plug 'junegunn/fzf.vim'
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'
    Plug 'arcticicestudio/nord-vim'
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
set scrolloff=8
set sidescrolloff=8
set clipboard=unnamedplus
set mouse=a

" Performance
set lazyredraw
set ttyfast

" Key Mappings
let mapleader = ","
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>

" Load plugin-specific settings
source coc.vim
source nerdtree.vim
source fzf.vim
